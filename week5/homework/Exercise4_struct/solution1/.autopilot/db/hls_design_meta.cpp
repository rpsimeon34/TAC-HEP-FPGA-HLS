#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("A_A1", 32, hls_in, 0, "ap_none", "in_data", 1),
	Port_Property("A_A2", 32, hls_in, 1, "ap_none", "in_data", 1),
	Port_Property("A_A3", 32, hls_in, 2, "ap_none", "in_data", 1),
	Port_Property("A_A4", 32, hls_in, 3, "ap_none", "in_data", 1),
	Port_Property("A_A5", 32, hls_in, 4, "ap_none", "in_data", 1),
	Port_Property("A_A6", 32, hls_in, 5, "ap_none", "in_data", 1),
	Port_Property("A_A7", 32, hls_in, 6, "ap_none", "in_data", 1),
	Port_Property("A_A8", 32, hls_in, 7, "ap_none", "in_data", 1),
	Port_Property("A_A9", 32, hls_in, 8, "ap_none", "in_data", 1),
	Port_Property("A_A10", 32, hls_in, 9, "ap_none", "in_data", 1),
	Port_Property("B", 32, hls_out, 10, "ap_vld", "out_data", 1),
	Port_Property("B_ap_vld", 1, hls_out, 10, "ap_vld", "out_vld", 1),
};
const char* HLS_Design_Meta::dut_name = "ex4";
