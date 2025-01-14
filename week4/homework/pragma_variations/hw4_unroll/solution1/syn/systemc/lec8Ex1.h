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
    // Port declarations 23
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<6> > in_r_address0;
    sc_out< sc_logic > in_r_ce0;
    sc_in< sc_lv<32> > in_r_q0;
    sc_out< sc_lv<6> > in_r_address1;
    sc_out< sc_logic > in_r_ce1;
    sc_in< sc_lv<32> > in_r_q1;
    sc_in< sc_lv<16> > a;
    sc_in< sc_lv<16> > b;
    sc_in< sc_lv<32> > c;
    sc_out< sc_lv<6> > out_r_address0;
    sc_out< sc_logic > out_r_ce0;
    sc_out< sc_logic > out_r_we0;
    sc_out< sc_lv<32> > out_r_d0;
    sc_out< sc_lv<6> > out_r_address1;
    sc_out< sc_logic > out_r_ce1;
    sc_out< sc_logic > out_r_we1;
    sc_out< sc_lv<32> > out_r_d1;


    // Module declarations
    lec8Ex1(sc_module_name name);
    SC_HAS_PROCESS(lec8Ex1);

    ~lec8Ex1();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    sc_signal< sc_lv<32> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<32> > grp_fu_1258_p2;
    sc_signal< sc_lv<32> > reg_1268;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_logic > ap_CS_fsm_state16;
    sc_signal< sc_logic > ap_CS_fsm_state17;
    sc_signal< sc_logic > ap_CS_fsm_state18;
    sc_signal< sc_logic > ap_CS_fsm_state19;
    sc_signal< sc_logic > ap_CS_fsm_state20;
    sc_signal< sc_logic > ap_CS_fsm_state21;
    sc_signal< sc_logic > ap_CS_fsm_state22;
    sc_signal< sc_logic > ap_CS_fsm_state23;
    sc_signal< sc_logic > ap_CS_fsm_state24;
    sc_signal< sc_logic > ap_CS_fsm_state25;
    sc_signal< sc_logic > ap_CS_fsm_state26;
    sc_signal< sc_logic > ap_CS_fsm_state27;
    sc_signal< sc_logic > ap_CS_fsm_state28;
    sc_signal< sc_logic > ap_CS_fsm_state29;
    sc_signal< sc_logic > ap_CS_fsm_state30;
    sc_signal< sc_logic > ap_CS_fsm_state31;
    sc_signal< sc_lv<32> > grp_fu_1263_p2;
    sc_signal< sc_lv<32> > reg_1272;
    sc_signal< sc_lv<32> > sext_ln21_fu_1288_p1;
    sc_signal< sc_lv<32> > sext_ln21_reg_1331;
    sc_signal< sc_lv<32> > mul_ln31_fu_1294_p2;
    sc_signal< sc_lv<32> > mul_ln31_reg_1337;
    sc_signal< sc_lv<32> > add_ln21_1_fu_1314_p2;
    sc_signal< sc_lv<32> > add_ln21_1_reg_1352;
    sc_signal< sc_logic > ap_CS_fsm_state32;
    sc_signal< sc_lv<32> > grp_fu_1258_p0;
    sc_signal< sc_lv<16> > grp_fu_1258_p1;
    sc_signal< sc_lv<32> > grp_fu_1263_p0;
    sc_signal< sc_lv<16> > grp_fu_1263_p1;
    sc_signal< sc_lv<32> > grp_fu_1276_p0;
    sc_signal< sc_lv<32> > grp_fu_1282_p0;
    sc_signal< sc_lv<32> > mul_ln31_fu_1294_p0;
    sc_signal< sc_lv<32> > mul_ln31_fu_1294_p1;
    sc_signal< sc_lv<17> > sext_ln16_fu_1300_p1;
    sc_signal< sc_lv<17> > add_ln21_fu_1304_p2;
    sc_signal< sc_lv<32> > sext_ln21_1_fu_1310_p1;
    sc_signal< sc_lv<32> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<32> ap_ST_fsm_state1;
    static const sc_lv<32> ap_ST_fsm_state2;
    static const sc_lv<32> ap_ST_fsm_state3;
    static const sc_lv<32> ap_ST_fsm_state4;
    static const sc_lv<32> ap_ST_fsm_state5;
    static const sc_lv<32> ap_ST_fsm_state6;
    static const sc_lv<32> ap_ST_fsm_state7;
    static const sc_lv<32> ap_ST_fsm_state8;
    static const sc_lv<32> ap_ST_fsm_state9;
    static const sc_lv<32> ap_ST_fsm_state10;
    static const sc_lv<32> ap_ST_fsm_state11;
    static const sc_lv<32> ap_ST_fsm_state12;
    static const sc_lv<32> ap_ST_fsm_state13;
    static const sc_lv<32> ap_ST_fsm_state14;
    static const sc_lv<32> ap_ST_fsm_state15;
    static const sc_lv<32> ap_ST_fsm_state16;
    static const sc_lv<32> ap_ST_fsm_state17;
    static const sc_lv<32> ap_ST_fsm_state18;
    static const sc_lv<32> ap_ST_fsm_state19;
    static const sc_lv<32> ap_ST_fsm_state20;
    static const sc_lv<32> ap_ST_fsm_state21;
    static const sc_lv<32> ap_ST_fsm_state22;
    static const sc_lv<32> ap_ST_fsm_state23;
    static const sc_lv<32> ap_ST_fsm_state24;
    static const sc_lv<32> ap_ST_fsm_state25;
    static const sc_lv<32> ap_ST_fsm_state26;
    static const sc_lv<32> ap_ST_fsm_state27;
    static const sc_lv<32> ap_ST_fsm_state28;
    static const sc_lv<32> ap_ST_fsm_state29;
    static const sc_lv<32> ap_ST_fsm_state30;
    static const sc_lv<32> ap_ST_fsm_state31;
    static const sc_lv<32> ap_ST_fsm_state32;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<32> ap_const_lv32_14;
    static const sc_lv<32> ap_const_lv32_15;
    static const sc_lv<32> ap_const_lv32_16;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<32> ap_const_lv32_19;
    static const sc_lv<32> ap_const_lv32_1A;
    static const sc_lv<32> ap_const_lv32_1B;
    static const sc_lv<32> ap_const_lv32_1C;
    static const sc_lv<32> ap_const_lv32_1D;
    static const sc_lv<32> ap_const_lv32_1E;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<64> ap_const_lv64_1;
    static const sc_lv<64> ap_const_lv64_2;
    static const sc_lv<64> ap_const_lv64_3;
    static const sc_lv<64> ap_const_lv64_4;
    static const sc_lv<64> ap_const_lv64_5;
    static const sc_lv<64> ap_const_lv64_6;
    static const sc_lv<64> ap_const_lv64_7;
    static const sc_lv<64> ap_const_lv64_8;
    static const sc_lv<64> ap_const_lv64_9;
    static const sc_lv<64> ap_const_lv64_A;
    static const sc_lv<64> ap_const_lv64_B;
    static const sc_lv<64> ap_const_lv64_C;
    static const sc_lv<64> ap_const_lv64_D;
    static const sc_lv<64> ap_const_lv64_E;
    static const sc_lv<64> ap_const_lv64_F;
    static const sc_lv<64> ap_const_lv64_10;
    static const sc_lv<64> ap_const_lv64_11;
    static const sc_lv<64> ap_const_lv64_12;
    static const sc_lv<64> ap_const_lv64_13;
    static const sc_lv<64> ap_const_lv64_14;
    static const sc_lv<64> ap_const_lv64_15;
    static const sc_lv<64> ap_const_lv64_16;
    static const sc_lv<64> ap_const_lv64_17;
    static const sc_lv<64> ap_const_lv64_18;
    static const sc_lv<64> ap_const_lv64_19;
    static const sc_lv<64> ap_const_lv64_1A;
    static const sc_lv<64> ap_const_lv64_1B;
    static const sc_lv<64> ap_const_lv64_1C;
    static const sc_lv<64> ap_const_lv64_1D;
    static const sc_lv<64> ap_const_lv64_1E;
    static const sc_lv<64> ap_const_lv64_1F;
    static const sc_lv<64> ap_const_lv64_20;
    static const sc_lv<64> ap_const_lv64_21;
    static const sc_lv<64> ap_const_lv64_22;
    static const sc_lv<64> ap_const_lv64_23;
    static const sc_lv<64> ap_const_lv64_24;
    static const sc_lv<64> ap_const_lv64_25;
    static const sc_lv<64> ap_const_lv64_26;
    static const sc_lv<64> ap_const_lv64_27;
    static const sc_lv<64> ap_const_lv64_28;
    static const sc_lv<64> ap_const_lv64_29;
    static const sc_lv<64> ap_const_lv64_2A;
    static const sc_lv<64> ap_const_lv64_2B;
    static const sc_lv<64> ap_const_lv64_2C;
    static const sc_lv<64> ap_const_lv64_2D;
    static const sc_lv<64> ap_const_lv64_2E;
    static const sc_lv<64> ap_const_lv64_2F;
    static const sc_lv<64> ap_const_lv64_30;
    static const sc_lv<64> ap_const_lv64_31;
    static const sc_lv<64> ap_const_lv64_32;
    static const sc_lv<64> ap_const_lv64_33;
    static const sc_lv<64> ap_const_lv64_34;
    static const sc_lv<64> ap_const_lv64_35;
    static const sc_lv<64> ap_const_lv64_36;
    static const sc_lv<64> ap_const_lv64_37;
    static const sc_lv<64> ap_const_lv64_38;
    static const sc_lv<64> ap_const_lv64_39;
    static const sc_lv<64> ap_const_lv64_3A;
    static const sc_lv<64> ap_const_lv64_3B;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<17> ap_const_lv17_27;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln21_1_fu_1314_p2();
    void thread_add_ln21_fu_1304_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state15();
    void thread_ap_CS_fsm_state16();
    void thread_ap_CS_fsm_state17();
    void thread_ap_CS_fsm_state18();
    void thread_ap_CS_fsm_state19();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state20();
    void thread_ap_CS_fsm_state21();
    void thread_ap_CS_fsm_state22();
    void thread_ap_CS_fsm_state23();
    void thread_ap_CS_fsm_state24();
    void thread_ap_CS_fsm_state25();
    void thread_ap_CS_fsm_state26();
    void thread_ap_CS_fsm_state27();
    void thread_ap_CS_fsm_state28();
    void thread_ap_CS_fsm_state29();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state30();
    void thread_ap_CS_fsm_state31();
    void thread_ap_CS_fsm_state32();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_grp_fu_1258_p0();
    void thread_grp_fu_1258_p1();
    void thread_grp_fu_1258_p2();
    void thread_grp_fu_1263_p0();
    void thread_grp_fu_1263_p1();
    void thread_grp_fu_1263_p2();
    void thread_grp_fu_1276_p0();
    void thread_grp_fu_1282_p0();
    void thread_in_r_address0();
    void thread_in_r_address1();
    void thread_in_r_ce0();
    void thread_in_r_ce1();
    void thread_mul_ln31_fu_1294_p0();
    void thread_mul_ln31_fu_1294_p1();
    void thread_mul_ln31_fu_1294_p2();
    void thread_out_r_address0();
    void thread_out_r_address1();
    void thread_out_r_ce0();
    void thread_out_r_ce1();
    void thread_out_r_d0();
    void thread_out_r_d1();
    void thread_out_r_we0();
    void thread_out_r_we1();
    void thread_sext_ln16_fu_1300_p1();
    void thread_sext_ln21_1_fu_1310_p1();
    void thread_sext_ln21_fu_1288_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
