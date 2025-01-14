// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _hw4_HH_
#define _hw4_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct hw4 : public sc_module {
    // Port declarations 14
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<3> > in_A_address0;
    sc_out< sc_logic > in_A_ce0;
    sc_in< sc_lv<32> > in_A_q0;
    sc_out< sc_lv<3> > in_B_address0;
    sc_out< sc_logic > in_B_ce0;
    sc_in< sc_lv<32> > in_B_q0;
    sc_out< sc_lv<32> > out_r;
    sc_out< sc_logic > out_r_ap_vld;


    // Module declarations
    hw4(sc_module_name name);
    SC_HAS_PROCESS(hw4);

    ~hw4();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<3> > j_fu_95_p2;
    sc_signal< sc_lv<3> > j_reg_122;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > icmp_ln11_fu_89_p2;
    sc_signal< sc_lv<32> > sum_fu_113_p2;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<32> > sum_0_reg_65;
    sc_signal< sc_lv<3> > j_0_reg_78;
    sc_signal< sc_lv<64> > zext_ln12_fu_101_p1;
    sc_signal< sc_lv<32> > mul_ln12_fu_107_p0;
    sc_signal< sc_lv<32> > mul_ln12_fu_107_p1;
    sc_signal< sc_lv<32> > mul_ln12_fu_107_p2;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_fsm_state1;
    static const sc_lv<3> ap_ST_fsm_state2;
    static const sc_lv<3> ap_ST_fsm_state3;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<3> ap_const_lv3_6;
    static const sc_lv<3> ap_const_lv3_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_icmp_ln11_fu_89_p2();
    void thread_in_A_address0();
    void thread_in_A_ce0();
    void thread_in_B_address0();
    void thread_in_B_ce0();
    void thread_j_fu_95_p2();
    void thread_mul_ln12_fu_107_p0();
    void thread_mul_ln12_fu_107_p1();
    void thread_mul_ln12_fu_107_p2();
    void thread_out_r();
    void thread_out_r_ap_vld();
    void thread_sum_fu_113_p2();
    void thread_zext_ln12_fu_101_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
