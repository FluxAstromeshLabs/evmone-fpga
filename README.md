
# EVMONE-FPGA - An ethereum virtual machine on fpga

## Intro:

Firstly, we can start with debrief of terms:

### EVM

EVM stands for the **Ethereum Virtual Machine**, a state machine in charge of executing bytecodes and maintaining consensus state of the Ethereum blockchain (and other chain using EVM bytecode).

EVM bytecode is a sequence of bytes that describe functions of a [smart contract](https://en.wikipedia.org/wiki/Smart_contract)

Regards to EVM, there are 3 elements we are concentrated on: its memory, stack and the bytecode.
We are about to design a hardcoded EVM on FPGA.

This repository used https://github.com/ethereum/evmone with some refactorization, so special thanks to evmone makers
Note: At the moment, this repo is a proof-of-concept version which is not fully-fledged and may not be used for any deployment purpose.

### FPGA

``Field-programmable gate array`` (FPGA) is a device which could be re-programmed after manufacturing. Containing different various programmable logic blocks and having abilities of configuring interconnects between blocks (much like connect wires in arbitrary patterns) as well as supporting memory elements, developers can have their complex combinomial functions executed their program in a hardware context on FPGA. Execution of programs on FPGA will be extremely fast, which will support trials and iterations before the program being fully hardwared

### HLS

HLS stands for High level synthesis, which sythesize C/C++ code into hardware description language (HDL)

### Purpose of this research

We are about to design a hardcoded EVM on FPGA to increase execution performance, which allows higher throughput for transactions, so that every device can have full power to be a node in Ethereum

Directory layout

```
├───evmc
├───intx
├───refactor-fpga
│   ├───.apc
│   │   ├───.src
│   │   └───.tb
│   ├───.reference
│   ├───.settings
│   ├───Debug
│   │   ├───source
│   │   └───testbench
│   └───refactor
│       ├───.autopilot
│       │   └───db
│       ├───.debug
│       ├───.tcls
│       ├───csim
│       │   ├───build
│       │   │   ├───apcc_db
│       │   │   └───obj
│       │   └───report
│       ├───impl
│       │   ├───misc
│       │   ├───verilog
│       │   └───vhdl
│       ├───sim
│       │   ├───autowrap
│       │   │   ├───systemc
│       │   │   └───testbench
│       │   ├───report
│       │   │   └───vhdl
│       │   ├───tv
│       │   │   ├───cdatafile
│       │   │   ├───rtldatafile
│       │   │   └───stream_size
│       │   ├───wrapc
│       │   │   └───obj
│       │   └───wrapc_pc
│       └───syn
│           ├───report
│           ├───verilog
│           └───vhdl
└───tests
```

## Run tests

- To compile and run tests, on ``Xillinx Vitis Hls``, ``Project > Run C Simulation`` will run as C code, which allow us to test logics for our code

### Synthesize

- Go ``Solution > Run C Synthesis > All solution``, it should take sometimes to complete synthesizing. 

### Inspect output

TBU

### Simulation

TBU

## Quick start

- We will use Windows in this research, can use Ubuntu. MacOS is not supported at the moment.

- Install vitix hls at Vitis hls 2020 (2020.2 will be used in this research): https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/vitis/2020-2.html

- Clone this repo: 

```
https://github.com/nhannamsiu/evmone-fpga.git
```

- Open project at ``evmone-fpga/refactor-fpga``, any source code will have ``*.c/*.cpp`` extension

- Just follow running tests as ellaborated 

## References

- EVM opcodes: https://ethervm.io/#opcodes

- Yet an introduction to vitis hls: https://www.xilinx.com/html_docs/xilinx2021_1/vitis_doc/introductionvitishls.html


# Appendix:

## To make evmone (implemented in C++) vitis hls fpga-synthesizable, following things should be remove:

- Dynamic memory allocation: Any declared variables should have compile-time known size because hardware cannot be shrinked, whearas many places in evmone implementation relies on C++ Standard template libraries (STL) which mostly use dynamic memory allocation.

- Pointer to pointer: In fpga synthesizable rule, it is illegal to have some pointer points to another one, pointer just can refer to a known variable since everything on hardware must be determistic. So, pointer to pointer must be eliminated

- Function variables: Functions code will be hardwired on hardware logic fabric, so that it could run seamlessly, function variables are prohibited because it cannot call a function address as CPU does. Function variable should be changed into static function implementation

- Storage access: We cannot directly access hard disk, so some instructions, such as ``SLOAD`` and ``SSTORE``, we have to use ``hls::stream`` to request input and output from/to host. Solution of using ``hls::stream`` to read from the host is currently not fully leveraged but it is still promising solution.

- C++17 standard: Evmone implementation requires C++17 standards while xillinx C++ compiler sticked to C++11. Some executable ``constexpr`` scopes are changed to static declaration

## Disabled OP_CODEs:

- Disability of these opcodes can avoid storage access:

```
OP_SLOAD

OP_SSTORE

OP_BLOCKHASH

OP_NUMBER

OP_SELFBALANCE

OP_CREATE

OP_CALL

OP_RETURN

OP_DELEGATECALL

OP_CREATE2

OP_STATICCALL
```

## Project in this repo

Project in /refactor-fpga is a working Xillinx project, a small test provided to demonstrate how to run a valid contract bytecode
