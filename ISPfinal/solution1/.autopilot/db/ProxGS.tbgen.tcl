set moduleName ProxGS
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
set C_modelName {ProxGS}
set C_modelType { void 0 }
set C_modelArgList {
	{ x_io_V int 8 regular {array 16384 { 2 3 } 1 1 }  }
	{ coe_a_M_real_V int 16 regular {array 16384 { 1 3 } 1 1 }  }
	{ coe_a_M_imag_V int 16 regular {array 16384 { 1 3 } 1 1 }  }
	{ coe_b_V int 8 regular {array 16384 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "x_io_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "coe_a_M_real_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "coe_a_M_imag_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "coe_b_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ x_io_V_address0 sc_out sc_lv 14 signal 0 } 
	{ x_io_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ x_io_V_we0 sc_out sc_logic 1 signal 0 } 
	{ x_io_V_d0 sc_out sc_lv 8 signal 0 } 
	{ x_io_V_q0 sc_in sc_lv 8 signal 0 } 
	{ coe_a_M_real_V_address0 sc_out sc_lv 14 signal 1 } 
	{ coe_a_M_real_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ coe_a_M_real_V_q0 sc_in sc_lv 16 signal 1 } 
	{ coe_a_M_imag_V_address0 sc_out sc_lv 14 signal 2 } 
	{ coe_a_M_imag_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ coe_a_M_imag_V_q0 sc_in sc_lv 16 signal 2 } 
	{ coe_b_V_address0 sc_out sc_lv 14 signal 3 } 
	{ coe_b_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ coe_b_V_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "x_io_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "x_io_V", "role": "address0" }} , 
 	{ "name": "x_io_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_io_V", "role": "ce0" }} , 
 	{ "name": "x_io_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_io_V", "role": "we0" }} , 
 	{ "name": "x_io_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_io_V", "role": "d0" }} , 
 	{ "name": "x_io_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_io_V", "role": "q0" }} , 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "14", "15"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MAD_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_result_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp9_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fft_top_fu_303", "Parent" : "0", "Child" : ["5", "6", "7", "8", "9", "10", "11", "12", "13"],
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
			{"ID" : "5", "Name" : "dummy_proc_fe_1_U0"}],
		"OutputProcess" : [
			{"ID" : "7", "Name" : "dummy_proc_be_1_U0"}],
		"Port" : [
			{"Name" : "direction", "Type" : "HS", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dummy_proc_fe_1_U0", "Port" : "in_r"}]},
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "dummy_proc_be_1_U0", "Port" : "out_r"}]},
			{"Name" : "ovflo", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "dummy_proc_be_1_U0", "Port" : "ovflo"}]}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_top_fu_303.dummy_proc_fe_1_U0", "Parent" : "4",
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
			{"Name" : "config_data_V", "Type" : "Fifo", "Direction" : "IO", "DependentProc" : "6", "DependentChan" : "8",
				"BlockSignal" : [
					{"Name" : "config_data_V_i_blk_n", "Type" : "RtlSignal"},
					{"Name" : "config_data_V_o_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_r", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "6", "DependentChan" : "9",
				"BlockSignal" : [
					{"Name" : "out_r_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_top_fu_303.fft_config1_U0", "Parent" : "4",
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
		"StartSource" : "5",
		"StartFifo" : "start_for_fft_conlbW_U",
		"Port" : [
			{"Name" : "xn", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "9"},
			{"Name" : "xk", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "7", "DependentChan" : "10"},
			{"Name" : "status_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "7", "DependentChan" : "11"},
			{"Name" : "config_ch_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "8"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_top_fu_303.dummy_proc_be_1_U0", "Parent" : "4",
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
		"StartSource" : "5",
		"StartFifo" : "start_for_dummy_pmb6_U",
		"Port" : [
			{"Name" : "status_in_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "11",
				"BlockSignal" : [
					{"Name" : "status_in_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ovflo", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "10",
				"BlockSignal" : [
					{"Name" : "in_r_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_top_fu_303.fft_config_data_V_U", "Parent" : "4"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_top_fu_303.xn_channel_U", "Parent" : "4"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_top_fu_303.xk_channel_U", "Parent" : "4"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_top_fu_303.fft_status_data_V_U", "Parent" : "4"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_top_fu_303.start_for_fft_conlbW_U", "Parent" : "4"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_top_fu_303.start_for_dummy_pmb6_U", "Parent" : "4"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cross_channel_debncg_U62", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cross_channel_debncg_U63", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		out_r {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "114720", "Max" : "114720"}
	, {"Name" : "Interval", "Min" : "114720", "Max" : "114720"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
]}

set Spec2ImplPortList { 
	x_io_V { ap_memory {  { x_io_V_address0 mem_address 1 14 }  { x_io_V_ce0 mem_ce 1 1 }  { x_io_V_we0 mem_we 1 1 }  { x_io_V_d0 mem_din 1 8 }  { x_io_V_q0 mem_dout 0 8 } } }
	coe_a_M_real_V { ap_memory {  { coe_a_M_real_V_address0 mem_address 1 14 }  { coe_a_M_real_V_ce0 mem_ce 1 1 }  { coe_a_M_real_V_q0 mem_dout 0 16 } } }
	coe_a_M_imag_V { ap_memory {  { coe_a_M_imag_V_address0 mem_address 1 14 }  { coe_a_M_imag_V_ce0 mem_ce 1 1 }  { coe_a_M_imag_V_q0 mem_dout 0 16 } } }
	coe_b_V { ap_memory {  { coe_b_V_address0 mem_address 1 14 }  { coe_b_V_ce0 mem_ce 1 1 }  { coe_b_V_q0 mem_dout 0 8 } } }
}
