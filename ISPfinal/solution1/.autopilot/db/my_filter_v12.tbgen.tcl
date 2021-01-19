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
	{ f_n float 32 regular {array 16384 { 2 3 } 1 1 }  }
	{ f float 32 regular {array 16384 { 1 1 } 1 1 }  }
	{ adjChImg float 32 regular {array 16384 { 1 1 } 1 1 }  }
	{ adjChImg2 float 32 regular {array 16384 { 1 1 } 1 1 }  }
	{ g1 float 32 regular {array 16384 { 2 3 } 1 1 }  }
	{ g2 float 32 regular {array 16384 { 2 1 } 1 1 }  }
	{ g3 float 32 regular {array 16384 { 2 1 } 1 1 }  }
	{ g4 float 32 regular {array 16384 { 2 1 } 1 1 }  }
	{ g5 float 32 regular {array 16384 { 2 1 } 1 1 }  }
	{ g6 float 32 regular {array 16384 { 2 3 } 1 1 }  }
	{ g7 float 32 regular {array 16384 { 2 1 } 1 1 }  }
	{ g8 float 32 regular {array 16384 { 2 3 } 1 1 }  }
	{ g9 float 32 regular {array 16384 { 2 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "f_n", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "f", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "adjChImg", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "adjChImg2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "g1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "g2", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "g3", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "g4", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "g5", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "g6", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "g7", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "g8", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "g9", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 92
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ f_n_address0 sc_out sc_lv 14 signal 0 } 
	{ f_n_ce0 sc_out sc_logic 1 signal 0 } 
	{ f_n_we0 sc_out sc_logic 1 signal 0 } 
	{ f_n_d0 sc_out sc_lv 32 signal 0 } 
	{ f_n_q0 sc_in sc_lv 32 signal 0 } 
	{ f_address0 sc_out sc_lv 14 signal 1 } 
	{ f_ce0 sc_out sc_logic 1 signal 1 } 
	{ f_q0 sc_in sc_lv 32 signal 1 } 
	{ f_address1 sc_out sc_lv 14 signal 1 } 
	{ f_ce1 sc_out sc_logic 1 signal 1 } 
	{ f_q1 sc_in sc_lv 32 signal 1 } 
	{ adjChImg_address0 sc_out sc_lv 14 signal 2 } 
	{ adjChImg_ce0 sc_out sc_logic 1 signal 2 } 
	{ adjChImg_q0 sc_in sc_lv 32 signal 2 } 
	{ adjChImg_address1 sc_out sc_lv 14 signal 2 } 
	{ adjChImg_ce1 sc_out sc_logic 1 signal 2 } 
	{ adjChImg_q1 sc_in sc_lv 32 signal 2 } 
	{ adjChImg2_address0 sc_out sc_lv 14 signal 3 } 
	{ adjChImg2_ce0 sc_out sc_logic 1 signal 3 } 
	{ adjChImg2_q0 sc_in sc_lv 32 signal 3 } 
	{ adjChImg2_address1 sc_out sc_lv 14 signal 3 } 
	{ adjChImg2_ce1 sc_out sc_logic 1 signal 3 } 
	{ adjChImg2_q1 sc_in sc_lv 32 signal 3 } 
	{ g1_address0 sc_out sc_lv 14 signal 4 } 
	{ g1_ce0 sc_out sc_logic 1 signal 4 } 
	{ g1_we0 sc_out sc_logic 1 signal 4 } 
	{ g1_d0 sc_out sc_lv 32 signal 4 } 
	{ g1_q0 sc_in sc_lv 32 signal 4 } 
	{ g2_address0 sc_out sc_lv 14 signal 5 } 
	{ g2_ce0 sc_out sc_logic 1 signal 5 } 
	{ g2_we0 sc_out sc_logic 1 signal 5 } 
	{ g2_d0 sc_out sc_lv 32 signal 5 } 
	{ g2_q0 sc_in sc_lv 32 signal 5 } 
	{ g2_address1 sc_out sc_lv 14 signal 5 } 
	{ g2_ce1 sc_out sc_logic 1 signal 5 } 
	{ g2_q1 sc_in sc_lv 32 signal 5 } 
	{ g3_address0 sc_out sc_lv 14 signal 6 } 
	{ g3_ce0 sc_out sc_logic 1 signal 6 } 
	{ g3_we0 sc_out sc_logic 1 signal 6 } 
	{ g3_d0 sc_out sc_lv 32 signal 6 } 
	{ g3_q0 sc_in sc_lv 32 signal 6 } 
	{ g3_address1 sc_out sc_lv 14 signal 6 } 
	{ g3_ce1 sc_out sc_logic 1 signal 6 } 
	{ g3_q1 sc_in sc_lv 32 signal 6 } 
	{ g4_address0 sc_out sc_lv 14 signal 7 } 
	{ g4_ce0 sc_out sc_logic 1 signal 7 } 
	{ g4_we0 sc_out sc_logic 1 signal 7 } 
	{ g4_d0 sc_out sc_lv 32 signal 7 } 
	{ g4_q0 sc_in sc_lv 32 signal 7 } 
	{ g4_address1 sc_out sc_lv 14 signal 7 } 
	{ g4_ce1 sc_out sc_logic 1 signal 7 } 
	{ g4_q1 sc_in sc_lv 32 signal 7 } 
	{ g5_address0 sc_out sc_lv 14 signal 8 } 
	{ g5_ce0 sc_out sc_logic 1 signal 8 } 
	{ g5_we0 sc_out sc_logic 1 signal 8 } 
	{ g5_d0 sc_out sc_lv 32 signal 8 } 
	{ g5_q0 sc_in sc_lv 32 signal 8 } 
	{ g5_address1 sc_out sc_lv 14 signal 8 } 
	{ g5_ce1 sc_out sc_logic 1 signal 8 } 
	{ g5_q1 sc_in sc_lv 32 signal 8 } 
	{ g6_address0 sc_out sc_lv 14 signal 9 } 
	{ g6_ce0 sc_out sc_logic 1 signal 9 } 
	{ g6_we0 sc_out sc_logic 1 signal 9 } 
	{ g6_d0 sc_out sc_lv 32 signal 9 } 
	{ g6_q0 sc_in sc_lv 32 signal 9 } 
	{ g7_address0 sc_out sc_lv 14 signal 10 } 
	{ g7_ce0 sc_out sc_logic 1 signal 10 } 
	{ g7_we0 sc_out sc_logic 1 signal 10 } 
	{ g7_d0 sc_out sc_lv 32 signal 10 } 
	{ g7_q0 sc_in sc_lv 32 signal 10 } 
	{ g7_address1 sc_out sc_lv 14 signal 10 } 
	{ g7_ce1 sc_out sc_logic 1 signal 10 } 
	{ g7_q1 sc_in sc_lv 32 signal 10 } 
	{ g8_address0 sc_out sc_lv 14 signal 11 } 
	{ g8_ce0 sc_out sc_logic 1 signal 11 } 
	{ g8_we0 sc_out sc_logic 1 signal 11 } 
	{ g8_d0 sc_out sc_lv 32 signal 11 } 
	{ g8_q0 sc_in sc_lv 32 signal 11 } 
	{ g9_address0 sc_out sc_lv 14 signal 12 } 
	{ g9_ce0 sc_out sc_logic 1 signal 12 } 
	{ g9_we0 sc_out sc_logic 1 signal 12 } 
	{ g9_d0 sc_out sc_lv 32 signal 12 } 
	{ g9_q0 sc_in sc_lv 32 signal 12 } 
	{ g9_address1 sc_out sc_lv 14 signal 12 } 
	{ g9_ce1 sc_out sc_logic 1 signal 12 } 
	{ g9_q1 sc_in sc_lv 32 signal 12 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "f_n_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "f_n", "role": "address0" }} , 
 	{ "name": "f_n_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "f_n", "role": "ce0" }} , 
 	{ "name": "f_n_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "f_n", "role": "we0" }} , 
 	{ "name": "f_n_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "f_n", "role": "d0" }} , 
 	{ "name": "f_n_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "f_n", "role": "q0" }} , 
 	{ "name": "f_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "f", "role": "address0" }} , 
 	{ "name": "f_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "f", "role": "ce0" }} , 
 	{ "name": "f_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "f", "role": "q0" }} , 
 	{ "name": "f_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "f", "role": "address1" }} , 
 	{ "name": "f_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "f", "role": "ce1" }} , 
 	{ "name": "f_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "f", "role": "q1" }} , 
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
 	{ "name": "g1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "g1", "role": "address0" }} , 
 	{ "name": "g1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g1", "role": "ce0" }} , 
 	{ "name": "g1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g1", "role": "we0" }} , 
 	{ "name": "g1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "g1", "role": "d0" }} , 
 	{ "name": "g1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "g1", "role": "q0" }} , 
 	{ "name": "g2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "g2", "role": "address0" }} , 
 	{ "name": "g2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g2", "role": "ce0" }} , 
 	{ "name": "g2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g2", "role": "we0" }} , 
 	{ "name": "g2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "g2", "role": "d0" }} , 
 	{ "name": "g2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "g2", "role": "q0" }} , 
 	{ "name": "g2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "g2", "role": "address1" }} , 
 	{ "name": "g2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g2", "role": "ce1" }} , 
 	{ "name": "g2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "g2", "role": "q1" }} , 
 	{ "name": "g3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "g3", "role": "address0" }} , 
 	{ "name": "g3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g3", "role": "ce0" }} , 
 	{ "name": "g3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g3", "role": "we0" }} , 
 	{ "name": "g3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "g3", "role": "d0" }} , 
 	{ "name": "g3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "g3", "role": "q0" }} , 
 	{ "name": "g3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "g3", "role": "address1" }} , 
 	{ "name": "g3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g3", "role": "ce1" }} , 
 	{ "name": "g3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "g3", "role": "q1" }} , 
 	{ "name": "g4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "g4", "role": "address0" }} , 
 	{ "name": "g4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g4", "role": "ce0" }} , 
 	{ "name": "g4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g4", "role": "we0" }} , 
 	{ "name": "g4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "g4", "role": "d0" }} , 
 	{ "name": "g4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "g4", "role": "q0" }} , 
 	{ "name": "g4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "g4", "role": "address1" }} , 
 	{ "name": "g4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g4", "role": "ce1" }} , 
 	{ "name": "g4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "g4", "role": "q1" }} , 
 	{ "name": "g5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "g5", "role": "address0" }} , 
 	{ "name": "g5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g5", "role": "ce0" }} , 
 	{ "name": "g5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g5", "role": "we0" }} , 
 	{ "name": "g5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "g5", "role": "d0" }} , 
 	{ "name": "g5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "g5", "role": "q0" }} , 
 	{ "name": "g5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "g5", "role": "address1" }} , 
 	{ "name": "g5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g5", "role": "ce1" }} , 
 	{ "name": "g5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "g5", "role": "q1" }} , 
 	{ "name": "g6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "g6", "role": "address0" }} , 
 	{ "name": "g6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g6", "role": "ce0" }} , 
 	{ "name": "g6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g6", "role": "we0" }} , 
 	{ "name": "g6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "g6", "role": "d0" }} , 
 	{ "name": "g6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "g6", "role": "q0" }} , 
 	{ "name": "g7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "g7", "role": "address0" }} , 
 	{ "name": "g7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g7", "role": "ce0" }} , 
 	{ "name": "g7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g7", "role": "we0" }} , 
 	{ "name": "g7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "g7", "role": "d0" }} , 
 	{ "name": "g7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "g7", "role": "q0" }} , 
 	{ "name": "g7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "g7", "role": "address1" }} , 
 	{ "name": "g7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g7", "role": "ce1" }} , 
 	{ "name": "g7_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "g7", "role": "q1" }} , 
 	{ "name": "g8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "g8", "role": "address0" }} , 
 	{ "name": "g8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g8", "role": "ce0" }} , 
 	{ "name": "g8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g8", "role": "we0" }} , 
 	{ "name": "g8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "g8", "role": "d0" }} , 
 	{ "name": "g8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "g8", "role": "q0" }} , 
 	{ "name": "g9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "g9", "role": "address0" }} , 
 	{ "name": "g9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g9", "role": "ce0" }} , 
 	{ "name": "g9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g9", "role": "we0" }} , 
 	{ "name": "g9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "g9", "role": "d0" }} , 
 	{ "name": "g9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "g9", "role": "q0" }} , 
 	{ "name": "g9_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "g9", "role": "address1" }} , 
 	{ "name": "g9_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g9", "role": "ce1" }} , 
 	{ "name": "g9_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "g9", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DEBLUR_faddfsub_3bkb_U3", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DEBLUR_faddfsub_3bkb_U4", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DEBLUR_fsub_32ns_cud_U5", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DEBLUR_fsub_32ns_cud_U6", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DEBLUR_fsub_32ns_cud_U7", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DEBLUR_fsub_32ns_cud_U8", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DEBLUR_faddfsub_3bkb_U9", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DEBLUR_faddfsub_3bkb_U10", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DEBLUR_faddfsub_3bkb_U11", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DEBLUR_fsub_32ns_cud_U12", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DEBLUR_faddfsub_3bkb_U13", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DEBLUR_fadd_32ns_dEe_U14", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DEBLUR_fadd_32ns_dEe_U15", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DEBLUR_fadd_32ns_dEe_U16", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DEBLUR_faddfsub_3bkb_U17", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DEBLUR_fmul_32ns_eOg_U18", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DEBLUR_fmul_32ns_eOg_U19", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DEBLUR_fmul_32ns_eOg_U20", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DEBLUR_fmul_32ns_eOg_U21", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DEBLUR_fmul_32ns_eOg_U22", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DEBLUR_fmul_32ns_eOg_U23", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DEBLUR_fmul_32ns_eOg_U24", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DEBLUR_fmul_32ns_eOg_U25", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DEBLUR_fmul_32ns_eOg_U26", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DEBLUR_fmul_32ns_eOg_U27", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DEBLUR_fmul_32ns_eOg_U28", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DEBLUR_fdiv_32ns_fYi_U29", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DEBLUR_fdiv_32ns_fYi_U30", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DEBLUR_fdiv_32ns_fYi_U31", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DEBLUR_fdiv_32ns_fYi_U32", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DEBLUR_fdiv_32ns_fYi_U33", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DEBLUR_fdiv_32ns_fYi_U34", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DEBLUR_fdiv_32ns_fYi_U35", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DEBLUR_fdiv_32ns_fYi_U36", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DEBLUR_fdiv_32ns_fYi_U37", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DEBLUR_fptrunc_64g8j_U38", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DEBLUR_fptrunc_64g8j_U39", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DEBLUR_fpext_32nshbi_U40", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DEBLUR_fpext_32nshbi_U41", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DEBLUR_fcmp_32ns_ibs_U42", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DEBLUR_fsqrt_32nsjbC_U43", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DEBLUR_dadd_64ns_kbM_U44", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DEBLUR_dadd_64ns_kbM_U45", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DEBLUR_dmul_64ns_lbW_U46", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DEBLUR_dmul_64ns_lbW_U47", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		g9 {Type IO LastRead 68 FirstWrite 33}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1048900", "Max" : "1786180"}
	, {"Name" : "Interval", "Min" : "1048900", "Max" : "1786180"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	f_n { ap_memory {  { f_n_address0 mem_address 1 14 }  { f_n_ce0 mem_ce 1 1 }  { f_n_we0 mem_we 1 1 }  { f_n_d0 mem_din 1 32 }  { f_n_q0 mem_dout 0 32 } } }
	f { ap_memory {  { f_address0 mem_address 1 14 }  { f_ce0 mem_ce 1 1 }  { f_q0 mem_dout 0 32 }  { f_address1 MemPortADDR2 1 14 }  { f_ce1 MemPortCE2 1 1 }  { f_q1 MemPortDOUT2 0 32 } } }
	adjChImg { ap_memory {  { adjChImg_address0 mem_address 1 14 }  { adjChImg_ce0 mem_ce 1 1 }  { adjChImg_q0 mem_dout 0 32 }  { adjChImg_address1 MemPortADDR2 1 14 }  { adjChImg_ce1 MemPortCE2 1 1 }  { adjChImg_q1 MemPortDOUT2 0 32 } } }
	adjChImg2 { ap_memory {  { adjChImg2_address0 mem_address 1 14 }  { adjChImg2_ce0 mem_ce 1 1 }  { adjChImg2_q0 mem_dout 0 32 }  { adjChImg2_address1 MemPortADDR2 1 14 }  { adjChImg2_ce1 MemPortCE2 1 1 }  { adjChImg2_q1 MemPortDOUT2 0 32 } } }
	g1 { ap_memory {  { g1_address0 mem_address 1 14 }  { g1_ce0 mem_ce 1 1 }  { g1_we0 mem_we 1 1 }  { g1_d0 mem_din 1 32 }  { g1_q0 mem_dout 0 32 } } }
	g2 { ap_memory {  { g2_address0 mem_address 1 14 }  { g2_ce0 mem_ce 1 1 }  { g2_we0 mem_we 1 1 }  { g2_d0 mem_din 1 32 }  { g2_q0 mem_dout 0 32 }  { g2_address1 MemPortADDR2 1 14 }  { g2_ce1 MemPortCE2 1 1 }  { g2_q1 MemPortDOUT2 0 32 } } }
	g3 { ap_memory {  { g3_address0 mem_address 1 14 }  { g3_ce0 mem_ce 1 1 }  { g3_we0 mem_we 1 1 }  { g3_d0 mem_din 1 32 }  { g3_q0 mem_dout 0 32 }  { g3_address1 MemPortADDR2 1 14 }  { g3_ce1 MemPortCE2 1 1 }  { g3_q1 MemPortDOUT2 0 32 } } }
	g4 { ap_memory {  { g4_address0 mem_address 1 14 }  { g4_ce0 mem_ce 1 1 }  { g4_we0 mem_we 1 1 }  { g4_d0 mem_din 1 32 }  { g4_q0 mem_dout 0 32 }  { g4_address1 MemPortADDR2 1 14 }  { g4_ce1 MemPortCE2 1 1 }  { g4_q1 MemPortDOUT2 0 32 } } }
	g5 { ap_memory {  { g5_address0 mem_address 1 14 }  { g5_ce0 mem_ce 1 1 }  { g5_we0 mem_we 1 1 }  { g5_d0 mem_din 1 32 }  { g5_q0 mem_dout 0 32 }  { g5_address1 MemPortADDR2 1 14 }  { g5_ce1 MemPortCE2 1 1 }  { g5_q1 MemPortDOUT2 0 32 } } }
	g6 { ap_memory {  { g6_address0 mem_address 1 14 }  { g6_ce0 mem_ce 1 1 }  { g6_we0 mem_we 1 1 }  { g6_d0 mem_din 1 32 }  { g6_q0 mem_dout 0 32 } } }
	g7 { ap_memory {  { g7_address0 mem_address 1 14 }  { g7_ce0 mem_ce 1 1 }  { g7_we0 mem_we 1 1 }  { g7_d0 mem_din 1 32 }  { g7_q0 mem_dout 0 32 }  { g7_address1 MemPortADDR2 1 14 }  { g7_ce1 MemPortCE2 1 1 }  { g7_q1 MemPortDOUT2 0 32 } } }
	g8 { ap_memory {  { g8_address0 mem_address 1 14 }  { g8_ce0 mem_ce 1 1 }  { g8_we0 mem_we 1 1 }  { g8_d0 mem_din 1 32 }  { g8_q0 mem_dout 0 32 } } }
	g9 { ap_memory {  { g9_address0 mem_address 1 14 }  { g9_ce0 mem_ce 1 1 }  { g9_we0 mem_we 1 1 }  { g9_d0 mem_din 1 32 }  { g9_q0 mem_dout 0 32 }  { g9_address1 MemPortADDR2 1 14 }  { g9_ce1 MemPortCE2 1 1 }  { g9_q1 MemPortDOUT2 0 32 } } }
}
