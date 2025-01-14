// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _ex2_HH_
#define _ex2_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct ex2 : public sc_module {
    // Port declarations 16
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<6> > A_address0;
    sc_out< sc_logic > A_ce0;
    sc_in< sc_lv<5> > A_q0;
    sc_out< sc_lv<3> > B_address0;
    sc_out< sc_logic > B_ce0;
    sc_in< sc_lv<5> > B_q0;
    sc_out< sc_lv<3> > C_address0;
    sc_out< sc_logic > C_ce0;
    sc_out< sc_logic > C_we0;
    sc_out< sc_lv<6> > C_d0;


    // Module declarations
    ex2(sc_module_name name);
    SC_HAS_PROCESS(ex2);

    ~ex2();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<6> > add_ln8_fu_135_p2;
    sc_signal< sc_lv<6> > add_ln8_reg_290;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<3> > select_ln11_fu_153_p3;
    sc_signal< sc_lv<3> > select_ln11_reg_295;
    sc_signal< sc_lv<1> > icmp_ln8_fu_129_p2;
    sc_signal< sc_lv<3> > select_ln11_1_fu_161_p3;
    sc_signal< sc_lv<3> > select_ln11_1_reg_301;
    sc_signal< sc_lv<3> > j_fu_275_p2;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<6> > indvar_flatten_reg_91;
    sc_signal< sc_lv<3> > i_0_reg_102;
    sc_signal< sc_lv<3> > j_0_reg_113;
    sc_signal< sc_lv<64> > sext_ln11_3_fu_214_p1;
    sc_signal< sc_lv<64> > zext_ln11_1_fu_199_p1;
    sc_signal< sc_lv<64> > zext_ln11_fu_222_p1;
    sc_signal< sc_lv<1> > icmp_ln12_fu_258_p2;
    sc_signal< sc_lv<12> > acc_1_fu_48;
    sc_signal< sc_lv<12> > acc_fu_252_p2;
    sc_signal< sc_lv<1> > icmp_ln9_fu_147_p2;
    sc_signal< sc_lv<3> > i_fu_141_p2;
    sc_signal< sc_lv<6> > tmp_fu_169_p3;
    sc_signal< sc_lv<4> > tmp_1_fu_181_p3;
    sc_signal< sc_lv<7> > zext_ln11_2_fu_177_p1;
    sc_signal< sc_lv<7> > zext_ln11_3_fu_189_p1;
    sc_signal< sc_lv<7> > zext_ln11_4_fu_204_p1;
    sc_signal< sc_lv<7> > sub_ln11_fu_193_p2;
    sc_signal< sc_lv<7> > add_ln11_fu_208_p2;
    sc_signal< sc_lv<5> > mul_ln11_fu_234_p0;
    sc_signal< sc_lv<5> > mul_ln11_fu_234_p1;
    sc_signal< sc_lv<10> > mul_ln11_fu_234_p2;
    sc_signal< sc_lv<12> > sext_ln11_2_fu_240_p1;
    sc_signal< sc_lv<6> > trunc_ln11_1_fu_248_p1;
    sc_signal< sc_lv<6> > trunc_ln11_fu_244_p1;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_fsm_state1;
    static const sc_lv<3> ap_ST_fsm_state2;
    static const sc_lv<3> ap_ST_fsm_state3;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<12> ap_const_lv12_0;
    static const sc_lv<6> ap_const_lv6_24;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<3> ap_const_lv3_6;
    static const sc_lv<3> ap_const_lv3_5;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_A_address0();
    void thread_A_ce0();
    void thread_B_address0();
    void thread_B_ce0();
    void thread_C_address0();
    void thread_C_ce0();
    void thread_C_d0();
    void thread_C_we0();
    void thread_acc_fu_252_p2();
    void thread_add_ln11_fu_208_p2();
    void thread_add_ln8_fu_135_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_i_fu_141_p2();
    void thread_icmp_ln12_fu_258_p2();
    void thread_icmp_ln8_fu_129_p2();
    void thread_icmp_ln9_fu_147_p2();
    void thread_j_fu_275_p2();
    void thread_mul_ln11_fu_234_p0();
    void thread_mul_ln11_fu_234_p1();
    void thread_mul_ln11_fu_234_p2();
    void thread_select_ln11_1_fu_161_p3();
    void thread_select_ln11_fu_153_p3();
    void thread_sext_ln11_2_fu_240_p1();
    void thread_sext_ln11_3_fu_214_p1();
    void thread_sub_ln11_fu_193_p2();
    void thread_tmp_1_fu_181_p3();
    void thread_tmp_fu_169_p3();
    void thread_trunc_ln11_1_fu_248_p1();
    void thread_trunc_ln11_fu_244_p1();
    void thread_zext_ln11_1_fu_199_p1();
    void thread_zext_ln11_2_fu_177_p1();
    void thread_zext_ln11_3_fu_189_p1();
    void thread_zext_ln11_4_fu_204_p1();
    void thread_zext_ln11_fu_222_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
