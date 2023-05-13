// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _ex3_HH_
#define _ex3_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "ex3_sdiv_32s_32nsbkb.h"

namespace ap_rtl {

struct ex3 : public sc_module {
    // Port declarations 10
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<32> > a;
    sc_in< sc_lv<32> > b;
    sc_out< sc_lv<32> > c;
    sc_out< sc_logic > c_ap_vld;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    ex3(sc_module_name name);
    SC_HAS_PROCESS(ex3);

    ~ex3();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    ex3_sdiv_32s_32nsbkb<1,36,32,32,32>* ex3_sdiv_32s_32nsbkb_U1;
    sc_signal< sc_lv<37> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<32> > grp_fu_35_p2;
    sc_signal< sc_lv<32> > x_reg_69;
    sc_signal< sc_logic > ap_CS_fsm_state36;
    sc_signal< sc_logic > ap_CS_fsm_state37;
    sc_signal< sc_lv<32> > y_fu_41_p1;
    sc_signal< sc_lv<32> > z_fu_45_p1;
    sc_signal< sc_lv<32> > z_fu_45_p2;
    sc_signal< sc_lv<32> > y_fu_41_p2;
    sc_signal< sc_logic > grp_fu_35_ap_start;
    sc_signal< sc_logic > grp_fu_35_ap_done;
    sc_signal< sc_lv<37> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<37> ap_ST_fsm_state1;
    static const sc_lv<37> ap_ST_fsm_state2;
    static const sc_lv<37> ap_ST_fsm_state3;
    static const sc_lv<37> ap_ST_fsm_state4;
    static const sc_lv<37> ap_ST_fsm_state5;
    static const sc_lv<37> ap_ST_fsm_state6;
    static const sc_lv<37> ap_ST_fsm_state7;
    static const sc_lv<37> ap_ST_fsm_state8;
    static const sc_lv<37> ap_ST_fsm_state9;
    static const sc_lv<37> ap_ST_fsm_state10;
    static const sc_lv<37> ap_ST_fsm_state11;
    static const sc_lv<37> ap_ST_fsm_state12;
    static const sc_lv<37> ap_ST_fsm_state13;
    static const sc_lv<37> ap_ST_fsm_state14;
    static const sc_lv<37> ap_ST_fsm_state15;
    static const sc_lv<37> ap_ST_fsm_state16;
    static const sc_lv<37> ap_ST_fsm_state17;
    static const sc_lv<37> ap_ST_fsm_state18;
    static const sc_lv<37> ap_ST_fsm_state19;
    static const sc_lv<37> ap_ST_fsm_state20;
    static const sc_lv<37> ap_ST_fsm_state21;
    static const sc_lv<37> ap_ST_fsm_state22;
    static const sc_lv<37> ap_ST_fsm_state23;
    static const sc_lv<37> ap_ST_fsm_state24;
    static const sc_lv<37> ap_ST_fsm_state25;
    static const sc_lv<37> ap_ST_fsm_state26;
    static const sc_lv<37> ap_ST_fsm_state27;
    static const sc_lv<37> ap_ST_fsm_state28;
    static const sc_lv<37> ap_ST_fsm_state29;
    static const sc_lv<37> ap_ST_fsm_state30;
    static const sc_lv<37> ap_ST_fsm_state31;
    static const sc_lv<37> ap_ST_fsm_state32;
    static const sc_lv<37> ap_ST_fsm_state33;
    static const sc_lv<37> ap_ST_fsm_state34;
    static const sc_lv<37> ap_ST_fsm_state35;
    static const sc_lv<37> ap_ST_fsm_state36;
    static const sc_lv<37> ap_ST_fsm_state37;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_23;
    static const sc_lv<32> ap_const_lv32_24;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state36();
    void thread_ap_CS_fsm_state37();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_c();
    void thread_c_ap_vld();
    void thread_grp_fu_35_ap_start();
    void thread_y_fu_41_p1();
    void thread_y_fu_41_p2();
    void thread_z_fu_45_p1();
    void thread_z_fu_45_p2();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif