// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="lec5Ex1,hls_ip_2020_1,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7k160t-fbg484-2,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.152000,HLS_SYN_LAT=67,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=3,HLS_SYN_FF=177,HLS_SYN_LUT=188,HLS_VERSION=2020_1}" *)

module lec5Ex1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        y,
        y_ap_vld,
        c_address0,
        c_ce0,
        c_q0,
        x
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
output  [31:0] y;
output   y_ap_vld;
output  [4:0] c_address0;
output   c_ce0;
input  [31:0] c_q0;
input  [31:0] x;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg y_ap_vld;
reg c_ce0;

(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [4:0] arr_address0;
reg    arr_ce0;
reg    arr_we0;
reg   [31:0] arr_d0;
wire   [31:0] arr_q0;
wire  signed [31:0] sext_ln15_fu_132_p1;
reg  signed [31:0] sext_ln15_reg_181;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln16_fu_144_p2;
reg   [0:0] icmp_ln16_reg_190;
wire   [0:0] tmp_fu_136_p3;
wire    ap_CS_fsm_state3;
wire   [5:0] grp_fu_125_p2;
reg   [5:0] i_reg_209;
wire   [31:0] sum_fu_169_p2;
wire    ap_CS_fsm_state4;
reg   [31:0] sum_0_reg_91;
wire  signed [5:0] ap_phi_mux_i_0_phi_fu_108_p4;
reg  signed [5:0] i_0_reg_104;
reg  signed [31:0] data_0_reg_116;
wire   [63:0] zext_ln20_fu_150_p1;
wire   [63:0] zext_ln20_1_fu_155_p1;
wire   [63:0] zext_ln23_fu_159_p1;
reg  signed [5:0] grp_fu_125_p0;
wire  signed [31:0] mul_ln23_fu_163_p0;
wire   [31:0] mul_ln23_fu_163_p2;
reg   [3:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 4'd1;
end

lec5Ex1_arr #(
    .DataWidth( 32 ),
    .AddressRange( 22 ),
    .AddressWidth( 5 ))
arr_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(arr_address0),
    .ce0(arr_ce0),
    .we0(arr_we0),
    .d0(arr_d0),
    .q0(arr_q0)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln16_reg_190 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        data_0_reg_116 <= arr_q0;
    end else if (((tmp_fu_136_p3 == 1'd0) & (icmp_ln16_fu_144_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        data_0_reg_116 <= x;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        i_0_reg_104 <= i_reg_209;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_0_reg_104 <= 6'd21;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sum_0_reg_91 <= sum_fu_169_p2;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        sum_0_reg_91 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        i_reg_209 <= grp_fu_125_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_fu_136_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        icmp_ln16_reg_190 <= icmp_ln16_fu_144_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        sext_ln15_reg_181 <= sext_ln15_fu_132_p1;
    end
end

always @ (*) begin
    if (((tmp_fu_136_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((tmp_fu_136_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        arr_address0 = zext_ln20_1_fu_155_p1;
    end else if (((tmp_fu_136_p3 == 1'd0) & (icmp_ln16_fu_144_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        arr_address0 = 5'd0;
    end else if (((tmp_fu_136_p3 == 1'd0) & (icmp_ln16_fu_144_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        arr_address0 = zext_ln20_fu_150_p1;
    end else begin
        arr_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | ((tmp_fu_136_p3 == 1'd0) & (icmp_ln16_fu_144_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((tmp_fu_136_p3 == 1'd0) & (icmp_ln16_fu_144_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)))) begin
        arr_ce0 = 1'b1;
    end else begin
        arr_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        arr_d0 = arr_q0;
    end else if (((tmp_fu_136_p3 == 1'd0) & (icmp_ln16_fu_144_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        arr_d0 = x;
    end else begin
        arr_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((icmp_ln16_reg_190 == 1'd0) & (1'b1 == ap_CS_fsm_state3)) | ((tmp_fu_136_p3 == 1'd0) & (icmp_ln16_fu_144_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)))) begin
        arr_we0 = 1'b1;
    end else begin
        arr_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        c_ce0 = 1'b1;
    end else begin
        c_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_125_p0 = i_0_reg_104;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_125_p0 = ap_phi_mux_i_0_phi_fu_108_p4;
    end else begin
        grp_fu_125_p0 = 'bx;
    end
end

always @ (*) begin
    if (((tmp_fu_136_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        y_ap_vld = 1'b1;
    end else begin
        y_ap_vld = 1'b0;
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
            if (((tmp_fu_136_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_phi_mux_i_0_phi_fu_108_p4 = i_0_reg_104;

assign c_address0 = zext_ln23_fu_159_p1;

assign grp_fu_125_p2 = ($signed(grp_fu_125_p0) + $signed(6'd63));

assign icmp_ln16_fu_144_p2 = ((i_0_reg_104 == 6'd0) ? 1'b1 : 1'b0);

assign mul_ln23_fu_163_p0 = c_q0;

assign mul_ln23_fu_163_p2 = ($signed(mul_ln23_fu_163_p0) * $signed(data_0_reg_116));

assign sext_ln15_fu_132_p1 = i_0_reg_104;

assign sum_fu_169_p2 = (mul_ln23_fu_163_p2 + sum_0_reg_91);

assign tmp_fu_136_p3 = i_0_reg_104[32'd5];

assign y = sum_0_reg_91;

assign zext_ln20_1_fu_155_p1 = $unsigned(sext_ln15_reg_181);

assign zext_ln20_fu_150_p1 = grp_fu_125_p2;

assign zext_ln23_fu_159_p1 = $unsigned(sext_ln15_reg_181);

endmodule //lec5Ex1
