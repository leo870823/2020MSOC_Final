set moduleName fft_top
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {fft_top}
set C_modelType { void 0 }
set C_modelArgList {
	{ direction uint 1 regular  }
	{ in_r int 32 regular {array 16384 { 1 3 } 1 1 }  }
	{ out_r int 32 regular {array 16384 { 0 3 } 0 1 }  }
	{ ovflo int 1 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "direction", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_r", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "out_r", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ovflo", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 32
set portList { 
	{ direction sc_in sc_logic 1 signal 0 } 
	{ in_r_address0 sc_out sc_lv 14 signal 1 } 
	{ in_r_ce0 sc_out sc_logic 1 signal 1 } 
	{ in_r_d0 sc_out sc_lv 32 signal 1 } 
	{ in_r_q0 sc_in sc_lv 32 signal 1 } 
	{ in_r_we0 sc_out sc_logic 1 signal 1 } 
	{ in_r_address1 sc_out sc_lv 14 signal 1 } 
	{ in_r_ce1 sc_out sc_logic 1 signal 1 } 
	{ in_r_d1 sc_out sc_lv 32 signal 1 } 
	{ in_r_q1 sc_in sc_lv 32 signal 1 } 
	{ in_r_we1 sc_out sc_logic 1 signal 1 } 
	{ out_r_address0 sc_out sc_lv 14 signal 2 } 
	{ out_r_ce0 sc_out sc_logic 1 signal 2 } 
	{ out_r_d0 sc_out sc_lv 32 signal 2 } 
	{ out_r_q0 sc_in sc_lv 32 signal 2 } 
	{ out_r_we0 sc_out sc_logic 1 signal 2 } 
	{ out_r_address1 sc_out sc_lv 14 signal 2 } 
	{ out_r_ce1 sc_out sc_logic 1 signal 2 } 
	{ out_r_d1 sc_out sc_lv 32 signal 2 } 
	{ out_r_q1 sc_in sc_lv 32 signal 2 } 
	{ out_r_we1 sc_out sc_logic 1 signal 2 } 
	{ ovflo sc_out sc_logic 1 signal 3 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ direction_ap_vld sc_in sc_logic 1 invld 0 } 
	{ direction_ap_ack sc_out sc_logic 1 inacc 0 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ovflo_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "direction", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "direction", "role": "default" }} , 
 	{ "name": "in_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_r", "role": "address0" }} , 
 	{ "name": "in_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "ce0" }} , 
 	{ "name": "in_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_r", "role": "d0" }} , 
 	{ "name": "in_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_r", "role": "q0" }} , 
 	{ "name": "in_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "we0" }} , 
 	{ "name": "in_r_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_r", "role": "address1" }} , 
 	{ "name": "in_r_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "ce1" }} , 
 	{ "name": "in_r_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_r", "role": "d1" }} , 
 	{ "name": "in_r_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_r", "role": "q1" }} , 
 	{ "name": "in_r_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "we1" }} , 
 	{ "name": "out_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "out_r", "role": "address0" }} , 
 	{ "name": "out_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "ce0" }} , 
 	{ "name": "out_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_r", "role": "d0" }} , 
 	{ "name": "out_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_r", "role": "q0" }} , 
 	{ "name": "out_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "we0" }} , 
 	{ "name": "out_r_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "out_r", "role": "address1" }} , 
 	{ "name": "out_r_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "ce1" }} , 
 	{ "name": "out_r_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_r", "role": "d1" }} , 
 	{ "name": "out_r_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_r", "role": "q1" }} , 
 	{ "name": "out_r_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "we1" }} , 
 	{ "name": "ovflo", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ovflo", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "direction_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "direction", "role": "ap_vld" }} , 
 	{ "name": "direction_ap_ack", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "direction", "role": "ap_ack" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ovflo_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "ovflo", "role": "ap_vld" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9"],
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
			{"ID" : "1", "Name" : "dummy_proc_fe_1_U0"}],
		"OutputProcess" : [
			{"ID" : "3", "Name" : "dummy_proc_be_1_U0"}],
		"Port" : [
			{"Name" : "direction", "Type" : "HS", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dummy_proc_fe_1_U0", "Port" : "in_r"}]},
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "dummy_proc_be_1_U0", "Port" : "out_r"}]},
			{"Name" : "ovflo", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "dummy_proc_be_1_U0", "Port" : "ovflo"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dummy_proc_fe_1_U0", "Parent" : "0",
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
			{"Name" : "config_data_V", "Type" : "Fifo", "Direction" : "IO", "DependentProc" : "2", "DependentChan" : "4",
				"BlockSignal" : [
					{"Name" : "config_data_V_i_blk_n", "Type" : "RtlSignal"},
					{"Name" : "config_data_V_o_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_r", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "5",
				"BlockSignal" : [
					{"Name" : "out_r_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_config1_U0", "Parent" : "0",
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
		"StartSource" : "1",
		"StartFifo" : "start_for_fft_conlbW_U",
		"Port" : [
			{"Name" : "xn", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "5"},
			{"Name" : "xk", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "6"},
			{"Name" : "status_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "7"},
			{"Name" : "config_ch_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "4"}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dummy_proc_be_1_U0", "Parent" : "0",
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
		"StartSource" : "1",
		"StartFifo" : "start_for_dummy_pmb6_U",
		"Port" : [
			{"Name" : "status_in_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "7",
				"BlockSignal" : [
					{"Name" : "status_in_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ovflo", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "6",
				"BlockSignal" : [
					{"Name" : "in_r_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_config_data_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xn_channel_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xk_channel_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_status_data_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_fft_conlbW_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_dummy_pmb6_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "32769", "Max" : "32769"}
	, {"Name" : "Interval", "Min" : "32770", "Max" : "32770"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	direction { ap_hs {  { direction in_data 0 1 }  { direction_ap_vld in_vld 0 1 }  { direction_ap_ack in_acc 1 1 } } }
	in_r { ap_memory {  { in_r_address0 mem_address 1 14 }  { in_r_ce0 mem_ce 1 1 }  { in_r_d0 mem_din 1 32 }  { in_r_q0 mem_dout 0 32 }  { in_r_we0 mem_we 1 1 }  { in_r_address1 mem_address 1 14 }  { in_r_ce1 mem_ce 1 1 }  { in_r_d1 mem_din 1 32 }  { in_r_q1 mem_dout 0 32 }  { in_r_we1 mem_we 1 1 } } }
	out_r { ap_memory {  { out_r_address0 mem_address 1 14 }  { out_r_ce0 mem_ce 1 1 }  { out_r_d0 mem_din 1 32 }  { out_r_q0 mem_dout 0 32 }  { out_r_we0 mem_we 1 1 }  { out_r_address1 mem_address 1 14 }  { out_r_ce1 mem_ce 1 1 }  { out_r_d1 mem_din 1 32 }  { out_r_q1 mem_dout 0 32 }  { out_r_we1 mem_we 1 1 } } }
	ovflo { ap_vld {  { ovflo out_data 1 1 }  { ovflo_ap_vld out_vld 1 1 } } }
}
