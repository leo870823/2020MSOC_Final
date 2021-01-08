set moduleName my_filter_v1
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
set C_modelName {my_filter_v1}
set C_modelType { void 0 }
set C_modelArgList {
	{ f_V int 8 regular {array 16384 { 1 2 } 1 1 }  }
	{ adjChImg_V int 8 regular {array 16384 { 1 1 } 1 1 }  }
	{ g1_V int 8 regular {array 16384 { 2 2 } 1 1 }  }
	{ g2_V int 8 regular {array 16384 { 2 2 } 1 1 }  }
	{ g3_V int 8 regular {array 16384 { 2 2 } 1 1 }  }
	{ g4_V int 8 regular {array 16384 { 2 2 } 1 1 }  }
	{ g5_V int 8 regular {array 16384 { 2 2 } 1 1 }  }
	{ g6_V int 8 regular {array 16384 { 2 2 } 1 1 }  }
	{ g7_V int 8 regular {array 16384 { 2 2 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "f_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "adjChImg_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "g1_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "g2_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "g3_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "g4_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "g5_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "g6_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "g7_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 90
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
	{ f_V_we1 sc_out sc_logic 1 signal 0 } 
	{ f_V_d1 sc_out sc_lv 8 signal 0 } 
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
	{ g1_V_q1 sc_in sc_lv 8 signal 2 } 
	{ g2_V_address0 sc_out sc_lv 14 signal 3 } 
	{ g2_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ g2_V_we0 sc_out sc_logic 1 signal 3 } 
	{ g2_V_d0 sc_out sc_lv 8 signal 3 } 
	{ g2_V_q0 sc_in sc_lv 8 signal 3 } 
	{ g2_V_address1 sc_out sc_lv 14 signal 3 } 
	{ g2_V_ce1 sc_out sc_logic 1 signal 3 } 
	{ g2_V_we1 sc_out sc_logic 1 signal 3 } 
	{ g2_V_d1 sc_out sc_lv 8 signal 3 } 
	{ g2_V_q1 sc_in sc_lv 8 signal 3 } 
	{ g3_V_address0 sc_out sc_lv 14 signal 4 } 
	{ g3_V_ce0 sc_out sc_logic 1 signal 4 } 
	{ g3_V_we0 sc_out sc_logic 1 signal 4 } 
	{ g3_V_d0 sc_out sc_lv 8 signal 4 } 
	{ g3_V_q0 sc_in sc_lv 8 signal 4 } 
	{ g3_V_address1 sc_out sc_lv 14 signal 4 } 
	{ g3_V_ce1 sc_out sc_logic 1 signal 4 } 
	{ g3_V_we1 sc_out sc_logic 1 signal 4 } 
	{ g3_V_d1 sc_out sc_lv 8 signal 4 } 
	{ g3_V_q1 sc_in sc_lv 8 signal 4 } 
	{ g4_V_address0 sc_out sc_lv 14 signal 5 } 
	{ g4_V_ce0 sc_out sc_logic 1 signal 5 } 
	{ g4_V_we0 sc_out sc_logic 1 signal 5 } 
	{ g4_V_d0 sc_out sc_lv 8 signal 5 } 
	{ g4_V_q0 sc_in sc_lv 8 signal 5 } 
	{ g4_V_address1 sc_out sc_lv 14 signal 5 } 
	{ g4_V_ce1 sc_out sc_logic 1 signal 5 } 
	{ g4_V_we1 sc_out sc_logic 1 signal 5 } 
	{ g4_V_d1 sc_out sc_lv 8 signal 5 } 
	{ g4_V_q1 sc_in sc_lv 8 signal 5 } 
	{ g5_V_address0 sc_out sc_lv 14 signal 6 } 
	{ g5_V_ce0 sc_out sc_logic 1 signal 6 } 
	{ g5_V_we0 sc_out sc_logic 1 signal 6 } 
	{ g5_V_d0 sc_out sc_lv 8 signal 6 } 
	{ g5_V_q0 sc_in sc_lv 8 signal 6 } 
	{ g5_V_address1 sc_out sc_lv 14 signal 6 } 
	{ g5_V_ce1 sc_out sc_logic 1 signal 6 } 
	{ g5_V_we1 sc_out sc_logic 1 signal 6 } 
	{ g5_V_d1 sc_out sc_lv 8 signal 6 } 
	{ g5_V_q1 sc_in sc_lv 8 signal 6 } 
	{ g6_V_address0 sc_out sc_lv 14 signal 7 } 
	{ g6_V_ce0 sc_out sc_logic 1 signal 7 } 
	{ g6_V_we0 sc_out sc_logic 1 signal 7 } 
	{ g6_V_d0 sc_out sc_lv 8 signal 7 } 
	{ g6_V_q0 sc_in sc_lv 8 signal 7 } 
	{ g6_V_address1 sc_out sc_lv 14 signal 7 } 
	{ g6_V_ce1 sc_out sc_logic 1 signal 7 } 
	{ g6_V_we1 sc_out sc_logic 1 signal 7 } 
	{ g6_V_d1 sc_out sc_lv 8 signal 7 } 
	{ g6_V_q1 sc_in sc_lv 8 signal 7 } 
	{ g7_V_address0 sc_out sc_lv 14 signal 8 } 
	{ g7_V_ce0 sc_out sc_logic 1 signal 8 } 
	{ g7_V_we0 sc_out sc_logic 1 signal 8 } 
	{ g7_V_d0 sc_out sc_lv 8 signal 8 } 
	{ g7_V_q0 sc_in sc_lv 8 signal 8 } 
	{ g7_V_address1 sc_out sc_lv 14 signal 8 } 
	{ g7_V_ce1 sc_out sc_logic 1 signal 8 } 
	{ g7_V_we1 sc_out sc_logic 1 signal 8 } 
	{ g7_V_d1 sc_out sc_lv 8 signal 8 } 
	{ g7_V_q1 sc_in sc_lv 8 signal 8 } 
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
 	{ "name": "f_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "f_V", "role": "we1" }} , 
 	{ "name": "f_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "f_V", "role": "d1" }} , 
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
 	{ "name": "g1_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "g1_V", "role": "q1" }} , 
 	{ "name": "g2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "g2_V", "role": "address0" }} , 
 	{ "name": "g2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g2_V", "role": "ce0" }} , 
 	{ "name": "g2_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g2_V", "role": "we0" }} , 
 	{ "name": "g2_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "g2_V", "role": "d0" }} , 
 	{ "name": "g2_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "g2_V", "role": "q0" }} , 
 	{ "name": "g2_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "g2_V", "role": "address1" }} , 
 	{ "name": "g2_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g2_V", "role": "ce1" }} , 
 	{ "name": "g2_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g2_V", "role": "we1" }} , 
 	{ "name": "g2_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "g2_V", "role": "d1" }} , 
 	{ "name": "g2_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "g2_V", "role": "q1" }} , 
 	{ "name": "g3_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "g3_V", "role": "address0" }} , 
 	{ "name": "g3_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g3_V", "role": "ce0" }} , 
 	{ "name": "g3_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g3_V", "role": "we0" }} , 
 	{ "name": "g3_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "g3_V", "role": "d0" }} , 
 	{ "name": "g3_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "g3_V", "role": "q0" }} , 
 	{ "name": "g3_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "g3_V", "role": "address1" }} , 
 	{ "name": "g3_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g3_V", "role": "ce1" }} , 
 	{ "name": "g3_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g3_V", "role": "we1" }} , 
 	{ "name": "g3_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "g3_V", "role": "d1" }} , 
 	{ "name": "g3_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "g3_V", "role": "q1" }} , 
 	{ "name": "g4_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "g4_V", "role": "address0" }} , 
 	{ "name": "g4_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g4_V", "role": "ce0" }} , 
 	{ "name": "g4_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g4_V", "role": "we0" }} , 
 	{ "name": "g4_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "g4_V", "role": "d0" }} , 
 	{ "name": "g4_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "g4_V", "role": "q0" }} , 
 	{ "name": "g4_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "g4_V", "role": "address1" }} , 
 	{ "name": "g4_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g4_V", "role": "ce1" }} , 
 	{ "name": "g4_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g4_V", "role": "we1" }} , 
 	{ "name": "g4_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "g4_V", "role": "d1" }} , 
 	{ "name": "g4_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "g4_V", "role": "q1" }} , 
 	{ "name": "g5_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "g5_V", "role": "address0" }} , 
 	{ "name": "g5_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g5_V", "role": "ce0" }} , 
 	{ "name": "g5_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g5_V", "role": "we0" }} , 
 	{ "name": "g5_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "g5_V", "role": "d0" }} , 
 	{ "name": "g5_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "g5_V", "role": "q0" }} , 
 	{ "name": "g5_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "g5_V", "role": "address1" }} , 
 	{ "name": "g5_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g5_V", "role": "ce1" }} , 
 	{ "name": "g5_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g5_V", "role": "we1" }} , 
 	{ "name": "g5_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "g5_V", "role": "d1" }} , 
 	{ "name": "g5_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "g5_V", "role": "q1" }} , 
 	{ "name": "g6_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "g6_V", "role": "address0" }} , 
 	{ "name": "g6_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g6_V", "role": "ce0" }} , 
 	{ "name": "g6_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g6_V", "role": "we0" }} , 
 	{ "name": "g6_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "g6_V", "role": "d0" }} , 
 	{ "name": "g6_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "g6_V", "role": "q0" }} , 
 	{ "name": "g6_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "g6_V", "role": "address1" }} , 
 	{ "name": "g6_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g6_V", "role": "ce1" }} , 
 	{ "name": "g6_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g6_V", "role": "we1" }} , 
 	{ "name": "g6_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "g6_V", "role": "d1" }} , 
 	{ "name": "g6_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "g6_V", "role": "q1" }} , 
 	{ "name": "g7_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "g7_V", "role": "address0" }} , 
 	{ "name": "g7_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g7_V", "role": "ce0" }} , 
 	{ "name": "g7_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g7_V", "role": "we0" }} , 
 	{ "name": "g7_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "g7_V", "role": "d0" }} , 
 	{ "name": "g7_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "g7_V", "role": "q0" }} , 
 	{ "name": "g7_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "g7_V", "role": "address1" }} , 
 	{ "name": "g7_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g7_V", "role": "ce1" }} , 
 	{ "name": "g7_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g7_V", "role": "we1" }} , 
 	{ "name": "g7_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "g7_V", "role": "d1" }} , 
 	{ "name": "g7_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "g7_V", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47"],
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
					{"ID" : "27", "SubInstance" : "grp_my_filter_fx6_fu_866", "Port" : "data_in_V"},
					{"ID" : "24", "SubInstance" : "grp_my_filter_fy5_fu_844", "Port" : "data_in_V"}]},
			{"Name" : "adjChImg_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_my_filter_fx6_fu_874", "Port" : "data_in_V"},
					{"ID" : "26", "SubInstance" : "grp_my_filter_fy5_fu_857", "Port" : "data_in_V"}]},
			{"Name" : "g1_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_my_filter_fx6_fu_866", "Port" : "data_in_V"}]},
			{"Name" : "g2_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_my_filter_fy5_fu_844", "Port" : "data_in_V"}]},
			{"Name" : "g3_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_my_filter_fx6_fu_874", "Port" : "data_in_V"}]},
			{"Name" : "g4_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_my_filter_fy5_fu_851", "Port" : "data_in_V"}]},
			{"Name" : "g5_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_my_filter_fx6_fu_866", "Port" : "data_in_V"}]},
			{"Name" : "g6_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "g7_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fx_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fy_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fxx_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fyy_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fxy_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.adj_fx_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.adj_fy_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Sxf_V_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Syf_V_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gx_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gy_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.g3x_V_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gxx_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.g4y_V_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gyy_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.g5x_V_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gxy_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Sxtf_V_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Sytf_V_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_cross6_V_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_cross7_V_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cross_X_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cross_Y_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_fy5_fu_844", "Parent" : "0",
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
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_fy5_fu_851", "Parent" : "0",
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
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_fy5_fu_857", "Parent" : "0",
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
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_fx6_fu_866", "Parent" : "0",
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
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_my_filter_fx6_fu_874", "Parent" : "0",
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
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cross_channel_debfYi_U7", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cross_channel_debg8j_U8", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cross_channel_debg8j_U9", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cross_channel_debg8j_U10", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cross_channel_debhbi_U11", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cross_channel_debhbi_U12", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cross_channel_debhbi_U13", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cross_channel_debhbi_U14", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cross_channel_debibs_U15", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cross_channel_debibs_U16", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cross_channel_debibs_U17", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cross_channel_debibs_U18", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cross_channel_debibs_U19", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cross_channel_debibs_U20", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cross_channel_debibs_U21", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cross_channel_debjbC_U22", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cross_channel_debjbC_U23", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cross_channel_debkbM_U24", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cross_channel_debkbM_U25", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		data_in_V {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "639826", "Max" : "639826"}
	, {"Name" : "Interval", "Min" : "639826", "Max" : "639826"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	f_V { ap_memory {  { f_V_address0 mem_address 1 14 }  { f_V_ce0 mem_ce 1 1 }  { f_V_q0 mem_dout 0 8 }  { f_V_address1 MemPortADDR2 1 14 }  { f_V_ce1 MemPortCE2 1 1 }  { f_V_we1 MemPortWE2 1 1 }  { f_V_d1 MemPortDIN2 1 8 }  { f_V_q1 MemPortDOUT2 0 8 } } }
	adjChImg_V { ap_memory {  { adjChImg_V_address0 mem_address 1 14 }  { adjChImg_V_ce0 mem_ce 1 1 }  { adjChImg_V_q0 mem_dout 0 8 }  { adjChImg_V_address1 MemPortADDR2 1 14 }  { adjChImg_V_ce1 MemPortCE2 1 1 }  { adjChImg_V_q1 MemPortDOUT2 0 8 } } }
	g1_V { ap_memory {  { g1_V_address0 mem_address 1 14 }  { g1_V_ce0 mem_ce 1 1 }  { g1_V_we0 mem_we 1 1 }  { g1_V_d0 mem_din 1 8 }  { g1_V_q0 mem_dout 0 8 }  { g1_V_address1 MemPortADDR2 1 14 }  { g1_V_ce1 MemPortCE2 1 1 }  { g1_V_we1 MemPortWE2 1 1 }  { g1_V_d1 MemPortDIN2 1 8 }  { g1_V_q1 MemPortDOUT2 0 8 } } }
	g2_V { ap_memory {  { g2_V_address0 mem_address 1 14 }  { g2_V_ce0 mem_ce 1 1 }  { g2_V_we0 mem_we 1 1 }  { g2_V_d0 mem_din 1 8 }  { g2_V_q0 mem_dout 0 8 }  { g2_V_address1 MemPortADDR2 1 14 }  { g2_V_ce1 MemPortCE2 1 1 }  { g2_V_we1 MemPortWE2 1 1 }  { g2_V_d1 MemPortDIN2 1 8 }  { g2_V_q1 MemPortDOUT2 0 8 } } }
	g3_V { ap_memory {  { g3_V_address0 mem_address 1 14 }  { g3_V_ce0 mem_ce 1 1 }  { g3_V_we0 mem_we 1 1 }  { g3_V_d0 mem_din 1 8 }  { g3_V_q0 mem_dout 0 8 }  { g3_V_address1 MemPortADDR2 1 14 }  { g3_V_ce1 MemPortCE2 1 1 }  { g3_V_we1 MemPortWE2 1 1 }  { g3_V_d1 MemPortDIN2 1 8 }  { g3_V_q1 MemPortDOUT2 0 8 } } }
	g4_V { ap_memory {  { g4_V_address0 mem_address 1 14 }  { g4_V_ce0 mem_ce 1 1 }  { g4_V_we0 mem_we 1 1 }  { g4_V_d0 mem_din 1 8 }  { g4_V_q0 mem_dout 0 8 }  { g4_V_address1 MemPortADDR2 1 14 }  { g4_V_ce1 MemPortCE2 1 1 }  { g4_V_we1 MemPortWE2 1 1 }  { g4_V_d1 MemPortDIN2 1 8 }  { g4_V_q1 MemPortDOUT2 0 8 } } }
	g5_V { ap_memory {  { g5_V_address0 mem_address 1 14 }  { g5_V_ce0 mem_ce 1 1 }  { g5_V_we0 mem_we 1 1 }  { g5_V_d0 mem_din 1 8 }  { g5_V_q0 mem_dout 0 8 }  { g5_V_address1 MemPortADDR2 1 14 }  { g5_V_ce1 MemPortCE2 1 1 }  { g5_V_we1 MemPortWE2 1 1 }  { g5_V_d1 MemPortDIN2 1 8 }  { g5_V_q1 MemPortDOUT2 0 8 } } }
	g6_V { ap_memory {  { g6_V_address0 mem_address 1 14 }  { g6_V_ce0 mem_ce 1 1 }  { g6_V_we0 mem_we 1 1 }  { g6_V_d0 mem_din 1 8 }  { g6_V_q0 mem_dout 0 8 }  { g6_V_address1 MemPortADDR2 1 14 }  { g6_V_ce1 MemPortCE2 1 1 }  { g6_V_we1 MemPortWE2 1 1 }  { g6_V_d1 MemPortDIN2 1 8 }  { g6_V_q1 MemPortDOUT2 0 8 } } }
	g7_V { ap_memory {  { g7_V_address0 mem_address 1 14 }  { g7_V_ce0 mem_ce 1 1 }  { g7_V_we0 mem_we 1 1 }  { g7_V_d0 mem_din 1 8 }  { g7_V_q0 mem_dout 0 8 }  { g7_V_address1 MemPortADDR2 1 14 }  { g7_V_ce1 MemPortCE2 1 1 }  { g7_V_we1 MemPortWE2 1 1 }  { g7_V_d1 MemPortDIN2 1 8 }  { g7_V_q1 MemPortDOUT2 0 8 } } }
}
