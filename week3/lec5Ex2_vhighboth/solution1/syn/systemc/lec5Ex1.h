// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _lec5Ex1_HH_
#define _lec5Ex1_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "lec5Ex1_arr.h"

namespace ap_rtl {

struct lec5Ex1 : public sc_module {
    // Port declarations 12
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<32> > y;
    sc_out< sc_logic > y_ap_vld;
    sc_out< sc_lv<5> > c_address0;
    sc_out< sc_logic > c_ce0;
    sc_in< sc_lv<32> > c_q0;
    sc_in< sc_lv<32> > x;


    // Module declarations
    lec5Ex1(sc_module_name name);
    SC_HAS_PROCESS(lec5Ex1);

    ~lec5Ex1();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    lec5Ex1_arr* arr_U;
    sc_signal< sc_lv<4> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<5> > arr_address0;
    sc_signal< sc_logic > arr_ce0;
    sc_signal< sc_logic > arr_we0;
    sc_signal< sc_lv<32> > arr_d0;
    sc_signal< sc_lv<32> > arr_q0;
    sc_signal< sc_lv<32> > sext_ln15_fu_132_p1;
    sc_signal< sc_lv<32> > sext_ln15_reg_181;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > icmp_ln16_fu_144_p2;
    sc_signal< sc_lv<1> > icmp_ln16_reg_190;
    sc_signal< sc_lv<1> > tmp_fu_136_p3;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<6> > grp_fu_125_p2;
    sc_signal< sc_lv<6> > i_reg_209;
    sc_signal< sc_lv<32> > sum_fu_169_p2;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<32> > sum_0_reg_91;
    sc_signal< sc_lv<6> > ap_phi_mux_i_0_phi_fu_108_p4;
    sc_signal< sc_lv<6> > i_0_reg_104;
    sc_signal< sc_lv<32> > data_0_reg_116;
    sc_signal< sc_lv<64> > zext_ln20_fu_150_p1;
    sc_signal< sc_lv<64> > zext_ln20_1_fu_155_p1;
    sc_signal< sc_lv<64> > zext_ln23_fu_159_p1;
    sc_signal< sc_lv<6> > grp_fu_125_p0;
    sc_signal< sc_lv<32> > mul_ln23_fu_163_p0;
    sc_signal< sc_lv<32> > mul_ln23_fu_163_p2;
    sc_signal< sc_lv<4> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<4> ap_ST_fsm_state1;
    static const sc_lv<4> ap_ST_fsm_state2;
    static const sc_lv<4> ap_ST_fsm_state3;
    static const sc_lv<4> ap_ST_fsm_state4;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<6> ap_const_lv6_15;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<6> ap_const_lv6_3F;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<6> ap_const_lv6_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_phi_mux_i_0_phi_fu_108_p4();
    void thread_ap_ready();
    void thread_arr_address0();
    void thread_arr_ce0();
    void thread_arr_d0();
    void thread_arr_we0();
    void thread_c_address0();
    void thread_c_ce0();
    void thread_grp_fu_125_p0();
    void thread_grp_fu_125_p2();
    void thread_icmp_ln16_fu_144_p2();
    void thread_mul_ln23_fu_163_p0();
    void thread_mul_ln23_fu_163_p2();
    void thread_sext_ln15_fu_132_p1();
    void thread_sum_fu_169_p2();
    void thread_tmp_fu_136_p3();
    void thread_y();
    void thread_y_ap_vld();
    void thread_zext_ln20_1_fu_155_p1();
    void thread_zext_ln20_fu_150_p1();
    void thread_zext_ln23_fu_159_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
