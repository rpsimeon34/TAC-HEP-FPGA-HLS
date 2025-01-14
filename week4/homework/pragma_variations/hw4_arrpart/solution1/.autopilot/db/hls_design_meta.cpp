#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("in_0", 32, hls_in, 0, "ap_none", "in_data", 1),
	Port_Property("in_1", 32, hls_in, 1, "ap_none", "in_data", 1),
	Port_Property("in_2", 32, hls_in, 2, "ap_none", "in_data", 1),
	Port_Property("in_3", 32, hls_in, 3, "ap_none", "in_data", 1),
	Port_Property("in_4", 32, hls_in, 4, "ap_none", "in_data", 1),
	Port_Property("in_5", 32, hls_in, 5, "ap_none", "in_data", 1),
	Port_Property("in_6", 32, hls_in, 6, "ap_none", "in_data", 1),
	Port_Property("in_7", 32, hls_in, 7, "ap_none", "in_data", 1),
	Port_Property("in_8", 32, hls_in, 8, "ap_none", "in_data", 1),
	Port_Property("in_9", 32, hls_in, 9, "ap_none", "in_data", 1),
	Port_Property("in_10", 32, hls_in, 10, "ap_none", "in_data", 1),
	Port_Property("in_11", 32, hls_in, 11, "ap_none", "in_data", 1),
	Port_Property("in_12", 32, hls_in, 12, "ap_none", "in_data", 1),
	Port_Property("in_13", 32, hls_in, 13, "ap_none", "in_data", 1),
	Port_Property("in_14", 32, hls_in, 14, "ap_none", "in_data", 1),
	Port_Property("in_15", 32, hls_in, 15, "ap_none", "in_data", 1),
	Port_Property("in_16", 32, hls_in, 16, "ap_none", "in_data", 1),
	Port_Property("in_17", 32, hls_in, 17, "ap_none", "in_data", 1),
	Port_Property("in_18", 32, hls_in, 18, "ap_none", "in_data", 1),
	Port_Property("in_19", 32, hls_in, 19, "ap_none", "in_data", 1),
	Port_Property("in_20", 32, hls_in, 20, "ap_none", "in_data", 1),
	Port_Property("in_21", 32, hls_in, 21, "ap_none", "in_data", 1),
	Port_Property("in_22", 32, hls_in, 22, "ap_none", "in_data", 1),
	Port_Property("in_23", 32, hls_in, 23, "ap_none", "in_data", 1),
	Port_Property("in_24", 32, hls_in, 24, "ap_none", "in_data", 1),
	Port_Property("in_25", 32, hls_in, 25, "ap_none", "in_data", 1),
	Port_Property("in_26", 32, hls_in, 26, "ap_none", "in_data", 1),
	Port_Property("in_27", 32, hls_in, 27, "ap_none", "in_data", 1),
	Port_Property("in_28", 32, hls_in, 28, "ap_none", "in_data", 1),
	Port_Property("in_29", 32, hls_in, 29, "ap_none", "in_data", 1),
	Port_Property("in_30", 32, hls_in, 30, "ap_none", "in_data", 1),
	Port_Property("in_31", 32, hls_in, 31, "ap_none", "in_data", 1),
	Port_Property("in_32", 32, hls_in, 32, "ap_none", "in_data", 1),
	Port_Property("in_33", 32, hls_in, 33, "ap_none", "in_data", 1),
	Port_Property("in_34", 32, hls_in, 34, "ap_none", "in_data", 1),
	Port_Property("in_35", 32, hls_in, 35, "ap_none", "in_data", 1),
	Port_Property("in_36", 32, hls_in, 36, "ap_none", "in_data", 1),
	Port_Property("in_37", 32, hls_in, 37, "ap_none", "in_data", 1),
	Port_Property("in_38", 32, hls_in, 38, "ap_none", "in_data", 1),
	Port_Property("in_39", 32, hls_in, 39, "ap_none", "in_data", 1),
	Port_Property("in_40", 32, hls_in, 40, "ap_none", "in_data", 1),
	Port_Property("in_41", 32, hls_in, 41, "ap_none", "in_data", 1),
	Port_Property("in_42", 32, hls_in, 42, "ap_none", "in_data", 1),
	Port_Property("in_43", 32, hls_in, 43, "ap_none", "in_data", 1),
	Port_Property("in_44", 32, hls_in, 44, "ap_none", "in_data", 1),
	Port_Property("in_45", 32, hls_in, 45, "ap_none", "in_data", 1),
	Port_Property("in_46", 32, hls_in, 46, "ap_none", "in_data", 1),
	Port_Property("in_47", 32, hls_in, 47, "ap_none", "in_data", 1),
	Port_Property("in_48", 32, hls_in, 48, "ap_none", "in_data", 1),
	Port_Property("in_49", 32, hls_in, 49, "ap_none", "in_data", 1),
	Port_Property("in_50", 32, hls_in, 50, "ap_none", "in_data", 1),
	Port_Property("in_51", 32, hls_in, 51, "ap_none", "in_data", 1),
	Port_Property("in_52", 32, hls_in, 52, "ap_none", "in_data", 1),
	Port_Property("in_53", 32, hls_in, 53, "ap_none", "in_data", 1),
	Port_Property("in_54", 32, hls_in, 54, "ap_none", "in_data", 1),
	Port_Property("in_55", 32, hls_in, 55, "ap_none", "in_data", 1),
	Port_Property("in_56", 32, hls_in, 56, "ap_none", "in_data", 1),
	Port_Property("in_57", 32, hls_in, 57, "ap_none", "in_data", 1),
	Port_Property("in_58", 32, hls_in, 58, "ap_none", "in_data", 1),
	Port_Property("in_59", 32, hls_in, 59, "ap_none", "in_data", 1),
	Port_Property("a", 16, hls_in, 60, "ap_none", "in_data", 1),
	Port_Property("b", 16, hls_in, 61, "ap_none", "in_data", 1),
	Port_Property("c", 32, hls_in, 62, "ap_none", "in_data", 1),
	Port_Property("out_0", 32, hls_out, 63, "ap_vld", "out_data", 1),
	Port_Property("out_0_ap_vld", 1, hls_out, 63, "ap_vld", "out_vld", 1),
	Port_Property("out_1", 32, hls_out, 64, "ap_vld", "out_data", 1),
	Port_Property("out_1_ap_vld", 1, hls_out, 64, "ap_vld", "out_vld", 1),
	Port_Property("out_2", 32, hls_out, 65, "ap_vld", "out_data", 1),
	Port_Property("out_2_ap_vld", 1, hls_out, 65, "ap_vld", "out_vld", 1),
	Port_Property("out_3", 32, hls_out, 66, "ap_vld", "out_data", 1),
	Port_Property("out_3_ap_vld", 1, hls_out, 66, "ap_vld", "out_vld", 1),
	Port_Property("out_4", 32, hls_out, 67, "ap_vld", "out_data", 1),
	Port_Property("out_4_ap_vld", 1, hls_out, 67, "ap_vld", "out_vld", 1),
	Port_Property("out_5", 32, hls_out, 68, "ap_vld", "out_data", 1),
	Port_Property("out_5_ap_vld", 1, hls_out, 68, "ap_vld", "out_vld", 1),
	Port_Property("out_6", 32, hls_out, 69, "ap_vld", "out_data", 1),
	Port_Property("out_6_ap_vld", 1, hls_out, 69, "ap_vld", "out_vld", 1),
	Port_Property("out_7", 32, hls_out, 70, "ap_vld", "out_data", 1),
	Port_Property("out_7_ap_vld", 1, hls_out, 70, "ap_vld", "out_vld", 1),
	Port_Property("out_8", 32, hls_out, 71, "ap_vld", "out_data", 1),
	Port_Property("out_8_ap_vld", 1, hls_out, 71, "ap_vld", "out_vld", 1),
	Port_Property("out_9", 32, hls_out, 72, "ap_vld", "out_data", 1),
	Port_Property("out_9_ap_vld", 1, hls_out, 72, "ap_vld", "out_vld", 1),
	Port_Property("out_10", 32, hls_out, 73, "ap_vld", "out_data", 1),
	Port_Property("out_10_ap_vld", 1, hls_out, 73, "ap_vld", "out_vld", 1),
	Port_Property("out_11", 32, hls_out, 74, "ap_vld", "out_data", 1),
	Port_Property("out_11_ap_vld", 1, hls_out, 74, "ap_vld", "out_vld", 1),
	Port_Property("out_12", 32, hls_out, 75, "ap_vld", "out_data", 1),
	Port_Property("out_12_ap_vld", 1, hls_out, 75, "ap_vld", "out_vld", 1),
	Port_Property("out_13", 32, hls_out, 76, "ap_vld", "out_data", 1),
	Port_Property("out_13_ap_vld", 1, hls_out, 76, "ap_vld", "out_vld", 1),
	Port_Property("out_14", 32, hls_out, 77, "ap_vld", "out_data", 1),
	Port_Property("out_14_ap_vld", 1, hls_out, 77, "ap_vld", "out_vld", 1),
	Port_Property("out_15", 32, hls_out, 78, "ap_vld", "out_data", 1),
	Port_Property("out_15_ap_vld", 1, hls_out, 78, "ap_vld", "out_vld", 1),
	Port_Property("out_16", 32, hls_out, 79, "ap_vld", "out_data", 1),
	Port_Property("out_16_ap_vld", 1, hls_out, 79, "ap_vld", "out_vld", 1),
	Port_Property("out_17", 32, hls_out, 80, "ap_vld", "out_data", 1),
	Port_Property("out_17_ap_vld", 1, hls_out, 80, "ap_vld", "out_vld", 1),
	Port_Property("out_18", 32, hls_out, 81, "ap_vld", "out_data", 1),
	Port_Property("out_18_ap_vld", 1, hls_out, 81, "ap_vld", "out_vld", 1),
	Port_Property("out_19", 32, hls_out, 82, "ap_vld", "out_data", 1),
	Port_Property("out_19_ap_vld", 1, hls_out, 82, "ap_vld", "out_vld", 1),
	Port_Property("out_20", 32, hls_out, 83, "ap_vld", "out_data", 1),
	Port_Property("out_20_ap_vld", 1, hls_out, 83, "ap_vld", "out_vld", 1),
	Port_Property("out_21", 32, hls_out, 84, "ap_vld", "out_data", 1),
	Port_Property("out_21_ap_vld", 1, hls_out, 84, "ap_vld", "out_vld", 1),
	Port_Property("out_22", 32, hls_out, 85, "ap_vld", "out_data", 1),
	Port_Property("out_22_ap_vld", 1, hls_out, 85, "ap_vld", "out_vld", 1),
	Port_Property("out_23", 32, hls_out, 86, "ap_vld", "out_data", 1),
	Port_Property("out_23_ap_vld", 1, hls_out, 86, "ap_vld", "out_vld", 1),
	Port_Property("out_24", 32, hls_out, 87, "ap_vld", "out_data", 1),
	Port_Property("out_24_ap_vld", 1, hls_out, 87, "ap_vld", "out_vld", 1),
	Port_Property("out_25", 32, hls_out, 88, "ap_vld", "out_data", 1),
	Port_Property("out_25_ap_vld", 1, hls_out, 88, "ap_vld", "out_vld", 1),
	Port_Property("out_26", 32, hls_out, 89, "ap_vld", "out_data", 1),
	Port_Property("out_26_ap_vld", 1, hls_out, 89, "ap_vld", "out_vld", 1),
	Port_Property("out_27", 32, hls_out, 90, "ap_vld", "out_data", 1),
	Port_Property("out_27_ap_vld", 1, hls_out, 90, "ap_vld", "out_vld", 1),
	Port_Property("out_28", 32, hls_out, 91, "ap_vld", "out_data", 1),
	Port_Property("out_28_ap_vld", 1, hls_out, 91, "ap_vld", "out_vld", 1),
	Port_Property("out_29", 32, hls_out, 92, "ap_vld", "out_data", 1),
	Port_Property("out_29_ap_vld", 1, hls_out, 92, "ap_vld", "out_vld", 1),
	Port_Property("out_30", 32, hls_out, 93, "ap_vld", "out_data", 1),
	Port_Property("out_30_ap_vld", 1, hls_out, 93, "ap_vld", "out_vld", 1),
	Port_Property("out_31", 32, hls_out, 94, "ap_vld", "out_data", 1),
	Port_Property("out_31_ap_vld", 1, hls_out, 94, "ap_vld", "out_vld", 1),
	Port_Property("out_32", 32, hls_out, 95, "ap_vld", "out_data", 1),
	Port_Property("out_32_ap_vld", 1, hls_out, 95, "ap_vld", "out_vld", 1),
	Port_Property("out_33", 32, hls_out, 96, "ap_vld", "out_data", 1),
	Port_Property("out_33_ap_vld", 1, hls_out, 96, "ap_vld", "out_vld", 1),
	Port_Property("out_34", 32, hls_out, 97, "ap_vld", "out_data", 1),
	Port_Property("out_34_ap_vld", 1, hls_out, 97, "ap_vld", "out_vld", 1),
	Port_Property("out_35", 32, hls_out, 98, "ap_vld", "out_data", 1),
	Port_Property("out_35_ap_vld", 1, hls_out, 98, "ap_vld", "out_vld", 1),
	Port_Property("out_36", 32, hls_out, 99, "ap_vld", "out_data", 1),
	Port_Property("out_36_ap_vld", 1, hls_out, 99, "ap_vld", "out_vld", 1),
	Port_Property("out_37", 32, hls_out, 100, "ap_vld", "out_data", 1),
	Port_Property("out_37_ap_vld", 1, hls_out, 100, "ap_vld", "out_vld", 1),
	Port_Property("out_38", 32, hls_out, 101, "ap_vld", "out_data", 1),
	Port_Property("out_38_ap_vld", 1, hls_out, 101, "ap_vld", "out_vld", 1),
	Port_Property("out_39", 32, hls_out, 102, "ap_vld", "out_data", 1),
	Port_Property("out_39_ap_vld", 1, hls_out, 102, "ap_vld", "out_vld", 1),
	Port_Property("out_40", 32, hls_out, 103, "ap_vld", "out_data", 1),
	Port_Property("out_40_ap_vld", 1, hls_out, 103, "ap_vld", "out_vld", 1),
	Port_Property("out_41", 32, hls_out, 104, "ap_vld", "out_data", 1),
	Port_Property("out_41_ap_vld", 1, hls_out, 104, "ap_vld", "out_vld", 1),
	Port_Property("out_42", 32, hls_out, 105, "ap_vld", "out_data", 1),
	Port_Property("out_42_ap_vld", 1, hls_out, 105, "ap_vld", "out_vld", 1),
	Port_Property("out_43", 32, hls_out, 106, "ap_vld", "out_data", 1),
	Port_Property("out_43_ap_vld", 1, hls_out, 106, "ap_vld", "out_vld", 1),
	Port_Property("out_44", 32, hls_out, 107, "ap_vld", "out_data", 1),
	Port_Property("out_44_ap_vld", 1, hls_out, 107, "ap_vld", "out_vld", 1),
	Port_Property("out_45", 32, hls_out, 108, "ap_vld", "out_data", 1),
	Port_Property("out_45_ap_vld", 1, hls_out, 108, "ap_vld", "out_vld", 1),
	Port_Property("out_46", 32, hls_out, 109, "ap_vld", "out_data", 1),
	Port_Property("out_46_ap_vld", 1, hls_out, 109, "ap_vld", "out_vld", 1),
	Port_Property("out_47", 32, hls_out, 110, "ap_vld", "out_data", 1),
	Port_Property("out_47_ap_vld", 1, hls_out, 110, "ap_vld", "out_vld", 1),
	Port_Property("out_48", 32, hls_out, 111, "ap_vld", "out_data", 1),
	Port_Property("out_48_ap_vld", 1, hls_out, 111, "ap_vld", "out_vld", 1),
	Port_Property("out_49", 32, hls_out, 112, "ap_vld", "out_data", 1),
	Port_Property("out_49_ap_vld", 1, hls_out, 112, "ap_vld", "out_vld", 1),
	Port_Property("out_50", 32, hls_out, 113, "ap_vld", "out_data", 1),
	Port_Property("out_50_ap_vld", 1, hls_out, 113, "ap_vld", "out_vld", 1),
	Port_Property("out_51", 32, hls_out, 114, "ap_vld", "out_data", 1),
	Port_Property("out_51_ap_vld", 1, hls_out, 114, "ap_vld", "out_vld", 1),
	Port_Property("out_52", 32, hls_out, 115, "ap_vld", "out_data", 1),
	Port_Property("out_52_ap_vld", 1, hls_out, 115, "ap_vld", "out_vld", 1),
	Port_Property("out_53", 32, hls_out, 116, "ap_vld", "out_data", 1),
	Port_Property("out_53_ap_vld", 1, hls_out, 116, "ap_vld", "out_vld", 1),
	Port_Property("out_54", 32, hls_out, 117, "ap_vld", "out_data", 1),
	Port_Property("out_54_ap_vld", 1, hls_out, 117, "ap_vld", "out_vld", 1),
	Port_Property("out_55", 32, hls_out, 118, "ap_vld", "out_data", 1),
	Port_Property("out_55_ap_vld", 1, hls_out, 118, "ap_vld", "out_vld", 1),
	Port_Property("out_56", 32, hls_out, 119, "ap_vld", "out_data", 1),
	Port_Property("out_56_ap_vld", 1, hls_out, 119, "ap_vld", "out_vld", 1),
	Port_Property("out_57", 32, hls_out, 120, "ap_vld", "out_data", 1),
	Port_Property("out_57_ap_vld", 1, hls_out, 120, "ap_vld", "out_vld", 1),
	Port_Property("out_58", 32, hls_out, 121, "ap_vld", "out_data", 1),
	Port_Property("out_58_ap_vld", 1, hls_out, 121, "ap_vld", "out_vld", 1),
	Port_Property("out_59", 32, hls_out, 122, "ap_vld", "out_data", 1),
	Port_Property("out_59_ap_vld", 1, hls_out, 122, "ap_vld", "out_vld", 1),
};
const char* HLS_Design_Meta::dut_name = "lec8Ex1";
