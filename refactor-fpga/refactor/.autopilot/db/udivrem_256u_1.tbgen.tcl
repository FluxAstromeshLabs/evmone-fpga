set moduleName udivrem_256u_1
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
set C_modelName {udivrem<256u>.1}
set C_modelType { int 512 }
set C_modelArgList {
	{ state int 256 regular {array 8986 { 1 1 } 1 1 }  }
	{ p_read4 int 64 regular  }
	{ p_read5 int 64 regular  }
	{ p_read6 int 64 regular  }
	{ p_read7 int 64 regular  }
	{ u int 19 regular  }
	{ v int 19 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "state", "interface" : "memory", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "p_read4", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "p_read5", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "p_read6", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "p_read7", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "u", "interface" : "wire", "bitwidth" : 19, "direction" : "READONLY"} , 
 	{ "Name" : "v", "interface" : "wire", "bitwidth" : 19, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 512} ]}
# RTL Port declarations: 
set portNum 26
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
	{ p_read4 sc_in sc_lv 64 signal 1 } 
	{ p_read5 sc_in sc_lv 64 signal 2 } 
	{ p_read6 sc_in sc_lv 64 signal 3 } 
	{ p_read7 sc_in sc_lv 64 signal 4 } 
	{ u sc_in sc_lv 19 signal 5 } 
	{ v sc_in sc_lv 19 signal 6 } 
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
 	{ "name": "p_read4", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p_read4", "role": "default" }} , 
 	{ "name": "p_read5", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p_read5", "role": "default" }} , 
 	{ "name": "p_read6", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p_read6", "role": "default" }} , 
 	{ "name": "p_read7", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p_read7", "role": "default" }} , 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "29", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84"],
		"CDFG" : "udivrem_256u_1",
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
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "u", "Type" : "None", "Direction" : "I"},
			{"Name" : "v", "Type" : "None", "Direction" : "I"},
			{"Name" : "intx_internal_reciprocal_table", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_udivrem_by2_1_fu_1285", "Port" : "intx_internal_reciprocal_table"},
					{"ID" : "3", "SubInstance" : "grp_udivrem_knuth_fu_1264", "Port" : "intx_internal_reciprocal_table"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.intx_internal_reciprocal_table_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.na_numerator_word_num_bits_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_knuth_fu_1264", "Parent" : "0", "Child" : ["4", "5", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28"],
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
					{"ID" : "5", "SubInstance" : "grp_submul_1_fu_446", "Port" : "r"}]},
			{"Name" : "ulen", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "dlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "intx_internal_reciprocal_table", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_knuth_fu_1264.intx_internal_reciprocal_table_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_knuth_fu_1264.grp_submul_1_fu_446", "Parent" : "3", "Child" : ["6", "7"],
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
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_knuth_fu_1264.grp_submul_1_fu_446.mux_42_64_1_1_U325", "Parent" : "5"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_knuth_fu_1264.grp_submul_1_fu_446.mul_64ns_64ns_128_1_1_U326", "Parent" : "5"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_knuth_fu_1264.mul_41ns_22ns_62_1_1_U335", "Parent" : "3"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_knuth_fu_1264.mul_41ns_32ns_64_1_1_U336", "Parent" : "3"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_knuth_fu_1264.mul_64s_32ns_64_1_1_U337", "Parent" : "3"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_knuth_fu_1264.mul_46ns_64s_64_1_1_U338", "Parent" : "3"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_knuth_fu_1264.mul_64ns_46ns_110_1_1_U339", "Parent" : "3"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_knuth_fu_1264.mul_64ns_64ns_128_1_1_U340", "Parent" : "3"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_knuth_fu_1264.mul_64s_64s_64_1_1_U341", "Parent" : "3"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_knuth_fu_1264.mul_64ns_64ns_128_1_1_U342", "Parent" : "3"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_knuth_fu_1264.mul_64ns_64ns_128_1_1_U343", "Parent" : "3"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_knuth_fu_1264.mul_64s_64s_64_1_1_U344", "Parent" : "3"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_knuth_fu_1264.mul_64ns_64ns_128_1_1_U345", "Parent" : "3"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_knuth_fu_1264.mux_42_64_1_1_U346", "Parent" : "3"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_knuth_fu_1264.mux_42_64_1_1_U347", "Parent" : "3"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_knuth_fu_1264.mux_42_1_1_1_U348", "Parent" : "3"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_knuth_fu_1264.mux_42_1_1_1_U349", "Parent" : "3"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_knuth_fu_1264.mux_42_64_1_1_U350", "Parent" : "3"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_knuth_fu_1264.mux_42_64_1_1_U351", "Parent" : "3"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_knuth_fu_1264.mux_42_1_1_1_U352", "Parent" : "3"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_knuth_fu_1264.mux_42_64_1_1_U353", "Parent" : "3"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_knuth_fu_1264.mux_42_1_1_1_U354", "Parent" : "3"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_knuth_fu_1264.mul_mul_11ns_11ns_22_4_1_U355", "Parent" : "3"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_by2_1_fu_1285", "Parent" : "0", "Child" : ["30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42"],
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
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_by2_1_fu_1285.intx_internal_reciprocal_table_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_by2_1_fu_1285.mul_41ns_22ns_62_1_1_U309", "Parent" : "29"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_by2_1_fu_1285.mul_41ns_32ns_64_1_1_U310", "Parent" : "29"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_by2_1_fu_1285.mul_64s_32ns_64_1_1_U311", "Parent" : "29"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_by2_1_fu_1285.mul_46ns_64s_64_1_1_U312", "Parent" : "29"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_by2_1_fu_1285.mul_64ns_46ns_110_1_1_U313", "Parent" : "29"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_by2_1_fu_1285.mul_64ns_64ns_128_1_1_U314", "Parent" : "29"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_by2_1_fu_1285.mul_64s_64s_64_1_1_U315", "Parent" : "29"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_by2_1_fu_1285.mul_64ns_64ns_128_1_1_U316", "Parent" : "29"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_by2_1_fu_1285.mul_64ns_64ns_128_1_1_U317", "Parent" : "29"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_by2_1_fu_1285.mul_64s_64s_64_1_1_U318", "Parent" : "29"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_by2_1_fu_1285.mul_64ns_64ns_128_1_1_U319", "Parent" : "29"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_by2_1_fu_1285.mul_mul_11ns_11ns_22_4_1_U320", "Parent" : "29"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U441", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U442", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U443", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U444", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U445", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U446", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U447", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U448", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U449", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U450", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U451", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U452", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_x_U453", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U454", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_1_1_1_U455", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U456", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_1_1_1_U457", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U458", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_1_1_1_U459", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U460", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_1_1_1_U461", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_41ns_22ns_62_1_1_U462", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_41ns_32ns_64_1_1_U463", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32ns_64_1_1_U464", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_46ns_64s_64_1_1_U465", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_46ns_110_1_1_U466", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_64ns_128_1_1_U467", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_64ns_128_1_1_U468", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_64s_64_1_1_U469", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U470", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U471", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U472", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U473", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U474", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U475", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U476", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U477", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U478", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U479", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U480", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U481", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_11ns_11ns_22_4_1_U482", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	udivrem_256u_1 {
		state {Type I LastRead 31 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		u {Type I LastRead 0 FirstWrite -1}
		v {Type I LastRead 0 FirstWrite -1}
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
		intx_internal_reciprocal_table {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
	{"Pipeline" : "8", "EnableSignal" : "ap_enable_pp8"}
]}

set Spec2ImplPortList { 
	state { ap_memory {  { state_address0 mem_address 1 14 }  { state_ce0 mem_ce 1 1 }  { state_q0 mem_dout 0 256 }  { state_address1 MemPortADDR2 1 14 }  { state_ce1 MemPortCE2 1 1 }  { state_q1 MemPortDOUT2 0 256 } } }
	p_read4 { ap_none {  { p_read4 in_data 0 64 } } }
	p_read5 { ap_none {  { p_read5 in_data 0 64 } } }
	p_read6 { ap_none {  { p_read6 in_data 0 64 } } }
	p_read7 { ap_none {  { p_read7 in_data 0 64 } } }
	u { ap_none {  { u in_data 0 19 } } }
	v { ap_none {  { v in_data 0 19 } } }
}
