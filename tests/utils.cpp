#include "utils.h"

// global io stream
hls::stream<uint256> storage_stream_in, storage_stream_out;

// map hex => int
uint8_t toInt(char hexChar) {
	if ('A' <= hexChar && hexChar<='F') return 10 + hexChar - 'A';
	if ('a' <= hexChar && hexChar<='z') return 10 + hexChar - 'a';
	return hexChar-'0';
}

// hex to byte array
void fromHex(const char* hexArray, uint8_t byteArray[], int length, size_t& counter) {
	for(int i = 0; i<length; i+=2) {
		byteArray[counter++] = toInt(hexArray[i]) * 16 + toInt(hexArray[i+1]);
	}
}

// execute contract
void execute_contract_function(
		const uint8_t* bytecode,
		size_t code_size,
		evmc_message* msg,
		evmc_result* execution_result
	) {

	// execution state includes memory, stacks
	AdvancedExecutionState state;

	// execute a specific function
	execute_contract_fpga(
			msg, bytecode,
			code_size,
			&state,
			&storage_stream_in, &storage_stream_out,
			execution_result
	);
}


void printHex(const char* prompt, const uint8_t* byteArray, size_t sz) {
	printf("%s", prompt);
	for(int i = 0; i<sz; ++i) {
		printf("%02x", byteArray[i]);
	}
	printf("\n");
}
