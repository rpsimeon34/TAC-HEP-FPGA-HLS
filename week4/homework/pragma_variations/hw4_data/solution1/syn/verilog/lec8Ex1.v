// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="lec8Ex1,hls_ip_2020_1,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7k160t-fbg484-2,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=7.756000,HLS_SYN_LAT=63,HLS_SYN_TPT=64,HLS_SYN_MEM=0,HLS_SYN_DSP=5,HLS_SYN_FF=155,HLS_SYN_LUT=215,HLS_VERSION=2020_1}" *)

module lec8Ex1 (
        in_r_address0,
        in_r_ce0,
        in_r_d0,
        in_r_q0,
        in_r_we0,
        in_r_address1,
        in_r_ce1,
        in_r_d1,
        in_r_q1,
        in_r_we1,
        a,
        b,
        c,
        out_r_address0,
        out_r_ce0,
        out_r_d0,
        out_r_q0,
        out_r_we0,
        out_r_address1,
        out_r_ce1,
        out_r_d1,
        out_r_q1,
        out_r_we1,
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_ready,
        ap_idle
);


output  [5:0] in_r_address0;
output   in_r_ce0;
output  [31:0] in_r_d0;
input  [31:0] in_r_q0;
output   in_r_we0;
output  [5:0] in_r_address1;
output   in_r_ce1;
output  [31:0] in_r_d1;
input  [31:0] in_r_q1;
output   in_r_we1;
input  [15:0] a;
input  [15:0] b;
input  [31:0] c;
output  [5:0] out_r_address0;
output   out_r_ce0;
output  [31:0] out_r_d0;
input  [31:0] out_r_q0;
output   out_r_we0;
output  [5:0] out_r_address1;
output   out_r_ce1;
output  [31:0] out_r_d1;
input  [31:0] out_r_q1;
output   out_r_we1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;

wire    Loop_for_Loop_proc_U0_ap_start;
wire    Loop_for_Loop_proc_U0_ap_done;
wire    Loop_for_Loop_proc_U0_ap_continue;
wire    Loop_for_Loop_proc_U0_ap_idle;
wire    Loop_for_Loop_proc_U0_ap_ready;
wire   [5:0] Loop_for_Loop_proc_U0_in_r_address0;
wire    Loop_for_Loop_proc_U0_in_r_ce0;
wire   [5:0] Loop_for_Loop_proc_U0_out_r_address0;
wire    Loop_for_Loop_proc_U0_out_r_ce0;
wire    Loop_for_Loop_proc_U0_out_r_we0;
wire   [31:0] Loop_for_Loop_proc_U0_out_r_d0;
wire    ap_sync_continue;
wire    ap_sync_done;
wire    ap_sync_ready;
wire    Loop_for_Loop_proc_U0_start_full_n;
wire    Loop_for_Loop_proc_U0_start_write;

Loop_for_Loop_proc Loop_for_Loop_proc_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(Loop_for_Loop_proc_U0_ap_start),
    .ap_done(Loop_for_Loop_proc_U0_ap_done),
    .ap_continue(Loop_for_Loop_proc_U0_ap_continue),
    .ap_idle(Loop_for_Loop_proc_U0_ap_idle),
    .ap_ready(Loop_for_Loop_proc_U0_ap_ready),
    .a(a),
    .b(b),
    .in_r_address0(Loop_for_Loop_proc_U0_in_r_address0),
    .in_r_ce0(Loop_for_Loop_proc_U0_in_r_ce0),
    .in_r_q0(in_r_q0),
    .c(c),
    .out_r_address0(Loop_for_Loop_proc_U0_out_r_address0),
    .out_r_ce0(Loop_for_Loop_proc_U0_out_r_ce0),
    .out_r_we0(Loop_for_Loop_proc_U0_out_r_we0),
    .out_r_d0(Loop_for_Loop_proc_U0_out_r_d0)
);

assign Loop_for_Loop_proc_U0_ap_continue = 1'b1;

assign Loop_for_Loop_proc_U0_ap_start = ap_start;

assign Loop_for_Loop_proc_U0_start_full_n = 1'b1;

assign Loop_for_Loop_proc_U0_start_write = 1'b0;

assign ap_done = Loop_for_Loop_proc_U0_ap_done;

assign ap_idle = Loop_for_Loop_proc_U0_ap_idle;

assign ap_ready = Loop_for_Loop_proc_U0_ap_ready;

assign ap_sync_continue = 1'b1;

assign ap_sync_done = Loop_for_Loop_proc_U0_ap_done;

assign ap_sync_ready = Loop_for_Loop_proc_U0_ap_ready;

assign in_r_address0 = Loop_for_Loop_proc_U0_in_r_address0;

assign in_r_address1 = 6'd0;

assign in_r_ce0 = Loop_for_Loop_proc_U0_in_r_ce0;

assign in_r_ce1 = 1'b0;

assign in_r_d0 = 32'd0;

assign in_r_d1 = 32'd0;

assign in_r_we0 = 1'b0;

assign in_r_we1 = 1'b0;

assign out_r_address0 = Loop_for_Loop_proc_U0_out_r_address0;

assign out_r_address1 = 6'd0;

assign out_r_ce0 = Loop_for_Loop_proc_U0_out_r_ce0;

assign out_r_ce1 = 1'b0;

assign out_r_d0 = Loop_for_Loop_proc_U0_out_r_d0;

assign out_r_d1 = 32'd0;

assign out_r_we0 = Loop_for_Loop_proc_U0_out_r_we0;

assign out_r_we1 = 1'b0;

endmodule //lec8Ex1
