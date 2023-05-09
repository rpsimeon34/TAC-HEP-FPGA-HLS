// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _lec8Ex1_HH_
#define _lec8Ex1_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct lec8Ex1 : public sc_module {
    // Port declarations 16
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<6> > in_r_address0;
    sc_out< sc_logic > in_r_ce0;
    sc_in< sc_lv<32> > in_r_q0;
    sc_in< sc_lv<16> > a;
    sc_in< sc_lv<16> > b;
    sc_in< sc_lv<32> > c;
    sc_out< sc_lv<6> > out_r_address0;
    sc_out< sc_logic > out_r_ce0;
    sc_out< sc_logic > out_r_we0;
    sc_out< sc_lv<32> > out_r_d0;


    // Module declarations
    lec8Ex1(sc_module_name name);
    SC_HAS_PROCESS(lec8Ex1);

    ~lec8Ex1();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    sc_signal< sc_lv<6> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<32> > sext_ln22_fu_105_p1;
    sc_signal< sc_lv<32> > sext_ln22_reg_161;
    sc_signal< sc_lv<32> > res_fu_113_p2;
    sc_signal< sc_lv<32> > res_reg_166;
    sc_signal< sc_lv<32> > sext_ln22_1_fu_125_p1;
    sc_signal< sc_lv<32> > sext_ln22_1_reg_171;
    sc_signal< sc_lv<6> > i_fu_135_p2;
    sc_signal< sc_lv<6> > i_reg_179;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<64> > zext_ln17_fu_141_p1;
    sc_signal< sc_lv<64> > zext_ln17_reg_184;
    sc_signal< sc_lv<1> > icmp_ln14_fu_129_p2;
    sc_signal< sc_lv<32> > mul_ln22_fu_146_p2;
    sc_signal< sc_lv<32> > mul_ln22_reg_194;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<6> > i_0_reg_94;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<32> > res_fu_113_p0;
    sc_signal< sc_lv<32> > res_fu_113_p1;
    sc_signal< sc_lv<17> > sext_ln31_fu_109_p1;
    sc_signal< sc_lv<17> > add_ln22_1_fu_119_p2;
    sc_signal< sc_lv<32> > mul_ln22_fu_146_p0;
    sc_signal< sc_lv<16> > mul_ln22_fu_146_p1;
    sc_signal< sc_lv<32> > add_ln22_fu_151_p2;
    sc_signal< sc_lv<6> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<6> ap_ST_fsm_state1;
    static const sc_lv<6> ap_ST_fsm_state2;
    static const sc_lv<6> ap_ST_fsm_state3;
    static const sc_lv<6> ap_ST_fsm_state4;
    static const sc_lv<6> ap_ST_fsm_state5;
    static const sc_lv<6> ap_ST_fsm_state6;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<17> ap_const_lv17_27;
    static const sc_lv<6> ap_const_lv6_3C;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<1> ap_const_lv1_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln22_1_fu_119_p2();
    void thread_add_ln22_fu_151_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state6();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_i_fu_135_p2();
    void thread_icmp_ln14_fu_129_p2();
    void thread_in_r_address0();
    void thread_in_r_ce0();
    void thread_mul_ln22_fu_146_p0();
    void thread_mul_ln22_fu_146_p1();
    void thread_mul_ln22_fu_146_p2();
    void thread_out_r_address0();
    void thread_out_r_ce0();
    void thread_out_r_d0();
    void thread_out_r_we0();
    void thread_res_fu_113_p0();
    void thread_res_fu_113_p1();
    void thread_res_fu_113_p2();
    void thread_sext_ln22_1_fu_125_p1();
    void thread_sext_ln22_fu_105_p1();
    void thread_sext_ln31_fu_109_p1();
    void thread_zext_ln17_fu_141_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
