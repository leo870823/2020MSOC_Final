set moduleName dummy_proc_be_1
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
set C_modelName {dummy_proc_be.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ status_in_data_V int 8 regular {fifo 0}  }
	{ ovflo int 1 regular {pointer 1}  }
	{ in_r int 32 regular {fifo 0 volatile }  }
	{ out_r int 32 regular {array 16384 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "status_in_data_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ovflo", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_r", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "out_r", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ status_in_data_V_dout sc_in sc_lv 8 signal 0 } 
	{ status_in_data_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ status_in_data_V_read sc_out sc_logic 1 signal 0 } 
	{ ovflo sc_out sc_logic 1 signal 1 } 
	{ ovflo_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ in_r_dout sc_in sc_lv 32 signal 2 } 
	{ in_r_empty_n sc_in sc_logic 1 signal 2 } 
	{ in_r_read sc_out sc_logic 1 signal 2 } 
	{ out_r_address0 sc_out sc_lv 14 signal 3 } 
	{ out_r_ce0 sc_out sc_logic 1 signal 3 } 
	{ out_r_we0 sc_out sc_logic 1 signal 3 } 
	{ out_r_d0 sc_out sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "status_in_data_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "status_in_data_V", "role": "dout" }} , 
 	{ "name": "status_in_data_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "status_in_data_V", "role": "empty_n" }} , 
 	{ "name": "status_in_data_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "status_in_data_V", "role": "read" }} , 
 	{ "name": "ovflo", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ovflo", "role": "default" }} , 
 	{ "name": "ovflo_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "ovflo", "role": "ap_vld" }} , 
 	{ "name": "in_r_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_r", "role": "dout" }} , 
 	{ "name": "in_r_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "empty_n" }} , 
 	{ "name": "in_r_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "read" }} , 
 	{ "name": "out_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "out_r", "role": "address0" }} , 
 	{ "name": "out_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "ce0" }} , 
 	{ "name": "out_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "we0" }} , 
 	{ "name": "out_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_r", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
		"Port" : [
			{"Name" : "status_in_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "status_in_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ovflo", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "in_r_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	dummy_proc_be_1 {
		status_in_data_V {Type I LastRead 1 FirstWrite -1}
		ovflo {Type O LastRead -1 FirstWrite 1}
		in_r {Type I LastRead 1 FirstWrite -1}
		out_r {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "16385", "Max" : "16385"}
	, {"Name" : "Interval", "Min" : "16385", "Max" : "16385"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	status_in_data_V { ap_fifo {  { status_in_data_V_dout fifo_data 0 8 }  { status_in_data_V_empty_n fifo_status 0 1 }  { status_in_data_V_read fifo_update 1 1 } } }
	ovflo { ap_vld {  { ovflo out_data 1 1 }  { ovflo_ap_vld out_vld 1 1 } } }
	in_r { ap_fifo {  { in_r_dout fifo_data 0 32 }  { in_r_empty_n fifo_status 0 1 }  { in_r_read fifo_update 1 1 } } }
	out_r { ap_memory {  { out_r_address0 mem_address 1 14 }  { out_r_ce0 mem_ce 1 1 }  { out_r_we0 mem_we 1 1 }  { out_r_d0 mem_din 1 32 } } }
}
