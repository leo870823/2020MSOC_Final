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
	{ Img_V int 8 regular {array 16384 { 2 3 } 1 1 }  }
	{ adjChImg_V int 8 regular {array 16384 { 1 1 } 1 1 }  }
	{ coe_a_M_real float 32 regular {array 16384 { 1 3 } 1 1 }  }
	{ coe_a_M_imag float 32 regular {array 16384 { 1 3 } 1 1 }  }
	{ coe_b float 32 regular {array 16384 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "Img_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "Img.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 127,"step" : 1},{"low" : 0,"up" : 127,"step" : 1}]}]}]} , 
 	{ "Name" : "adjChImg_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "adjChImg.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 127,"step" : 1},{"low" : 0,"up" : 127,"step" : 1}]}]}]} , 
 	{ "Name" : "coe_a_M_real", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "coe_a._M_real","cData": "complex","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 127,"step" : 1},{"low" : 0,"up" : 127,"step" : 1}]}]}]} , 
 	{ "Name" : "coe_a_M_imag", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "coe_a._M_imag","cData": "complex","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 127,"step" : 1},{"low" : 0,"up" : 127,"step" : 1}]}]}]} , 
 	{ "Name" : "coe_b", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "coe_b","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 127,"step" : 1},{"low" : 0,"up" : 127,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ Img_V_address0 sc_out sc_lv 14 signal 0 } 
	{ Img_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ Img_V_we0 sc_out sc_logic 1 signal 0 } 
	{ Img_V_d0 sc_out sc_lv 8 signal 0 } 
	{ Img_V_q0 sc_in sc_lv 8 signal 0 } 
	{ adjChImg_V_address0 sc_out sc_lv 14 signal 1 } 
	{ adjChImg_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ adjChImg_V_q0 sc_in sc_lv 8 signal 1 } 
	{ adjChImg_V_address1 sc_out sc_lv 14 signal 1 } 
	{ adjChImg_V_ce1 sc_out sc_logic 1 signal 1 } 
	{ adjChImg_V_q1 sc_in sc_lv 8 signal 1 } 
	{ coe_a_M_real_address0 sc_out sc_lv 14 signal 2 } 
	{ coe_a_M_real_ce0 sc_out sc_logic 1 signal 2 } 
	{ coe_a_M_real_q0 sc_in sc_lv 32 signal 2 } 
	{ coe_a_M_imag_address0 sc_out sc_lv 14 signal 3 } 
	{ coe_a_M_imag_ce0 sc_out sc_logic 1 signal 3 } 
	{ coe_a_M_imag_q0 sc_in sc_lv 32 signal 3 } 
	{ coe_b_address0 sc_out sc_lv 14 signal 4 } 
	{ coe_b_ce0 sc_out sc_logic 1 signal 4 } 
	{ coe_b_q0 sc_in sc_lv 32 signal 4 } 
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
 	{ "name": "Img_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Img_V", "role": "we0" }} , 
 	{ "name": "Img_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Img_V", "role": "d0" }} , 
 	{ "name": "Img_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Img_V", "role": "q0" }} , 
 	{ "name": "adjChImg_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "adjChImg_V", "role": "address0" }} , 
 	{ "name": "adjChImg_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "adjChImg_V", "role": "ce0" }} , 
 	{ "name": "adjChImg_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "adjChImg_V", "role": "q0" }} , 
 	{ "name": "adjChImg_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "adjChImg_V", "role": "address1" }} , 
 	{ "name": "adjChImg_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "adjChImg_V", "role": "ce1" }} , 
 	{ "name": "adjChImg_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "adjChImg_V", "role": "q1" }} , 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "49", "74"],
		"CDFG" : "cross_channel_deblur",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "857364", "EstimateLatencyMax" : "857364",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_ProxGS_fu_305"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_my_filter_v1_fu_316"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_array_copy_fu_330"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_array_copy_fu_330"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_array_copy_fu_330"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_array_copy_fu_330"}],
		"Port" : [
			{"Name" : "Img_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "grp_array_copy_fu_330", "Port" : "data_out_V"}]},
			{"Name" : "adjChImg_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "grp_my_filter_v1_fu_316", "Port" : "adjChImg_V"}]},
			{"Name" : "coe_a_M_real", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_ProxGS_fu_305", "Port" : "coe_a_M_real"}]},
			{"Name" : "coe_a_M_imag", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_ProxGS_fu_305", "Port" : "coe_a_M_imag"}]},
			{"Name" : "coe_b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_ProxGS_fu_305", "Port" : "coe_b"}]}]},
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
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS_fu_305", "Parent" : "0", "Child" : ["12", "13", "14", "15", "16", "17", "18", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48"],
		"CDFG" : "ProxGS",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "611297", "EstimateLatencyMax" : "611297",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state34", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fft_top_2D_fu_507"},
			{"State" : "ap_ST_fsm_state90", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fft_top_2D_fu_507"}],
		"Port" : [
			{"Name" : "x_io_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "coe_a_M_real", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "coe_a_M_imag", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "coe_b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS_fu_305.tmp_M_real_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS_fu_305.tmp_M_imag_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS_fu_305.fft_result_M_real_U", "Parent" : "11"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS_fu_305.fft_result_M_imag_U", "Parent" : "11"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS_fu_305.MAD_M_real_U", "Parent" : "11"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS_fu_305.MAD_M_imag_U", "Parent" : "11"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS_fu_305.grp_fft_top_2D_fu_507", "Parent" : "11", "Child" : ["19", "20", "21"],
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
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fft_top_fu_310"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fft_top_fu_310"}],
		"Port" : [
			{"Name" : "direction", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_M_real", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_M_imag", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_M_real", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_M_imag", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS_fu_305.grp_fft_top_2D_fu_507.buffer_out_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS_fu_305.grp_fft_top_2D_fu_507.buffer_in_U", "Parent" : "18"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS_fu_305.grp_fft_top_2D_fu_507.grp_fft_top_fu_310", "Parent" : "18", "Child" : ["22", "23", "24", "25", "26", "27", "28", "29", "30"],
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
			{"ID" : "22", "Name" : "dummy_proc_fe_1_U0"}],
		"OutputProcess" : [
			{"ID" : "24", "Name" : "dummy_proc_be_1_U0"}],
		"Port" : [
			{"Name" : "direction", "Type" : "HS", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "dummy_proc_fe_1_U0", "Port" : "in_r"}]},
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "dummy_proc_be_1_U0", "Port" : "out_r"}]},
			{"Name" : "ovflo", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "dummy_proc_be_1_U0", "Port" : "ovflo"}]}]},
	{"ID" : "22", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS_fu_305.grp_fft_top_2D_fu_507.grp_fft_top_fu_310.dummy_proc_fe_1_U0", "Parent" : "21",
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
			{"Name" : "config_data_V", "Type" : "Fifo", "Direction" : "IO", "DependentProc" : "23", "DependentChan" : "25",
				"BlockSignal" : [
					{"Name" : "config_data_V_i_blk_n", "Type" : "RtlSignal"},
					{"Name" : "config_data_V_o_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_r", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "23", "DependentChan" : "26",
				"BlockSignal" : [
					{"Name" : "out_r_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "23", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS_fu_305.grp_fft_top_2D_fu_507.grp_fft_top_fu_310.fft_config1_U0", "Parent" : "21",
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
		"StartSource" : "22",
		"StartFifo" : "start_for_fft_confYi_U",
		"Port" : [
			{"Name" : "xn", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "22", "DependentChan" : "26"},
			{"Name" : "xk", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "24", "DependentChan" : "27"},
			{"Name" : "status_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "24", "DependentChan" : "28"},
			{"Name" : "config_ch_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "22", "DependentChan" : "25"}]},
	{"ID" : "24", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS_fu_305.grp_fft_top_2D_fu_507.grp_fft_top_fu_310.dummy_proc_be_1_U0", "Parent" : "21",
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
		"StartSource" : "22",
		"StartFifo" : "start_for_dummy_pg8j_U",
		"Port" : [
			{"Name" : "status_in_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "23", "DependentChan" : "28",
				"BlockSignal" : [
					{"Name" : "status_in_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ovflo", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "23", "DependentChan" : "27",
				"BlockSignal" : [
					{"Name" : "in_r_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "25", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS_fu_305.grp_fft_top_2D_fu_507.grp_fft_top_fu_310.fft_config_data_V_U", "Parent" : "21"},
	{"ID" : "26", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS_fu_305.grp_fft_top_2D_fu_507.grp_fft_top_fu_310.xn_channel_U", "Parent" : "21"},
	{"ID" : "27", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS_fu_305.grp_fft_top_2D_fu_507.grp_fft_top_fu_310.xk_channel_U", "Parent" : "21"},
	{"ID" : "28", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS_fu_305.grp_fft_top_2D_fu_507.grp_fft_top_fu_310.fft_status_data_V_U", "Parent" : "21"},
	{"ID" : "29", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS_fu_305.grp_fft_top_2D_fu_507.grp_fft_top_fu_310.start_for_fft_confYi_U", "Parent" : "21"},
	{"ID" : "30", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS_fu_305.grp_fft_top_2D_fu_507.grp_fft_top_fu_310.start_for_dummy_pg8j_U", "Parent" : "21"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS_fu_305.cross_channel_deblbW_U43", "Parent" : "11"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS_fu_305.cross_channel_deblbW_U44", "Parent" : "11"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS_fu_305.cross_channel_debmb6_U45", "Parent" : "11"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS_fu_305.cross_channel_debncg_U46", "Parent" : "11"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS_fu_305.cross_channel_debocq_U47", "Parent" : "11"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS_fu_305.cross_channel_debocq_U48", "Parent" : "11"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS_fu_305.cross_channel_debpcA_U49", "Parent" : "11"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS_fu_305.cross_channel_debpcA_U50", "Parent" : "11"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS_fu_305.cross_channel_debpcA_U51", "Parent" : "11"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS_fu_305.cross_channel_debpcA_U52", "Parent" : "11"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS_fu_305.cross_channel_debpcA_U53", "Parent" : "11"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS_fu_305.cross_channel_debqcK_U54", "Parent" : "11"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS_fu_305.cross_channel_debrcU_U55", "Parent" : "11"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS_fu_305.cross_channel_debrcU_U56", "Parent" : "11"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS_fu_305.cross_channel_debsc4_U57", "Parent" : "11"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS_fu_305.cross_channel_debsc4_U58", "Parent" : "11"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS_fu_305.cross_channel_debtde_U59", "Parent" : "11"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ProxGS_fu_305.cross_channel_debtde_U60", "Parent" : "11"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_316", "Parent" : "0", "Child" : ["50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73"],
		"CDFG" : "my_filter_v1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "164130", "EstimateLatencyMax" : "164130",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_my_filter_fy5_fu_362"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_my_filter_fy5_fu_362"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_my_filter_fy5_fu_362"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_my_filter_fy5_fu_362"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_my_filter_fy5_fu_362"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_my_filter_fy5_fu_369"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_my_filter_fy5_fu_369"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_my_filter_fy5_fu_375"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_my_filter_fy5_fu_375"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_my_filter_fx6_fu_384"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_my_filter_fx6_fu_384"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_my_filter_fx6_fu_384"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_my_filter_fx6_fu_384"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_my_filter_fx6_fu_384"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_my_filter_fx6_fu_384"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_my_filter_fx6_fu_392"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_my_filter_fx6_fu_392"}],
		"Port" : [
			{"Name" : "f_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "grp_my_filter_fy5_fu_362", "Port" : "data_in_V"},
					{"ID" : "72", "SubInstance" : "grp_my_filter_fx6_fu_384", "Port" : "data_in_V"}]},
			{"Name" : "adjChImg_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "71", "SubInstance" : "grp_my_filter_fy5_fu_375", "Port" : "data_in_V"},
					{"ID" : "73", "SubInstance" : "grp_my_filter_fx6_fu_392", "Port" : "data_in_V"}]},
			{"Name" : "g1_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_my_filter_fx6_fu_384", "Port" : "data_in_V"}]},
			{"Name" : "g2_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "grp_my_filter_fy5_fu_362", "Port" : "data_in_V"}]},
			{"Name" : "g3_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "73", "SubInstance" : "grp_my_filter_fx6_fu_392", "Port" : "data_in_V"}]},
			{"Name" : "g4_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "grp_my_filter_fy5_fu_369", "Port" : "data_in_V"}]},
			{"Name" : "g5_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_my_filter_fx6_fu_384", "Port" : "data_in_V"}]},
			{"Name" : "g6_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "g7_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_316.fx_V_U", "Parent" : "49"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_316.fy_V_U", "Parent" : "49"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_316.fxx_U", "Parent" : "49"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_316.fyy_U", "Parent" : "49"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_316.fxy_U", "Parent" : "49"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_316.adj_fx_U", "Parent" : "49"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_316.adj_fy_U", "Parent" : "49"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_316.gx_U", "Parent" : "49"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_316.gy_U", "Parent" : "49"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_316.g3x_V_U", "Parent" : "49"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_316.gxx_U", "Parent" : "49"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_316.g4y_V_U", "Parent" : "49"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_316.gyy_U", "Parent" : "49"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_316.g5x_V_U", "Parent" : "49"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_316.gxy_U", "Parent" : "49"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_316.temp_cross6_V_U", "Parent" : "49"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_316.temp_cross7_V_U", "Parent" : "49"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_316.cross_X_U", "Parent" : "49"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_316.cross_Y_U", "Parent" : "49"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_316.grp_my_filter_fy5_fu_362", "Parent" : "49",
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
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_316.grp_my_filter_fy5_fu_369", "Parent" : "49",
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
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_316.grp_my_filter_fy5_fu_375", "Parent" : "49",
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
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_316.grp_my_filter_fx6_fu_384", "Parent" : "49",
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
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_v1_fu_316.grp_my_filter_fx6_fu_392", "Parent" : "49",
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
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_array_copy_fu_330", "Parent" : "0",
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
		Img_V {Type IO LastRead 1 FirstWrite -1}
		adjChImg_V {Type I LastRead 14 FirstWrite -1}
		coe_a_M_real {Type I LastRead 18 FirstWrite -1}
		coe_a_M_imag {Type I LastRead 18 FirstWrite -1}
		coe_b {Type I LastRead 10 FirstWrite -1}}
	ProxGS {
		x_io_V {Type IO LastRead 7 FirstWrite 24}
		coe_a_M_real {Type I LastRead 18 FirstWrite -1}
		coe_a_M_imag {Type I LastRead 18 FirstWrite -1}
		coe_b {Type I LastRead 10 FirstWrite -1}}
	fft_top_2D {
		direction {Type I LastRead 0 FirstWrite -1}
		in_M_real {Type I LastRead 5 FirstWrite -1}
		in_M_imag {Type I LastRead 5 FirstWrite -1}
		out_M_real {Type O LastRead -1 FirstWrite 7}
		out_M_imag {Type O LastRead -1 FirstWrite 7}}
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
	my_filter_v1 {
		f_V {Type I LastRead 3 FirstWrite -1}
		adjChImg_V {Type I LastRead 14 FirstWrite -1}
		g1_V {Type IO LastRead 6 FirstWrite -1}
		g2_V {Type IO LastRead 6 FirstWrite -1}
		g3_V {Type IO LastRead 6 FirstWrite -1}
		g4_V {Type IO LastRead 6 FirstWrite -1}
		g5_V {Type IO LastRead 6 FirstWrite -1}
		g6_V {Type I LastRead 14 FirstWrite -1}
		g7_V {Type I LastRead 14 FirstWrite -1}}
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
	array_copy {
		data_in_V {Type I LastRead 1 FirstWrite -1}
		data_out_V {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "857364", "Max" : "857364"}
	, {"Name" : "Interval", "Min" : "857365", "Max" : "857365"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	Img_V { ap_memory {  { Img_V_address0 mem_address 1 14 }  { Img_V_ce0 mem_ce 1 1 }  { Img_V_we0 mem_we 1 1 }  { Img_V_d0 mem_din 1 8 }  { Img_V_q0 mem_dout 0 8 } } }
	adjChImg_V { ap_memory {  { adjChImg_V_address0 mem_address 1 14 }  { adjChImg_V_ce0 mem_ce 1 1 }  { adjChImg_V_q0 mem_dout 0 8 }  { adjChImg_V_address1 MemPortADDR2 1 14 }  { adjChImg_V_ce1 MemPortCE2 1 1 }  { adjChImg_V_q1 MemPortDOUT2 0 8 } } }
	coe_a_M_real { ap_memory {  { coe_a_M_real_address0 mem_address 1 14 }  { coe_a_M_real_ce0 mem_ce 1 1 }  { coe_a_M_real_q0 mem_dout 0 32 } } }
	coe_a_M_imag { ap_memory {  { coe_a_M_imag_address0 mem_address 1 14 }  { coe_a_M_imag_ce0 mem_ce 1 1 }  { coe_a_M_imag_q0 mem_dout 0 32 } } }
	coe_b { ap_memory {  { coe_b_address0 mem_address 1 14 }  { coe_b_ce0 mem_ce 1 1 }  { coe_b_q0 mem_dout 0 32 } } }
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
