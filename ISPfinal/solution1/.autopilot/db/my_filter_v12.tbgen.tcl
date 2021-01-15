set moduleName my_filter_v12
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
set C_modelName {my_filter_v12}
set C_modelType { void 0 }
set C_modelArgList {
	{ f_V int 8 regular {array 16384 { 1 1 } 1 1 }  }
	{ adjChImg_V int 8 regular {array 16384 { 1 1 } 1 1 }  }
	{ g1_V int 8 regular {array 16384 { 2 0 } 1 1 }  }
	{ g2_V int 8 regular {array 16384 { 2 0 } 1 1 }  }
	{ g3_V int 8 regular {array 16384 { 2 3 } 1 1 }  }
	{ g4_V int 8 regular {array 16384 { 2 0 } 1 1 }  }
	{ g5_V int 8 regular {array 16384 { 2 3 } 1 1 }  }
	{ g6_V int 8 regular {array 16384 { 2 0 } 1 1 }  }
	{ g7_V int 8 regular {array 16384 { 2 0 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "f_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "adjChImg_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "g1_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "g2_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "g3_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "g4_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "g5_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "g6_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "g7_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 73
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ f_V_address0 sc_out sc_lv 14 signal 0 } 
	{ f_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ f_V_q0 sc_in sc_lv 8 signal 0 } 
	{ f_V_address1 sc_out sc_lv 14 signal 0 } 
	{ f_V_ce1 sc_out sc_logic 1 signal 0 } 
	{ f_V_q1 sc_in sc_lv 8 signal 0 } 
	{ adjChImg_V_address0 sc_out sc_lv 14 signal 1 } 
	{ adjChImg_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ adjChImg_V_q0 sc_in sc_lv 8 signal 1 } 
	{ adjChImg_V_address1 sc_out sc_lv 14 signal 1 } 
	{ adjChImg_V_ce1 sc_out sc_logic 1 signal 1 } 
	{ adjChImg_V_q1 sc_in sc_lv 8 signal 1 } 
	{ g1_V_address0 sc_out sc_lv 14 signal 2 } 
	{ g1_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ g1_V_we0 sc_out sc_logic 1 signal 2 } 
	{ g1_V_d0 sc_out sc_lv 8 signal 2 } 
	{ g1_V_q0 sc_in sc_lv 8 signal 2 } 
	{ g1_V_address1 sc_out sc_lv 14 signal 2 } 
	{ g1_V_ce1 sc_out sc_logic 1 signal 2 } 
	{ g1_V_we1 sc_out sc_logic 1 signal 2 } 
	{ g1_V_d1 sc_out sc_lv 8 signal 2 } 
	{ g2_V_address0 sc_out sc_lv 14 signal 3 } 
	{ g2_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ g2_V_we0 sc_out sc_logic 1 signal 3 } 
	{ g2_V_d0 sc_out sc_lv 8 signal 3 } 
	{ g2_V_q0 sc_in sc_lv 8 signal 3 } 
	{ g2_V_address1 sc_out sc_lv 14 signal 3 } 
	{ g2_V_ce1 sc_out sc_logic 1 signal 3 } 
	{ g2_V_we1 sc_out sc_logic 1 signal 3 } 
	{ g2_V_d1 sc_out sc_lv 8 signal 3 } 
	{ g3_V_address0 sc_out sc_lv 14 signal 4 } 
	{ g3_V_ce0 sc_out sc_logic 1 signal 4 } 
	{ g3_V_we0 sc_out sc_logic 1 signal 4 } 
	{ g3_V_d0 sc_out sc_lv 8 signal 4 } 
	{ g3_V_q0 sc_in sc_lv 8 signal 4 } 
	{ g4_V_address0 sc_out sc_lv 14 signal 5 } 
	{ g4_V_ce0 sc_out sc_logic 1 signal 5 } 
	{ g4_V_we0 sc_out sc_logic 1 signal 5 } 
	{ g4_V_d0 sc_out sc_lv 8 signal 5 } 
	{ g4_V_q0 sc_in sc_lv 8 signal 5 } 
	{ g4_V_address1 sc_out sc_lv 14 signal 5 } 
	{ g4_V_ce1 sc_out sc_logic 1 signal 5 } 
	{ g4_V_we1 sc_out sc_logic 1 signal 5 } 
	{ g4_V_d1 sc_out sc_lv 8 signal 5 } 
	{ g5_V_address0 sc_out sc_lv 14 signal 6 } 
	{ g5_V_ce0 sc_out sc_logic 1 signal 6 } 
	{ g5_V_we0 sc_out sc_logic 1 signal 6 } 
	{ g5_V_d0 sc_out sc_lv 8 signal 6 } 
	{ g5_V_q0 sc_in sc_lv 8 signal 6 } 
	{ g6_V_address0 sc_out sc_lv 14 signal 7 } 
	{ g6_V_ce0 sc_out sc_logic 1 signal 7 } 
	{ g6_V_we0 sc_out sc_logic 1 signal 7 } 
	{ g6_V_d0 sc_out sc_lv 8 signal 7 } 
	{ g6_V_q0 sc_in sc_lv 8 signal 7 } 
	{ g6_V_address1 sc_out sc_lv 14 signal 7 } 
	{ g6_V_ce1 sc_out sc_logic 1 signal 7 } 
	{ g6_V_we1 sc_out sc_logic 1 signal 7 } 
	{ g6_V_d1 sc_out sc_lv 8 signal 7 } 
	{ g7_V_address0 sc_out sc_lv 14 signal 8 } 
	{ g7_V_ce0 sc_out sc_logic 1 signal 8 } 
	{ g7_V_we0 sc_out sc_logic 1 signal 8 } 
	{ g7_V_d0 sc_out sc_lv 8 signal 8 } 
	{ g7_V_q0 sc_in sc_lv 8 signal 8 } 
	{ g7_V_address1 sc_out sc_lv 14 signal 8 } 
	{ g7_V_ce1 sc_out sc_logic 1 signal 8 } 
	{ g7_V_we1 sc_out sc_logic 1 signal 8 } 
	{ g7_V_d1 sc_out sc_lv 8 signal 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "f_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "f_V", "role": "address0" }} , 
 	{ "name": "f_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "f_V", "role": "ce0" }} , 
 	{ "name": "f_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "f_V", "role": "q0" }} , 
 	{ "name": "f_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "f_V", "role": "address1" }} , 
 	{ "name": "f_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "f_V", "role": "ce1" }} , 
 	{ "name": "f_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "f_V", "role": "q1" }} , 
 	{ "name": "adjChImg_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "adjChImg_V", "role": "address0" }} , 
 	{ "name": "adjChImg_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "adjChImg_V", "role": "ce0" }} , 
 	{ "name": "adjChImg_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "adjChImg_V", "role": "q0" }} , 
 	{ "name": "adjChImg_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "adjChImg_V", "role": "address1" }} , 
 	{ "name": "adjChImg_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "adjChImg_V", "role": "ce1" }} , 
 	{ "name": "adjChImg_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "adjChImg_V", "role": "q1" }} , 
 	{ "name": "g1_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "g1_V", "role": "address0" }} , 
 	{ "name": "g1_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g1_V", "role": "ce0" }} , 
 	{ "name": "g1_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g1_V", "role": "we0" }} , 
 	{ "name": "g1_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "g1_V", "role": "d0" }} , 
 	{ "name": "g1_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "g1_V", "role": "q0" }} , 
 	{ "name": "g1_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "g1_V", "role": "address1" }} , 
 	{ "name": "g1_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g1_V", "role": "ce1" }} , 
 	{ "name": "g1_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g1_V", "role": "we1" }} , 
 	{ "name": "g1_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "g1_V", "role": "d1" }} , 
 	{ "name": "g2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "g2_V", "role": "address0" }} , 
 	{ "name": "g2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g2_V", "role": "ce0" }} , 
 	{ "name": "g2_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g2_V", "role": "we0" }} , 
 	{ "name": "g2_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "g2_V", "role": "d0" }} , 
 	{ "name": "g2_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "g2_V", "role": "q0" }} , 
 	{ "name": "g2_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "g2_V", "role": "address1" }} , 
 	{ "name": "g2_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g2_V", "role": "ce1" }} , 
 	{ "name": "g2_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g2_V", "role": "we1" }} , 
 	{ "name": "g2_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "g2_V", "role": "d1" }} , 
 	{ "name": "g3_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "g3_V", "role": "address0" }} , 
 	{ "name": "g3_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g3_V", "role": "ce0" }} , 
 	{ "name": "g3_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g3_V", "role": "we0" }} , 
 	{ "name": "g3_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "g3_V", "role": "d0" }} , 
 	{ "name": "g3_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "g3_V", "role": "q0" }} , 
 	{ "name": "g4_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "g4_V", "role": "address0" }} , 
 	{ "name": "g4_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g4_V", "role": "ce0" }} , 
 	{ "name": "g4_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g4_V", "role": "we0" }} , 
 	{ "name": "g4_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "g4_V", "role": "d0" }} , 
 	{ "name": "g4_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "g4_V", "role": "q0" }} , 
 	{ "name": "g4_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "g4_V", "role": "address1" }} , 
 	{ "name": "g4_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g4_V", "role": "ce1" }} , 
 	{ "name": "g4_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g4_V", "role": "we1" }} , 
 	{ "name": "g4_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "g4_V", "role": "d1" }} , 
 	{ "name": "g5_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "g5_V", "role": "address0" }} , 
 	{ "name": "g5_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g5_V", "role": "ce0" }} , 
 	{ "name": "g5_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g5_V", "role": "we0" }} , 
 	{ "name": "g5_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "g5_V", "role": "d0" }} , 
 	{ "name": "g5_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "g5_V", "role": "q0" }} , 
 	{ "name": "g6_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "g6_V", "role": "address0" }} , 
 	{ "name": "g6_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g6_V", "role": "ce0" }} , 
 	{ "name": "g6_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g6_V", "role": "we0" }} , 
 	{ "name": "g6_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "g6_V", "role": "d0" }} , 
 	{ "name": "g6_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "g6_V", "role": "q0" }} , 
 	{ "name": "g6_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "g6_V", "role": "address1" }} , 
 	{ "name": "g6_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g6_V", "role": "ce1" }} , 
 	{ "name": "g6_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g6_V", "role": "we1" }} , 
 	{ "name": "g6_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "g6_V", "role": "d1" }} , 
 	{ "name": "g7_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "g7_V", "role": "address0" }} , 
 	{ "name": "g7_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g7_V", "role": "ce0" }} , 
 	{ "name": "g7_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g7_V", "role": "we0" }} , 
 	{ "name": "g7_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "g7_V", "role": "d0" }} , 
 	{ "name": "g7_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "g7_V", "role": "q0" }} , 
 	{ "name": "g7_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "g7_V", "role": "address1" }} , 
 	{ "name": "g7_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g7_V", "role": "ce1" }} , 
 	{ "name": "g7_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g7_V", "role": "we1" }} , 
 	{ "name": "g7_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "g7_V", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
		"CDFG" : "my_filter_v12",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49170", "EstimateLatencyMax" : "49170",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "f_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "adjChImg_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "g1_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "g2_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "g3_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "g4_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "g5_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "g6_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "g7_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DEBLUR_dadd_64ns_bkb_U3", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DEBLUR_uitodp_32ncud_U4", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DEBLUR_uitodp_32ncud_U5", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DEBLUR_sitodp_32sdEe_U6", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DEBLUR_mac_mulsubeOg_U7", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DEBLUR_mac_mulsubeOg_U8", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	my_filter_v12 {
		f_V {Type I LastRead 4 FirstWrite -1}
		adjChImg_V {Type I LastRead 3 FirstWrite -1}
		g1_V {Type IO LastRead 1 FirstWrite 4}
		g2_V {Type IO LastRead 1 FirstWrite 3}
		g3_V {Type IO LastRead 1 FirstWrite 5}
		g4_V {Type IO LastRead 1 FirstWrite 4}
		g5_V {Type IO LastRead 1 FirstWrite 5}
		g6_V {Type IO LastRead 1 FirstWrite 19}
		g7_V {Type IO LastRead 1 FirstWrite 18}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "49170", "Max" : "49170"}
	, {"Name" : "Interval", "Min" : "49170", "Max" : "49170"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	f_V { ap_memory {  { f_V_address0 mem_address 1 14 }  { f_V_ce0 mem_ce 1 1 }  { f_V_q0 mem_dout 0 8 }  { f_V_address1 MemPortADDR2 1 14 }  { f_V_ce1 MemPortCE2 1 1 }  { f_V_q1 MemPortDOUT2 0 8 } } }
	adjChImg_V { ap_memory {  { adjChImg_V_address0 mem_address 1 14 }  { adjChImg_V_ce0 mem_ce 1 1 }  { adjChImg_V_q0 mem_dout 0 8 }  { adjChImg_V_address1 MemPortADDR2 1 14 }  { adjChImg_V_ce1 MemPortCE2 1 1 }  { adjChImg_V_q1 MemPortDOUT2 0 8 } } }
	g1_V { ap_memory {  { g1_V_address0 mem_address 1 14 }  { g1_V_ce0 mem_ce 1 1 }  { g1_V_we0 mem_we 1 1 }  { g1_V_d0 mem_din 1 8 }  { g1_V_q0 mem_dout 0 8 }  { g1_V_address1 MemPortADDR2 1 14 }  { g1_V_ce1 MemPortCE2 1 1 }  { g1_V_we1 MemPortWE2 1 1 }  { g1_V_d1 MemPortDIN2 1 8 } } }
	g2_V { ap_memory {  { g2_V_address0 mem_address 1 14 }  { g2_V_ce0 mem_ce 1 1 }  { g2_V_we0 mem_we 1 1 }  { g2_V_d0 mem_din 1 8 }  { g2_V_q0 mem_dout 0 8 }  { g2_V_address1 MemPortADDR2 1 14 }  { g2_V_ce1 MemPortCE2 1 1 }  { g2_V_we1 MemPortWE2 1 1 }  { g2_V_d1 MemPortDIN2 1 8 } } }
	g3_V { ap_memory {  { g3_V_address0 mem_address 1 14 }  { g3_V_ce0 mem_ce 1 1 }  { g3_V_we0 mem_we 1 1 }  { g3_V_d0 mem_din 1 8 }  { g3_V_q0 mem_dout 0 8 } } }
	g4_V { ap_memory {  { g4_V_address0 mem_address 1 14 }  { g4_V_ce0 mem_ce 1 1 }  { g4_V_we0 mem_we 1 1 }  { g4_V_d0 mem_din 1 8 }  { g4_V_q0 mem_dout 0 8 }  { g4_V_address1 MemPortADDR2 1 14 }  { g4_V_ce1 MemPortCE2 1 1 }  { g4_V_we1 MemPortWE2 1 1 }  { g4_V_d1 MemPortDIN2 1 8 } } }
	g5_V { ap_memory {  { g5_V_address0 mem_address 1 14 }  { g5_V_ce0 mem_ce 1 1 }  { g5_V_we0 mem_we 1 1 }  { g5_V_d0 mem_din 1 8 }  { g5_V_q0 mem_dout 0 8 } } }
	g6_V { ap_memory {  { g6_V_address0 mem_address 1 14 }  { g6_V_ce0 mem_ce 1 1 }  { g6_V_we0 mem_we 1 1 }  { g6_V_d0 mem_din 1 8 }  { g6_V_q0 mem_dout 0 8 }  { g6_V_address1 MemPortADDR2 1 14 }  { g6_V_ce1 MemPortCE2 1 1 }  { g6_V_we1 MemPortWE2 1 1 }  { g6_V_d1 MemPortDIN2 1 8 } } }
	g7_V { ap_memory {  { g7_V_address0 mem_address 1 14 }  { g7_V_ce0 mem_ce 1 1 }  { g7_V_we0 mem_we 1 1 }  { g7_V_d0 mem_din 1 8 }  { g7_V_q0 mem_dout 0 8 }  { g7_V_address1 MemPortADDR2 1 14 }  { g7_V_ce1 MemPortCE2 1 1 }  { g7_V_we1 MemPortWE2 1 1 }  { g7_V_d1 MemPortDIN2 1 8 } } }
}
