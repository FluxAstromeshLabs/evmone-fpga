set moduleName udivrem_512u_s
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
set C_modelName {udivrem<512u>}
set C_modelType { void 0 }
set C_modelArgList {
	{ agg_result_1 int 64 regular {array 8 { 0 0 } 0 1 }  }
	{ u int 64 regular {array 8 { 1 1 } 1 1 }  }
	{ v int 64 regular {array 8 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "agg_result_1", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "u", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "v", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ agg_result_1_address0 sc_out sc_lv 3 signal 0 } 
	{ agg_result_1_ce0 sc_out sc_logic 1 signal 0 } 
	{ agg_result_1_we0 sc_out sc_logic 1 signal 0 } 
	{ agg_result_1_d0 sc_out sc_lv 64 signal 0 } 
	{ agg_result_1_address1 sc_out sc_lv 3 signal 0 } 
	{ agg_result_1_ce1 sc_out sc_logic 1 signal 0 } 
	{ agg_result_1_we1 sc_out sc_logic 1 signal 0 } 
	{ agg_result_1_d1 sc_out sc_lv 64 signal 0 } 
	{ u_address0 sc_out sc_lv 3 signal 1 } 
	{ u_ce0 sc_out sc_logic 1 signal 1 } 
	{ u_q0 sc_in sc_lv 64 signal 1 } 
	{ u_address1 sc_out sc_lv 3 signal 1 } 
	{ u_ce1 sc_out sc_logic 1 signal 1 } 
	{ u_q1 sc_in sc_lv 64 signal 1 } 
	{ v_address0 sc_out sc_lv 3 signal 2 } 
	{ v_ce0 sc_out sc_logic 1 signal 2 } 
	{ v_q0 sc_in sc_lv 64 signal 2 } 
	{ v_address1 sc_out sc_lv 3 signal 2 } 
	{ v_ce1 sc_out sc_logic 1 signal 2 } 
	{ v_q1 sc_in sc_lv 64 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "agg_result_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "agg_result_1", "role": "address0" }} , 
 	{ "name": "agg_result_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agg_result_1", "role": "ce0" }} , 
 	{ "name": "agg_result_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agg_result_1", "role": "we0" }} , 
 	{ "name": "agg_result_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "agg_result_1", "role": "d0" }} , 
 	{ "name": "agg_result_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "agg_result_1", "role": "address1" }} , 
 	{ "name": "agg_result_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agg_result_1", "role": "ce1" }} , 
 	{ "name": "agg_result_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agg_result_1", "role": "we1" }} , 
 	{ "name": "agg_result_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "agg_result_1", "role": "d1" }} , 
 	{ "name": "u_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u", "role": "address0" }} , 
 	{ "name": "u_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u", "role": "ce0" }} , 
 	{ "name": "u_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "u", "role": "q0" }} , 
 	{ "name": "u_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u", "role": "address1" }} , 
 	{ "name": "u_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u", "role": "ce1" }} , 
 	{ "name": "u_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "u", "role": "q1" }} , 
 	{ "name": "v_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v", "role": "address0" }} , 
 	{ "name": "v_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v", "role": "ce0" }} , 
 	{ "name": "v_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v", "role": "q0" }} , 
 	{ "name": "v_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v", "role": "address1" }} , 
 	{ "name": "v_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v", "role": "ce1" }} , 
 	{ "name": "v_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "22", "36", "37", "38", "39", "40", "41", "42", "43", "44"],
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
					{"ID" : "22", "SubInstance" : "grp_udivrem_by2_fu_1289", "Port" : "intx_internal_reciprocal_table"},
					{"ID" : "6", "SubInstance" : "grp_udivrem_knuth_1_fu_1278", "Port" : "intx_internal_reciprocal_table"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.intx_internal_reciprocal_table_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.na_divisor_word_num_bits_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.na_numerator_word_num_bits_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.q_word_num_bits_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.r_word_num_bits_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_knuth_1_fu_1278", "Parent" : "0", "Child" : ["7", "8", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21"],
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
					{"ID" : "8", "SubInstance" : "grp_submul_fu_330", "Port" : "r"}]},
			{"Name" : "ulen", "Type" : "None", "Direction" : "I"},
			{"Name" : "d", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_submul_fu_330", "Port" : "y"}]},
			{"Name" : "dlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "intx_internal_reciprocal_table", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_knuth_1_fu_1278.intx_internal_reciprocal_table_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_knuth_1_fu_1278.grp_submul_fu_330", "Parent" : "6", "Child" : ["9"],
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
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_knuth_1_fu_1278.grp_submul_fu_330.mul_64ns_64ns_128_1_1_U230", "Parent" : "8"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_knuth_1_fu_1278.mul_41ns_22ns_62_1_1_U236", "Parent" : "6"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_knuth_1_fu_1278.mul_41ns_32ns_64_1_1_U237", "Parent" : "6"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_knuth_1_fu_1278.mul_64s_32ns_64_1_1_U238", "Parent" : "6"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_knuth_1_fu_1278.mul_46ns_64s_64_1_1_U239", "Parent" : "6"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_knuth_1_fu_1278.mul_64ns_46ns_110_1_1_U240", "Parent" : "6"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_knuth_1_fu_1278.mul_64ns_64ns_128_1_1_U241", "Parent" : "6"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_knuth_1_fu_1278.mul_64s_64s_64_1_1_U242", "Parent" : "6"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_knuth_1_fu_1278.mul_64ns_64ns_128_1_1_U243", "Parent" : "6"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_knuth_1_fu_1278.mul_64ns_64ns_128_1_1_U244", "Parent" : "6"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_knuth_1_fu_1278.mul_64s_64s_64_1_1_U245", "Parent" : "6"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_knuth_1_fu_1278.mul_64ns_64ns_128_1_1_U246", "Parent" : "6"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_knuth_1_fu_1278.mul_mul_11ns_11ns_22_4_1_U247", "Parent" : "6"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_by2_fu_1289", "Parent" : "0", "Child" : ["23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35"],
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
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_by2_fu_1289.intx_internal_reciprocal_table_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_by2_fu_1289.mul_41ns_22ns_62_1_1_U207", "Parent" : "22"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_by2_fu_1289.mul_41ns_32ns_64_1_1_U208", "Parent" : "22"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_by2_fu_1289.mul_64s_32ns_64_1_1_U209", "Parent" : "22"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_by2_fu_1289.mul_46ns_64s_64_1_1_U210", "Parent" : "22"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_by2_fu_1289.mul_64ns_46ns_110_1_1_U211", "Parent" : "22"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_by2_fu_1289.mul_64ns_64ns_128_1_1_U212", "Parent" : "22"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_by2_fu_1289.mul_64s_64s_64_1_1_U213", "Parent" : "22"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_by2_fu_1289.mul_64ns_64ns_128_1_1_U214", "Parent" : "22"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_by2_fu_1289.mul_64ns_64ns_128_1_1_U215", "Parent" : "22"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_by2_fu_1289.mul_64s_64s_64_1_1_U216", "Parent" : "22"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_by2_fu_1289.mul_64ns_64ns_128_1_1_U217", "Parent" : "22"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_udivrem_by2_fu_1289.mul_mul_11ns_11ns_22_4_1_U218", "Parent" : "22"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_41ns_22ns_62_1_1_U253", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_41ns_32ns_64_1_1_U254", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32ns_64_1_1_U255", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_46ns_64s_64_1_1_U256", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_46ns_110_1_1_U257", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_64ns_128_1_1_U258", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_64ns_128_1_1_U259", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_64s_64_1_1_U260", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_11ns_11ns_22_4_1_U261", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
	{"Pipeline" : "8", "EnableSignal" : "ap_enable_pp8"}
]}

set Spec2ImplPortList { 
	agg_result_1 { ap_memory {  { agg_result_1_address0 mem_address 1 3 }  { agg_result_1_ce0 mem_ce 1 1 }  { agg_result_1_we0 mem_we 1 1 }  { agg_result_1_d0 mem_din 1 64 }  { agg_result_1_address1 MemPortADDR2 1 3 }  { agg_result_1_ce1 MemPortCE2 1 1 }  { agg_result_1_we1 MemPortWE2 1 1 }  { agg_result_1_d1 MemPortDIN2 1 64 } } }
	u { ap_memory {  { u_address0 mem_address 1 3 }  { u_ce0 mem_ce 1 1 }  { u_q0 mem_dout 0 64 }  { u_address1 MemPortADDR2 1 3 }  { u_ce1 MemPortCE2 1 1 }  { u_q1 MemPortDOUT2 0 64 } } }
	v { ap_memory {  { v_address0 mem_address 1 3 }  { v_ce0 mem_ce 1 1 }  { v_q0 mem_dout 0 64 }  { v_address1 MemPortADDR2 1 3 }  { v_ce1 MemPortCE2 1 1 }  { v_q1 MemPortDOUT2 0 64 } } }
}
