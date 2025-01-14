// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="hw4,hls_ip_2020_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7k160t-fbg484-2,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.644000,HLS_SYN_LAT=13,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=3,HLS_SYN_FF=42,HLS_SYN_LUT=172,HLS_VERSION=2020_1}" *)

module hw4 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        in_A_address0,
        in_A_ce0,
        in_A_q0,
        in_B_0_address0,
        in_B_0_ce0,
        in_B_0_q0,
        in_B_1_address0,
        in_B_1_ce0,
        in_B_1_q0,
        out_r,
        out_r_ap_vld
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [2:0] in_A_address0;
output   in_A_ce0;
input  [31:0] in_A_q0;
output  [1:0] in_B_0_address0;
output   in_B_0_ce0;
input  [31:0] in_B_0_q0;
output  [1:0] in_B_1_address0;
output   in_B_1_ce0;
input  [31:0] in_B_1_q0;
output  [31:0] out_r;
output   out_r_ap_vld;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg in_A_ce0;
reg in_B_0_ce0;
reg in_B_1_ce0;
reg out_r_ap_vld;

(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [2:0] j_fu_156_p2;
reg   [2:0] j_reg_210;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln13_fu_150_p2;
wire   [0:0] icmp_ln15_fu_167_p2;
reg   [0:0] icmp_ln15_reg_220;
wire   [31:0] sum_fu_201_p2;
wire    ap_CS_fsm_state3;
reg   [31:0] sum_0_reg_108;
reg   [2:0] j_0_reg_121;
wire   [63:0] zext_ln15_fu_162_p1;
wire   [63:0] zext_ln15_1_fu_187_p1;
wire  signed [31:0] select_ln15_fu_193_p3;
wire  signed [31:0] mul_ln15_fu_132_p1;
wire   [2:0] add_ln15_fu_173_p2;
wire   [2:0] select_ln15_1_fu_179_p3;
wire   [31:0] mul_ln15_fu_132_p2;
reg   [2:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
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
        j_0_reg_121 <= j_reg_210;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        j_0_reg_121 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        sum_0_reg_108 <= sum_fu_201_p2;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        sum_0_reg_108 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln13_fu_150_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        icmp_ln15_reg_220 <= icmp_ln15_fu_167_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        j_reg_210 <= j_fu_156_p2;
    end
end

always @ (*) begin
    if (((icmp_ln13_fu_150_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((icmp_ln13_fu_150_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        in_A_ce0 = 1'b1;
    end else begin
        in_A_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        in_B_0_ce0 = 1'b1;
    end else begin
        in_B_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        in_B_1_ce0 = 1'b1;
    end else begin
        in_B_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln13_fu_150_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        out_r_ap_vld = 1'b1;
    end else begin
        out_r_ap_vld = 1'b0;
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
            if (((icmp_ln13_fu_150_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln15_fu_173_p2 = ($signed(j_0_reg_121) + $signed(3'd5));

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign icmp_ln13_fu_150_p2 = ((j_0_reg_121 == 3'd6) ? 1'b1 : 1'b0);

assign icmp_ln15_fu_167_p2 = ((j_0_reg_121 < 3'd3) ? 1'b1 : 1'b0);

assign in_A_address0 = zext_ln15_fu_162_p1;

assign in_B_0_address0 = zext_ln15_1_fu_187_p1;

assign in_B_1_address0 = zext_ln15_1_fu_187_p1;

assign j_fu_156_p2 = (j_0_reg_121 + 3'd1);

assign mul_ln15_fu_132_p1 = in_A_q0;

assign mul_ln15_fu_132_p2 = ($signed(select_ln15_fu_193_p3) * $signed(mul_ln15_fu_132_p1));

assign out_r = sum_0_reg_108;

assign select_ln15_1_fu_179_p3 = ((icmp_ln15_fu_167_p2[0:0] === 1'b1) ? j_0_reg_121 : add_ln15_fu_173_p2);

assign select_ln15_fu_193_p3 = ((icmp_ln15_reg_220[0:0] === 1'b1) ? in_B_0_q0 : in_B_1_q0);

assign sum_fu_201_p2 = (sum_0_reg_108 + mul_ln15_fu_132_p2);

assign zext_ln15_1_fu_187_p1 = select_ln15_1_fu_179_p3;

assign zext_ln15_fu_162_p1 = j_0_reg_121;

endmodule //hw4
