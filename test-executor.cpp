#include <stdio.h>
#include "executor_fpga.hpp"
#include <string.h>
#include "hls_stream.h"
#include <thread>
#include <unordered_map>

uint8_t code[8192];
size_t output_size;
evmc_result execution_result;
evmc_message msg;
AdvancedExecutionState state;
hls::stream<uint256> storage_stream_in, storage_stream_out;

bool is_executing;

void storage_handler() {
	intx::uint256 key, value;
	while(is_executing) {
		if (!storage_stream_out.empty()) {
			key = storage_stream_out.read();
			value = storage_stream_out.read();
			printf("storage write needed:");
			for(int i = 0; i<4; ++i) {
				printf("%d ", value[i]);
			}
			break;
		}
	}
}

int main() {

	// paste contract bytecode (hex) here
	const char* bytecode =
"608060405234801561001057600080fd5b50610202806100206000396000f3fe608060405234801561001057600080fd5b50600436106100365760003560e01c8063abc721061461003b578063cc4f2b7414610059575b600080fd5b610043610075565b604051610050919061010b565b60405180910390f35b610073600480360381019061006e91906100c0565b610095565b005b60008060019050600060029050808261008e9190610126565b9250505090565b80826100a19190610126565b6000819055505050565b6000813590506100ba816101b5565b92915050565b600080604083850312156100d357600080fd5b60006100e1858286016100ab565b92505060206100f2858286016100ab565b9150509250929050565b6101058161017c565b82525050565b600060208201905061012060008301846100fc565b92915050565b60006101318261017c565b915061013c8361017c565b9250827fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff0382111561017157610170610186565b5b828201905092915050565b6000819050919050565b7f4e487b7100000000000000000000000000000000000000000000000000000000600052601160045260246000fd5b6101be8161017c565b81146101c957600080fd5b5056fea2646970667358221220f116cdfdf53a63653f184a987249860fb6766b644d098ff0f21c82c4b77f465e64736f6c63430008040033";

	// paste call data
	// 32 bytes zeros (hex): 0000000000000000000000000000000000000000000000000000000000000000
	// asume that we call calculate(5,3)
	const char* callData = "cc4f2b7400000000000000000000000000000000000000000000000000000000000000050000000000000000000000000000000000000000000000000000000000000003";

	is_executing = true;
	std::thread storage_thread(storage_handler);

	// input call data to message
	msg.input_size = 0;

	// convert hex to bytes for callData
	fromHex(callData, msg.input_data, strlen(callData), msg.input_size);

	size_t gas_limit = 10000;

	// convert hex to bytes for bytecode
	size_t code_size = 0;
	fromHex(bytecode, code, strlen(bytecode), code_size);

	// execute contract
	execute_contract(bytecode, code_size, &msg, gas_limit, &execution_result);

	// attach this thread to main thread
	storage_thread.join();
	is_executing = false;

	// print execution_result
	printf("output data size: %d\n", execution_result.output_size);
	printf("output data:\n");
	for(int i = 0; i<execution_result.output_size; ++i) {
		printf("%02x", execution_result.output_data[i]);
	}

	printf("\nGas left: %d\n", execution_result.gas_left);
	return 0;

	// now run the code
}
