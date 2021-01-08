set moduleName cross_channel_deblur
set isTopModule 1
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
	{ Img_V int 8 regular {array 16384 { 1 3 } 1 1 }  }
	{ adjChImg_V int 8 regular {array 16384 { 1 1 } 1 1 }  }
	{ coe_a_M_real_V int 16 regular {array 16384 { 1 3 } 1 1 }  }
	{ coe_a_M_imag_V int 16 regular {array 16384 { 1 3 } 1 1 }  }
	{ coe_b_V int 8 regular {array 16384 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "Img_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "Img.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 127,"step" : 1},{"low" : 0,"up" : 127,"step" : 1}]}]}]} , 
 	{ "Name" : "adjChImg_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "adjChImg.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 127,"step" : 1},{"low" : 0,"up" : 127,"step" : 1}]}]}]} , 
 	{ "Name" : "coe_a_M_real_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "coe_a._M_real.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 127,"step" : 1},{"low" : 0,"up" : 127,"step" : 1}]}]}]} , 
 	{ "Name" : "coe_a_M_imag_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "coe_a._M_imag.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 127,"step" : 1},{"low" : 0,"up" : 127,"step" : 1}]}]}]} , 
 	{ "Name" : "coe_b_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "coe_b.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 127,"step" : 1},{"low" : 0,"up" : 127,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 24
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ Img_V_address0 sc_out sc_lv 14 signal 0 } 
	{ Img_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ Img_V_q0 sc_in sc_lv 8 signal 0 } 
	{ adjChImg_V_address0 sc_out sc_lv 14 signal 1 } 
	{ adjChImg_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ adjChImg_V_q0 sc_in sc_lv 8 signal 1 } 
	{ adjChImg_V_address1 sc_out sc_lv 14 signal 1 } 
	{ adjChImg_V_ce1 sc_out sc_logic 1 signal 1 } 
	{ adjChImg_V_q1 sc_in sc_lv 8 signal 1 } 
	{ coe_a_M_real_V_address0 sc_out sc_lv 14 signal 2 } 
	{ coe_a_M_real_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ coe_a_M_real_V_q0 sc_in sc_lv 16 signal 2 } 
	{ coe_a_M_imag_V_address0 sc_out sc_lv 14 signal 3 } 
	{ coe_a_M_imag_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ coe_a_M_imag_V_q0 sc_in sc_lv 16 signal 3 } 
	{ coe_b_V_address0 sc_out sc_lv 14 signal 4 } 
	{ coe_b_V_ce0 sc_out sc_logic 1 signal 4 } 
	{ coe_b_V_q0 sc_in sc_lv 8 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "Img_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "Img_V", "role": "address0" }} , 
 	{ "name": "Img_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Img_V", "role": "ce0" }} , 
 	{ "name": "Img_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Img_V", "role": "q0" }} , 
 	{ "name": "adjChImg_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "adjChImg_V", "role": "address0" }} , 
 	{ "name": "adjChImg_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "adjChImg_V", "role": "ce0" }} , 
 	{ "name": "adjChImg_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "adjChImg_V", "role": "q0" }} , 
 	{ "name": "adjChImg_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "adjChImg_V", "role": "address1" }} , 
 	{ "name": "adjChImg_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "adjChImg_V", "role": "ce1" }} , 
 	{ "name": "adjChImg_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "adjChImg_V", "role": "q1" }} , 
 	{ "name": "coe_a_M_real_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "coe_a_M_real_V", "role": "address0" }} , 
 	{ "name": "coe_a_M_real_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coe_a_M_real_V", "role": "ce0" }} , 
 	{ "name": "coe_a_M_real_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "coe_a_M_real_V", "role": "q0" }} , 
 	{ "name": "coe_a_M_imag_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "coe_a_M_imag_V", "role": "address0" }} , 
 	{ "name": "coe_a_M_imag_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coe_a_M_imag_V", "role": "ce0" }} , 
 	{ "name": "coe_a_M_imag_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "coe_a_M_imag_V", "role": "q0" }} , 
 	{ "name": "coe_b_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "coe_b_V", "role": "address0" }} , 
 	{ "name": "coe_b_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coe_b_V", "role": "ce0" }} , 
 	{ "name": "coe_b_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "coe_b_V", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "59", "75", "77"],
		"CDFG" : "cross_channel_deblur",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "38596562", "EstimateLatencyMax" : "38596562",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_my_filter_v1_fu_253"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_ProxGS_fu_267"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Relax_fu_278"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_array_copy_fu_285"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_array_copy_fu_285"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_array_copy_fu_285"}],
		"Port" : [
			{"Name" : "Img_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "grp_array_copy_fu_285", "Port" : "data_in_V"}]},
			{"Name" : "adjChImg_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_my_filter_v1_fu_253", "Port" : "adjChImg_V"}]},
			{"Name" : "coe_a_M_real_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_ProxGS_fu_267", "Port" : "coe_a_M_real_V"}]},
			{"Name" : "coe_a_M_imag_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_ProxGS_fu_267", "Port" : "coe_a_M_imag_V"}]},
			{"Name" : "coe_b_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_ProxGS_fu_267", "Port" : "coe_b_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_bar_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_old_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.y_1_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.y_2_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.y_3_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.y_4_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.y_5_V_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.y_6_V_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.y_7_V_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_253", "Parent" : "0", "Child" : ["12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58"],
		"CDFG" : "my_filter_v1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "639826", "EstimateLatencyMax" : "639826",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_my_filter_fy5_fu_844"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_my_filter_fy5_fu_844"},
			{"State" : "ap_ST_fsm_state49", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_my_filter_fy5_fu_844"},
			{"State" : "ap_ST_fsm_state51", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_my_filter_fy5_fu_844"},
			{"State" : "ap_ST_fsm_state56", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_my_filter_fy5_fu_844"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_my_filter_fy5_fu_851"},
			{"State" : "ap_ST_fsm_state49", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_my_filter_fy5_fu_851"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_my_filter_fy5_fu_857"},
			{"State" : "ap_ST_fsm_state49", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_my_filter_fy5_fu_857"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_my_filter_fx6_fu_866"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_my_filter_fx6_fu_866"},
			{"State" : "ap_ST_fsm_state47", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_my_filter_fx6_fu_866"},
			{"State" : "ap_ST_fsm_state49", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_my_filter_fx6_fu_866"},
			{"State" : "ap_ST_fsm_state51", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_my_filter_fx6_fu_866"},
			{"State" : "ap_ST_fsm_state56", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_my_filter_fx6_fu_866"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_my_filter_fx6_fu_874"},
			{"State" : "ap_ST_fsm_state49", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_my_filter_fx6_fu_874"}],
		"Port" : [
			{"Name" : "f_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_my_filter_fx6_fu_866", "Port" : "data_in_V"},
					{"ID" : "35", "SubInstance" : "grp_my_filter_fy5_fu_844", "Port" : "data_in_V"}]},
			{"Name" : "adjChImg_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_my_filter_fx6_fu_874", "Port" : "data_in_V"},
					{"ID" : "37", "SubInstance" : "grp_my_filter_fy5_fu_857", "Port" : "data_in_V"}]},
			{"Name" : "g1_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_my_filter_fx6_fu_866", "Port" : "data_in_V"}]},
			{"Name" : "g2_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_my_filter_fy5_fu_844", "Port" : "data_in_V"}]},
			{"Name" : "g3_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_my_filter_fx6_fu_874", "Port" : "data_in_V"}]},
			{"Name" : "g4_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_my_filter_fy5_fu_851", "Port" : "data_in_V"}]},
			{"Name" : "g5_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_my_filter_fx6_fu_866", "Port" : "data_in_V"}]},
			{"Name" : "g6_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "g7_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_253.fx_V_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_253.fy_V_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_253.fxx_U", "Parent" : "11"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_253.fyy_U", "Parent" : "11"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_253.fxy_U", "Parent" : "11"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_253.adj_fx_U", "Parent" : "11"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_253.adj_fy_U", "Parent" : "11"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_253.Sxf_V_U", "Parent" : "11"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_253.Syf_V_U", "Parent" : "11"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_253.gx_U", "Parent" : "11"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_253.gy_U", "Parent" : "11"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_253.g3x_V_U", "Parent" : "11"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_253.gxx_U", "Parent" : "11"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_253.g4y_V_U", "Parent" : "11"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_253.gyy_U", "Parent" : "11"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_253.g5x_V_U", "Parent" : "11"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_253.gxy_U", "Parent" : "11"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_253.Sxtf_V_U", "Parent" : "11"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_253.Sytf_V_U", "Parent" : "11"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_253.temp_cross6_V_U", "Parent" : "11"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_253.temp_cross7_V_U", "Parent" : "11"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_253.cross_X_U", "Parent" : "11"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_253.cross_Y_U", "Parent" : "11"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_253.grp_my_filter_fy5_fu_844", "Parent" : "11",
		"CDFG" : "my_filter_fy5",
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
			{"Name" : "data_out_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "data_in_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_253.grp_my_filter_fy5_fu_851", "Parent" : "11",
		"CDFG" : "my_filter_fy5",
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
			{"Name" : "data_out_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "data_in_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_253.grp_my_filter_fy5_fu_857", "Parent" : "11",
		"CDFG" : "my_filter_fy5",
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
			{"Name" : "data_out_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "data_in_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_253.grp_my_filter_fx6_fu_866", "Parent" : "11",
		"CDFG" : "my_filter_fx6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16387", "EstimateLatencyMax" : "16387",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_out_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "data_in_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_253.grp_my_filter_fx6_fu_874", "Parent" : "11",
		"CDFG" : "my_filter_fx6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16387", "EstimateLatencyMax" : "16387",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_out_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "data_in_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_253.cross_channel_debfYi_U7", "Parent" : "11"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_253.cross_channel_debg8j_U8", "Parent" : "11"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_253.cross_channel_debg8j_U9", "Parent" : "11"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_253.cross_channel_debg8j_U10", "Parent" : "11"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_253.cross_channel_debhbi_U11", "Parent" : "11"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_253.cross_channel_debhbi_U12", "Parent" : "11"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_253.cross_channel_debhbi_U13", "Parent" : "11"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_253.cross_channel_debhbi_U14", "Parent" : "11"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_253.cross_channel_debibs_U15", "Parent" : "11"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_253.cross_channel_debibs_U16", "Parent" : "11"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_253.cross_channel_debibs_U17", "Parent" : "11"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_253.cross_channel_debibs_U18", "Parent" : "11"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_253.cross_channel_debibs_U19", "Parent" : "11"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_253.cross_channel_debibs_U20", "Parent" : "11"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_253.cross_channel_debibs_U21", "Parent" : "11"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_253.cross_channel_debjbC_U22", "Parent" : "11"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_253.cross_channel_debjbC_U23", "Parent" : "11"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_253.cross_channel_debkbM_U24", "Parent" : "11"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_253.cross_channel_debkbM_U25", "Parent" : "11"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS_fu_267", "Parent" : "0", "Child" : ["60", "61", "62", "63", "73", "74"],
		"CDFG" : "ProxGS",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "114720", "EstimateLatencyMax" : "114720",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fft_top_fu_303"},
			{"State" : "ap_ST_fsm_state30", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fft_top_fu_303"}],
		"Port" : [
			{"Name" : "x_io_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "coe_a_M_real_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "coe_a_M_imag_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "coe_b_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS_fu_267.MAD_U", "Parent" : "59"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS_fu_267.fft_result_U", "Parent" : "59"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS_fu_267.tmp9_U", "Parent" : "59"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS_fu_267.grp_fft_top_fu_303", "Parent" : "59", "Child" : ["64", "65", "66", "67", "68", "69", "70", "71", "72"],
		"CDFG" : "fft_top",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "32769", "EstimateLatencyMax" : "32769",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "64", "Name" : "dummy_proc_fe_1_U0"}],
		"OutputProcess" : [
			{"ID" : "66", "Name" : "dummy_proc_be_1_U0"}],
		"Port" : [
			{"Name" : "direction", "Type" : "HS", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "dummy_proc_fe_1_U0", "Port" : "in_r"}]},
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "dummy_proc_be_1_U0", "Port" : "out_r"}]},
			{"Name" : "ovflo", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "dummy_proc_be_1_U0", "Port" : "ovflo"}]}]},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS_fu_267.grp_fft_top_fu_303.dummy_proc_fe_1_U0", "Parent" : "63",
		"CDFG" : "dummy_proc_fe_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "32769", "EstimateLatencyMax" : "32769",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "direction", "Type" : "None", "Direction" : "I"},
			{"Name" : "config_data_V", "Type" : "Fifo", "Direction" : "IO", "DependentProc" : "65", "DependentChan" : "67",
				"BlockSignal" : [
					{"Name" : "config_data_V_i_blk_n", "Type" : "RtlSignal"},
					{"Name" : "config_data_V_o_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_r", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "65", "DependentChan" : "68",
				"BlockSignal" : [
					{"Name" : "out_r_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS_fu_267.grp_fft_top_fu_303.fft_config1_U0", "Parent" : "63",
		"CDFG" : "fft_config1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3195", "EstimateLatencyMax" : "3195",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "64",
		"StartFifo" : "start_for_fft_conlbW_U",
		"Port" : [
			{"Name" : "xn", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "64", "DependentChan" : "68"},
			{"Name" : "xk", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "66", "DependentChan" : "69"},
			{"Name" : "status_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "66", "DependentChan" : "70"},
			{"Name" : "config_ch_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "64", "DependentChan" : "67"}]},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS_fu_267.grp_fft_top_fu_303.dummy_proc_be_1_U0", "Parent" : "63",
		"CDFG" : "dummy_proc_be_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16385", "EstimateLatencyMax" : "16385",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "64",
		"StartFifo" : "start_for_dummy_pmb6_U",
		"Port" : [
			{"Name" : "status_in_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "65", "DependentChan" : "70",
				"BlockSignal" : [
					{"Name" : "status_in_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ovflo", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "65", "DependentChan" : "69",
				"BlockSignal" : [
					{"Name" : "in_r_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS_fu_267.grp_fft_top_fu_303.fft_config_data_V_U", "Parent" : "63"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS_fu_267.grp_fft_top_fu_303.xn_channel_U", "Parent" : "63"},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS_fu_267.grp_fft_top_fu_303.xk_channel_U", "Parent" : "63"},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS_fu_267.grp_fft_top_fu_303.fft_status_data_V_U", "Parent" : "63"},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS_fu_267.grp_fft_top_fu_303.start_for_fft_conlbW_U", "Parent" : "63"},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS_fu_267.grp_fft_top_fu_303.start_for_dummy_pmb6_U", "Parent" : "63"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS_fu_267.cross_channel_debncg_U62", "Parent" : "59"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS_fu_267.cross_channel_debncg_U63", "Parent" : "59"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Relax_fu_278", "Parent" : "0", "Child" : ["76"],
		"CDFG" : "Relax",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16396", "EstimateLatencyMax" : "16396",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_old_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_bar_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Relax_fu_278.cross_channel_debibs_U71", "Parent" : "75"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_array_copy_fu_285", "Parent" : "0",
		"CDFG" : "array_copy",
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
			{"Name" : "data_in_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_out_V", "Type" : "Memory", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	cross_channel_deblur {
		Img_V {Type I LastRead 1 FirstWrite -1}
		adjChImg_V {Type I LastRead 15 FirstWrite -1}
		coe_a_M_real_V {Type I LastRead 4 FirstWrite -1}
		coe_a_M_imag_V {Type I LastRead 4 FirstWrite -1}
		coe_b_V {Type I LastRead 5 FirstWrite -1}}
	my_filter_v1 {
		f_V {Type IO LastRead 24 FirstWrite -1}
		adjChImg_V {Type I LastRead 15 FirstWrite -1}
		g1_V {Type IO LastRead 11 FirstWrite -1}
		g2_V {Type IO LastRead 11 FirstWrite -1}
		g3_V {Type IO LastRead 11 FirstWrite -1}
		g4_V {Type IO LastRead 11 FirstWrite -1}
		g5_V {Type IO LastRead 13 FirstWrite -1}
		g6_V {Type IO LastRead 17 FirstWrite 30}
		g7_V {Type IO LastRead 17 FirstWrite 30}}
	my_filter_fy5 {
		data_out_V {Type O LastRead -1 FirstWrite 2}
		data_in_V {Type I LastRead 2 FirstWrite -1}}
	my_filter_fy5 {
		data_out_V {Type O LastRead -1 FirstWrite 2}
		data_in_V {Type I LastRead 2 FirstWrite -1}}
	my_filter_fy5 {
		data_out_V {Type O LastRead -1 FirstWrite 2}
		data_in_V {Type I LastRead 2 FirstWrite -1}}
	my_filter_fx6 {
		data_out_V {Type O LastRead -1 FirstWrite 3}
		data_in_V {Type I LastRead 3 FirstWrite -1}}
	my_filter_fx6 {
		data_out_V {Type O LastRead -1 FirstWrite 3}
		data_in_V {Type I LastRead 3 FirstWrite -1}}
	ProxGS {
		x_io_V {Type IO LastRead 1 FirstWrite 9}
		coe_a_M_real_V {Type I LastRead 4 FirstWrite -1}
		coe_a_M_imag_V {Type I LastRead 4 FirstWrite -1}
		coe_b_V {Type I LastRead 5 FirstWrite -1}}
	fft_top {
		direction {Type I LastRead 0 FirstWrite -1}
		in_r {Type I LastRead 1 FirstWrite -1}
		out_r {Type O LastRead -1 FirstWrite 1}
		ovflo {Type O LastRead -1 FirstWrite 1}}
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
		status_in_data_V {Type I LastRead 1 FirstWrite -1}
		ovflo {Type O LastRead -1 FirstWrite 1}
		in_r {Type I LastRead 1 FirstWrite -1}
		out_r {Type O LastRead -1 FirstWrite 1}}
	Relax {
		x_V {Type I LastRead 1 FirstWrite -1}
		x_old_V {Type I LastRead 1 FirstWrite -1}
		x_bar_V {Type O LastRead -1 FirstWrite 12}}
	array_copy {
		data_in_V {Type I LastRead 1 FirstWrite -1}
		data_out_V {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "38596562", "Max" : "38596562"}
	, {"Name" : "Interval", "Min" : "38596563", "Max" : "38596563"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	Img_V { ap_memory {  { Img_V_address0 mem_address 1 14 }  { Img_V_ce0 mem_ce 1 1 }  { Img_V_q0 mem_dout 0 8 } } }
	adjChImg_V { ap_memory {  { adjChImg_V_address0 mem_address 1 14 }  { adjChImg_V_ce0 mem_ce 1 1 }  { adjChImg_V_q0 mem_dout 0 8 }  { adjChImg_V_address1 MemPortADDR2 1 14 }  { adjChImg_V_ce1 MemPortCE2 1 1 }  { adjChImg_V_q1 MemPortDOUT2 0 8 } } }
	coe_a_M_real_V { ap_memory {  { coe_a_M_real_V_address0 mem_address 1 14 }  { coe_a_M_real_V_ce0 mem_ce 1 1 }  { coe_a_M_real_V_q0 mem_dout 0 16 } } }
	coe_a_M_imag_V { ap_memory {  { coe_a_M_imag_V_address0 mem_address 1 14 }  { coe_a_M_imag_V_ce0 mem_ce 1 1 }  { coe_a_M_imag_V_q0 mem_dout 0 16 } } }
	coe_b_V { ap_memory {  { coe_b_V_address0 mem_address 1 14 }  { coe_b_V_ce0 mem_ce 1 1 }  { coe_b_V_q0 mem_dout 0 8 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
