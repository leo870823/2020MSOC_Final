set moduleName Relax
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
set C_modelName {Relax}
set C_modelType { void 0 }
set C_modelArgList {
	{ x_V int 8 regular {array 16384 { 1 3 } 1 1 }  }
	{ x_old_V int 8 regular {array 16384 { 1 3 } 1 1 }  }
	{ x_bar_V int 8 regular {array 16384 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "x_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "x_old_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "x_bar_V", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ x_V_address0 sc_out sc_lv 14 signal 0 } 
	{ x_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ x_V_q0 sc_in sc_lv 8 signal 0 } 
	{ x_old_V_address0 sc_out sc_lv 14 signal 1 } 
	{ x_old_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ x_old_V_q0 sc_in sc_lv 8 signal 1 } 
	{ x_bar_V_address0 sc_out sc_lv 14 signal 2 } 
	{ x_bar_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ x_bar_V_we0 sc_out sc_logic 1 signal 2 } 
	{ x_bar_V_d0 sc_out sc_lv 8 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "x_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "x_V", "role": "address0" }} , 
 	{ "name": "x_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_V", "role": "ce0" }} , 
 	{ "name": "x_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_V", "role": "q0" }} , 
 	{ "name": "x_old_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "x_old_V", "role": "address0" }} , 
 	{ "name": "x_old_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_old_V", "role": "ce0" }} , 
 	{ "name": "x_old_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_old_V", "role": "q0" }} , 
 	{ "name": "x_bar_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "x_bar_V", "role": "address0" }} , 
 	{ "name": "x_bar_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_bar_V", "role": "ce0" }} , 
 	{ "name": "x_bar_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_bar_V", "role": "we0" }} , 
 	{ "name": "x_bar_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_bar_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cross_channel_debibs_U71", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Relax {
		x_V {Type I LastRead 1 FirstWrite -1}
		x_old_V {Type I LastRead 1 FirstWrite -1}
		x_bar_V {Type O LastRead -1 FirstWrite 12}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "16396", "Max" : "16396"}
	, {"Name" : "Interval", "Min" : "16396", "Max" : "16396"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	x_V { ap_memory {  { x_V_address0 mem_address 1 14 }  { x_V_ce0 mem_ce 1 1 }  { x_V_q0 mem_dout 0 8 } } }
	x_old_V { ap_memory {  { x_old_V_address0 mem_address 1 14 }  { x_old_V_ce0 mem_ce 1 1 }  { x_old_V_q0 mem_dout 0 8 } } }
	x_bar_V { ap_memory {  { x_bar_V_address0 mem_address 1 14 }  { x_bar_V_ce0 mem_ce 1 1 }  { x_bar_V_we0 mem_we 1 1 }  { x_bar_V_d0 mem_din 1 8 } } }
}
