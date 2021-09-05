set moduleName addmod
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
set C_modelName {addmod}
set C_modelType { int 64 }
set C_modelArgList {
	{ state int 256 regular {array 8986 { 1 3 } 1 1 }  }
	{ p_read int 64 regular  }
	{ p_read1 int 64 regular  }
	{ p_read2 int 64 regular  }
	{ p_read3 int 64 regular  }
	{ p_read4 int 64 regular  }
	{ p_read5 int 64 regular  }
	{ p_read6 int 64 regular  }
	{ p_read7 int 64 regular  }
	{ mod_r int 19 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "state", "interface" : "memory", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "p_read3", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "p_read4", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "p_read5", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "p_read6", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "p_read7", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "mod_r", "interface" : "wire", "bitwidth" : 19, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 64} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ state_address0 sc_out sc_lv 14 signal 0 } 
	{ state_ce0 sc_out sc_logic 1 signal 0 } 
	{ state_q0 sc_in sc_lv 256 signal 0 } 
	{ p_read sc_in sc_lv 64 signal 1 } 
	{ p_read1 sc_in sc_lv 64 signal 2 } 
	{ p_read2 sc_in sc_lv 64 signal 3 } 
	{ p_read3 sc_in sc_lv 64 signal 4 } 
	{ p_read4 sc_in sc_lv 64 signal 5 } 
	{ p_read5 sc_in sc_lv 64 signal 6 } 
	{ p_read6 sc_in sc_lv 64 signal 7 } 
	{ p_read7 sc_in sc_lv 64 signal 8 } 
	{ mod_r sc_in sc_lv 19 signal 9 } 
	{ ap_return sc_out sc_lv 64 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "state_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "state", "role": "address0" }} , 
 	{ "name": "state_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state", "role": "ce0" }} , 
 	{ "name": "state_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "state", "role": "q0" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }} , 
 	{ "name": "p_read2", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p_read2", "role": "default" }} , 
 	{ "name": "p_read3", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p_read3", "role": "default" }} , 
 	{ "name": "p_read4", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p_read4", "role": "default" }} , 
 	{ "name": "p_read5", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p_read5", "role": "default" }} , 
 	{ "name": "p_read6", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p_read6", "role": "default" }} , 
 	{ "name": "p_read7", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p_read7", "role": "default" }} , 
 	{ "name": "mod_r", "direction": "in", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "mod_r", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "49", "50", "51", "52", "53", "54", "55"],
		"CDFG" : "addmod",
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
			{"Name" : "state", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "mod_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "intx_internal_reciprocal_table", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_udivrem_512u_s_fu_332", "Port" : "intx_internal_reciprocal_table"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ref_tmp_1_i_i_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.y_word_num_bits_assign_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.n_word_num_bits_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_512u_s_fu_332", "Parent" : "0", "Child" : ["5", "6", "7", "8", "9", "10", "26", "40", "41", "42", "43", "44", "45", "46", "47", "48"],
		"CDFG" : "udivrem_512u_s",
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
			{"Name" : "agg_result_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "u", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "intx_internal_reciprocal_table", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_udivrem_by2_fu_1289", "Port" : "intx_internal_reciprocal_table"},
					{"ID" : "10", "SubInstance" : "grp_udivrem_knuth_1_fu_1278", "Port" : "intx_internal_reciprocal_table"}]}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_512u_s_fu_332.intx_internal_reciprocal_table_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_512u_s_fu_332.na_divisor_word_num_bits_U", "Parent" : "4"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_512u_s_fu_332.na_numerator_word_num_bits_U", "Parent" : "4"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_512u_s_fu_332.q_word_num_bits_U", "Parent" : "4"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_512u_s_fu_332.r_word_num_bits_U", "Parent" : "4"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_512u_s_fu_332.grp_udivrem_knuth_1_fu_1278", "Parent" : "4", "Child" : ["11", "12", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25"],
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
					{"ID" : "12", "SubInstance" : "grp_submul_fu_330", "Port" : "r"}]},
			{"Name" : "ulen", "Type" : "None", "Direction" : "I"},
			{"Name" : "d", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_submul_fu_330", "Port" : "y"}]},
			{"Name" : "dlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "intx_internal_reciprocal_table", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_512u_s_fu_332.grp_udivrem_knuth_1_fu_1278.intx_internal_reciprocal_table_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_512u_s_fu_332.grp_udivrem_knuth_1_fu_1278.grp_submul_fu_330", "Parent" : "10", "Child" : ["13"],
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
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_512u_s_fu_332.grp_udivrem_knuth_1_fu_1278.grp_submul_fu_330.mul_64ns_64ns_128_1_1_U230", "Parent" : "12"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_512u_s_fu_332.grp_udivrem_knuth_1_fu_1278.mul_41ns_22ns_62_1_1_U236", "Parent" : "10"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_512u_s_fu_332.grp_udivrem_knuth_1_fu_1278.mul_41ns_32ns_64_1_1_U237", "Parent" : "10"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_512u_s_fu_332.grp_udivrem_knuth_1_fu_1278.mul_64s_32ns_64_1_1_U238", "Parent" : "10"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_512u_s_fu_332.grp_udivrem_knuth_1_fu_1278.mul_46ns_64s_64_1_1_U239", "Parent" : "10"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_512u_s_fu_332.grp_udivrem_knuth_1_fu_1278.mul_64ns_46ns_110_1_1_U240", "Parent" : "10"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_512u_s_fu_332.grp_udivrem_knuth_1_fu_1278.mul_64ns_64ns_128_1_1_U241", "Parent" : "10"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_512u_s_fu_332.grp_udivrem_knuth_1_fu_1278.mul_64s_64s_64_1_1_U242", "Parent" : "10"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_512u_s_fu_332.grp_udivrem_knuth_1_fu_1278.mul_64ns_64ns_128_1_1_U243", "Parent" : "10"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_512u_s_fu_332.grp_udivrem_knuth_1_fu_1278.mul_64ns_64ns_128_1_1_U244", "Parent" : "10"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_512u_s_fu_332.grp_udivrem_knuth_1_fu_1278.mul_64s_64s_64_1_1_U245", "Parent" : "10"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_512u_s_fu_332.grp_udivrem_knuth_1_fu_1278.mul_64ns_64ns_128_1_1_U246", "Parent" : "10"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_512u_s_fu_332.grp_udivrem_knuth_1_fu_1278.mul_mul_11ns_11ns_22_4_1_U247", "Parent" : "10"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_512u_s_fu_332.grp_udivrem_by2_fu_1289", "Parent" : "4", "Child" : ["27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39"],
		"CDFG" : "udivrem_by2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "20", "EstimateLatencyMax" : "44",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "u", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "len", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "intx_internal_reciprocal_table", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_512u_s_fu_332.grp_udivrem_by2_fu_1289.intx_internal_reciprocal_table_U", "Parent" : "26"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_512u_s_fu_332.grp_udivrem_by2_fu_1289.mul_41ns_22ns_62_1_1_U207", "Parent" : "26"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_512u_s_fu_332.grp_udivrem_by2_fu_1289.mul_41ns_32ns_64_1_1_U208", "Parent" : "26"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_512u_s_fu_332.grp_udivrem_by2_fu_1289.mul_64s_32ns_64_1_1_U209", "Parent" : "26"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_512u_s_fu_332.grp_udivrem_by2_fu_1289.mul_46ns_64s_64_1_1_U210", "Parent" : "26"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_512u_s_fu_332.grp_udivrem_by2_fu_1289.mul_64ns_46ns_110_1_1_U211", "Parent" : "26"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_512u_s_fu_332.grp_udivrem_by2_fu_1289.mul_64ns_64ns_128_1_1_U212", "Parent" : "26"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_512u_s_fu_332.grp_udivrem_by2_fu_1289.mul_64s_64s_64_1_1_U213", "Parent" : "26"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_512u_s_fu_332.grp_udivrem_by2_fu_1289.mul_64ns_64ns_128_1_1_U214", "Parent" : "26"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_512u_s_fu_332.grp_udivrem_by2_fu_1289.mul_64ns_64ns_128_1_1_U215", "Parent" : "26"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_512u_s_fu_332.grp_udivrem_by2_fu_1289.mul_64s_64s_64_1_1_U216", "Parent" : "26"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_512u_s_fu_332.grp_udivrem_by2_fu_1289.mul_64ns_64ns_128_1_1_U217", "Parent" : "26"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_512u_s_fu_332.grp_udivrem_by2_fu_1289.mul_mul_11ns_11ns_22_4_1_U218", "Parent" : "26"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_512u_s_fu_332.mul_41ns_22ns_62_1_1_U253", "Parent" : "4"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_512u_s_fu_332.mul_41ns_32ns_64_1_1_U254", "Parent" : "4"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_512u_s_fu_332.mul_64s_32ns_64_1_1_U255", "Parent" : "4"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_512u_s_fu_332.mul_46ns_64s_64_1_1_U256", "Parent" : "4"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_512u_s_fu_332.mul_64ns_46ns_110_1_1_U257", "Parent" : "4"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_512u_s_fu_332.mul_64ns_64ns_128_1_1_U258", "Parent" : "4"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_512u_s_fu_332.mul_64ns_64ns_128_1_1_U259", "Parent" : "4"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_512u_s_fu_332.mul_64s_64s_64_1_1_U260", "Parent" : "4"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_512u_s_fu_332.mul_mul_11ns_11ns_22_4_1_U261", "Parent" : "4"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U284", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U285", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U286", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U287", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U288", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U289", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U290", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	addmod {
		state {Type I LastRead 6 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		mod_r {Type I LastRead 0 FirstWrite -1}
		intx_internal_reciprocal_table {Type I LastRead -1 FirstWrite -1}}
	udivrem_512u_s {
		agg_result_1 {Type O LastRead -1 FirstWrite 15}
		u {Type I LastRead 18 FirstWrite -1}
		v {Type I LastRead 13 FirstWrite -1}
		intx_internal_reciprocal_table {Type I LastRead -1 FirstWrite -1}}
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
		multiplier {Type I LastRead 0 FirstWrite -1}}
	udivrem_by2 {
		u {Type IO LastRead 14 FirstWrite 12}
		len {Type I LastRead 9 FirstWrite -1}
		p_read2 {Type I LastRead 9 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		intx_internal_reciprocal_table {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	state { ap_memory {  { state_address0 mem_address 1 14 }  { state_ce0 mem_ce 1 1 }  { state_q0 mem_dout 0 256 } } }
	p_read { ap_none {  { p_read in_data 0 64 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 64 } } }
	p_read2 { ap_none {  { p_read2 in_data 0 64 } } }
	p_read3 { ap_none {  { p_read3 in_data 0 64 } } }
	p_read4 { ap_none {  { p_read4 in_data 0 64 } } }
	p_read5 { ap_none {  { p_read5 in_data 0 64 } } }
	p_read6 { ap_none {  { p_read6 in_data 0 64 } } }
	p_read7 { ap_none {  { p_read7 in_data 0 64 } } }
	mod_r { ap_none {  { mod_r in_data 0 19 } } }
}
