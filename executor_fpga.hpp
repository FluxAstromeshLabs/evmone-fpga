
#ifndef EXECUTOR_FPGA_H
#define EXECUTOR_FPGA_H

#include "evmone.h"
#include "analysis.hpp"
#include "hls_stream.h"

using namespace evmc;

void execute_contract_fpga(
	const evmc_message* msg,
	const uint8_t* code,
	size_t code_size,
	AdvancedExecutionState *state,
	hls::stream<intx::uint256> *storage_stream_in, hls::stream<intx::uint256> *storage_stream_out,
	evmc_result* result
);

#endif
