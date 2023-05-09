#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("in_A_address0", 3, hls_out, 0, "ap_memory", "mem_address", 1),
	Port_Property("in_A_ce0", 1, hls_out, 0, "ap_memory", "mem_ce", 1),
	Port_Property("in_A_q0", 32, hls_in, 0, "ap_memory", "mem_dout", 1),
	Port_Property("in_B_0_address0", 2, hls_out, 1, "ap_memory", "mem_address", 1),
	Port_Property("in_B_0_ce0", 1, hls_out, 1, "ap_memory", "mem_ce", 1),
	Port_Property("in_B_0_q0", 32, hls_in, 1, "ap_memory", "mem_dout", 1),
	Port_Property("in_B_1_address0", 2, hls_out, 2, "ap_memory", "mem_address", 1),
	Port_Property("in_B_1_ce0", 1, hls_out, 2, "ap_memory", "mem_ce", 1),
	Port_Property("in_B_1_q0", 32, hls_in, 2, "ap_memory", "mem_dout", 1),
	Port_Property("out_r", 32, hls_out, 3, "ap_vld", "out_data", 1),
	Port_Property("out_r_ap_vld", 1, hls_out, 3, "ap_vld", "out_vld", 1),
};
const char* HLS_Design_Meta::dut_name = "hw4";
