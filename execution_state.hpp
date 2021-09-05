// evmone: Fast Ethereum Virtual Machine implementation
// Copyright 2019-2020 The evmone Authors.
// SPDX-License-Identifier: Apache-2.0
#pragma once

#include "evmc/evmc.hpp"
#include "intx/intx.hpp"
#include "basic_string.hpp"

using namespace evmc;

using uint256 = intx::uint256;
using bytes = fpga_basic_string<uint8_t, 256>;
using bytes_view = fpga_basic_string<uint8_t, 8192>;


/// The stack for 256-bit EVM words.
///
/// This implementation reserves memory inplace for all possible stack items (1024),
/// so this type is big. Make sure it is allocated on heap.
struct Stack
{
    /// The maximum number of stack items.
    static constexpr auto limit = 8192;

    /// The pointer to the top item, or below the stack bottom if stack is empty.
    // intx::uint256* top_item;
    int32_t _size;

    /// The storage allocated for maximum possible number of items.
    /// This is also the pointer to the bottom item.
    /// Items are aligned to 256 bits for better packing in cache lines.
    alignas(sizeof(intx::uint256)) intx::uint256 storage[limit];

    /// Default constructor. Sets the top_item pointer to below the stack bottom.
    Stack() noexcept { clear(); }

    /// The current number of items on the stack.
    int size() const noexcept { return static_cast<int>(_size); }

    /// Returns the reference to the top item.
    intx::uint256& top() noexcept { return storage[_size-1]; }

    /// Returns the reference to the stack item on given position from the stack top.
    intx::uint256& operator[](int index) noexcept { return storage[_size - index - 1]; }

    /// Returns the const reference to the stack item on given position from the stack top.
    const intx::uint256& operator[](int index) const noexcept
    {
//        return *(top_item - index);
    	return storage[_size - index - 1];
    }

    /// Pushes an item on the stack. The stack limit is not checked.
    void push(const intx::uint256& item) noexcept { storage[_size++] = item; }

    /// Returns an item popped from the top of the stack.
    intx::uint256 pop() noexcept {
    	//return *top_item--;
    	return storage[--_size];
    }

    /// Clears the stack by resetting its size to 0 (sets the top_item pointer to below the stack
    /// bottom).
    void clear() noexcept { _size = 0; /*top_item = storage - 1;*/ }
};

/// The EVM memory.
///
/// At this point it is a wrapper for std::vector<uint8_t> with initial allocation of 4k.
/// Some benchmarks has been done to confirm 4k is ok-ish value.
/// Also std::basic_string<uint8_t> has been tried but not faster and we don't want SSO
/// if initial_capacity is used.
/// In future, transition to std::realloc() + std::free() planned.
class Memory
{
    /// The initial memory allocation.
    static constexpr size_t initial_capacity = 16384;

    uint8_t m_memory[initial_capacity];

public:
    Memory() noexcept { /*m_memory.reserve(initial_capacity);*/ }

    Memory(const Memory&) = delete;
    Memory& operator=(const Memory&) = delete;

    uint8_t& operator[](size_t index) noexcept { return m_memory[index]; }

    const uint8_t* data() const noexcept { return m_memory; }
    size_t size() const noexcept { return initial_capacity; }

    void resize(size_t new_size) { /* m_memory.resize(new_size);*/ new_size = initial_capacity; }

    void clear() noexcept { /*m_memory.clear(); */ }
};

/// Generic execution state for generic instructions implementations.
struct ExecutionState
{
    int64_t gas_left = 0;
    Stack stack;
    Memory memory;
    evmc_message msg; //= nullptr;
    HostContext host;
    evmc_revision rev = {};
    bytes return_data;
    bytes_view code;
    evmc_status_code status = EVMC_SUCCESS;
    size_t output_offset = 0;
    size_t output_size = 0;

    ExecutionState() = default;

    ExecutionState(const evmc_message& message, evmc_revision revision,
        const evmc_host_interface& /*host_interface*/, evmc_host_context* /*host_ctx*/,
        const uint8_t* /*code_ptr*/, size_t /*code_size*/) noexcept
      : gas_left{message.gas},
        msg{message},
        host(),
        rev{revision}
    {}

    /// Resets the contents of the ExecutionState so that it could be reused.
    void reset(const evmc_message& message, evmc_revision revision,
        const evmc_host_interface& /*host_interface*/, evmc_host_context* /*host_ctx*/,
        const uint8_t* code_ptr, size_t code_size) noexcept
    {
        gas_left = message.gas;
        stack.clear();
        memory.clear();
        msg = message;

        rev = revision;
        code.assign(code_ptr, code_ptr + code_size);
        status = EVMC_SUCCESS;
        output_offset = 0;
        output_size = 0;
    }
};
