set moduleName sdivrem_256u_s
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
set C_modelName {sdivrem<256u>}
set C_modelType { int 512 }
set C_modelArgList {
	{ state int 256 regular {array 8986 { 1 1 } 1 1 }  }
	{ u int 19 regular  }
	{ v int 19 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "state", "interface" : "memory", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "u", "interface" : "wire", "bitwidth" : 19, "direction" : "READONLY"} , 
 	{ "Name" : "v", "interface" : "wire", "bitwidth" : 19, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 512} ]}
# RTL Port declarations: 
set portNum 22
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
	{ state_address1 sc_out sc_lv 14 signal 0 } 
	{ state_ce1 sc_out sc_logic 1 signal 0 } 
	{ state_q1 sc_in sc_lv 256 signal 0 } 
	{ u sc_in sc_lv 19 signal 1 } 
	{ v sc_in sc_lv 19 signal 2 } 
	{ ap_return_0 sc_out sc_lv 64 signal -1 } 
	{ ap_return_1 sc_out sc_lv 64 signal -1 } 
	{ ap_return_2 sc_out sc_lv 64 signal -1 } 
	{ ap_return_3 sc_out sc_lv 64 signal -1 } 
	{ ap_return_4 sc_out sc_lv 64 signal -1 } 
	{ ap_return_5 sc_out sc_lv 64 signal -1 } 
	{ ap_return_6 sc_out sc_lv 64 signal -1 } 
	{ ap_return_7 sc_out sc_lv 64 signal -1 } 
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
 	{ "name": "state_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "state", "role": "address1" }} , 
 	{ "name": "state_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state", "role": "ce1" }} , 
 	{ "name": "state_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "state", "role": "q1" }} , 
 	{ "name": "u", "direction": "in", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "u", "role": "default" }} , 
 	{ "name": "v", "direction": "in", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "v", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }} , 
 	{ "name": "ap_return_4", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_4", "role": "default" }} , 
 	{ "name": "ap_return_5", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_5", "role": "default" }} , 
 	{ "name": "ap_return_6", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_6", "role": "default" }} , 
 	{ "name": "ap_return_7", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_7", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "89", "96", "104", "105", "106", "107", "108", "109"],
		"CDFG" : "sdivrem_256u_s",
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
			{"Name" : "state", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "grp_operator_256u_1_fu_487", "Port" : "state"}]},
			{"Name" : "u", "Type" : "None", "Direction" : "I"},
			{"Name" : "v", "Type" : "None", "Direction" : "I"},
			{"Name" : "intx_internal_reciprocal_table", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_udivrem_256u_s_fu_465", "Port" : "intx_internal_reciprocal_table"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465", "Parent" : "0", "Child" : ["2", "3", "4", "30", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88"],
		"CDFG" : "udivrem_256u_s",
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
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "intx_internal_reciprocal_table", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_udivrem_knuth_fu_1090", "Port" : "intx_internal_reciprocal_table"},
					{"ID" : "30", "SubInstance" : "grp_udivrem_by2_1_fu_1111", "Port" : "intx_internal_reciprocal_table"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.intx_internal_reciprocal_table_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.na_numerator_word_num_bits_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.grp_udivrem_knuth_fu_1090", "Parent" : "1", "Child" : ["5", "6", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29"],
		"CDFG" : "udivrem_knuth",
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
			{"Name" : "q_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "q_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "q_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "q_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "u", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_submul_1_fu_446", "Port" : "r"}]},
			{"Name" : "ulen", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "dlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "intx_internal_reciprocal_table", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.grp_udivrem_knuth_fu_1090.intx_internal_reciprocal_table_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.grp_udivrem_knuth_fu_1090.grp_submul_1_fu_446", "Parent" : "4", "Child" : ["7", "8"],
		"CDFG" : "submul_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "x_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "y_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "y_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "y_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "y_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "len", "Type" : "None", "Direction" : "I"},
			{"Name" : "multiplier", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.grp_udivrem_knuth_fu_1090.grp_submul_1_fu_446.mux_42_64_1_1_U325", "Parent" : "6"},
	{"ID" : "8", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.grp_udivrem_knuth_fu_1090.grp_submul_1_fu_446.mul_64ns_64ns_128_1_1_U326", "Parent" : "6"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.grp_udivrem_knuth_fu_1090.mul_41ns_22ns_62_1_1_U335", "Parent" : "4"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.grp_udivrem_knuth_fu_1090.mul_41ns_32ns_64_1_1_U336", "Parent" : "4"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.grp_udivrem_knuth_fu_1090.mul_64s_32ns_64_1_1_U337", "Parent" : "4"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.grp_udivrem_knuth_fu_1090.mul_46ns_64s_64_1_1_U338", "Parent" : "4"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.grp_udivrem_knuth_fu_1090.mul_64ns_46ns_110_1_1_U339", "Parent" : "4"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.grp_udivrem_knuth_fu_1090.mul_64ns_64ns_128_1_1_U340", "Parent" : "4"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.grp_udivrem_knuth_fu_1090.mul_64s_64s_64_1_1_U341", "Parent" : "4"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.grp_udivrem_knuth_fu_1090.mul_64ns_64ns_128_1_1_U342", "Parent" : "4"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.grp_udivrem_knuth_fu_1090.mul_64ns_64ns_128_1_1_U343", "Parent" : "4"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.grp_udivrem_knuth_fu_1090.mul_64s_64s_64_1_1_U344", "Parent" : "4"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.grp_udivrem_knuth_fu_1090.mul_64ns_64ns_128_1_1_U345", "Parent" : "4"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.grp_udivrem_knuth_fu_1090.mux_42_64_1_1_U346", "Parent" : "4"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.grp_udivrem_knuth_fu_1090.mux_42_64_1_1_U347", "Parent" : "4"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.grp_udivrem_knuth_fu_1090.mux_42_1_1_1_U348", "Parent" : "4"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.grp_udivrem_knuth_fu_1090.mux_42_1_1_1_U349", "Parent" : "4"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.grp_udivrem_knuth_fu_1090.mux_42_64_1_1_U350", "Parent" : "4"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.grp_udivrem_knuth_fu_1090.mux_42_64_1_1_U351", "Parent" : "4"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.grp_udivrem_knuth_fu_1090.mux_42_1_1_1_U352", "Parent" : "4"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.grp_udivrem_knuth_fu_1090.mux_42_64_1_1_U353", "Parent" : "4"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.grp_udivrem_knuth_fu_1090.mux_42_1_1_1_U354", "Parent" : "4"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.grp_udivrem_knuth_fu_1090.mul_mul_11ns_11ns_22_4_1_U355", "Parent" : "4"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.grp_udivrem_by2_1_fu_1111", "Parent" : "1", "Child" : ["31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43"],
		"CDFG" : "udivrem_by2_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "20", "EstimateLatencyMax" : "28",
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
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.grp_udivrem_by2_1_fu_1111.intx_internal_reciprocal_table_U", "Parent" : "30"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.grp_udivrem_by2_1_fu_1111.mul_41ns_22ns_62_1_1_U309", "Parent" : "30"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.grp_udivrem_by2_1_fu_1111.mul_41ns_32ns_64_1_1_U310", "Parent" : "30"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.grp_udivrem_by2_1_fu_1111.mul_64s_32ns_64_1_1_U311", "Parent" : "30"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.grp_udivrem_by2_1_fu_1111.mul_46ns_64s_64_1_1_U312", "Parent" : "30"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.grp_udivrem_by2_1_fu_1111.mul_64ns_46ns_110_1_1_U313", "Parent" : "30"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.grp_udivrem_by2_1_fu_1111.mul_64ns_64ns_128_1_1_U314", "Parent" : "30"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.grp_udivrem_by2_1_fu_1111.mul_64s_64s_64_1_1_U315", "Parent" : "30"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.grp_udivrem_by2_1_fu_1111.mul_64ns_64ns_128_1_1_U316", "Parent" : "30"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.grp_udivrem_by2_1_fu_1111.mul_64ns_64ns_128_1_1_U317", "Parent" : "30"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.grp_udivrem_by2_1_fu_1111.mul_64s_64s_64_1_1_U318", "Parent" : "30"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.grp_udivrem_by2_1_fu_1111.mul_64ns_64ns_128_1_1_U319", "Parent" : "30"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.grp_udivrem_by2_1_fu_1111.mul_mul_11ns_11ns_22_4_1_U320", "Parent" : "30"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.mux_42_64_1_1_U367", "Parent" : "1"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.mux_42_64_1_1_U368", "Parent" : "1"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.mux_42_64_1_1_U369", "Parent" : "1"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.mux_42_64_1_1_U370", "Parent" : "1"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.mux_42_64_1_1_U371", "Parent" : "1"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.mux_42_64_1_1_U372", "Parent" : "1"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.mux_42_64_1_1_U373", "Parent" : "1"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.mux_42_64_1_1_U374", "Parent" : "1"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.mux_42_64_1_1_U375", "Parent" : "1"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.mux_42_64_1_1_U376", "Parent" : "1"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.mux_42_64_1_1_U377", "Parent" : "1"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.mux_42_64_1_1_U378", "Parent" : "1"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.mux_42_64_1_1_U379", "Parent" : "1"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.mux_42_64_1_1_U380", "Parent" : "1"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.mux_42_64_1_1_U381", "Parent" : "1"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.mux_42_64_1_1_x_U382", "Parent" : "1"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.mux_42_64_1_1_U383", "Parent" : "1"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.mux_42_1_1_1_U384", "Parent" : "1"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.mux_42_64_1_1_U385", "Parent" : "1"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.mux_42_1_1_1_U386", "Parent" : "1"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.mux_42_64_1_1_U387", "Parent" : "1"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.mux_42_1_1_1_U388", "Parent" : "1"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.mux_42_64_1_1_U389", "Parent" : "1"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.mux_42_1_1_1_U390", "Parent" : "1"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.mul_41ns_22ns_62_1_1_U391", "Parent" : "1"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.mul_41ns_32ns_64_1_1_U392", "Parent" : "1"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.mul_64s_32ns_64_1_1_U393", "Parent" : "1"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.mul_46ns_64s_64_1_1_U394", "Parent" : "1"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.mul_64ns_46ns_110_1_1_U395", "Parent" : "1"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.mul_64ns_64ns_128_1_1_U396", "Parent" : "1"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.mul_64ns_64ns_128_1_1_U397", "Parent" : "1"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.mul_64s_64s_64_1_1_U398", "Parent" : "1"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.mux_42_64_1_1_U399", "Parent" : "1"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.mux_42_64_1_1_U400", "Parent" : "1"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.mux_42_64_1_1_U401", "Parent" : "1"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.mux_42_64_1_1_U402", "Parent" : "1"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.mux_42_64_1_1_U403", "Parent" : "1"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.mux_42_64_1_1_U404", "Parent" : "1"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.mux_42_64_1_1_U405", "Parent" : "1"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.mux_42_64_1_1_U406", "Parent" : "1"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.mux_42_64_1_1_U407", "Parent" : "1"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.mux_42_64_1_1_U408", "Parent" : "1"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.mux_42_64_1_1_U409", "Parent" : "1"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.mux_42_64_1_1_U410", "Parent" : "1"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_256u_s_fu_465.mul_mul_11ns_11ns_22_4_1_U411", "Parent" : "1"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_operator_256u_1_fu_487", "Parent" : "0", "Child" : ["90", "91", "92", "93", "94", "95"],
		"CDFG" : "operator_256u_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "22", "EstimateLatencyMax" : "22",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_256u_1_fu_487.mux_42_64_1_1_U301", "Parent" : "89"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_256u_1_fu_487.mux_42_64_1_1_U302", "Parent" : "89"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_256u_1_fu_487.mux_42_64_1_1_U303", "Parent" : "89"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_256u_1_fu_487.mux_42_64_1_1_U304", "Parent" : "89"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_256u_1_fu_487.mux_42_64_1_1_U305", "Parent" : "89"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_256u_1_fu_487.mux_42_64_1_1_U306", "Parent" : "89"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_operator_sub_256u_fu_494", "Parent" : "0", "Child" : ["97", "98", "99", "100", "101", "102", "103"],
		"CDFG" : "operator_sub_256u",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
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
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_sub_256u_fu_494.mux_42_64_1_1_U421", "Parent" : "96"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_sub_256u_fu_494.mux_42_64_1_1_U422", "Parent" : "96"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_sub_256u_fu_494.mux_42_64_1_1_U423", "Parent" : "96"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_sub_256u_fu_494.mux_42_64_1_1_U424", "Parent" : "96"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_sub_256u_fu_494.mux_42_64_1_1_U425", "Parent" : "96"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_sub_256u_fu_494.mux_42_64_1_1_U426", "Parent" : "96"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_sub_256u_fu_494.mux_42_64_1_1_U427", "Parent" : "96"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_x0_U432", "Parent" : "0"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U433", "Parent" : "0"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U434", "Parent" : "0"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_x0_U435", "Parent" : "0"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U436", "Parent" : "0"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U437", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sdivrem_256u_s {
		state {Type I LastRead 9 FirstWrite -1}
		u {Type I LastRead 0 FirstWrite -1}
		v {Type I LastRead 0 FirstWrite -1}
		intx_internal_reciprocal_table {Type I LastRead -1 FirstWrite -1}}
	udivrem_256u_s {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		intx_internal_reciprocal_table {Type I LastRead -1 FirstWrite -1}}
	udivrem_knuth {
		q_0_read {Type I LastRead 9 FirstWrite -1}
		q_1_read {Type I LastRead 9 FirstWrite -1}
		q_2_read {Type I LastRead 9 FirstWrite -1}
		q_3_read {Type I LastRead 9 FirstWrite -1}
		u {Type IO LastRead 23 FirstWrite 2}
		ulen {Type I LastRead 9 FirstWrite -1}
		d_0_read {Type I LastRead 9 FirstWrite -1}
		d_1_read {Type I LastRead 9 FirstWrite -1}
		d_2_read {Type I LastRead 0 FirstWrite -1}
		d_3_read {Type I LastRead 0 FirstWrite -1}
		dlen {Type I LastRead 0 FirstWrite -1}
		intx_internal_reciprocal_table {Type I LastRead -1 FirstWrite -1}}
	submul_1 {
		r {Type IO LastRead 1 FirstWrite 2}
		x_offset {Type I LastRead 0 FirstWrite -1}
		y_0_read {Type I LastRead 0 FirstWrite -1}
		y_1_read {Type I LastRead 0 FirstWrite -1}
		y_2_read {Type I LastRead 0 FirstWrite -1}
		y_3_read {Type I LastRead 0 FirstWrite -1}
		len {Type I LastRead 0 FirstWrite -1}
		multiplier {Type I LastRead 0 FirstWrite -1}}
	udivrem_by2_1 {
		u {Type IO LastRead 14 FirstWrite 12}
		len {Type I LastRead 9 FirstWrite -1}
		p_read2 {Type I LastRead 9 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		intx_internal_reciprocal_table {Type I LastRead -1 FirstWrite -1}}
	operator_256u_1 {
		state {Type I LastRead 2 FirstWrite -1}
		x {Type I LastRead 0 FirstWrite -1}}
	operator_sub_256u {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	state { ap_memory {  { state_address0 mem_address 1 14 }  { state_ce0 mem_ce 1 1 }  { state_q0 mem_dout 0 256 }  { state_address1 MemPortADDR2 1 14 }  { state_ce1 MemPortCE2 1 1 }  { state_q1 MemPortDOUT2 0 256 } } }
	u { ap_none {  { u in_data 0 19 } } }
	v { ap_none {  { v in_data 0 19 } } }
}
