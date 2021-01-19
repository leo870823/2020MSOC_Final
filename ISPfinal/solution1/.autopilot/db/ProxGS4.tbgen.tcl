set moduleName ProxGS4
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
set C_modelName {ProxGS4}
set C_modelType { void 0 }
set C_modelArgList {
	{ x_io float 32 regular {array 16384 { 2 3 } 1 1 }  }
	{ coe_a_M_real float 32 regular {array 16384 { 1 3 } 1 1 }  }
	{ coe_a_M_imag float 32 regular {array 16384 { 1 3 } 1 1 }  }
	{ coe_b float 32 regular {array 16384 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "x_io", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "coe_a_M_real", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "coe_a_M_imag", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "coe_b", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ x_io_address0 sc_out sc_lv 14 signal 0 } 
	{ x_io_ce0 sc_out sc_logic 1 signal 0 } 
	{ x_io_we0 sc_out sc_logic 1 signal 0 } 
	{ x_io_d0 sc_out sc_lv 32 signal 0 } 
	{ x_io_q0 sc_in sc_lv 32 signal 0 } 
	{ coe_a_M_real_address0 sc_out sc_lv 14 signal 1 } 
	{ coe_a_M_real_ce0 sc_out sc_logic 1 signal 1 } 
	{ coe_a_M_real_q0 sc_in sc_lv 32 signal 1 } 
	{ coe_a_M_imag_address0 sc_out sc_lv 14 signal 2 } 
	{ coe_a_M_imag_ce0 sc_out sc_logic 1 signal 2 } 
	{ coe_a_M_imag_q0 sc_in sc_lv 32 signal 2 } 
	{ coe_b_address0 sc_out sc_lv 14 signal 3 } 
	{ coe_b_ce0 sc_out sc_logic 1 signal 3 } 
	{ coe_b_q0 sc_in sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "x_io_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "x_io", "role": "address0" }} , 
 	{ "name": "x_io_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_io", "role": "ce0" }} , 
 	{ "name": "x_io_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_io", "role": "we0" }} , 
 	{ "name": "x_io_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_io", "role": "d0" }} , 
 	{ "name": "x_io_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_io", "role": "q0" }} , 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "17", "18", "19", "20", "21", "22"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_M_real_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_M_imag_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_result_M_real_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_result_M_imag_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fft_top_2D_fu_419", "Parent" : "0", "Child" : ["6", "7", "8"],
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
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_top_2D_fu_419.buffer_out_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_top_2D_fu_419.buffer_in_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_top_2D_fu_419.grp_fft_top_fu_304", "Parent" : "5", "Child" : ["9", "10", "11", "12", "13", "14", "15", "16"],
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
			{"ID" : "9", "Name" : "dummy_proc_fe_1_U0"}],
		"OutputProcess" : [
			{"ID" : "11", "Name" : "dummy_proc_be_1_U0"}],
		"Port" : [
			{"Name" : "direction", "Type" : "HS", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "dummy_proc_fe_1_U0", "Port" : "in_r"}]},
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "dummy_proc_be_1_U0", "Port" : "out_r"}]}]},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fft_top_2D_fu_419.grp_fft_top_fu_304.dummy_proc_fe_1_U0", "Parent" : "8",
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
			{"Name" : "config_data_V", "Type" : "Fifo", "Direction" : "IO", "DependentProc" : "10", "DependentChan" : "12",
				"BlockSignal" : [
					{"Name" : "config_data_V_i_blk_n", "Type" : "RtlSignal"},
					{"Name" : "config_data_V_o_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_r", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "10", "DependentChan" : "13",
				"BlockSignal" : [
					{"Name" : "out_r_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fft_top_2D_fu_419.grp_fft_top_fu_304.fft_config1_U0", "Parent" : "8",
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
		"StartSource" : "9",
		"StartFifo" : "start_for_fft_conmb6_U",
		"Port" : [
			{"Name" : "xn", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "13"},
			{"Name" : "xk", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "11", "DependentChan" : "14"},
			{"Name" : "status_data_V", "Type" : "Fifo", "Direction" : "O"},
			{"Name" : "config_ch_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "12"}]},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fft_top_2D_fu_419.grp_fft_top_fu_304.dummy_proc_be_1_U0", "Parent" : "8",
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
		"StartSource" : "9",
		"StartFifo" : "start_for_dummy_pncg_U",
		"Port" : [
			{"Name" : "in_r", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "10", "DependentChan" : "14",
				"BlockSignal" : [
					{"Name" : "in_r_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fft_top_2D_fu_419.grp_fft_top_fu_304.fft_config_data_V_U", "Parent" : "8"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fft_top_2D_fu_419.grp_fft_top_fu_304.xn_channel_U", "Parent" : "8"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fft_top_2D_fu_419.grp_fft_top_fu_304.xk_channel_U", "Parent" : "8"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fft_top_2D_fu_419.grp_fft_top_fu_304.start_for_fft_conmb6_U", "Parent" : "8"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fft_top_2D_fu_419.grp_fft_top_fu_304.start_for_dummy_pncg_U", "Parent" : "8"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DEBLUR_fadd_32ns_dEe_U93", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DEBLUR_fadd_32ns_dEe_U94", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DEBLUR_fmul_32ns_eOg_U95", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DEBLUR_fdiv_32ns_fYi_U96", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DEBLUR_fdiv_32ns_fYi_U97", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DEBLUR_fcmp_32ns_ibs_U98", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		out_r {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 1

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "594729", "Max" : "594729"}
	, {"Name" : "Interval", "Min" : "594729", "Max" : "594729"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
]}

set Spec2ImplPortList { 
	x_io { ap_memory {  { x_io_address0 mem_address 1 14 }  { x_io_ce0 mem_ce 1 1 }  { x_io_we0 mem_we 1 1 }  { x_io_d0 mem_din 1 32 }  { x_io_q0 mem_dout 0 32 } } }
	coe_a_M_real { ap_memory {  { coe_a_M_real_address0 mem_address 1 14 }  { coe_a_M_real_ce0 mem_ce 1 1 }  { coe_a_M_real_q0 mem_dout 0 32 } } }
	coe_a_M_imag { ap_memory {  { coe_a_M_imag_address0 mem_address 1 14 }  { coe_a_M_imag_ce0 mem_ce 1 1 }  { coe_a_M_imag_q0 mem_dout 0 32 } } }
	coe_b { ap_memory {  { coe_b_address0 mem_address 1 14 }  { coe_b_ce0 mem_ce 1 1 }  { coe_b_q0 mem_dout 0 32 } } }
}
