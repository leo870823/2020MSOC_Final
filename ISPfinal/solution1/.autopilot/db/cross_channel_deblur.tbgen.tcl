set moduleName cross_channel_deblur
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {cross_channel_deblur}
set C_modelType { void 0 }
set C_modelArgList {
	{ Img float 32 regular {array 16384 { 2 3 } 1 1 }  }
	{ adjChImg float 32 regular {array 16384 { 1 1 } 1 1 }  }
	{ adjChImg2 float 32 regular {array 16384 { 1 1 } 1 1 }  }
	{ coe_a_M_real float 32 regular {array 16384 { 1 3 } 1 1 }  }
	{ coe_a_M_imag float 32 regular {array 16384 { 1 3 } 1 1 }  }
	{ coe_b float 32 regular {array 16384 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "Img", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "adjChImg", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "adjChImg2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "coe_a_M_real", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "coe_a_M_imag", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "coe_b", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 32
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ Img_address0 sc_out sc_lv 14 signal 0 } 
	{ Img_ce0 sc_out sc_logic 1 signal 0 } 
	{ Img_we0 sc_out sc_logic 1 signal 0 } 
	{ Img_d0 sc_out sc_lv 32 signal 0 } 
	{ Img_q0 sc_in sc_lv 32 signal 0 } 
	{ adjChImg_address0 sc_out sc_lv 14 signal 1 } 
	{ adjChImg_ce0 sc_out sc_logic 1 signal 1 } 
	{ adjChImg_q0 sc_in sc_lv 32 signal 1 } 
	{ adjChImg_address1 sc_out sc_lv 14 signal 1 } 
	{ adjChImg_ce1 sc_out sc_logic 1 signal 1 } 
	{ adjChImg_q1 sc_in sc_lv 32 signal 1 } 
	{ adjChImg2_address0 sc_out sc_lv 14 signal 2 } 
	{ adjChImg2_ce0 sc_out sc_logic 1 signal 2 } 
	{ adjChImg2_q0 sc_in sc_lv 32 signal 2 } 
	{ adjChImg2_address1 sc_out sc_lv 14 signal 2 } 
	{ adjChImg2_ce1 sc_out sc_logic 1 signal 2 } 
	{ adjChImg2_q1 sc_in sc_lv 32 signal 2 } 
	{ coe_a_M_real_address0 sc_out sc_lv 14 signal 3 } 
	{ coe_a_M_real_ce0 sc_out sc_logic 1 signal 3 } 
	{ coe_a_M_real_q0 sc_in sc_lv 32 signal 3 } 
	{ coe_a_M_imag_address0 sc_out sc_lv 14 signal 4 } 
	{ coe_a_M_imag_ce0 sc_out sc_logic 1 signal 4 } 
	{ coe_a_M_imag_q0 sc_in sc_lv 32 signal 4 } 
	{ coe_b_address0 sc_out sc_lv 14 signal 5 } 
	{ coe_b_ce0 sc_out sc_logic 1 signal 5 } 
	{ coe_b_q0 sc_in sc_lv 32 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "Img_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "Img", "role": "address0" }} , 
 	{ "name": "Img_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Img", "role": "ce0" }} , 
 	{ "name": "Img_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Img", "role": "we0" }} , 
 	{ "name": "Img_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Img", "role": "d0" }} , 
 	{ "name": "Img_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Img", "role": "q0" }} , 
 	{ "name": "adjChImg_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "adjChImg", "role": "address0" }} , 
 	{ "name": "adjChImg_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "adjChImg", "role": "ce0" }} , 
 	{ "name": "adjChImg_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "adjChImg", "role": "q0" }} , 
 	{ "name": "adjChImg_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "adjChImg", "role": "address1" }} , 
 	{ "name": "adjChImg_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "adjChImg", "role": "ce1" }} , 
 	{ "name": "adjChImg_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "adjChImg", "role": "q1" }} , 
 	{ "name": "adjChImg2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "adjChImg2", "role": "address0" }} , 
 	{ "name": "adjChImg2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "adjChImg2", "role": "ce0" }} , 
 	{ "name": "adjChImg2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "adjChImg2", "role": "q0" }} , 
 	{ "name": "adjChImg2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "adjChImg2", "role": "address1" }} , 
 	{ "name": "adjChImg2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "adjChImg2", "role": "ce1" }} , 
 	{ "name": "adjChImg2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "adjChImg2", "role": "q1" }} , 
 	{ "name": "coe_a_M_real_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "coe_a_M_real", "role": "address0" }} , 
 	{ "name": "coe_a_M_real_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coe_a_M_real", "role": "ce0" }} , 
 	{ "name": "coe_a_M_real_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coe_a_M_real", "role": "q0" }} , 
 	{ "name": "coe_a_M_imag_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "coe_a_M_imag", "role": "address0" }} , 
 	{ "name": "coe_a_M_imag_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coe_a_M_imag", "role": "ce0" }} , 
 	{ "name": "coe_a_M_imag_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coe_a_M_imag", "role": "q0" }} , 
 	{ "name": "coe_b_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "coe_b", "role": "address0" }} , 
 	{ "name": "coe_b_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coe_b", "role": "ce0" }} , 
 	{ "name": "coe_b_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coe_b", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "59", "82", "83"],
		"CDFG" : "cross_channel_deblur",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "17976489", "EstimateLatencyMax" : "25349289",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_my_filter_v12_fu_354"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_ProxGS4_fu_373"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_array_copy3_fu_384"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_array_copy3_fu_384"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_array_copy3_fu_384"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_array_copy3_fu_384"}],
		"Port" : [
			{"Name" : "Img", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "grp_array_copy3_fu_384", "Port" : "data_out"}]},
			{"Name" : "adjChImg", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_my_filter_v12_fu_354", "Port" : "adjChImg"}]},
			{"Name" : "adjChImg2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_my_filter_v12_fu_354", "Port" : "adjChImg2"}]},
			{"Name" : "coe_a_M_real", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_ProxGS4_fu_373", "Port" : "coe_a_M_real"}]},
			{"Name" : "coe_a_M_imag", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_ProxGS4_fu_373", "Port" : "coe_a_M_imag"}]},
			{"Name" : "coe_b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_ProxGS4_fu_373", "Port" : "coe_b"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_bar_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_old_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.y_1_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.y_2_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.y_3_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.y_4_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.y_5_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.y_6_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.y_7_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.y_8_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.y_9_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v12_fu_354", "Parent" : "0", "Child" : ["14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58"],
		"CDFG" : "my_filter_v12",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1048900", "EstimateLatencyMax" : "1786180",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "f_n", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "f", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "adjChImg", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "adjChImg2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "g1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "g2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "g3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "g4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "g5", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "g6", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "g7", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "g8", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "g9", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v12_fu_354.DEBLUR_faddfsub_3bkb_U3", "Parent" : "13"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v12_fu_354.DEBLUR_faddfsub_3bkb_U4", "Parent" : "13"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v12_fu_354.DEBLUR_fsub_32ns_cud_U5", "Parent" : "13"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v12_fu_354.DEBLUR_fsub_32ns_cud_U6", "Parent" : "13"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v12_fu_354.DEBLUR_fsub_32ns_cud_U7", "Parent" : "13"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v12_fu_354.DEBLUR_fsub_32ns_cud_U8", "Parent" : "13"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v12_fu_354.DEBLUR_faddfsub_3bkb_U9", "Parent" : "13"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v12_fu_354.DEBLUR_faddfsub_3bkb_U10", "Parent" : "13"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v12_fu_354.DEBLUR_faddfsub_3bkb_U11", "Parent" : "13"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v12_fu_354.DEBLUR_fsub_32ns_cud_U12", "Parent" : "13"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v12_fu_354.DEBLUR_faddfsub_3bkb_U13", "Parent" : "13"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v12_fu_354.DEBLUR_fadd_32ns_dEe_U14", "Parent" : "13"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v12_fu_354.DEBLUR_fadd_32ns_dEe_U15", "Parent" : "13"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v12_fu_354.DEBLUR_fadd_32ns_dEe_U16", "Parent" : "13"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v12_fu_354.DEBLUR_faddfsub_3bkb_U17", "Parent" : "13"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v12_fu_354.DEBLUR_fmul_32ns_eOg_U18", "Parent" : "13"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v12_fu_354.DEBLUR_fmul_32ns_eOg_U19", "Parent" : "13"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v12_fu_354.DEBLUR_fmul_32ns_eOg_U20", "Parent" : "13"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v12_fu_354.DEBLUR_fmul_32ns_eOg_U21", "Parent" : "13"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v12_fu_354.DEBLUR_fmul_32ns_eOg_U22", "Parent" : "13"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v12_fu_354.DEBLUR_fmul_32ns_eOg_U23", "Parent" : "13"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v12_fu_354.DEBLUR_fmul_32ns_eOg_U24", "Parent" : "13"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v12_fu_354.DEBLUR_fmul_32ns_eOg_U25", "Parent" : "13"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v12_fu_354.DEBLUR_fmul_32ns_eOg_U26", "Parent" : "13"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v12_fu_354.DEBLUR_fmul_32ns_eOg_U27", "Parent" : "13"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v12_fu_354.DEBLUR_fmul_32ns_eOg_U28", "Parent" : "13"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v12_fu_354.DEBLUR_fdiv_32ns_fYi_U29", "Parent" : "13"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v12_fu_354.DEBLUR_fdiv_32ns_fYi_U30", "Parent" : "13"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v12_fu_354.DEBLUR_fdiv_32ns_fYi_U31", "Parent" : "13"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v12_fu_354.DEBLUR_fdiv_32ns_fYi_U32", "Parent" : "13"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v12_fu_354.DEBLUR_fdiv_32ns_fYi_U33", "Parent" : "13"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v12_fu_354.DEBLUR_fdiv_32ns_fYi_U34", "Parent" : "13"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v12_fu_354.DEBLUR_fdiv_32ns_fYi_U35", "Parent" : "13"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v12_fu_354.DEBLUR_fdiv_32ns_fYi_U36", "Parent" : "13"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v12_fu_354.DEBLUR_fdiv_32ns_fYi_U37", "Parent" : "13"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v12_fu_354.DEBLUR_fptrunc_64g8j_U38", "Parent" : "13"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v12_fu_354.DEBLUR_fptrunc_64g8j_U39", "Parent" : "13"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v12_fu_354.DEBLUR_fpext_32nshbi_U40", "Parent" : "13"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v12_fu_354.DEBLUR_fpext_32nshbi_U41", "Parent" : "13"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v12_fu_354.DEBLUR_fcmp_32ns_ibs_U42", "Parent" : "13"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v12_fu_354.DEBLUR_fsqrt_32nsjbC_U43", "Parent" : "13"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v12_fu_354.DEBLUR_dadd_64ns_kbM_U44", "Parent" : "13"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v12_fu_354.DEBLUR_dadd_64ns_kbM_U45", "Parent" : "13"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v12_fu_354.DEBLUR_dmul_64ns_lbW_U46", "Parent" : "13"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v12_fu_354.DEBLUR_dmul_64ns_lbW_U47", "Parent" : "13"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS4_fu_373", "Parent" : "0", "Child" : ["60", "61", "62", "63", "64", "76", "77", "78", "79", "80", "81"],
		"CDFG" : "ProxGS4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "594729", "EstimateLatencyMax" : "594729",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fft_top_2D_fu_419"},
			{"State" : "ap_ST_fsm_state37", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fft_top_2D_fu_419"}],
		"Port" : [
			{"Name" : "x_io", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "coe_a_M_real", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "coe_a_M_imag", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "coe_b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS4_fu_373.tmp_M_real_U", "Parent" : "59"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS4_fu_373.tmp_M_imag_U", "Parent" : "59"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS4_fu_373.fft_result_M_real_U", "Parent" : "59"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS4_fu_373.fft_result_M_imag_U", "Parent" : "59"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS4_fu_373.grp_fft_top_2D_fu_419", "Parent" : "59", "Child" : ["65", "66", "67"],
		"CDFG" : "fft_top_2D",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "256258", "EstimateLatencyMax" : "256258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fft_top_fu_304"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fft_top_fu_304"}],
		"Port" : [
			{"Name" : "direction", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_M_real", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_M_imag", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_M_real", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_M_imag", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS4_fu_373.grp_fft_top_2D_fu_419.buffer_out_U", "Parent" : "64"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS4_fu_373.grp_fft_top_2D_fu_419.buffer_in_U", "Parent" : "64"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS4_fu_373.grp_fft_top_2D_fu_419.grp_fft_top_fu_304", "Parent" : "64", "Child" : ["68", "69", "70", "71", "72", "73", "74", "75"],
		"CDFG" : "fft_top",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "484", "EstimateLatencyMax" : "484",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "68", "Name" : "dummy_proc_fe_1_U0"}],
		"OutputProcess" : [
			{"ID" : "70", "Name" : "dummy_proc_be_1_U0"}],
		"Port" : [
			{"Name" : "direction", "Type" : "HS", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "dummy_proc_fe_1_U0", "Port" : "in_r"}]},
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "dummy_proc_be_1_U0", "Port" : "out_r"}]}]},
	{"ID" : "68", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS4_fu_373.grp_fft_top_2D_fu_419.grp_fft_top_fu_304.dummy_proc_fe_1_U0", "Parent" : "67",
		"CDFG" : "dummy_proc_fe_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "257", "EstimateLatencyMax" : "257",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "direction", "Type" : "None", "Direction" : "I"},
			{"Name" : "config_data_V", "Type" : "Fifo", "Direction" : "IO", "DependentProc" : "69", "DependentChan" : "71",
				"BlockSignal" : [
					{"Name" : "config_data_V_i_blk_n", "Type" : "RtlSignal"},
					{"Name" : "config_data_V_o_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_r", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "72",
				"BlockSignal" : [
					{"Name" : "out_r_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "69", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS4_fu_373.grp_fft_top_2D_fu_419.grp_fft_top_fu_304.fft_config1_U0", "Parent" : "67",
		"CDFG" : "fft_config1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "484", "EstimateLatencyMax" : "484",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "68",
		"StartFifo" : "start_for_fft_conmb6_U",
		"Port" : [
			{"Name" : "xn", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "68", "DependentChan" : "72"},
			{"Name" : "xk", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "70", "DependentChan" : "73"},
			{"Name" : "status_data_V", "Type" : "Fifo", "Direction" : "O"},
			{"Name" : "config_ch_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "68", "DependentChan" : "71"}]},
	{"ID" : "70", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS4_fu_373.grp_fft_top_2D_fu_419.grp_fft_top_fu_304.dummy_proc_be_1_U0", "Parent" : "67",
		"CDFG" : "dummy_proc_be_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "129", "EstimateLatencyMax" : "129",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "68",
		"StartFifo" : "start_for_dummy_pncg_U",
		"Port" : [
			{"Name" : "in_r", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "69", "DependentChan" : "73",
				"BlockSignal" : [
					{"Name" : "in_r_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "71", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS4_fu_373.grp_fft_top_2D_fu_419.grp_fft_top_fu_304.fft_config_data_V_U", "Parent" : "67"},
	{"ID" : "72", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS4_fu_373.grp_fft_top_2D_fu_419.grp_fft_top_fu_304.xn_channel_U", "Parent" : "67"},
	{"ID" : "73", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS4_fu_373.grp_fft_top_2D_fu_419.grp_fft_top_fu_304.xk_channel_U", "Parent" : "67"},
	{"ID" : "74", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS4_fu_373.grp_fft_top_2D_fu_419.grp_fft_top_fu_304.start_for_fft_conmb6_U", "Parent" : "67"},
	{"ID" : "75", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS4_fu_373.grp_fft_top_2D_fu_419.grp_fft_top_fu_304.start_for_dummy_pncg_U", "Parent" : "67"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS4_fu_373.DEBLUR_fadd_32ns_dEe_U93", "Parent" : "59"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS4_fu_373.DEBLUR_fadd_32ns_dEe_U94", "Parent" : "59"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS4_fu_373.DEBLUR_fmul_32ns_eOg_U95", "Parent" : "59"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS4_fu_373.DEBLUR_fdiv_32ns_fYi_U96", "Parent" : "59"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS4_fu_373.DEBLUR_fdiv_32ns_fYi_U97", "Parent" : "59"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS4_fu_373.DEBLUR_fcmp_32ns_ibs_U98", "Parent" : "59"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_array_copy3_fu_384", "Parent" : "0",
		"CDFG" : "array_copy3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16386", "EstimateLatencyMax" : "16386",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_in", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_out", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DEBLUR_fsub_32ns_cud_U105", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	cross_channel_deblur {
		Img {Type IO LastRead 1 FirstWrite -1}
		adjChImg {Type I LastRead 4 FirstWrite -1}
		adjChImg2 {Type I LastRead 4 FirstWrite -1}
		coe_a_M_real {Type I LastRead 10 FirstWrite -1}
		coe_a_M_imag {Type I LastRead 10 FirstWrite -1}
		coe_b {Type I LastRead 8 FirstWrite -1}}
	my_filter_v12 {
		f_n {Type IO LastRead 62 FirstWrite 69}
		f {Type I LastRead 8 FirstWrite -1}
		adjChImg {Type I LastRead 4 FirstWrite -1}
		adjChImg2 {Type I LastRead 4 FirstWrite -1}
		g1 {Type IO LastRead 33 FirstWrite 14}
		g2 {Type IO LastRead 33 FirstWrite 15}
		g3 {Type IO LastRead 38 FirstWrite 29}
		g4 {Type IO LastRead 43 FirstWrite 28}
		g5 {Type IO LastRead 48 FirstWrite 29}
		g6 {Type IO LastRead 53 FirstWrite 32}
		g7 {Type IO LastRead 58 FirstWrite 33}
		g8 {Type IO LastRead 63 FirstWrite 32}
		g9 {Type IO LastRead 68 FirstWrite 33}}
	ProxGS4 {
		x_io {Type IO LastRead 5 FirstWrite 17}
		coe_a_M_real {Type I LastRead 10 FirstWrite -1}
		coe_a_M_imag {Type I LastRead 10 FirstWrite -1}
		coe_b {Type I LastRead 8 FirstWrite -1}}
	fft_top_2D {
		direction {Type I LastRead 0 FirstWrite -1}
		in_M_real {Type I LastRead 5 FirstWrite -1}
		in_M_imag {Type I LastRead 5 FirstWrite -1}
		out_M_real {Type O LastRead -1 FirstWrite 7}
		out_M_imag {Type O LastRead -1 FirstWrite 7}}
	fft_top {
		direction {Type I LastRead 0 FirstWrite -1}
		in_r {Type I LastRead 1 FirstWrite -1}
		out_r {Type O LastRead -1 FirstWrite 1}}
	dummy_proc_fe_1 {
		direction {Type I LastRead 0 FirstWrite -1}
		config_data_V {Type IO LastRead 0 FirstWrite 0}
		in_r {Type I LastRead 1 FirstWrite -1}
		out_r {Type O LastRead -1 FirstWrite 2}}
	fft_config1_s {
		xn {Type I LastRead -1 FirstWrite -1}
		xk {Type O LastRead -1 FirstWrite -1}
		status_data_V {Type O LastRead -1 FirstWrite -1}
		config_ch_data_V {Type I LastRead -1 FirstWrite -1}}
	dummy_proc_be_1 {
		in_r {Type I LastRead 1 FirstWrite -1}
		out_r {Type O LastRead -1 FirstWrite 1}}
	array_copy3 {
		data_in {Type I LastRead 1 FirstWrite -1}
		data_out {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 1

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "17976489", "Max" : "25349289"}
	, {"Name" : "Interval", "Min" : "17976489", "Max" : "25349289"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	Img { ap_memory {  { Img_address0 mem_address 1 14 }  { Img_ce0 mem_ce 1 1 }  { Img_we0 mem_we 1 1 }  { Img_d0 mem_din 1 32 }  { Img_q0 mem_dout 0 32 } } }
	adjChImg { ap_memory {  { adjChImg_address0 mem_address 1 14 }  { adjChImg_ce0 mem_ce 1 1 }  { adjChImg_q0 mem_dout 0 32 }  { adjChImg_address1 MemPortADDR2 1 14 }  { adjChImg_ce1 MemPortCE2 1 1 }  { adjChImg_q1 MemPortDOUT2 0 32 } } }
	adjChImg2 { ap_memory {  { adjChImg2_address0 mem_address 1 14 }  { adjChImg2_ce0 mem_ce 1 1 }  { adjChImg2_q0 mem_dout 0 32 }  { adjChImg2_address1 MemPortADDR2 1 14 }  { adjChImg2_ce1 MemPortCE2 1 1 }  { adjChImg2_q1 MemPortDOUT2 0 32 } } }
	coe_a_M_real { ap_memory {  { coe_a_M_real_address0 mem_address 1 14 }  { coe_a_M_real_ce0 mem_ce 1 1 }  { coe_a_M_real_q0 mem_dout 0 32 } } }
	coe_a_M_imag { ap_memory {  { coe_a_M_imag_address0 mem_address 1 14 }  { coe_a_M_imag_ce0 mem_ce 1 1 }  { coe_a_M_imag_q0 mem_dout 0 32 } } }
	coe_b { ap_memory {  { coe_b_address0 mem_address 1 14 }  { coe_b_ce0 mem_ce 1 1 }  { coe_b_q0 mem_dout 0 32 } } }
}
