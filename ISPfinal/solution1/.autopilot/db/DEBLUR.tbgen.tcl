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
	{ refImg_R_V int 8 regular {array 16384 { 1 1 } 1 1 }  }
	{ adjChImg_G_V int 8 regular {array 16384 { 2 3 } 1 1 }  }
	{ adjChImg_B_V int 8 regular {array 16384 { 2 3 } 1 1 }  }
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
	{ "Name" : "refImg_R_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "refImg_R.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 127,"step" : 1},{"low" : 0,"up" : 127,"step" : 1}]}]}]} , 
 	{ "Name" : "adjChImg_G_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "adjChImg_G.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 127,"step" : 1},{"low" : 0,"up" : 127,"step" : 1}]}]}]} , 
 	{ "Name" : "adjChImg_B_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "adjChImg_B.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 127,"step" : 1},{"low" : 0,"up" : 127,"step" : 1}]}]}]} , 
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
set portNum 70
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ refImg_R_V_address0 sc_out sc_lv 14 signal 0 } 
	{ refImg_R_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ refImg_R_V_q0 sc_in sc_lv 8 signal 0 } 
	{ refImg_R_V_address1 sc_out sc_lv 14 signal 0 } 
	{ refImg_R_V_ce1 sc_out sc_logic 1 signal 0 } 
	{ refImg_R_V_q1 sc_in sc_lv 8 signal 0 } 
	{ adjChImg_G_V_address0 sc_out sc_lv 14 signal 1 } 
	{ adjChImg_G_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ adjChImg_G_V_we0 sc_out sc_logic 1 signal 1 } 
	{ adjChImg_G_V_d0 sc_out sc_lv 8 signal 1 } 
	{ adjChImg_G_V_q0 sc_in sc_lv 8 signal 1 } 
	{ adjChImg_B_V_address0 sc_out sc_lv 14 signal 2 } 
	{ adjChImg_B_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ adjChImg_B_V_we0 sc_out sc_logic 1 signal 2 } 
	{ adjChImg_B_V_d0 sc_out sc_lv 8 signal 2 } 
	{ adjChImg_B_V_q0 sc_in sc_lv 8 signal 2 } 
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
 	{ "name": "refImg_R_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "refImg_R_V", "role": "address0" }} , 
 	{ "name": "refImg_R_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "refImg_R_V", "role": "ce0" }} , 
 	{ "name": "refImg_R_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "refImg_R_V", "role": "q0" }} , 
 	{ "name": "refImg_R_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "refImg_R_V", "role": "address1" }} , 
 	{ "name": "refImg_R_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "refImg_R_V", "role": "ce1" }} , 
 	{ "name": "refImg_R_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "refImg_R_V", "role": "q1" }} , 
 	{ "name": "adjChImg_G_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "adjChImg_G_V", "role": "address0" }} , 
 	{ "name": "adjChImg_G_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "adjChImg_G_V", "role": "ce0" }} , 
 	{ "name": "adjChImg_G_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "adjChImg_G_V", "role": "we0" }} , 
 	{ "name": "adjChImg_G_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "adjChImg_G_V", "role": "d0" }} , 
 	{ "name": "adjChImg_G_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "adjChImg_G_V", "role": "q0" }} , 
 	{ "name": "adjChImg_B_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "adjChImg_B_V", "role": "address0" }} , 
 	{ "name": "adjChImg_B_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "adjChImg_B_V", "role": "ce0" }} , 
 	{ "name": "adjChImg_B_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "adjChImg_B_V", "role": "we0" }} , 
 	{ "name": "adjChImg_B_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "adjChImg_B_V", "role": "d0" }} , 
 	{ "name": "adjChImg_B_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "adjChImg_B_V", "role": "q0" }} , 
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
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4191469", "EstimateLatencyMax" : "4191469",
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
			{"Name" : "refImg_R_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cross_channel_deblur_fu_32", "Port" : "adjChImg_V"}]},
			{"Name" : "adjChImg_G_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cross_channel_deblur_fu_32", "Port" : "Img_V"}]},
			{"Name" : "adjChImg_B_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cross_channel_deblur_fu_32", "Port" : "Img_V"}]},
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "50", "57"],
		"CDFG" : "cross_channel_deblur",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2095733", "EstimateLatencyMax" : "2095733",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_ProxGS4_fu_316"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_my_filter_v12_fu_327"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_array_copy3_fu_341"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_array_copy3_fu_341"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_array_copy3_fu_341"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_array_copy3_fu_341"}],
		"Port" : [
			{"Name" : "Img_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_array_copy3_fu_341", "Port" : "data_out_V"}]},
			{"Name" : "adjChImg_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "grp_my_filter_v12_fu_327", "Port" : "adjChImg_V"}]},
			{"Name" : "coe_a_M_real", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_ProxGS4_fu_316", "Port" : "coe_a_M_real"}]},
			{"Name" : "coe_a_M_imag", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_ProxGS4_fu_316", "Port" : "coe_a_M_imag"}]},
			{"Name" : "coe_b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_ProxGS4_fu_316", "Port" : "coe_b"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.x_bar_V_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.x_old_V_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.x_V_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.y_1_V_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.y_2_V_U", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.y_3_V_U", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.y_4_V_U", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.y_5_V_U", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.y_6_V_U", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.y_7_V_U", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_ProxGS4_fu_316", "Parent" : "1", "Child" : ["13", "14", "15", "16", "17", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49"],
		"CDFG" : "ProxGS4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "594785", "EstimateLatencyMax" : "594785",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state32", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fft_top_2D_fu_446"},
			{"State" : "ap_ST_fsm_state88", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fft_top_2D_fu_446"}],
		"Port" : [
			{"Name" : "x_io_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "coe_a_M_real", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "coe_a_M_imag", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "coe_b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_ProxGS4_fu_316.tmp_M_real_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_ProxGS4_fu_316.tmp_M_imag_U", "Parent" : "12"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_ProxGS4_fu_316.fft_result_M_real_U", "Parent" : "12"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_ProxGS4_fu_316.fft_result_M_imag_U", "Parent" : "12"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_ProxGS4_fu_316.grp_fft_top_2D_fu_446", "Parent" : "12", "Child" : ["18", "19", "20"],
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
	{"ID" : "18", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_ProxGS4_fu_316.grp_fft_top_2D_fu_446.buffer_out_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_ProxGS4_fu_316.grp_fft_top_2D_fu_446.buffer_in_U", "Parent" : "17"},
	{"ID" : "20", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_ProxGS4_fu_316.grp_fft_top_2D_fu_446.grp_fft_top_fu_310", "Parent" : "17", "Child" : ["21", "22", "23", "24", "25", "26", "27", "28", "29"],
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
			{"ID" : "21", "Name" : "dummy_proc_fe_1_U0"}],
		"OutputProcess" : [
			{"ID" : "23", "Name" : "dummy_proc_be_1_U0"}],
		"Port" : [
			{"Name" : "direction", "Type" : "HS", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "dummy_proc_fe_1_U0", "Port" : "in_r"}]},
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "dummy_proc_be_1_U0", "Port" : "out_r"}]},
			{"Name" : "ovflo", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "dummy_proc_be_1_U0", "Port" : "ovflo"}]}]},
	{"ID" : "21", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_ProxGS4_fu_316.grp_fft_top_2D_fu_446.grp_fft_top_fu_310.dummy_proc_fe_1_U0", "Parent" : "20",
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
			{"Name" : "config_data_V", "Type" : "Fifo", "Direction" : "IO", "DependentProc" : "22", "DependentChan" : "24",
				"BlockSignal" : [
					{"Name" : "config_data_V_i_blk_n", "Type" : "RtlSignal"},
					{"Name" : "config_data_V_o_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_r", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "25",
				"BlockSignal" : [
					{"Name" : "out_r_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "22", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_ProxGS4_fu_316.grp_fft_top_2D_fu_446.grp_fft_top_fu_310.fft_config1_U0", "Parent" : "20",
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
		"StartSource" : "21",
		"StartFifo" : "start_for_fft_confYi_U",
		"Port" : [
			{"Name" : "xn", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "25"},
			{"Name" : "xk", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "23", "DependentChan" : "26"},
			{"Name" : "status_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "23", "DependentChan" : "27"},
			{"Name" : "config_ch_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "24"}]},
	{"ID" : "23", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_ProxGS4_fu_316.grp_fft_top_2D_fu_446.grp_fft_top_fu_310.dummy_proc_be_1_U0", "Parent" : "20",
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
		"StartSource" : "21",
		"StartFifo" : "start_for_dummy_pg8j_U",
		"Port" : [
			{"Name" : "status_in_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "22", "DependentChan" : "27",
				"BlockSignal" : [
					{"Name" : "status_in_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ovflo", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "22", "DependentChan" : "26",
				"BlockSignal" : [
					{"Name" : "in_r_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "24", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_ProxGS4_fu_316.grp_fft_top_2D_fu_446.grp_fft_top_fu_310.fft_config_data_V_U", "Parent" : "20"},
	{"ID" : "25", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_ProxGS4_fu_316.grp_fft_top_2D_fu_446.grp_fft_top_fu_310.xn_channel_U", "Parent" : "20"},
	{"ID" : "26", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_ProxGS4_fu_316.grp_fft_top_2D_fu_446.grp_fft_top_fu_310.xk_channel_U", "Parent" : "20"},
	{"ID" : "27", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_ProxGS4_fu_316.grp_fft_top_2D_fu_446.grp_fft_top_fu_310.fft_status_data_V_U", "Parent" : "20"},
	{"ID" : "28", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_ProxGS4_fu_316.grp_fft_top_2D_fu_446.grp_fft_top_fu_310.start_for_fft_confYi_U", "Parent" : "20"},
	{"ID" : "29", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_ProxGS4_fu_316.grp_fft_top_2D_fu_446.grp_fft_top_fu_310.start_for_dummy_pg8j_U", "Parent" : "20"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_ProxGS4_fu_316.DEBLUR_fmul_32ns_lbW_U47", "Parent" : "12"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_ProxGS4_fu_316.DEBLUR_fmul_32ns_lbW_U48", "Parent" : "12"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_ProxGS4_fu_316.DEBLUR_fmul_32ns_lbW_U49", "Parent" : "12"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_ProxGS4_fu_316.DEBLUR_fmul_32ns_lbW_U50", "Parent" : "12"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_ProxGS4_fu_316.DEBLUR_fdiv_32ns_mb6_U51", "Parent" : "12"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_ProxGS4_fu_316.DEBLUR_sitofp_32nncg_U52", "Parent" : "12"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_ProxGS4_fu_316.DEBLUR_fptrunc_64ocq_U53", "Parent" : "12"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_ProxGS4_fu_316.DEBLUR_fptrunc_64ocq_U54", "Parent" : "12"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_ProxGS4_fu_316.DEBLUR_fpext_32nspcA_U55", "Parent" : "12"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_ProxGS4_fu_316.DEBLUR_fpext_32nspcA_U56", "Parent" : "12"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_ProxGS4_fu_316.DEBLUR_fpext_32nspcA_U57", "Parent" : "12"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_ProxGS4_fu_316.DEBLUR_fpext_32nspcA_U58", "Parent" : "12"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_ProxGS4_fu_316.DEBLUR_fpext_32nspcA_U59", "Parent" : "12"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_ProxGS4_fu_316.DEBLUR_fcmp_32ns_qcK_U60", "Parent" : "12"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_ProxGS4_fu_316.DEBLUR_dadd_64ns_bkb_U61", "Parent" : "12"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_ProxGS4_fu_316.DEBLUR_dadd_64ns_bkb_U62", "Parent" : "12"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_ProxGS4_fu_316.DEBLUR_dmul_64ns_rcU_U63", "Parent" : "12"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_ProxGS4_fu_316.DEBLUR_dmul_64ns_rcU_U64", "Parent" : "12"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_ProxGS4_fu_316.DEBLUR_ddiv_64ns_sc4_U65", "Parent" : "12"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_ProxGS4_fu_316.DEBLUR_ddiv_64ns_sc4_U66", "Parent" : "12"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_my_filter_v12_fu_327", "Parent" : "1", "Child" : ["51", "52", "53", "54", "55", "56"],
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
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_my_filter_v12_fu_327.DEBLUR_dadd_64ns_bkb_U3", "Parent" : "50"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_my_filter_v12_fu_327.DEBLUR_uitodp_32ncud_U4", "Parent" : "50"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_my_filter_v12_fu_327.DEBLUR_uitodp_32ncud_U5", "Parent" : "50"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_my_filter_v12_fu_327.DEBLUR_sitodp_32sdEe_U6", "Parent" : "50"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_my_filter_v12_fu_327.DEBLUR_mac_mulsubeOg_U7", "Parent" : "50"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_my_filter_v12_fu_327.DEBLUR_mac_mulsubeOg_U8", "Parent" : "50"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cross_channel_deblur_fu_32.grp_array_copy3_fu_341", "Parent" : "1",
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
			{"Name" : "data_in_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_out_V", "Type" : "Memory", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	DEBLUR {
		refImg_R_V {Type I LastRead 3 FirstWrite -1}
		adjChImg_G_V {Type IO LastRead 1 FirstWrite -1}
		adjChImg_B_V {Type IO LastRead 1 FirstWrite -1}
		nominator_R_M_real {Type X LastRead -1 FirstWrite -1}
		nominator_R_M_imag {Type X LastRead -1 FirstWrite -1}
		denominator_R {Type X LastRead -1 FirstWrite -1}
		nominator_G_M_real {Type I LastRead 11 FirstWrite -1}
		nominator_G_M_imag {Type I LastRead 11 FirstWrite -1}
		denominator_G {Type I LastRead 8 FirstWrite -1}
		nominator_B_M_real {Type I LastRead 11 FirstWrite -1}
		nominator_B_M_imag {Type I LastRead 11 FirstWrite -1}
		denominator_B {Type I LastRead 8 FirstWrite -1}}
	cross_channel_deblur {
		Img_V {Type IO LastRead 1 FirstWrite -1}
		adjChImg_V {Type I LastRead 3 FirstWrite -1}
		coe_a_M_real {Type I LastRead 11 FirstWrite -1}
		coe_a_M_imag {Type I LastRead 11 FirstWrite -1}
		coe_b {Type I LastRead 8 FirstWrite -1}}
	ProxGS4 {
		x_io_V {Type IO LastRead 5 FirstWrite 22}
		coe_a_M_real {Type I LastRead 11 FirstWrite -1}
		coe_a_M_imag {Type I LastRead 11 FirstWrite -1}
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
	my_filter_v12 {
		f_V {Type I LastRead 4 FirstWrite -1}
		adjChImg_V {Type I LastRead 3 FirstWrite -1}
		g1_V {Type IO LastRead 1 FirstWrite 4}
		g2_V {Type IO LastRead 1 FirstWrite 3}
		g3_V {Type IO LastRead 1 FirstWrite 5}
		g4_V {Type IO LastRead 1 FirstWrite 4}
		g5_V {Type IO LastRead 1 FirstWrite 5}
		g6_V {Type IO LastRead 1 FirstWrite 19}
		g7_V {Type IO LastRead 1 FirstWrite 18}}
	array_copy3 {
		data_in_V {Type I LastRead 1 FirstWrite -1}
		data_out_V {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4191469", "Max" : "4191469"}
	, {"Name" : "Interval", "Min" : "4191470", "Max" : "4191470"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	refImg_R_V { ap_memory {  { refImg_R_V_address0 mem_address 1 14 }  { refImg_R_V_ce0 mem_ce 1 1 }  { refImg_R_V_q0 mem_dout 0 8 }  { refImg_R_V_address1 MemPortADDR2 1 14 }  { refImg_R_V_ce1 MemPortCE2 1 1 }  { refImg_R_V_q1 MemPortDOUT2 0 8 } } }
	adjChImg_G_V { ap_memory {  { adjChImg_G_V_address0 mem_address 1 14 }  { adjChImg_G_V_ce0 mem_ce 1 1 }  { adjChImg_G_V_we0 mem_we 1 1 }  { adjChImg_G_V_d0 mem_din 1 8 }  { adjChImg_G_V_q0 mem_dout 0 8 } } }
	adjChImg_B_V { ap_memory {  { adjChImg_B_V_address0 mem_address 1 14 }  { adjChImg_B_V_ce0 mem_ce 1 1 }  { adjChImg_B_V_we0 mem_we 1 1 }  { adjChImg_B_V_d0 mem_din 1 8 }  { adjChImg_B_V_q0 mem_dout 0 8 } } }
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
