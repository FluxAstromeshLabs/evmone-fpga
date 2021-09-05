#include <stdio.h>
#include <string.h>
#include <unordered_map>
#include "../executor_fpga.hpp"
#include "hls_stream.h"


uint8_t toInt(char hexChar);
void fromHex(const char* hexArray, uint8_t byteArray[], int length, size_t& counter);
// execute a function
// execute from beginning of compiled contract to call constructor
void 	execute_contract_function(
			const uint8_t* bytecode,
			size_t code_size,
			evmc_message* msg,
			evmc_result* execution_result
		);
void printHex(const char* prompt, const uint8_t* byteArray, size_t sz);
