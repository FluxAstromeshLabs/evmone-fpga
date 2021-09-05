set moduleName submul
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
set C_modelName {submul}
set C_modelType { int 64 }
set C_modelArgList {
	{ r int 64 regular {array 8 { 0 1 } 1 1 }  }
	{ x_offset int 3 regular  }
	{ y int 64 regular {array 8 { 1 3 } 1 1 }  }
	{ len int 4 regular  }
	{ multiplier int 64 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "r", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "x_offset", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "y", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "len", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "multiplier", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 64} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ r_address0 sc_out sc_lv 3 signal 0 } 
	{ r_ce0 sc_out sc_logic 1 signal 0 } 
	{ r_we0 sc_out sc_logic 1 signal 0 } 
	{ r_d0 sc_out sc_lv 64 signal 0 } 
	{ r_address1 sc_out sc_lv 3 signal 0 } 
	{ r_ce1 sc_out sc_logic 1 signal 0 } 
	{ r_q1 sc_in sc_lv 64 signal 0 } 
	{ x_offset sc_in sc_lv 3 signal 1 } 
	{ y_address0 sc_out sc_lv 3 signal 2 } 
	{ y_ce0 sc_out sc_logic 1 signal 2 } 
	{ y_q0 sc_in sc_lv 64 signal 2 } 
	{ len sc_in sc_lv 4 signal 3 } 
	{ multiplier sc_in sc_lv 64 signal 4 } 
	{ ap_return sc_out sc_lv 64 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "r", "role": "address0" }} , 
 	{ "name": "r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r", "role": "ce0" }} , 
 	{ "name": "r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r", "role": "we0" }} , 
 	{ "name": "r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "r", "role": "d0" }} , 
 	{ "name": "r_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "r", "role": "address1" }} , 
 	{ "name": "r_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r", "role": "ce1" }} , 
 	{ "name": "r_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "r", "role": "q1" }} , 
 	{ "name": "x_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_offset", "role": "default" }} , 
 	{ "name": "y_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "y", "role": "address0" }} , 
 	{ "name": "y_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "ce0" }} , 
 	{ "name": "y_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "y", "role": "q0" }} , 
 	{ "name": "len", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "len", "role": "default" }} , 
 	{ "name": "multiplier", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "multiplier", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "submul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "x_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "len", "Type" : "None", "Direction" : "I"},
			{"Name" : "multiplier", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_64ns_128_1_1_U230", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	submul {
		r {Type IO LastRead 2 FirstWrite 3}
		x_offset {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 1 FirstWrite -1}
		len {Type I LastRead 0 FirstWrite -1}
		multiplier {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4", "Max" : "11"}
	, {"Name" : "Interval", "Min" : "4", "Max" : "11"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	r { ap_memory {  { r_address0 mem_address 1 3 }  { r_ce0 mem_ce 1 1 }  { r_we0 mem_we 1 1 }  { r_d0 mem_din 1 64 }  { r_address1 MemPortADDR2 1 3 }  { r_ce1 MemPortCE2 1 1 }  { r_q1 MemPortDOUT2 0 64 } } }
	x_offset { ap_none {  { x_offset in_data 0 3 } } }
	y { ap_memory {  { y_address0 mem_address 1 3 }  { y_ce0 mem_ce 1 1 }  { y_q0 mem_dout 0 64 } } }
	len { ap_none {  { len in_data 0 4 } } }
	multiplier { ap_none {  { multiplier in_data 0 64 } } }
}
