set moduleName udivrem_knuth_1
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
set C_modelName {udivrem_knuth.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ q int 64 regular {array 8 { 0 3 } 0 1 }  }
	{ u int 64 regular {array 8 { 2 2 } 1 1 }  }
	{ ulen int 4 regular  }
	{ d int 64 regular {array 8 { 1 3 } 1 1 }  }
	{ dlen int 4 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "q", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "u", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "ulen", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "d", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "dlen", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ q_address0 sc_out sc_lv 3 signal 0 } 
	{ q_ce0 sc_out sc_logic 1 signal 0 } 
	{ q_we0 sc_out sc_logic 1 signal 0 } 
	{ q_d0 sc_out sc_lv 64 signal 0 } 
	{ u_address0 sc_out sc_lv 3 signal 1 } 
	{ u_ce0 sc_out sc_logic 1 signal 1 } 
	{ u_we0 sc_out sc_logic 1 signal 1 } 
	{ u_d0 sc_out sc_lv 64 signal 1 } 
	{ u_q0 sc_in sc_lv 64 signal 1 } 
	{ u_address1 sc_out sc_lv 3 signal 1 } 
	{ u_ce1 sc_out sc_logic 1 signal 1 } 
	{ u_we1 sc_out sc_logic 1 signal 1 } 
	{ u_d1 sc_out sc_lv 64 signal 1 } 
	{ u_q1 sc_in sc_lv 64 signal 1 } 
	{ ulen sc_in sc_lv 4 signal 2 } 
	{ d_address0 sc_out sc_lv 3 signal 3 } 
	{ d_ce0 sc_out sc_logic 1 signal 3 } 
	{ d_q0 sc_in sc_lv 64 signal 3 } 
	{ dlen sc_in sc_lv 4 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "q_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "q", "role": "address0" }} , 
 	{ "name": "q_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "q", "role": "ce0" }} , 
 	{ "name": "q_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "q", "role": "we0" }} , 
 	{ "name": "q_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "q", "role": "d0" }} , 
 	{ "name": "u_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u", "role": "address0" }} , 
 	{ "name": "u_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u", "role": "ce0" }} , 
 	{ "name": "u_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u", "role": "we0" }} , 
 	{ "name": "u_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "u", "role": "d0" }} , 
 	{ "name": "u_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "u", "role": "q0" }} , 
 	{ "name": "u_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u", "role": "address1" }} , 
 	{ "name": "u_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u", "role": "ce1" }} , 
 	{ "name": "u_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u", "role": "we1" }} , 
 	{ "name": "u_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "u", "role": "d1" }} , 
 	{ "name": "u_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "u", "role": "q1" }} , 
 	{ "name": "ulen", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ulen", "role": "default" }} , 
 	{ "name": "d_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "d", "role": "address0" }} , 
 	{ "name": "d_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d", "role": "ce0" }} , 
 	{ "name": "d_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "d", "role": "q0" }} , 
 	{ "name": "dlen", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "dlen", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15"],
		"CDFG" : "udivrem_knuth_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "q", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "u", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_submul_fu_330", "Port" : "r"}]},
			{"Name" : "ulen", "Type" : "None", "Direction" : "I"},
			{"Name" : "d", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_submul_fu_330", "Port" : "y"}]},
			{"Name" : "dlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "intx_internal_reciprocal_table", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.intx_internal_reciprocal_table_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_submul_fu_330", "Parent" : "0", "Child" : ["3"],
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
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_submul_fu_330.mul_64ns_64ns_128_1_1_U230", "Parent" : "2"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_41ns_22ns_62_1_1_U236", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_41ns_32ns_64_1_1_U237", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32ns_64_1_1_U238", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_46ns_64s_64_1_1_U239", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_46ns_110_1_1_U240", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_64ns_128_1_1_U241", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_64s_64_1_1_U242", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_64ns_128_1_1_U243", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_64ns_128_1_1_U244", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_64s_64_1_1_U245", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_64ns_128_1_1_U246", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_11ns_11ns_22_4_1_U247", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	udivrem_knuth_1 {
		q {Type O LastRead -1 FirstWrite 25}
		u {Type IO LastRead 24 FirstWrite 3}
		ulen {Type I LastRead 10 FirstWrite -1}
		d {Type I LastRead 23 FirstWrite -1}
		dlen {Type I LastRead 0 FirstWrite -1}
		intx_internal_reciprocal_table {Type I LastRead -1 FirstWrite -1}}
	submul {
		r {Type IO LastRead 2 FirstWrite 3}
		x_offset {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 1 FirstWrite -1}
		len {Type I LastRead 0 FirstWrite -1}
		multiplier {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	q { ap_memory {  { q_address0 mem_address 1 3 }  { q_ce0 mem_ce 1 1 }  { q_we0 mem_we 1 1 }  { q_d0 mem_din 1 64 } } }
	u { ap_memory {  { u_address0 mem_address 1 3 }  { u_ce0 mem_ce 1 1 }  { u_we0 mem_we 1 1 }  { u_d0 mem_din 1 64 }  { u_q0 mem_dout 0 64 }  { u_address1 MemPortADDR2 1 3 }  { u_ce1 MemPortCE2 1 1 }  { u_we1 MemPortWE2 1 1 }  { u_d1 MemPortDIN2 1 64 }  { u_q1 MemPortDOUT2 0 64 } } }
	ulen { ap_none {  { ulen in_data 0 4 } } }
	d { ap_memory {  { d_address0 mem_address 1 3 }  { d_ce0 mem_ce 1 1 }  { d_q0 mem_dout 0 64 } } }
	dlen { ap_none {  { dlen in_data 0 4 } } }
}
