############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project refactor-fpga
set_top execute_contract_fpga
add_files keccak256.h
add_files keccak256.c
add_files intx/intx.hpp
add_files intx/int128.hpp
add_files instructions.hpp
add_files evmc/instructions.h
add_files instructions.cpp
add_files instruction_traits.hpp
add_files evmc/helpers.h
add_files executor_fpga.hpp
add_files executor_fpga.cpp
add_files execution_state.hpp
add_files evmc/evmc.hpp
add_files evmc/evmc.h
add_files basic_string.hpp
add_files analysis.hpp
add_files analysis.cpp
add_files -tb tests/utils.h -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb tests/utils.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb tests/test-erc20.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "refactor" -flow_target vivado
set_part {xcvu11p-flga2577-1-e}
create_clock -period 10 -name default
config_export -format ip_catalog -output D:/projects/evmone_fpga/execute_contract_fpga.zip -rtl verilog
source "./refactor-fpga/refactor/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -output D:/projects/evmone_fpga/execute_contract_fpga.zip
