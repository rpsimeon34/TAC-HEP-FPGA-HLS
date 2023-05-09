// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="lec8Ex1,hls_ip_2020_1,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7k160t-fbg484-2,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=7.130000,HLS_SYN_LAT=181,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=5,HLS_SYN_FF=182,HLS_SYN_LUT=288,HLS_VERSION=2020_1}" *)

module lec8Ex1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        in_0_address0,
        in_0_ce0,
        in_0_q0,
        in_1_address0,
        in_1_ce0,
        in_1_q0,
        a,
        b,
        c,
        out_0_address0,
        out_0_ce0,
        out_0_we0,
        out_0_d0,
        out_1_address0,
        out_1_ce0,
        out_1_we0,
        out_1_d0,
        out_2_address0,
        out_2_ce0,
        out_2_we0,
        out_2_d0
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] in_0_address0;
output   in_0_ce0;
input  [31:0] in_0_q0;
output  [4:0] in_1_address0;
output   in_1_ce0;
input  [31:0] in_1_q0;
input  [15:0] a;
input  [15:0] b;
input  [31:0] c;
output  [4:0] out_0_address0;
output   out_0_ce0;
output   out_0_we0;
output  [31:0] out_0_d0;
output  [4:0] out_1_address0;
output   out_1_ce0;
output   out_1_we0;
output  [31:0] out_1_d0;
output  [4:0] out_2_address0;
output   out_2_ce0;
output   out_2_we0;
output  [31:0] out_2_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg in_0_ce0;
reg in_1_ce0;
reg out_0_ce0;
reg out_0_we0;
reg out_1_ce0;
reg out_1_we0;
reg out_2_ce0;
reg out_2_we0;

(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire  signed [31:0] sext_ln24_fu_183_p1;
reg  signed [31:0] sext_ln24_reg_309;
wire   [31:0] res_fu_191_p2;
reg   [31:0] res_reg_314;
wire  signed [31:0] sext_ln24_1_fu_203_p1;
reg  signed [31:0] sext_ln24_1_reg_319;
wire   [5:0] i_fu_213_p2;
reg   [5:0] i_reg_327;
wire    ap_CS_fsm_state2;
wire   [0:0] trunc_ln19_fu_219_p1;
reg   [0:0] trunc_ln19_reg_332;
wire   [0:0] icmp_ln17_fu_207_p2;
wire   [12:0] add_ln26_fu_239_p2;
reg   [12:0] add_ln26_reg_347;
reg   [4:0] tmp_reg_352;
wire   [31:0] mul_ln24_fu_262_p2;
reg   [31:0] mul_ln24_reg_357;
wire    ap_CS_fsm_state3;
wire   [5:0] select_ln17_fu_301_p3;
wire    ap_CS_fsm_state4;
reg   [5:0] i_0_reg_149;
reg   [12:0] phi_mul_reg_160;
reg   [5:0] phi_urem_reg_171;
wire   [63:0] zext_ln19_fu_233_p1;
wire   [63:0] zext_ln26_fu_283_p1;
wire   [2:0] trunc_ln26_fu_279_p1;
wire   [31:0] y_fu_271_p2;
wire  signed [31:0] res_fu_191_p0;
wire  signed [31:0] res_fu_191_p1;
wire  signed [16:0] sext_ln34_fu_187_p1;
wire   [16:0] add_ln24_1_fu_197_p2;
wire   [4:0] lshr_ln_fu_223_p4;
wire  signed [31:0] x_fu_255_p3;
wire  signed [15:0] mul_ln24_fu_262_p1;
wire   [31:0] add_ln24_fu_267_p2;
wire   [5:0] add_ln17_1_fu_289_p2;
wire   [0:0] icmp_ln17_1_fu_295_p2;
reg   [3:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 4'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        i_0_reg_149 <= i_reg_327;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_0_reg_149 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        phi_mul_reg_160 <= add_ln26_reg_347;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        phi_mul_reg_160 <= 13'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        phi_urem_reg_171 <= select_ln17_fu_301_p3;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        phi_urem_reg_171 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln17_fu_207_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        add_ln26_reg_347 <= add_ln26_fu_239_p2;
        tmp_reg_352 <= {{phi_mul_reg_160[12:8]}};
        trunc_ln19_reg_332 <= trunc_ln19_fu_219_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_reg_327 <= i_fu_213_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        mul_ln24_reg_357 <= mul_ln24_fu_262_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        res_reg_314 <= res_fu_191_p2;
        sext_ln24_1_reg_319 <= sext_ln24_1_fu_203_p1;
        sext_ln24_reg_309 <= sext_ln24_fu_183_p1;
    end
end

always @ (*) begin
    if (((icmp_ln17_fu_207_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((icmp_ln17_fu_207_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        in_0_ce0 = 1'b1;
    end else begin
        in_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        in_1_ce0 = 1'b1;
    end else begin
        in_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        out_0_ce0 = 1'b1;
    end else begin
        out_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) & (trunc_ln26_fu_279_p1 == 3'd0))) begin
        out_0_we0 = 1'b1;
    end else begin
        out_0_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        out_1_ce0 = 1'b1;
    end else begin
        out_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) & (trunc_ln26_fu_279_p1 == 3'd1))) begin
        out_1_we0 = 1'b1;
    end else begin
        out_1_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        out_2_ce0 = 1'b1;
    end else begin
        out_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~(trunc_ln26_fu_279_p1 == 3'd0) & ~(trunc_ln26_fu_279_p1 == 3'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        out_2_we0 = 1'b1;
    end else begin
        out_2_we0 = 1'b0;
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
            if (((icmp_ln17_fu_207_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln17_1_fu_289_p2 = (phi_urem_reg_171 + 6'd1);

assign add_ln24_1_fu_197_p2 = ($signed(sext_ln34_fu_187_p1) + $signed(17'd39));

assign add_ln24_fu_267_p2 = (res_reg_314 + mul_ln24_reg_357);

assign add_ln26_fu_239_p2 = (13'd86 + phi_mul_reg_160);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign i_fu_213_p2 = (i_0_reg_149 + 6'd1);

assign icmp_ln17_1_fu_295_p2 = ((add_ln17_1_fu_289_p2 < 6'd3) ? 1'b1 : 1'b0);

assign icmp_ln17_fu_207_p2 = ((i_0_reg_149 == 6'd60) ? 1'b1 : 1'b0);

assign in_0_address0 = zext_ln19_fu_233_p1;

assign in_1_address0 = zext_ln19_fu_233_p1;

assign lshr_ln_fu_223_p4 = {{i_0_reg_149[5:1]}};

assign mul_ln24_fu_262_p1 = sext_ln24_reg_309;

assign mul_ln24_fu_262_p2 = ($signed(x_fu_255_p3) * $signed(mul_ln24_fu_262_p1));

assign out_0_address0 = zext_ln26_fu_283_p1;

assign out_0_d0 = y_fu_271_p2;

assign out_1_address0 = zext_ln26_fu_283_p1;

assign out_1_d0 = y_fu_271_p2;

assign out_2_address0 = zext_ln26_fu_283_p1;

assign out_2_d0 = y_fu_271_p2;

assign res_fu_191_p0 = c;

assign res_fu_191_p1 = c;

assign res_fu_191_p2 = ($signed(res_fu_191_p0) * $signed(res_fu_191_p1));

assign select_ln17_fu_301_p3 = ((icmp_ln17_1_fu_295_p2[0:0] === 1'b1) ? add_ln17_1_fu_289_p2 : 6'd0);

assign sext_ln24_1_fu_203_p1 = $signed(add_ln24_1_fu_197_p2);

assign sext_ln24_fu_183_p1 = $signed(a);

assign sext_ln34_fu_187_p1 = $signed(b);

assign trunc_ln19_fu_219_p1 = i_0_reg_149[0:0];

assign trunc_ln26_fu_279_p1 = phi_urem_reg_171[2:0];

assign x_fu_255_p3 = ((trunc_ln19_reg_332[0:0] === 1'b1) ? in_1_q0 : in_0_q0);

assign y_fu_271_p2 = ($signed(sext_ln24_1_reg_319) + $signed(add_ln24_fu_267_p2));

assign zext_ln19_fu_233_p1 = lshr_ln_fu_223_p4;

assign zext_ln26_fu_283_p1 = tmp_reg_352;

endmodule //lec8Ex1
