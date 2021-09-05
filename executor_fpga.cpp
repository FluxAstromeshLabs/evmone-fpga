#include "executor_fpga.hpp"
#include "instructions.hpp"
#include "instructions.cpp"
#include "analysis.hpp"
#include "opcodes_helpers.h"

using namespace evmc;

void execute_contract_fpga(
		const evmc_message* msg,
		const uint8_t* code,
		size_t code_size,
		AdvancedExecutionState *state,
		hls::stream<intx::uint256> *storage_stream_in,
		hls::stream<intx::uint256> *storage_stream_out,
		evmc_result* result
	) {
	// host context seems not be used anywhere
	evmc_host_context* ctx = NULL;
	evmc_host_interface mocked_host;
	const auto rev = EVMC_LONDON;

	// create state
	state->reset(*msg, rev, mocked_host, ctx, code, code_size);
	size_t code_pos = 0;
	uint256 tmp_number;
	int count = 0;
	while(code_pos < code_size) {
		// analyse and run
		auto opcode = code[code_pos++];
		// printf("%d. Running opcode: %02x > %s\n", code_pos, opcode, instr::traits[opcode].name);
		int gas_cost = default_op_table[opcode].gas_cost;
		if (gas_cost < 0) {
			state->status = EVMC_INVALID_INSTRUCTION;
			code_pos = code_size; // jump to end
			continue;
		}

		if (state->gas_left < gas_cost) {
			state->status = EVMC_OUT_OF_GAS;
			code_pos = code_size; // jump to end
			continue;
		}

		state->gas_left -= gas_cost;

		switch(opcode) {
		case OP_JUMPDEST: // case OPX_BEGINBLOCK:
			// do nothing, no gas cost as well
			break;

		case ANY_SMALL_PUSH:
		case ANY_LARGE_PUSH: {
				const auto push_size = static_cast<size_t>(opcode - OP_PUSH1) + 1;
				const auto push_end = std::min(code_pos + push_size, code_size);
				// set to 0
				memset(&tmp_number[0], 0, 32);
				const auto push_value_bytes = intx::as_bytes(tmp_number);

				// assign a = code[code_pos:push_end]
				for(int i = push_size - 1; code_pos < push_end; i--, code_pos++) {
					push_value_bytes[i] = code[code_pos];
				}
				state->stack.push(tmp_number);
			}
			break;

		case OP_POP:
			pop(state->stack);
			break;

		case OP_ADD:
			add(state->stack);
			break;
		case OP_MUL:
			mul(state->stack);
			break;
		case OP_SUB:
			sub(state->stack);
			break;
		case OP_DIV:
			div(state->stack);
			break;
		case OP_SDIV:
			sdiv(state->stack);
			break;
		case OP_MOD:
			mod(state->stack);
			break;
		case OP_SMOD:
			smod(state->stack);
			break;
		case OP_ADDMOD:
			addmod(state->stack);
			break;
		case OP_MULMOD:
			mulmod(state->stack);
			break;
		case OP_EXP:
			exp(*state);
			break;
		case OP_SIGNEXTEND:
			signextend(state->stack);
			break;
		case OP_LT:
			lt(state->stack);
			break;
		case OP_GT:
			gt(state->stack);
			break;
		case OP_SLT:
			slt(state->stack);
			break;
		case OP_SGT:
			sgt(state->stack);
			break;
		case OP_EQ:
			eq(state->stack);
			break;
		case OP_ISZERO:
			state->stack.top() = state->stack.top() == 0;
			break;
		case OP_AND:
			and_(state->stack);
			break;
		case OP_OR:
			or_(state->stack);
			break;
		case OP_XOR:
			xor_(state->stack);
			break;
		case OP_NOT:
			not_(state->stack);
			break;
		case OP_BYTE:
			byte(state->stack);
			break;
		case OP_SHL:
			shl(state->stack);
			break;
		case OP_SHR:
			shr(state->stack);
			break;
		case OP_SAR:
			sar(state->stack);
			break;
		case OP_KECCAK256:
			keccak256(*state);
			break;
		case OP_CODESIZE:
			printf("Code size: %d\n", code_size);
			state->stack.push(code_size);
			break;
		case OP_CODECOPY:
			codecopy(*state);
			break;

		case OP_DUP1:
		case OP_DUP2:
		case OP_DUP3:
		case OP_DUP4:
		case OP_DUP5:
		case OP_DUP6:
		case OP_DUP7:
		case OP_DUP8:
		case OP_DUP9:
		case OP_DUP10:
		case OP_DUP11:
		case OP_DUP12:
		case OP_DUP13:
		case OP_DUP14:
		case OP_DUP15:
		case OP_DUP16:
			printf("DUP\n");
			for(int i = 0; i<4; ++i) {
				printf("%x ", state->stack[opcode-OP_DUP1][i]);
			}
			printf("\n");
			state->stack.push(state->stack[opcode-OP_DUP1]);
			break;
		case OP_SWAP1:
			swap<1>(state->stack);
			break;
		case OP_SWAP2:
			swap<2>(state->stack);
			break;
		case OP_SWAP3:
			swap<3>(state->stack);
			break;
		case OP_SWAP4:
			swap<4>(state->stack);
			break;
		case OP_SWAP5:
			swap<5>(state->stack);
			break;
		case OP_SWAP6:
			swap<6>(state->stack);
			break;
		case OP_SWAP7:
			swap<7>(state->stack);
			break;
		case OP_SWAP8:
			swap<8>(state->stack);
			break;
		case OP_SWAP9:
			swap<9>(state->stack);
			break;
		case OP_SWAP10:
			swap<10>(state->stack);
			break;
		case OP_SWAP11:
			swap<11>(state->stack);
			break;
		case OP_SWAP12:
			swap<12>(state->stack);
			break;
		case OP_SWAP13:
			swap<13>(state->stack);
			break;
		case OP_SWAP14:
			swap<14>(state->stack);
			break;
		case OP_SWAP15:
			swap<15>(state->stack);
			break;
		case OP_SWAP16:
			swap<16>(state->stack);
			break;
		case OP_JUMPI:
			// the jumpdest could be any where
			if (state->stack[1] != 0) {
				code_pos = static_cast<size_t>(state->stack[0]);
			}
			else
			{
				opcode++;
			}
			state->stack.pop();
			state->stack.pop();
			break;

		case OP_JUMP:
			code_pos = static_cast<size_t>(state->stack.pop());
			break;
		case OP_PC:
			state->stack.push(code_pos-1);
			break;
		case OP_ORIGIN:
			origin(*state);
			break;
		case OP_CALLER:
			caller(*state);
			break;
		case OP_CALLVALUE:
			callvalue(*state);
			break;
		case OP_CALLDATALOAD:
			calldataload(*state);
			break;
		case OP_CALLDATASIZE:
			calldatasize(*state);
			break;
		case OP_CALLDATACOPY:
			calldatacopy(*state);
			break;
		case OP_EXTCODESIZE:
			if (extcodesize(*state) == EVMC_OUT_OF_GAS) {
				state->status = EVMC_OUT_OF_GAS;
				code_pos = code_size; // exit the loop
			}
			break;
		case OP_EXTCODECOPY:
			if (extcodecopy(*state) == EVMC_OUT_OF_GAS) {
				state->status = EVMC_OUT_OF_GAS;
				code_pos = code_size; // exit the loop
			}
		case OP_MLOAD:
			mload(*state);
			break;
		case OP_MSTORE:
			mstore(*state);
			break;
		case OP_MSTORE8:
			mstore8(*state);
			break;
		case OP_SLOAD:
			{
				auto key = state->stack.pop();
				// request to read
				storage_stream_out->write(intx::uint256(0));
				storage_stream_out->write(key);

				// receive data
				uint256 val = storage_stream_in->read();
				state->stack.push(val);
			}
			break;
		case OP_SSTORE:
			{
				auto key = state->stack.pop();
				auto value = state->stack.pop();
				printf("Some thing is requested to write\n");
				// request host to write
				storage_stream_out->write(key);
				storage_stream_out->write(value);
			}
			break;

		case OP_RETURN: {
				const auto offset = state->stack[0];
				const auto size   = state->stack[1];

				// check gas left is enough
				if (!check_memory(*state, offset, size)) {
					// printf("Out of gas");
					state->status = EVMC_OUT_OF_GAS;
					break;
				}

				state->output_size = static_cast<size_t>(size);
				if (state->output_size != 0)
					state->output_offset = static_cast<size_t>(offset);
				// condition to exit the loop
				code_pos = code_size;
				state->status = EVMC_SUCCESS;
				break;
			}
		case OP_CREATE:
		case OP_CALL:
		case OP_DELEGATECALL:
		case OP_CREATE2:
		case OP_STATICCALL:
			break;
		case OP_REVERT:
			state->status = EVMC_REVERT;
			code_pos = code_size;
			break;
		case OP_SELFDESTRUCT:
			state->status = selfdestruct(*state);
			break;
		case OP_STOP:
			state->status = EVMC_SUCCESS;
			code_pos = code_size;
			break;
		case OP_INVALID:
			state->status = EVMC_INVALID_INSTRUCTION;
			code_pos = code_size;
			break;
		default:
			// including OP_STOP
			state->status = EVMC_UNDEFINED_INSTRUCTION;
			code_pos = code_size;
			break;
		}
	}

	// return gas left
	(*result).gas_left = (state->status == EVMC_SUCCESS || state->status == EVMC_REVERT) ? state->gas_left : 0;
	// return status code
	(*result).status_code = state->status;
	// return output size
	(*result).output_size = state->output_size;
	// return output_data
	memcpy(&result->output_data, &state->memory[state->output_offset], state->output_size);
}
