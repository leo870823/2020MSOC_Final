#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("x_io_V_address0", 14, hls_out, 0, "ap_memory", "mem_address", 1),
	Port_Property("x_io_V_ce0", 1, hls_out, 0, "ap_memory", "mem_ce", 1),
	Port_Property("x_io_V_we0", 1, hls_out, 0, "ap_memory", "mem_we", 1),
	Port_Property("x_io_V_d0", 8, hls_out, 0, "ap_memory", "mem_din", 1),
	Port_Property("x_io_V_q0", 8, hls_in, 0, "ap_memory", "mem_dout", 1),
	Port_Property("coe_a_M_real_address0", 14, hls_out, 1, "ap_memory", "mem_address", 1),
	Port_Property("coe_a_M_real_ce0", 1, hls_out, 1, "ap_memory", "mem_ce", 1),
	Port_Property("coe_a_M_real_q0", 32, hls_in, 1, "ap_memory", "mem_dout", 1),
	Port_Property("coe_a_M_imag_address0", 14, hls_out, 2, "ap_memory", "mem_address", 1),
	Port_Property("coe_a_M_imag_ce0", 1, hls_out, 2, "ap_memory", "mem_ce", 1),
	Port_Property("coe_a_M_imag_q0", 32, hls_in, 2, "ap_memory", "mem_dout", 1),
	Port_Property("coe_b_address0", 14, hls_out, 3, "ap_memory", "mem_address", 1),
	Port_Property("coe_b_ce0", 1, hls_out, 3, "ap_memory", "mem_ce", 1),
	Port_Property("coe_b_q0", 32, hls_in, 3, "ap_memory", "mem_dout", 1),
};
const char* HLS_Design_Meta::dut_name = "ProxGS";
