set moduleName DEBLUR
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
set C_modelName {DEBLUR}
set C_modelType { void 0 }
set C_modelArgList {
	{ refImg_R float 32 regular {array 16384 { 1 1 } 1 1 }  }
	{ adjChImg_G float 32 regular {array 16384 { 2 1 } 1 1 }  }
	{ adjChImg_B float 32 regular {array 16384 { 2 1 } 1 1 }  }
	{ nominator_R_M_real float 32 unused {array 16384 { } 0 1 }  }
	{ nominator_R_M_imag float 32 unused {array 16384 { } 0 1 }  }
	{ denominator_R float 32 unused {array 16384 { } 0 1 }  }
	{ nominator_G_M_real float 32 regular {array 16384 { 1 3 } 1 1 }  }
	{ nominator_G_M_imag float 32 regular {array 16384 { 1 3 } 1 1 }  }
	{ denominator_G float 32 regular {array 16384 { 1 3 } 1 1 }  }
	{ nominator_B_M_real float 32 regular {array 16384 { 1 3 } 1 1 }  }
	{ nominator_B_M_imag float 32 regular {array 16384 { 1 3 } 1 1 }  }
	{ denominator_B float 32 regular {array 16384 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "refImg_R", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "refImg_R","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 127,"step" : 1},{"low" : 0,"up" : 127,"step" : 1}]}]}]} , 
 	{ "Name" : "adjChImg_G", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "adjChImg_G","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 127,"step" : 1},{"low" : 0,"up" : 127,"step" : 1}]}]}]} , 
 	{ "Name" : "adjChImg_B", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "adjChImg_B","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 127,"step" : 1},{"low" : 0,"up" : 127,"step" : 1}]}]}]} , 
 	{ "Name" : "nominator_R_M_real", "interface" : "memory", "bitwidth" : 32, "direction" : "NONE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "nominator_R._M_real","cData": "complex","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 127,"step" : 1},{"low" : 0,"up" : 127,"step" : 1}]}]}]} , 
 	{ "Name" : "nominator_R_M_imag", "interface" : "memory", "bitwidth" : 32, "direction" : "NONE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "nominator_R._M_imag","cData": "complex","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 127,"step" : 1},{"low" : 0,"up" : 127,"step" : 1}]}]}]} , 
 	{ "Name" : "denominator_R", "interface" : "memory", "bitwidth" : 32, "direction" : "NONE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "denominator_R","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 127,"step" : 1},{"low" : 0,"up" : 127,"step" : 1}]}]}]} , 
 	{ "Name" : "nominator_G_M_real", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "nominator_G._M_real","cData": "complex","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 127,"step" : 1},{"low" : 0,"up" : 127,"step" : 1}]}]}]} , 
 	{ "Name" : "nominator_G_M_imag", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "nominator_G._M_imag","cData": "complex","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 127,"step" : 1},{"low" : 0,"up" : 127,"step" : 1}]}]}]} , 
 	{ "Name" : "denominator_G", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "denominator_G","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 127,"step" : 1},{"low" : 0,"up" : 127,"step" : 1}]}]}]} , 
 	{ "Name" : "nominator_B_M_real", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "nominator_B._M_real","cData": "complex","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 127,"step" : 1},{"low" : 0,"up" : 127,"step" : 1}]}]}]} , 
 	{ "Name" : "nominator_B_M_imag", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "nominator_B._M_imag","cData": "complex","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 127,"step" : 1},{"low" : 0,"up" : 127,"step" : 1}]}]}]} , 
 	{ "Name" : "denominator_B", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "denominator_B","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 127,"step" : 1},{"low" : 0,"up" : 127,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 76
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ refImg_R_address0 sc_out sc_lv 14 signal 0 } 
	{ refImg_R_ce0 sc_out sc_logic 1 signal 0 } 
	{ refImg_R_q0 sc_in sc_lv 32 signal 0 } 
	{ refImg_R_address1 sc_out sc_lv 14 signal 0 } 
	{ refImg_R_ce1 sc_out sc_logic 1 signal 0 } 
	{ refImg_R_q1 sc_in sc_lv 32 signal 0 } 
	{ adjChImg_G_address0 sc_out sc_lv 14 signal 1 } 
	{ adjChImg_G_ce0 sc_out sc_logic 1 signal 1 } 
	{ adjChImg_G_we0 sc_out sc_logic 1 signal 1 } 
	{ adjChImg_G_d0 sc_out sc_lv 32 signal 1 } 
	{ adjChImg_G_q0 sc_in sc_lv 32 signal 1 } 
	{ adjChImg_G_address1 sc_out sc_lv 14 signal 1 } 
	{ adjChImg_G_ce1 sc_out sc_logic 1 signal 1 } 
	{ adjChImg_G_q1 sc_in sc_lv 32 signal 1 } 
	{ adjChImg_B_address0 sc_out sc_lv 14 signal 2 } 
	{ adjChImg_B_ce0 sc_out sc_logic 1 signal 2 } 
	{ adjChImg_B_we0 sc_out sc_logic 1 signal 2 } 
	{ adjChImg_B_d0 sc_out sc_lv 32 signal 2 } 
	{ adjChImg_B_q0 sc_in sc_lv 32 signal 2 } 
	{ adjChImg_B_address1 sc_out sc_lv 14 signal 2 } 
	{ adjChImg_B_ce1 sc_out sc_logic 1 signal 2 } 
	{ adjChImg_B_q1 sc_in sc_lv 32 signal 2 } 
	{ nominator_R_M_real_address0 sc_out sc_lv 14 signal 3 } 
	{ nominator_R_M_real_ce0 sc_out sc_logic 1 signal 3 } 
	{ nominator_R_M_real_we0 sc_out sc_logic 1 signal 3 } 
	{ nominator_R_M_real_d0 sc_out sc_lv 32 signal 3 } 
	{ nominator_R_M_real_q0 sc_in sc_lv 32 signal 3 } 
	{ nominator_R_M_real_address1 sc_out sc_lv 14 signal 3 } 
	{ nominator_R_M_real_ce1 sc_out sc_logic 1 signal 3 } 
	{ nominator_R_M_real_we1 sc_out sc_logic 1 signal 3 } 
	{ nominator_R_M_real_d1 sc_out sc_lv 32 signal 3 } 
	{ nominator_R_M_real_q1 sc_in sc_lv 32 signal 3 } 
	{ nominator_R_M_imag_address0 sc_out sc_lv 14 signal 4 } 
	{ nominator_R_M_imag_ce0 sc_out sc_logic 1 signal 4 } 
	{ nominator_R_M_imag_we0 sc_out sc_logic 1 signal 4 } 
	{ nominator_R_M_imag_d0 sc_out sc_lv 32 signal 4 } 
	{ nominator_R_M_imag_q0 sc_in sc_lv 32 signal 4 } 
	{ nominator_R_M_imag_address1 sc_out sc_lv 14 signal 4 } 
	{ nominator_R_M_imag_ce1 sc_out sc_logic 1 signal 4 } 
	{ nominator_R_M_imag_we1 sc_out sc_logic 1 signal 4 } 
	{ nominator_R_M_imag_d1 sc_out sc_lv 32 signal 4 } 
	{ nominator_R_M_imag_q1 sc_in sc_lv 32 signal 4 } 
	{ denominator_R_address0 sc_out sc_lv 14 signal 5 } 
	{ denominator_R_ce0 sc_out sc_logic 1 signal 5 } 
	{ denominator_R_we0 sc_out sc_logic 1 signal 5 } 
	{ denominator_R_d0 sc_out sc_lv 32 signal 5 } 
	{ denominator_R_q0 sc_in sc_lv 32 signal 5 } 
	{ denominator_R_address1 sc_out sc_lv 14 signal 5 } 
	{ denominator_R_ce1 sc_out sc_logic 1 signal 5 } 
	{ denominator_R_we1 sc_out sc_logic 1 signal 5 } 
	{ denominator_R_d1 sc_out sc_lv 32 signal 5 } 
	{ denominator_R_q1 sc_in sc_lv 32 signal 5 } 
	{ nominator_G_M_real_address0 sc_out sc_lv 14 signal 6 } 
	{ nominator_G_M_real_ce0 sc_out sc_logic 1 signal 6 } 
	{ nominator_G_M_real_q0 sc_in sc_lv 32 signal 6 } 
	{ nominator_G_M_imag_address0 sc_out sc_lv 14 signal 7 } 
	{ nominator_G_M_imag_ce0 sc_out sc_logic 1 signal 7 } 
	{ nominator_G_M_imag_q0 sc_in sc_lv 32 signal 7 } 
	{ denominator_G_address0 sc_out sc_lv 14 signal 8 } 
	{ denominator_G_ce0 sc_out sc_logic 1 signal 8 } 
	{ denominator_G_q0 sc_in sc_lv 32 signal 8 } 
	{ nominator_B_M_real_address0 sc_out sc_lv 14 signal 9 } 
	{ nominator_B_M_real_ce0 sc_out sc_logic 1 signal 9 } 
	{ nominator_B_M_real_q0 sc_in sc_lv 32 signal 9 } 
	{ nominator_B_M_imag_address0 sc_out sc_lv 14 signal 10 } 
	{ nominator_B_M_imag_ce0 sc_out sc_logic 1 signal 10 } 
	{ nominator_B_M_imag_q0 sc_in sc_lv 32 signal 10 } 
	{ denominator_B_address0 sc_out sc_lv 14 signal 11 } 
	{ denominator_B_ce0 sc_out sc_logic 1 signal 11 } 
	{ denominator_B_q0 sc_in sc_lv 32 signal 11 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "refImg_R_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "refImg_R", "role": "address0" }} , 
 	{ "name": "refImg_R_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "refImg_R", "role": "ce0" }} , 
 	{ "name": "refImg_R_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "refImg_R", "role": "q0" }} , 
 	{ "name": "refImg_R_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "refImg_R", "role": "address1" }} , 
 	{ "name": "refImg_R_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "refImg_R", "role": "ce1" }} , 
 	{ "name": "refImg_R_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "refImg_R", "role": "q1" }} , 
 	{ "name": "adjChImg_G_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "adjChImg_G", "role": "address0" }} , 
 	{ "name": "adjChImg_G_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "adjChImg_G", "role": "ce0" }} , 
 	{ "name": "adjChImg_G_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "adjChImg_G", "role": "we0" }} , 
 	{ "name": "adjChImg_G_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "adjChImg_G", "role": "d0" }} , 
 	{ "name": "adjChImg_G_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "adjChImg_G", "role": "q0" }} , 
 	{ "name": "adjChImg_G_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "adjChImg_G", "role": "address1" }} , 
 	{ "name": "adjChImg_G_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "adjChImg_G", "role": "ce1" }} , 
 	{ "name": "adjChImg_G_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "adjChImg_G", "role": "q1" }} , 
 	{ "name": "adjChImg_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "adjChImg_B", "role": "address0" }} , 
 	{ "name": "adjChImg_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "adjChImg_B", "role": "ce0" }} , 
 	{ "name": "adjChImg_B_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "adjChImg_B", "role": "we0" }} , 
 	{ "name": "adjChImg_B_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "adjChImg_B", "role": "d0" }} , 
 	{ "name": "adjChImg_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "adjChImg_B", "role": "q0" }} , 
 	{ "name": "adjChImg_B_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "adjChImg_B", "role": "address1" }} , 
 	{ "name": "adjChImg_B_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "adjChImg_B", "role": "ce1" }} , 
 	{ "name": "adjChImg_B_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "adjChImg_B", "role": "q1" }} , 
 	{ "name": "nominator_R_M_real_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "nominator_R_M_real", "role": "address0" }} , 
 	{ "name": "nominator_R_M_real_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nominator_R_M_real", "role": "ce0" }} , 
 	{ "name": "nominator_R_M_real_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nominator_R_M_real", "role": "we0" }} , 
 	{ "name": "nominator_R_M_real_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nominator_R_M_real", "role": "d0" }} , 
 	{ "name": "nominator_R_M_real_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nominator_R_M_real", "role": "q0" }} , 
 	{ "name": "nominator_R_M_real_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "nominator_R_M_real", "role": "address1" }} , 
 	{ "name": "nominator_R_M_real_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nominator_R_M_real", "role": "ce1" }} , 
 	{ "name": "nominator_R_M_real_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nominator_R_M_real", "role": "we1" }} , 
 	{ "name": "nominator_R_M_real_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nominator_R_M_real", "role": "d1" }} , 
 	{ "name": "nominator_R_M_real_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nominator_R_M_real", "role": "q1" }} , 
 	{ "name": "nominator_R_M_imag_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "nominator_R_M_imag", "role": "address0" }} , 
 	{ "name": "nominator_R_M_imag_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nominator_R_M_imag", "role": "ce0" }} , 
 	{ "name": "nominator_R_M_imag_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nominator_R_M_imag", "role": "we0" }} , 
 	{ "name": "nominator_R_M_imag_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nominator_R_M_imag", "role": "d0" }} , 
 	{ "name": "nominator_R_M_imag_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nominator_R_M_imag", "role": "q0" }} , 
 	{ "name": "nominator_R_M_imag_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "nominator_R_M_imag", "role": "address1" }} , 
 	{ "name": "nominator_R_M_imag_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nominator_R_M_imag", "role": "ce1" }} , 
 	{ "name": "nominator_R_M_imag_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nominator_R_M_imag", "role": "we1" }} , 
 	{ "name": "nominator_R_M_imag_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nominator_R_M_imag", "role": "d1" }} , 
 	{ "name": "nominator_R_M_imag_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nominator_R_M_imag", "role": "q1" }} , 
 	{ "name": "denominator_R_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "denominator_R", "role": "address0" }} , 
 	{ "name": "denominator_R_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "denominator_R", "role": "ce0" }} , 
 	{ "name": "denominator_R_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "denominator_R", "role": "we0" }} , 
 	{ "name": "denominator_R_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "denominator_R", "role": "d0" }} , 
 	{ "name": "denominator_R_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "denominator_R", "role": "q0" }} , 
 	{ "name": "denominator_R_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "denominator_R", "role": "address1" }} , 
 	{ "name": "denominator_R_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "denominator_R", "role": "ce1" }} , 
 	{ "name": "denominator_R_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "denominator_R", "role": "we1" }} , 
 	{ "name": "denominator_R_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "denominator_R", "role": "d1" }} , 
 	{ "name": "denominator_R_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "denominator_R", "role": "q1" }} , 
 	{ "name": "nominator_G_M_real_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "nominator_G_M_real", "role": "address0" }} , 
 	{ "name": "nominator_G_M_real_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nominator_G_M_real", "role": "ce0" }} , 
 	{ "name": "nominator_G_M_real_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nominator_G_M_real", "role": "q0" }} , 
 	{ "name": "nominator_G_M_imag_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "nominator_G_M_imag", "role": "address0" }} , 
 	{ "name": "nominator_G_M_imag_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nominator_G_M_imag", "role": "ce0" }} , 
 	{ "name": "nominator_G_M_imag_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nominator_G_M_imag", "role": "q0" }} , 
 	{ "name": "denominator_G_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "denominator_G", "role": "address0" }} , 
 	{ "name": "denominator_G_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "denominator_G", "role": "ce0" }} , 
 	{ "name": "denominator_G_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "denominator_G", "role": "q0" }} , 
 	{ "name": "nominator_B_M_real_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "nominator_B_M_real", "role": "address0" }} , 
 	{ "name": "nominator_B_M_real_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nominator_B_M_real", "role": "ce0" }} , 
 	{ "name": "nominator_B_M_real_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nominator_B_M_real", "role": "q0" }} , 
 	{ "name": "nominator_B_M_imag_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "nominator_B_M_imag", "role": "address0" }} , 
 	{ "name": "nominator_B_M_imag_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nominator_B_M_imag", "role": "ce0" }} , 
 	{ "name": "nominator_B_M_imag_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nominator_B_M_imag", "role": "q0" }} , 
 	{ "name": "denominator_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "denominator_B", "role": "address0" }} , 
 	{ "name": "denominator_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "denominator_B", "role": "ce0" }} , 
 	{ "name": "denominator_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "denominator_B", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "DEBLUR",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "35952981", "EstimateLatencyMax" : "50698581",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_cross_channel_deblur_fu_32"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_cross_channel_deblur_fu_32"}],
		"Port" : [
			{"Name" : "refImg_R", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cross_channel_deblur_fu_32", "Port" : "adjChImg"}]},
			{"Name" : "adjChImg_G", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cross_channel_deblur_fu_32", "Port" : "adjChImg2"}]},
			{"Name" : "adjChImg_B", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cross_channel_deblur_fu_32", "Port" : "Img"}]},
			{"Name" : "nominator_R_M_real", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "nominator_R_M_imag", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "denominator_R", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "nominator_G_M_real", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cross_channel_deblur_fu_32", "Port" : "coe_a_M_real"}]},
			{"Name" : "nominator_G_M_imag", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cross_channel_deblur_fu_32", "Port" : "coe_a_M_imag"}]},
			{"Name" : "denominator_G", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cross_channel_deblur_fu_32", "Port" : "coe_b"}]},
			{"Name" : "nominator_B_M_real", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cross_channel_deblur_fu_32", "Port" : "coe_a_M_real"}]},
			{"Name" : "nominator_B_M_imag", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cross_channel_deblur_fu_32", "Port" : "coe_a_M_imag"}]},
			{"Name" : "denominator_B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cross_channel_deblur_fu_32", "Port" : "coe_b"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "60", "83", "84"],
		"CDFG" : "cross_channel_deblur",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "17976489", "EstimateLatencyMax" : "25349289",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_my_filter_v12_fu_354"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_ProxGS4_fu_373"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_array_copy3_fu_384"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_array_copy3_fu_384"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_array_copy3_fu_384"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_array_copy3_fu_384"}],
		"Port" : [
			{"Name" : "Img", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "grp_array_copy3_fu_384", "Port" : "data_out"}]},
			{"Name" : "adjChImg", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_my_filter_v12_fu_354", "Port" : "adjChImg"}]},
			{"Name" : "adjChImg2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_my_filter_v12_fu_354", "Port" : "adjChImg2"}]},
			{"Name" : "coe_a_M_real", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "60", "SubInstance" : "grp_ProxGS4_fu_373", "Port" : "coe_a_M_real"}]},
			{"Name" : "coe_a_M_imag", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "60", "SubInstance" : "grp_ProxGS4_fu_373", "Port" : "coe_a_M_imag"}]},
			{"Name" : "coe_b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "60", "SubInstance" : "grp_ProxGS4_fu_373", "Port" : "coe_b"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.x_bar_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.x_old_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.x_2_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.y_1_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.y_2_U", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.y_3_U", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.y_4_U", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.y_5_U", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.y_6_U", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.y_7_U", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.y_8_U", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.y_9_U", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_my_filter_v12_fu_354", "Parent" : "1", "Child" : ["15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59"],
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
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_my_filter_v12_fu_354.DEBLUR_faddfsub_3bkb_U3", "Parent" : "14"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_my_filter_v12_fu_354.DEBLUR_faddfsub_3bkb_U4", "Parent" : "14"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_my_filter_v12_fu_354.DEBLUR_fsub_32ns_cud_U5", "Parent" : "14"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_my_filter_v12_fu_354.DEBLUR_fsub_32ns_cud_U6", "Parent" : "14"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_my_filter_v12_fu_354.DEBLUR_fsub_32ns_cud_U7", "Parent" : "14"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_my_filter_v12_fu_354.DEBLUR_fsub_32ns_cud_U8", "Parent" : "14"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_my_filter_v12_fu_354.DEBLUR_faddfsub_3bkb_U9", "Parent" : "14"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_my_filter_v12_fu_354.DEBLUR_faddfsub_3bkb_U10", "Parent" : "14"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_my_filter_v12_fu_354.DEBLUR_faddfsub_3bkb_U11", "Parent" : "14"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_my_filter_v12_fu_354.DEBLUR_fsub_32ns_cud_U12", "Parent" : "14"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_my_filter_v12_fu_354.DEBLUR_faddfsub_3bkb_U13", "Parent" : "14"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_my_filter_v12_fu_354.DEBLUR_fadd_32ns_dEe_U14", "Parent" : "14"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_my_filter_v12_fu_354.DEBLUR_fadd_32ns_dEe_U15", "Parent" : "14"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_my_filter_v12_fu_354.DEBLUR_fadd_32ns_dEe_U16", "Parent" : "14"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_my_filter_v12_fu_354.DEBLUR_faddfsub_3bkb_U17", "Parent" : "14"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_my_filter_v12_fu_354.DEBLUR_fmul_32ns_eOg_U18", "Parent" : "14"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_my_filter_v12_fu_354.DEBLUR_fmul_32ns_eOg_U19", "Parent" : "14"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_my_filter_v12_fu_354.DEBLUR_fmul_32ns_eOg_U20", "Parent" : "14"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_my_filter_v12_fu_354.DEBLUR_fmul_32ns_eOg_U21", "Parent" : "14"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_my_filter_v12_fu_354.DEBLUR_fmul_32ns_eOg_U22", "Parent" : "14"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_my_filter_v12_fu_354.DEBLUR_fmul_32ns_eOg_U23", "Parent" : "14"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_my_filter_v12_fu_354.DEBLUR_fmul_32ns_eOg_U24", "Parent" : "14"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_my_filter_v12_fu_354.DEBLUR_fmul_32ns_eOg_U25", "Parent" : "14"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_my_filter_v12_fu_354.DEBLUR_fmul_32ns_eOg_U26", "Parent" : "14"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_my_filter_v12_fu_354.DEBLUR_fmul_32ns_eOg_U27", "Parent" : "14"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_my_filter_v12_fu_354.DEBLUR_fmul_32ns_eOg_U28", "Parent" : "14"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_my_filter_v12_fu_354.DEBLUR_fdiv_32ns_fYi_U29", "Parent" : "14"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_my_filter_v12_fu_354.DEBLUR_fdiv_32ns_fYi_U30", "Parent" : "14"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_my_filter_v12_fu_354.DEBLUR_fdiv_32ns_fYi_U31", "Parent" : "14"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_my_filter_v12_fu_354.DEBLUR_fdiv_32ns_fYi_U32", "Parent" : "14"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_my_filter_v12_fu_354.DEBLUR_fdiv_32ns_fYi_U33", "Parent" : "14"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_my_filter_v12_fu_354.DEBLUR_fdiv_32ns_fYi_U34", "Parent" : "14"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_my_filter_v12_fu_354.DEBLUR_fdiv_32ns_fYi_U35", "Parent" : "14"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_my_filter_v12_fu_354.DEBLUR_fdiv_32ns_fYi_U36", "Parent" : "14"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_my_filter_v12_fu_354.DEBLUR_fdiv_32ns_fYi_U37", "Parent" : "14"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_my_filter_v12_fu_354.DEBLUR_fptrunc_64g8j_U38", "Parent" : "14"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_my_filter_v12_fu_354.DEBLUR_fptrunc_64g8j_U39", "Parent" : "14"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_my_filter_v12_fu_354.DEBLUR_fpext_32nshbi_U40", "Parent" : "14"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_my_filter_v12_fu_354.DEBLUR_fpext_32nshbi_U41", "Parent" : "14"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_my_filter_v12_fu_354.DEBLUR_fcmp_32ns_ibs_U42", "Parent" : "14"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_my_filter_v12_fu_354.DEBLUR_fsqrt_32nsjbC_U43", "Parent" : "14"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_my_filter_v12_fu_354.DEBLUR_dadd_64ns_kbM_U44", "Parent" : "14"},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_my_filter_v12_fu_354.DEBLUR_dadd_64ns_kbM_U45", "Parent" : "14"},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_my_filter_v12_fu_354.DEBLUR_dmul_64ns_lbW_U46", "Parent" : "14"},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_my_filter_v12_fu_354.DEBLUR_dmul_64ns_lbW_U47", "Parent" : "14"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_ProxGS4_fu_373", "Parent" : "1", "Child" : ["61", "62", "63", "64", "65", "77", "78", "79", "80", "81", "82"],
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
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_ProxGS4_fu_373.tmp_M_real_U", "Parent" : "60"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_ProxGS4_fu_373.tmp_M_imag_U", "Parent" : "60"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_ProxGS4_fu_373.fft_result_M_real_U", "Parent" : "60"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_ProxGS4_fu_373.fft_result_M_imag_U", "Parent" : "60"},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_ProxGS4_fu_373.grp_fft_top_2D_fu_419", "Parent" : "60", "Child" : ["66", "67", "68"],
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
	{"ID" : "66", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_ProxGS4_fu_373.grp_fft_top_2D_fu_419.buffer_out_U", "Parent" : "65"},
	{"ID" : "67", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_ProxGS4_fu_373.grp_fft_top_2D_fu_419.buffer_in_U", "Parent" : "65"},
	{"ID" : "68", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_ProxGS4_fu_373.grp_fft_top_2D_fu_419.grp_fft_top_fu_304", "Parent" : "65", "Child" : ["69", "70", "71", "72", "73", "74", "75", "76"],
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
			{"ID" : "69", "Name" : "dummy_proc_fe_1_U0"}],
		"OutputProcess" : [
			{"ID" : "71", "Name" : "dummy_proc_be_1_U0"}],
		"Port" : [
			{"Name" : "direction", "Type" : "HS", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "dummy_proc_fe_1_U0", "Port" : "in_r"}]},
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "71", "SubInstance" : "dummy_proc_be_1_U0", "Port" : "out_r"}]}]},
	{"ID" : "69", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_ProxGS4_fu_373.grp_fft_top_2D_fu_419.grp_fft_top_fu_304.dummy_proc_fe_1_U0", "Parent" : "68",
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
			{"Name" : "config_data_V", "Type" : "Fifo", "Direction" : "IO", "DependentProc" : "70", "DependentChan" : "72",
				"BlockSignal" : [
					{"Name" : "config_data_V_i_blk_n", "Type" : "RtlSignal"},
					{"Name" : "config_data_V_o_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_r", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "70", "DependentChan" : "73",
				"BlockSignal" : [
					{"Name" : "out_r_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "70", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_ProxGS4_fu_373.grp_fft_top_2D_fu_419.grp_fft_top_fu_304.fft_config1_U0", "Parent" : "68",
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
		"StartSource" : "69",
		"StartFifo" : "start_for_fft_conmb6_U",
		"Port" : [
			{"Name" : "xn", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "69", "DependentChan" : "73"},
			{"Name" : "xk", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "71", "DependentChan" : "74"},
			{"Name" : "status_data_V", "Type" : "Fifo", "Direction" : "O"},
			{"Name" : "config_ch_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "69", "DependentChan" : "72"}]},
	{"ID" : "71", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_ProxGS4_fu_373.grp_fft_top_2D_fu_419.grp_fft_top_fu_304.dummy_proc_be_1_U0", "Parent" : "68",
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
		"StartSource" : "69",
		"StartFifo" : "start_for_dummy_pncg_U",
		"Port" : [
			{"Name" : "in_r", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "70", "DependentChan" : "74",
				"BlockSignal" : [
					{"Name" : "in_r_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "72", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_ProxGS4_fu_373.grp_fft_top_2D_fu_419.grp_fft_top_fu_304.fft_config_data_V_U", "Parent" : "68"},
	{"ID" : "73", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_ProxGS4_fu_373.grp_fft_top_2D_fu_419.grp_fft_top_fu_304.xn_channel_U", "Parent" : "68"},
	{"ID" : "74", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_ProxGS4_fu_373.grp_fft_top_2D_fu_419.grp_fft_top_fu_304.xk_channel_U", "Parent" : "68"},
	{"ID" : "75", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_ProxGS4_fu_373.grp_fft_top_2D_fu_419.grp_fft_top_fu_304.start_for_fft_conmb6_U", "Parent" : "68"},
	{"ID" : "76", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_ProxGS4_fu_373.grp_fft_top_2D_fu_419.grp_fft_top_fu_304.start_for_dummy_pncg_U", "Parent" : "68"},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_ProxGS4_fu_373.DEBLUR_fadd_32ns_dEe_U93", "Parent" : "60"},
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_ProxGS4_fu_373.DEBLUR_fadd_32ns_dEe_U94", "Parent" : "60"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_ProxGS4_fu_373.DEBLUR_fmul_32ns_eOg_U95", "Parent" : "60"},
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_ProxGS4_fu_373.DEBLUR_fdiv_32ns_fYi_U96", "Parent" : "60"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_ProxGS4_fu_373.DEBLUR_fdiv_32ns_fYi_U97", "Parent" : "60"},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_ProxGS4_fu_373.DEBLUR_fcmp_32ns_ibs_U98", "Parent" : "60"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_array_copy3_fu_384", "Parent" : "1",
		"CDFG" : "array_copy3",
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
			{"Name" : "data_in", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_out", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.DEBLUR_fsub_32ns_cud_U105", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	DEBLUR {
		refImg_R {Type I LastRead 4 FirstWrite -1}
		adjChImg_G {Type IO LastRead 4 FirstWrite -1}
		adjChImg_B {Type IO LastRead 4 FirstWrite -1}
		nominator_R_M_real {Type X LastRead -1 FirstWrite -1}
		nominator_R_M_imag {Type X LastRead -1 FirstWrite -1}
		denominator_R {Type X LastRead -1 FirstWrite -1}
		nominator_G_M_real {Type I LastRead 10 FirstWrite -1}
		nominator_G_M_imag {Type I LastRead 10 FirstWrite -1}
		denominator_G {Type I LastRead 8 FirstWrite -1}
		nominator_B_M_real {Type I LastRead 10 FirstWrite -1}
		nominator_B_M_imag {Type I LastRead 10 FirstWrite -1}
		denominator_B {Type I LastRead 8 FirstWrite -1}}
	cross_channel_deblur {
		Img {Type IO LastRead 1 FirstWrite -1}
		adjChImg {Type I LastRead 4 FirstWrite -1}
		adjChImg2 {Type I LastRead 4 FirstWrite -1}
		coe_a_M_real {Type I LastRead 10 FirstWrite -1}
		coe_a_M_imag {Type I LastRead 10 FirstWrite -1}
		coe_b {Type I LastRead 8 FirstWrite -1}}
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
		g9 {Type IO LastRead 68 FirstWrite 33}}
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
		out_r {Type O LastRead -1 FirstWrite 1}}
	array_copy3 {
		data_in {Type I LastRead 1 FirstWrite -1}
		data_out {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 1

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "35952981", "Max" : "50698581"}
	, {"Name" : "Interval", "Min" : "35952982", "Max" : "50698582"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	refImg_R { ap_memory {  { refImg_R_address0 mem_address 1 14 }  { refImg_R_ce0 mem_ce 1 1 }  { refImg_R_q0 mem_dout 0 32 }  { refImg_R_address1 MemPortADDR2 1 14 }  { refImg_R_ce1 MemPortCE2 1 1 }  { refImg_R_q1 MemPortDOUT2 0 32 } } }
	adjChImg_G { ap_memory {  { adjChImg_G_address0 mem_address 1 14 }  { adjChImg_G_ce0 mem_ce 1 1 }  { adjChImg_G_we0 mem_we 1 1 }  { adjChImg_G_d0 mem_din 1 32 }  { adjChImg_G_q0 mem_dout 0 32 }  { adjChImg_G_address1 MemPortADDR2 1 14 }  { adjChImg_G_ce1 MemPortCE2 1 1 }  { adjChImg_G_q1 MemPortDOUT2 0 32 } } }
	adjChImg_B { ap_memory {  { adjChImg_B_address0 mem_address 1 14 }  { adjChImg_B_ce0 mem_ce 1 1 }  { adjChImg_B_we0 mem_we 1 1 }  { adjChImg_B_d0 mem_din 1 32 }  { adjChImg_B_q0 mem_dout 0 32 }  { adjChImg_B_address1 MemPortADDR2 1 14 }  { adjChImg_B_ce1 MemPortCE2 1 1 }  { adjChImg_B_q1 MemPortDOUT2 0 32 } } }
	nominator_R_M_real { ap_memory {  { nominator_R_M_real_address0 mem_address 1 14 }  { nominator_R_M_real_ce0 mem_ce 1 1 }  { nominator_R_M_real_we0 mem_we 1 1 }  { nominator_R_M_real_d0 mem_din 1 32 }  { nominator_R_M_real_q0 mem_dout 0 32 }  { nominator_R_M_real_address1 MemPortADDR2 1 14 }  { nominator_R_M_real_ce1 MemPortCE2 1 1 }  { nominator_R_M_real_we1 MemPortWE2 1 1 }  { nominator_R_M_real_d1 MemPortDIN2 1 32 }  { nominator_R_M_real_q1 MemPortDOUT2 0 32 } } }
	nominator_R_M_imag { ap_memory {  { nominator_R_M_imag_address0 mem_address 1 14 }  { nominator_R_M_imag_ce0 mem_ce 1 1 }  { nominator_R_M_imag_we0 mem_we 1 1 }  { nominator_R_M_imag_d0 mem_din 1 32 }  { nominator_R_M_imag_q0 mem_dout 0 32 }  { nominator_R_M_imag_address1 MemPortADDR2 1 14 }  { nominator_R_M_imag_ce1 MemPortCE2 1 1 }  { nominator_R_M_imag_we1 MemPortWE2 1 1 }  { nominator_R_M_imag_d1 MemPortDIN2 1 32 }  { nominator_R_M_imag_q1 MemPortDOUT2 0 32 } } }
	denominator_R { ap_memory {  { denominator_R_address0 mem_address 1 14 }  { denominator_R_ce0 mem_ce 1 1 }  { denominator_R_we0 mem_we 1 1 }  { denominator_R_d0 mem_din 1 32 }  { denominator_R_q0 mem_dout 0 32 }  { denominator_R_address1 MemPortADDR2 1 14 }  { denominator_R_ce1 MemPortCE2 1 1 }  { denominator_R_we1 MemPortWE2 1 1 }  { denominator_R_d1 MemPortDIN2 1 32 }  { denominator_R_q1 MemPortDOUT2 0 32 } } }
	nominator_G_M_real { ap_memory {  { nominator_G_M_real_address0 mem_address 1 14 }  { nominator_G_M_real_ce0 mem_ce 1 1 }  { nominator_G_M_real_q0 mem_dout 0 32 } } }
	nominator_G_M_imag { ap_memory {  { nominator_G_M_imag_address0 mem_address 1 14 }  { nominator_G_M_imag_ce0 mem_ce 1 1 }  { nominator_G_M_imag_q0 mem_dout 0 32 } } }
	denominator_G { ap_memory {  { denominator_G_address0 mem_address 1 14 }  { denominator_G_ce0 mem_ce 1 1 }  { denominator_G_q0 mem_dout 0 32 } } }
	nominator_B_M_real { ap_memory {  { nominator_B_M_real_address0 mem_address 1 14 }  { nominator_B_M_real_ce0 mem_ce 1 1 }  { nominator_B_M_real_q0 mem_dout 0 32 } } }
	nominator_B_M_imag { ap_memory {  { nominator_B_M_imag_address0 mem_address 1 14 }  { nominator_B_M_imag_ce0 mem_ce 1 1 }  { nominator_B_M_imag_q0 mem_dout 0 32 } } }
	denominator_B { ap_memory {  { denominator_B_address0 mem_address 1 14 }  { denominator_B_ce0 mem_ce 1 1 }  { denominator_B_q0 mem_dout 0 32 } } }
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
