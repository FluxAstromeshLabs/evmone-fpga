// evmone: Fast Ethereum Virtual Machine implementation
// Copyright 2019-2020 The evmone Authors.
// SPDX-License-Identifier: Apache-2.0
#pragma once

#include "execution_state.hpp"
#include "limits.hpp"
#include "evmc/evmc.hpp"
#include "evmc/instructions.h"
#include "intx/intx.hpp"
#include <array>
#include <cstdint>


template <typename T>
class static_vector {
	private:
		mutable T array[400];
		size_t index = 0;
	public:
		static_vector() : index(0) { }

		template <typename... Us>
		void emplace_back(Us... params) {
			array[index++] = T(params...);
		}

		const T* begin() const {
			return &(array[0]);
		}

		const T* end() const {
			return &(array[index]);
		}

		void emplace_back(){
			// increase len and do nothing
			index++;
		}

		void reserve(int /*size*/){ } // reserve max, anyway

		T& operator[](int id) const { // later "const" allow passing obj as "const this"
			return array[id];
		}

		T& back() {
			return array[index - 1];
		}

		size_t size() const{
			return index;
		}
};


const uint32_t max_instruction_size = 2048;

/// Compressed information about instruction basic block.
struct block_info
{
    /// The total base gas cost of all instructions in the block.
    /// This cannot overflow, see the static_assert() below.
    uint32_t gas_cost = 0;

	//    static_assert(
	//        max_code_size * max_instruction_base_cost < std::numeric_limits<decltype(gas_cost)>::max(),
	//        "Potential block_info::gas_cost overflow");

    /// The stack height required to execute the block.
    /// This MAY overflow.
    int16_t stack_req = 0;

    /// The maximum stack height growth relative to the stack height at block start.
    /// This cannot overflow, see the static_assert() below.
    int16_t stack_max_growth = 0;

	//    static_assert(max_code_size * max_instruction_stack_increase <
	//                      std::numeric_limits<decltype(stack_max_growth)>::max(),
	//        "Potential block_info::stack_max_growth overflow");
    constexpr explicit block_info(): gas_cost(0), stack_req(0), stack_max_growth(0) {}
    constexpr explicit block_info(uint32_t gas, int16_t sr, int16_t sg): gas_cost(gas), stack_req(sr), stack_max_growth(sg) {}
};

union instruction_argument
{
    int64_t number;
    intx::uint256 push_value;
    uint64_t small_push_value;
    block_info block{};
};

struct instruction
{
    uint8_t opcode;
    instruction_argument arg;
    explicit constexpr instruction() noexcept : opcode(0), arg{} {}
    explicit constexpr instruction(uint8_t c) noexcept : opcode(c), arg{} {}
};

//struct AdvancedCodeAnalysis;

struct AdvancedCodeAnalysis
{
    static_vector<instruction> instrs;

    /// Storage for large push values.
    static_vector<intx::uint256> push_values;

    /// The offsets of JUMPDESTs in the original code.
    /// These are values that JUMP/JUMPI receives as an argument.
    /// The elements are sorted.
    static_vector<int32_t> jumpdest_offsets;

    /// The indexes of the instructions in the generated instruction table
    /// matching the elements from jumdest_offsets.
    /// This is value to which the next instruction pointer must be set in JUMP/JUMPI.
    static_vector<int32_t> jumpdest_targets;
};

/// The execution state specialized for the Advanced interpreter.
struct AdvancedExecutionState : ExecutionState
{
    /// The gas cost of the current block.
    ///
    /// This is only needed to correctly calculate the "current gas left" value.
    uint32_t current_block_cost = 0;

    /// Pointer to code analysis.
    // AdvancedCodeAnalysis analysis; //= nullptr;

    using ExecutionState::ExecutionState;

    AdvancedExecutionState(): current_block_cost(0) {}

    /// Terminates the execution with the given status code.
    const instruction* exit(evmc_status_code status_code) noexcept
    {
        status = status_code;
        return nullptr;
    }

    /// Resets the contents of the execution_state so that it could be reused.
    void reset(const evmc_message& message, evmc_revision revision,
        const evmc_host_interface& host_interface, evmc_host_context* host_ctx,
        const uint8_t* code_ptr, size_t code_size) noexcept
    {
        ExecutionState::reset(message, revision, host_interface, host_ctx, code_ptr, code_size);
        current_block_cost = 0;
    }
};

// no need static check as push_value is not pointer anymore
//static_assert(
//    sizeof(instruction_argument) == sizeof(uint64_t), "Incorrect size of instruction_argument");

/// The pointer to function implementing an instruction execution.
//using instruction_exec_fn = const instruction* (*)(const instruction*, AdvancedExecutionState&);

/// The evmone intrinsic opcodes.
///
/// These intrinsic instructions may be injected to the code in the analysis phase.
/// They contain additional and required logic to be executed by the interpreter.
enum intrinsic_opcodes
{
    /// The BEGINBLOCK instruction.
    ///
    /// This instruction is defined as alias for JUMPDEST and replaces all JUMPDEST instructions.
    /// It is also injected at beginning of basic blocks not being the valid jump destination.
    /// It checks basic block execution requirements and terminates execution if they are not met.
    OPX_BEGINBLOCK = OP_JUMPDEST
};

struct op_table_entry
{
    int16_t gas_cost;
    int8_t stack_req;
    int8_t stack_change;
    constexpr op_table_entry(int16_t gas_cost, int8_t stack_req, int8_t stack_change): gas_cost(gas_cost), stack_req(stack_req), stack_change(stack_change) {};
};

using op_table = ::std::array<op_table_entry, 256>;

// default op_table using EVMC_LONDON - latest version
constexpr op_table default_op_table = {{
		op_table_entry(0, 0, 0),
		op_table_entry(3, 2, -1),
		op_table_entry(5, 2, -1),
		op_table_entry(3, 2, -1),
		op_table_entry(5, 2, -1),
		op_table_entry(5, 2, -1),
		op_table_entry(5, 2, -1),
		op_table_entry(5, 2, -1),
		op_table_entry(8, 3, -2),
		op_table_entry(8, 3, -2),
		op_table_entry(10, 2, -1),
		op_table_entry(5, 2, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(3, 2, -1),
		op_table_entry(3, 2, -1),
		op_table_entry(3, 2, -1),
		op_table_entry(3, 2, -1),
		op_table_entry(3, 2, -1),
		op_table_entry(3, 1, 0),
		op_table_entry(3, 2, -1),
		op_table_entry(3, 2, -1),
		op_table_entry(3, 2, -1),
		op_table_entry(3, 1, 0),
		op_table_entry(3, 2, -1),
		op_table_entry(3, 2, -1),
		op_table_entry(3, 2, -1),
		op_table_entry(3, 2, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(30, 2, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(2, 0, 1),
		op_table_entry(100, 1, 0),
		op_table_entry(2, 0, 1),
		op_table_entry(2, 0, 1),
		op_table_entry(2, 0, 1),
		op_table_entry(3, 1, 0),
		op_table_entry(2, 0, 1),
		op_table_entry(3, 3, -3),
		op_table_entry(2, 0, 1),
		op_table_entry(3, 3, -3),
		op_table_entry(2, 0, 1),
		op_table_entry(100, 1, 0),
		op_table_entry(100, 4, -4),
		op_table_entry(2, 0, 1),
		op_table_entry(3, 3, -3),
		op_table_entry(100, 1, 0),
		op_table_entry(20, 1, 0),
		op_table_entry(2, 0, 1),
		op_table_entry(2, 0, 1),
		op_table_entry(2, 0, 1),
		op_table_entry(2, 0, 1),
		op_table_entry(2, 0, 1),
		op_table_entry(2, 0, 1),
		op_table_entry(5, 0, 1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(2, 1, -1),
		op_table_entry(3, 1, 0),
		op_table_entry(3, 2, -2),
		op_table_entry(3, 2, -2),
		op_table_entry(100, 1, 0),
		op_table_entry(0, 2, -2),
		op_table_entry(8, 1, -1),
		op_table_entry(10, 2, -2),
		op_table_entry(2, 0, 1),
		op_table_entry(2, 0, 1),
		op_table_entry(2, 0, 1),
		op_table_entry(1, 0, 0),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(3, 0, 1),
		op_table_entry(3, 0, 1),
		op_table_entry(3, 0, 1),
		op_table_entry(3, 0, 1),
		op_table_entry(3, 0, 1),
		op_table_entry(3, 0, 1),
		op_table_entry(3, 0, 1),
		op_table_entry(3, 0, 1),
		op_table_entry(3, 0, 1),
		op_table_entry(3, 0, 1),
		op_table_entry(3, 0, 1),
		op_table_entry(3, 0, 1),
		op_table_entry(3, 0, 1),
		op_table_entry(3, 0, 1),
		op_table_entry(3, 0, 1),
		op_table_entry(3, 0, 1),
		op_table_entry(3, 0, 1),
		op_table_entry(3, 0, 1),
		op_table_entry(3, 0, 1),
		op_table_entry(3, 0, 1),
		op_table_entry(3, 0, 1),
		op_table_entry(3, 0, 1),
		op_table_entry(3, 0, 1),
		op_table_entry(3, 0, 1),
		op_table_entry(3, 0, 1),
		op_table_entry(3, 0, 1),
		op_table_entry(3, 0, 1),
		op_table_entry(3, 0, 1),
		op_table_entry(3, 0, 1),
		op_table_entry(3, 0, 1),
		op_table_entry(3, 0, 1),
		op_table_entry(3, 0, 1),
		op_table_entry(3, 1, 1),
		op_table_entry(3, 2, 1),
		op_table_entry(3, 3, 1),
		op_table_entry(3, 4, 1),
		op_table_entry(3, 5, 1),
		op_table_entry(3, 6, 1),
		op_table_entry(3, 7, 1),
		op_table_entry(3, 8, 1),
		op_table_entry(3, 9, 1),
		op_table_entry(3, 10, 1),
		op_table_entry(3, 11, 1),
		op_table_entry(3, 12, 1),
		op_table_entry(3, 13, 1),
		op_table_entry(3, 14, 1),
		op_table_entry(3, 15, 1),
		op_table_entry(3, 16, 1),
		op_table_entry(3, 2, 0),
		op_table_entry(3, 3, 0),
		op_table_entry(3, 4, 0),
		op_table_entry(3, 5, 0),
		op_table_entry(3, 6, 0),
		op_table_entry(3, 7, 0),
		op_table_entry(3, 8, 0),
		op_table_entry(3, 9, 0),
		op_table_entry(3, 10, 0),
		op_table_entry(3, 11, 0),
		op_table_entry(3, 12, 0),
		op_table_entry(3, 13, 0),
		op_table_entry(3, 14, 0),
		op_table_entry(3, 15, 0),
		op_table_entry(3, 16, 0),
		op_table_entry(3, 17, 0),
		op_table_entry(375, 2, -2),
		op_table_entry(750, 3, -3),
		op_table_entry(1125, 4, -4),
		op_table_entry(1500, 5, -5),
		op_table_entry(1875, 6, -6),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(32000, 3, -2),
		op_table_entry(100, 7, -6),
		op_table_entry(100, 7, -6),
		op_table_entry(0, 2, -2),
		op_table_entry(100, 6, -5),
		op_table_entry(32000, 4, -3),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(100, 6, -5),
		op_table_entry(-1, -1, -1),
		op_table_entry(-1, -1, -1),
		op_table_entry(0, 2, -2),
		op_table_entry(0, 0, 0),
		op_table_entry(5000, 1, -1),
}};

inline int find_jumpdest(const AdvancedCodeAnalysis& analysis, int offset) noexcept
{
    const auto begin = analysis.jumpdest_offsets.begin();// std::begin(analysis.jumpdest_offsets);
    const auto end = analysis.jumpdest_offsets.end(); // std::end(analysis.jumpdest_offsets);

    const auto it = ::std::lower_bound(begin, end, offset);
    // printf("Jump to instruction %d\n", static_cast<size_t>(it - begin));
    return (it != end && *it == offset) ?
               analysis.jumpdest_targets[static_cast<size_t>(it - begin)] :
               -1;
}

AdvancedCodeAnalysis analyze(const uint8_t* code, size_t code_size) noexcept;
