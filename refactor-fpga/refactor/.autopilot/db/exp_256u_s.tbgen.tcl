set moduleName exp_256u_s
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
set C_modelName {exp<256u>}
set C_modelType { int 256 }
set C_modelArgList {
	{ p_read int 64 regular  }
	{ p_read1 int 64 regular  }
	{ p_read2 int 64 regular  }
	{ p_read3 int 64 regular  }
	{ base_word_num_bits int 64 regular  }
	{ base_word_num_bits4 int 64 regular  }
	{ base_word_num_bits5 int 64 regular  }
	{ base_word_num_bits6 int 64 regular  }
	{ exponent_word_num_bits int 64 regular  }
	{ exponent_word_num_bits7 int 64 regular  }
	{ exponent_word_num_bits8 int 64 regular  }
	{ exponent_word_num_bits9 int 64 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "p_read3", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "base_word_num_bits", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "base_word_num_bits4", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "base_word_num_bits5", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "base_word_num_bits6", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "exponent_word_num_bits", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "exponent_word_num_bits7", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "exponent_word_num_bits8", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "exponent_word_num_bits9", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 256} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_read sc_in sc_lv 64 signal 0 } 
	{ p_read1 sc_in sc_lv 64 signal 1 } 
	{ p_read2 sc_in sc_lv 64 signal 2 } 
	{ p_read3 sc_in sc_lv 64 signal 3 } 
	{ base_word_num_bits sc_in sc_lv 64 signal 4 } 
	{ base_word_num_bits4 sc_in sc_lv 64 signal 5 } 
	{ base_word_num_bits5 sc_in sc_lv 64 signal 6 } 
	{ base_word_num_bits6 sc_in sc_lv 64 signal 7 } 
	{ exponent_word_num_bits sc_in sc_lv 64 signal 8 } 
	{ exponent_word_num_bits7 sc_in sc_lv 64 signal 9 } 
	{ exponent_word_num_bits8 sc_in sc_lv 64 signal 10 } 
	{ exponent_word_num_bits9 sc_in sc_lv 64 signal 11 } 
	{ ap_return_0 sc_out sc_lv 64 signal -1 } 
	{ ap_return_1 sc_out sc_lv 64 signal -1 } 
	{ ap_return_2 sc_out sc_lv 64 signal -1 } 
	{ ap_return_3 sc_out sc_lv 64 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }} , 
 	{ "name": "p_read2", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p_read2", "role": "default" }} , 
 	{ "name": "p_read3", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p_read3", "role": "default" }} , 
 	{ "name": "base_word_num_bits", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "base_word_num_bits", "role": "default" }} , 
 	{ "name": "base_word_num_bits4", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "base_word_num_bits4", "role": "default" }} , 
 	{ "name": "base_word_num_bits5", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "base_word_num_bits5", "role": "default" }} , 
 	{ "name": "base_word_num_bits6", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "base_word_num_bits6", "role": "default" }} , 
 	{ "name": "exponent_word_num_bits", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "exponent_word_num_bits", "role": "default" }} , 
 	{ "name": "exponent_word_num_bits7", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "exponent_word_num_bits7", "role": "default" }} , 
 	{ "name": "exponent_word_num_bits8", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "exponent_word_num_bits8", "role": "default" }} , 
 	{ "name": "exponent_word_num_bits9", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "exponent_word_num_bits9", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "8", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39"],
		"CDFG" : "exp_256u_s",
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
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "base_word_num_bits", "Type" : "None", "Direction" : "I"},
			{"Name" : "base_word_num_bits4", "Type" : "None", "Direction" : "I"},
			{"Name" : "base_word_num_bits5", "Type" : "None", "Direction" : "I"},
			{"Name" : "base_word_num_bits6", "Type" : "None", "Direction" : "I"},
			{"Name" : "exponent_word_num_bits", "Type" : "None", "Direction" : "I"},
			{"Name" : "exponent_word_num_bits7", "Type" : "None", "Direction" : "I"},
			{"Name" : "exponent_word_num_bits8", "Type" : "None", "Direction" : "I"},
			{"Name" : "exponent_word_num_bits9", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_operator_mul_assign_256u_uint_256u_void_fu_738", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7"],
		"CDFG" : "operator_mul_assign_256u_uint_256u_void",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "21", "EstimateLatencyMax" : "33",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x12_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_mul_assign_256u_uint_256u_void_fu_738.mux_42_64_1_1_U140", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_mul_assign_256u_uint_256u_void_fu_738.mux_42_64_1_1_U141", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_mul_assign_256u_uint_256u_void_fu_738.mul_64ns_64ns_128_1_1_U142", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_mul_assign_256u_uint_256u_void_fu_738.mux_42_64_1_1_U143", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_mul_assign_256u_uint_256u_void_fu_738.mux_42_64_1_1_U144", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_mul_assign_256u_uint_256u_void_fu_738.mul_64s_64s_64_1_1_U145", "Parent" : "1"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_operator_256u_uint_256u_void_1_fu_754", "Parent" : "0", "Child" : ["9", "10", "11", "12", "13", "14"],
		"CDFG" : "operator_256u_uint_256u_void_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "21", "EstimateLatencyMax" : "33",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "y_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "y12_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "y2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "y3_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_256u_uint_256u_void_1_fu_754.mux_42_64_1_1_U156", "Parent" : "8"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_256u_uint_256u_void_1_fu_754.mux_42_64_1_1_U157", "Parent" : "8"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_256u_uint_256u_void_1_fu_754.mul_64ns_64ns_128_1_1_U158", "Parent" : "8"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_256u_uint_256u_void_1_fu_754.mux_42_64_1_1_U159", "Parent" : "8"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_256u_uint_256u_void_1_fu_754.mux_42_64_1_1_U160", "Parent" : "8"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_256u_uint_256u_void_1_fu_754.mul_64s_64s_64_1_1_U161", "Parent" : "8"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U166", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U167", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U168", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U169", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U170", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U171", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U172", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U173", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U174", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U175", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U176", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U177", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U178", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U179", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U180", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U181", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U182", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_1_1_1_U183", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_1_1_1_U184", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U185", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U186", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_1_1_1_U187", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U188", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_1_1_1_U189", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U190", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	exp_256u_s {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		base_word_num_bits {Type I LastRead 0 FirstWrite -1}
		base_word_num_bits4 {Type I LastRead 0 FirstWrite -1}
		base_word_num_bits5 {Type I LastRead 0 FirstWrite -1}
		base_word_num_bits6 {Type I LastRead 0 FirstWrite -1}
		exponent_word_num_bits {Type I LastRead 0 FirstWrite -1}
		exponent_word_num_bits7 {Type I LastRead 0 FirstWrite -1}
		exponent_word_num_bits8 {Type I LastRead 0 FirstWrite -1}
		exponent_word_num_bits9 {Type I LastRead 0 FirstWrite -1}}
	operator_mul_assign_256u_uint_256u_void {
		x_read {Type I LastRead 0 FirstWrite -1}
		x12_read {Type I LastRead 0 FirstWrite -1}
		x2_read {Type I LastRead 0 FirstWrite -1}
		x3_read {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}}
	operator_256u_uint_256u_void_1 {
		y_read {Type I LastRead 0 FirstWrite -1}
		y12_read {Type I LastRead 0 FirstWrite -1}
		y2_read {Type I LastRead 0 FirstWrite -1}
		y3_read {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p_read { ap_none {  { p_read in_data 0 64 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 64 } } }
	p_read2 { ap_none {  { p_read2 in_data 0 64 } } }
	p_read3 { ap_none {  { p_read3 in_data 0 64 } } }
	base_word_num_bits { ap_none {  { base_word_num_bits in_data 0 64 } } }
	base_word_num_bits4 { ap_none {  { base_word_num_bits4 in_data 0 64 } } }
	base_word_num_bits5 { ap_none {  { base_word_num_bits5 in_data 0 64 } } }
	base_word_num_bits6 { ap_none {  { base_word_num_bits6 in_data 0 64 } } }
	exponent_word_num_bits { ap_none {  { exponent_word_num_bits in_data 0 64 } } }
	exponent_word_num_bits7 { ap_none {  { exponent_word_num_bits7 in_data 0 64 } } }
	exponent_word_num_bits8 { ap_none {  { exponent_word_num_bits8 in_data 0 64 } } }
	exponent_word_num_bits9 { ap_none {  { exponent_word_num_bits9 in_data 0 64 } } }
}
