// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="lec8Ex1,hls_ip_2020_1,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7k160t-fbg484-2,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=7.756000,HLS_SYN_LAT=31,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=7,HLS_SYN_FF=192,HLS_SYN_LUT=969,HLS_VERSION=2020_1}" *)

module lec8Ex1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        in_r_address0,
        in_r_ce0,
        in_r_q0,
        in_r_address1,
        in_r_ce1,
        in_r_q1,
        a,
        b,
        c,
        out_r_address0,
        out_r_ce0,
        out_r_we0,
        out_r_d0,
        out_r_address1,
        out_r_ce1,
        out_r_we1,
        out_r_d1
);

parameter    ap_ST_fsm_state1 = 32'd1;
parameter    ap_ST_fsm_state2 = 32'd2;
parameter    ap_ST_fsm_state3 = 32'd4;
parameter    ap_ST_fsm_state4 = 32'd8;
parameter    ap_ST_fsm_state5 = 32'd16;
parameter    ap_ST_fsm_state6 = 32'd32;
parameter    ap_ST_fsm_state7 = 32'd64;
parameter    ap_ST_fsm_state8 = 32'd128;
parameter    ap_ST_fsm_state9 = 32'd256;
parameter    ap_ST_fsm_state10 = 32'd512;
parameter    ap_ST_fsm_state11 = 32'd1024;
parameter    ap_ST_fsm_state12 = 32'd2048;
parameter    ap_ST_fsm_state13 = 32'd4096;
parameter    ap_ST_fsm_state14 = 32'd8192;
parameter    ap_ST_fsm_state15 = 32'd16384;
parameter    ap_ST_fsm_state16 = 32'd32768;
parameter    ap_ST_fsm_state17 = 32'd65536;
parameter    ap_ST_fsm_state18 = 32'd131072;
parameter    ap_ST_fsm_state19 = 32'd262144;
parameter    ap_ST_fsm_state20 = 32'd524288;
parameter    ap_ST_fsm_state21 = 32'd1048576;
parameter    ap_ST_fsm_state22 = 32'd2097152;
parameter    ap_ST_fsm_state23 = 32'd4194304;
parameter    ap_ST_fsm_state24 = 32'd8388608;
parameter    ap_ST_fsm_state25 = 32'd16777216;
parameter    ap_ST_fsm_state26 = 32'd33554432;
parameter    ap_ST_fsm_state27 = 32'd67108864;
parameter    ap_ST_fsm_state28 = 32'd134217728;
parameter    ap_ST_fsm_state29 = 32'd268435456;
parameter    ap_ST_fsm_state30 = 32'd536870912;
parameter    ap_ST_fsm_state31 = 32'd1073741824;
parameter    ap_ST_fsm_state32 = 32'd2147483648;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] in_r_address0;
output   in_r_ce0;
input  [31:0] in_r_q0;
output  [5:0] in_r_address1;
output   in_r_ce1;
input  [31:0] in_r_q1;
input  [15:0] a;
input  [15:0] b;
input  [31:0] c;
output  [5:0] out_r_address0;
output   out_r_ce0;
output   out_r_we0;
output  [31:0] out_r_d0;
output  [5:0] out_r_address1;
output   out_r_ce1;
output   out_r_we1;
output  [31:0] out_r_d1;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[5:0] in_r_address0;
reg in_r_ce0;
reg[5:0] in_r_address1;
reg in_r_ce1;
reg[5:0] out_r_address0;
reg out_r_ce0;
reg out_r_we0;
reg[5:0] out_r_address1;
reg out_r_ce1;
reg out_r_we1;

(* fsm_encoding = "none" *) reg   [31:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [31:0] grp_fu_1258_p2;
reg   [31:0] reg_1268;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state12;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state14;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state16;
wire    ap_CS_fsm_state17;
wire    ap_CS_fsm_state18;
wire    ap_CS_fsm_state19;
wire    ap_CS_fsm_state20;
wire    ap_CS_fsm_state21;
wire    ap_CS_fsm_state22;
wire    ap_CS_fsm_state23;
wire    ap_CS_fsm_state24;
wire    ap_CS_fsm_state25;
wire    ap_CS_fsm_state26;
wire    ap_CS_fsm_state27;
wire    ap_CS_fsm_state28;
wire    ap_CS_fsm_state29;
wire    ap_CS_fsm_state30;
wire    ap_CS_fsm_state31;
wire   [31:0] grp_fu_1263_p2;
reg   [31:0] reg_1272;
wire  signed [31:0] sext_ln21_fu_1288_p1;
reg  signed [31:0] sext_ln21_reg_1331;
wire   [31:0] mul_ln31_fu_1294_p2;
reg   [31:0] mul_ln31_reg_1337;
wire   [31:0] add_ln21_1_fu_1314_p2;
reg   [31:0] add_ln21_1_reg_1352;
wire    ap_CS_fsm_state32;
wire  signed [31:0] grp_fu_1258_p0;
reg  signed [15:0] grp_fu_1258_p1;
wire  signed [31:0] grp_fu_1263_p0;
reg  signed [15:0] grp_fu_1263_p1;
reg   [31:0] grp_fu_1276_p0;
reg   [31:0] grp_fu_1282_p0;
wire  signed [31:0] mul_ln31_fu_1294_p0;
wire  signed [31:0] mul_ln31_fu_1294_p1;
wire  signed [16:0] sext_ln16_fu_1300_p1;
wire   [16:0] add_ln21_fu_1304_p2;
wire  signed [31:0] sext_ln21_1_fu_1310_p1;
reg   [31:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 32'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln21_1_reg_1352 <= add_ln21_1_fu_1314_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        mul_ln31_reg_1337 <= mul_ln31_fu_1294_p2;
        sext_ln21_reg_1331 <= sext_ln21_fu_1288_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        reg_1268 <= grp_fu_1258_p2;
        reg_1272 <= grp_fu_1263_p2;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_fu_1258_p1 = sext_ln21_reg_1331;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1258_p1 = sext_ln21_fu_1288_p1;
    end else begin
        grp_fu_1258_p1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_fu_1263_p1 = sext_ln21_reg_1331;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1263_p1 = sext_ln21_fu_1288_p1;
    end else begin
        grp_fu_1263_p1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_fu_1276_p0 = add_ln21_1_reg_1352;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1276_p0 = add_ln21_1_fu_1314_p2;
    end else begin
        grp_fu_1276_p0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_fu_1282_p0 = add_ln21_1_reg_1352;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_1282_p0 = add_ln21_1_fu_1314_p2;
    end else begin
        grp_fu_1282_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        in_r_address0 = 64'd58;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        in_r_address0 = 64'd56;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        in_r_address0 = 64'd54;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        in_r_address0 = 64'd52;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        in_r_address0 = 64'd50;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        in_r_address0 = 64'd48;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        in_r_address0 = 64'd46;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        in_r_address0 = 64'd44;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        in_r_address0 = 64'd42;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        in_r_address0 = 64'd40;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        in_r_address0 = 64'd38;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        in_r_address0 = 64'd36;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        in_r_address0 = 64'd34;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        in_r_address0 = 64'd32;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        in_r_address0 = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        in_r_address0 = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        in_r_address0 = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        in_r_address0 = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        in_r_address0 = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        in_r_address0 = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        in_r_address0 = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        in_r_address0 = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        in_r_address0 = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        in_r_address0 = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        in_r_address0 = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        in_r_address0 = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        in_r_address0 = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        in_r_address0 = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        in_r_address0 = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        in_r_address0 = 64'd0;
    end else begin
        in_r_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        in_r_address1 = 64'd59;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        in_r_address1 = 64'd57;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        in_r_address1 = 64'd55;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        in_r_address1 = 64'd53;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        in_r_address1 = 64'd51;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        in_r_address1 = 64'd49;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        in_r_address1 = 64'd47;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        in_r_address1 = 64'd45;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        in_r_address1 = 64'd43;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        in_r_address1 = 64'd41;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        in_r_address1 = 64'd39;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        in_r_address1 = 64'd37;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        in_r_address1 = 64'd35;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        in_r_address1 = 64'd33;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        in_r_address1 = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        in_r_address1 = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        in_r_address1 = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        in_r_address1 = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        in_r_address1 = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        in_r_address1 = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        in_r_address1 = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        in_r_address1 = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        in_r_address1 = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        in_r_address1 = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        in_r_address1 = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        in_r_address1 = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        in_r_address1 = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        in_r_address1 = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        in_r_address1 = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        in_r_address1 = 64'd1;
    end else begin
        in_r_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        in_r_ce0 = 1'b1;
    end else begin
        in_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        in_r_ce1 = 1'b1;
    end else begin
        in_r_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        out_r_address0 = 64'd58;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        out_r_address0 = 64'd56;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        out_r_address0 = 64'd54;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        out_r_address0 = 64'd52;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        out_r_address0 = 64'd50;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        out_r_address0 = 64'd48;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        out_r_address0 = 64'd46;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        out_r_address0 = 64'd44;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        out_r_address0 = 64'd42;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        out_r_address0 = 64'd40;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        out_r_address0 = 64'd38;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        out_r_address0 = 64'd36;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        out_r_address0 = 64'd34;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        out_r_address0 = 64'd32;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        out_r_address0 = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        out_r_address0 = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        out_r_address0 = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        out_r_address0 = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        out_r_address0 = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        out_r_address0 = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        out_r_address0 = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        out_r_address0 = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        out_r_address0 = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        out_r_address0 = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        out_r_address0 = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        out_r_address0 = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        out_r_address0 = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        out_r_address0 = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        out_r_address0 = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        out_r_address0 = 64'd0;
    end else begin
        out_r_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        out_r_address1 = 64'd59;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        out_r_address1 = 64'd57;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        out_r_address1 = 64'd55;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        out_r_address1 = 64'd53;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        out_r_address1 = 64'd51;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        out_r_address1 = 64'd49;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        out_r_address1 = 64'd47;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        out_r_address1 = 64'd45;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        out_r_address1 = 64'd43;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        out_r_address1 = 64'd41;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        out_r_address1 = 64'd39;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        out_r_address1 = 64'd37;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        out_r_address1 = 64'd35;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        out_r_address1 = 64'd33;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        out_r_address1 = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        out_r_address1 = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        out_r_address1 = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        out_r_address1 = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        out_r_address1 = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        out_r_address1 = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        out_r_address1 = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        out_r_address1 = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        out_r_address1 = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        out_r_address1 = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        out_r_address1 = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        out_r_address1 = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        out_r_address1 = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        out_r_address1 = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        out_r_address1 = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        out_r_address1 = 64'd1;
    end else begin
        out_r_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        out_r_ce0 = 1'b1;
    end else begin
        out_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        out_r_ce1 = 1'b1;
    end else begin
        out_r_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        out_r_we0 = 1'b1;
    end else begin
        out_r_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        out_r_we1 = 1'b1;
    end else begin
        out_r_we1 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state22;
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            ap_NS_fsm = ap_ST_fsm_state24;
        end
        ap_ST_fsm_state24 : begin
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state25 : begin
            ap_NS_fsm = ap_ST_fsm_state26;
        end
        ap_ST_fsm_state26 : begin
            ap_NS_fsm = ap_ST_fsm_state27;
        end
        ap_ST_fsm_state27 : begin
            ap_NS_fsm = ap_ST_fsm_state28;
        end
        ap_ST_fsm_state28 : begin
            ap_NS_fsm = ap_ST_fsm_state29;
        end
        ap_ST_fsm_state29 : begin
            ap_NS_fsm = ap_ST_fsm_state30;
        end
        ap_ST_fsm_state30 : begin
            ap_NS_fsm = ap_ST_fsm_state31;
        end
        ap_ST_fsm_state31 : begin
            ap_NS_fsm = ap_ST_fsm_state32;
        end
        ap_ST_fsm_state32 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln21_1_fu_1314_p2 = ($signed(sext_ln21_1_fu_1310_p1) + $signed(mul_ln31_reg_1337));

assign add_ln21_fu_1304_p2 = ($signed(sext_ln16_fu_1300_p1) + $signed(17'd39));

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];

assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];

assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];

assign ap_CS_fsm_state18 = ap_CS_fsm[32'd17];

assign ap_CS_fsm_state19 = ap_CS_fsm[32'd18];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state20 = ap_CS_fsm[32'd19];

assign ap_CS_fsm_state21 = ap_CS_fsm[32'd20];

assign ap_CS_fsm_state22 = ap_CS_fsm[32'd21];

assign ap_CS_fsm_state23 = ap_CS_fsm[32'd22];

assign ap_CS_fsm_state24 = ap_CS_fsm[32'd23];

assign ap_CS_fsm_state25 = ap_CS_fsm[32'd24];

assign ap_CS_fsm_state26 = ap_CS_fsm[32'd25];

assign ap_CS_fsm_state27 = ap_CS_fsm[32'd26];

assign ap_CS_fsm_state28 = ap_CS_fsm[32'd27];

assign ap_CS_fsm_state29 = ap_CS_fsm[32'd28];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state30 = ap_CS_fsm[32'd29];

assign ap_CS_fsm_state31 = ap_CS_fsm[32'd30];

assign ap_CS_fsm_state32 = ap_CS_fsm[32'd31];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign grp_fu_1258_p0 = in_r_q0;

assign grp_fu_1258_p2 = ($signed(grp_fu_1258_p0) * $signed(grp_fu_1258_p1));

assign grp_fu_1263_p0 = in_r_q1;

assign grp_fu_1263_p2 = ($signed(grp_fu_1263_p0) * $signed(grp_fu_1263_p1));

assign mul_ln31_fu_1294_p0 = c;

assign mul_ln31_fu_1294_p1 = c;

assign mul_ln31_fu_1294_p2 = ($signed(mul_ln31_fu_1294_p0) * $signed(mul_ln31_fu_1294_p1));

assign out_r_d0 = (grp_fu_1276_p0 + reg_1268);

assign out_r_d1 = (grp_fu_1282_p0 + reg_1272);

assign sext_ln16_fu_1300_p1 = $signed(b);

assign sext_ln21_1_fu_1310_p1 = $signed(add_ln21_fu_1304_p2);

assign sext_ln21_fu_1288_p1 = $signed(a);

endmodule //lec8Ex1