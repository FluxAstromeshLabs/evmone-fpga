set moduleName sha3_permutation_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {sha3_permutation.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ keccak_context int 64 regular {array 50 { 2 2 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "keccak_context", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ keccak_context_address0 sc_out sc_lv 6 signal 0 } 
	{ keccak_context_ce0 sc_out sc_logic 1 signal 0 } 
	{ keccak_context_we0 sc_out sc_lv 8 signal 0 } 
	{ keccak_context_d0 sc_out sc_lv 64 signal 0 } 
	{ keccak_context_q0 sc_in sc_lv 64 signal 0 } 
	{ keccak_context_address1 sc_out sc_lv 6 signal 0 } 
	{ keccak_context_ce1 sc_out sc_logic 1 signal 0 } 
	{ keccak_context_we1 sc_out sc_lv 8 signal 0 } 
	{ keccak_context_d1 sc_out sc_lv 64 signal 0 } 
	{ keccak_context_q1 sc_in sc_lv 64 signal 0 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "keccak_context_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "keccak_context", "role": "address0" }} , 
 	{ "name": "keccak_context_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "keccak_context", "role": "ce0" }} , 
 	{ "name": "keccak_context_we0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "keccak_context", "role": "we0" }} , 
 	{ "name": "keccak_context_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "keccak_context", "role": "d0" }} , 
 	{ "name": "keccak_context_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "keccak_context", "role": "q0" }} , 
 	{ "name": "keccak_context_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "keccak_context", "role": "address1" }} , 
 	{ "name": "keccak_context_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "keccak_context", "role": "ce1" }} , 
 	{ "name": "keccak_context_we1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "keccak_context", "role": "we1" }} , 
 	{ "name": "keccak_context_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "keccak_context", "role": "d1" }} , 
 	{ "name": "keccak_context_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "keccak_context", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "sha3_permutation_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "626", "EstimateLatencyMax" : "626",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "keccak_context", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "constants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.constants_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sha3_permutation_1 {
		keccak_context {Type IO LastRead 14 FirstWrite 14}
		constants {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "626", "Max" : "626"}
	, {"Name" : "Interval", "Min" : "626", "Max" : "626"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	keccak_context { ap_memory {  { keccak_context_address0 mem_address 1 6 }  { keccak_context_ce0 mem_ce 1 1 }  { keccak_context_we0 mem_we 1 8 }  { keccak_context_d0 mem_din 1 64 }  { keccak_context_q0 mem_dout 0 64 }  { keccak_context_address1 MemPortADDR2 1 6 }  { keccak_context_ce1 MemPortCE2 1 1 }  { keccak_context_we1 MemPortWE2 1 8 }  { keccak_context_d1 MemPortDIN2 1 64 }  { keccak_context_q1 MemPortDOUT2 0 64 } } }
}
