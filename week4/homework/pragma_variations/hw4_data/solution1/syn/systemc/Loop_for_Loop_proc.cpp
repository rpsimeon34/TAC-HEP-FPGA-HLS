// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "Loop_for_Loop_proc.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic Loop_for_Loop_proc::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic Loop_for_Loop_proc::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<3> Loop_for_Loop_proc::ap_ST_fsm_state1 = "1";
const sc_lv<3> Loop_for_Loop_proc::ap_ST_fsm_pp0_stage0 = "10";
const sc_lv<3> Loop_for_Loop_proc::ap_ST_fsm_state5 = "100";
const sc_lv<32> Loop_for_Loop_proc::ap_const_lv32_0 = "00000000000000000000000000000000";
const bool Loop_for_Loop_proc::ap_const_boolean_1 = true;
const sc_lv<32> Loop_for_Loop_proc::ap_const_lv32_1 = "1";
const bool Loop_for_Loop_proc::ap_const_boolean_0 = false;
const sc_lv<1> Loop_for_Loop_proc::ap_const_lv1_0 = "0";
const sc_lv<1> Loop_for_Loop_proc::ap_const_lv1_1 = "1";
const sc_lv<6> Loop_for_Loop_proc::ap_const_lv6_0 = "000000";
const sc_lv<17> Loop_for_Loop_proc::ap_const_lv17_27 = "100111";
const sc_lv<6> Loop_for_Loop_proc::ap_const_lv6_3C = "111100";
const sc_lv<6> Loop_for_Loop_proc::ap_const_lv6_1 = "1";
const sc_lv<32> Loop_for_Loop_proc::ap_const_lv32_2 = "10";

Loop_for_Loop_proc::Loop_for_Loop_proc(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_add_ln23_1_fu_115_p2);
    sensitive << ( sext_ln23_1_cast_fu_105_p1 );

    SC_METHOD(thread_add_ln23_fu_147_p2);
    sensitive << ( res_reg_162 );
    sensitive << ( mul_ln23_reg_191 );

    SC_METHOD(thread_ap_CS_fsm_pp0_stage0);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state5);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_block_pp0_stage0);

    SC_METHOD(thread_ap_block_pp0_stage0_11001);

    SC_METHOD(thread_ap_block_pp0_stage0_subdone);

    SC_METHOD(thread_ap_block_state1);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );

    SC_METHOD(thread_ap_block_state2_pp0_stage0_iter0);

    SC_METHOD(thread_ap_block_state3_pp0_stage0_iter1);

    SC_METHOD(thread_ap_block_state4_pp0_stage0_iter2);

    SC_METHOD(thread_ap_condition_pp0_exit_iter0_state2);
    sensitive << ( icmp_ln15_fu_125_p2 );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_ap_enable_pp0);
    sensitive << ( ap_idle_pp0 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_idle_pp0);
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_enable_reg_pp0_iter2 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_i_fu_131_p2);
    sensitive << ( i_0_i_i_reg_90 );

    SC_METHOD(thread_icmp_ln15_fu_125_p2);
    sensitive << ( i_0_i_i_reg_90 );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_enable_reg_pp0_iter0 );

    SC_METHOD(thread_in_r_address0);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( zext_ln18_fu_137_p1 );
    sensitive << ( ap_block_pp0_stage0 );

    SC_METHOD(thread_in_r_ce0);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_enable_reg_pp0_iter0 );

    SC_METHOD(thread_mul_ln23_fu_142_p0);
    sensitive << ( in_r_q0 );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage0 );

    SC_METHOD(thread_mul_ln23_fu_142_p1);
    sensitive << ( sext_ln23_reg_157 );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage0 );

    SC_METHOD(thread_mul_ln23_fu_142_p2);
    sensitive << ( mul_ln23_fu_142_p0 );
    sensitive << ( mul_ln23_fu_142_p1 );

    SC_METHOD(thread_out_r_address0);
    sensitive << ( zext_ln18_reg_181_pp0_iter1_reg );
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( ap_block_pp0_stage0 );

    SC_METHOD(thread_out_r_ce0);
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_enable_reg_pp0_iter2 );

    SC_METHOD(thread_out_r_d0);
    sensitive << ( sext_ln23_1_reg_167 );
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( add_ln23_fu_147_p2 );

    SC_METHOD(thread_out_r_we0);
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( icmp_ln15_reg_172_pp0_iter1_reg );
    sensitive << ( ap_enable_reg_pp0_iter2 );

    SC_METHOD(thread_res_fu_109_p0);
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( c );

    SC_METHOD(thread_res_fu_109_p1);
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( c );

    SC_METHOD(thread_res_fu_109_p2);
    sensitive << ( res_fu_109_p0 );
    sensitive << ( res_fu_109_p1 );

    SC_METHOD(thread_sext_ln23_1_cast_fu_105_p1);
    sensitive << ( b );

    SC_METHOD(thread_sext_ln23_1_fu_121_p1);
    sensitive << ( add_ln23_1_fu_115_p2 );

    SC_METHOD(thread_sext_ln23_fu_101_p1);
    sensitive << ( a );

    SC_METHOD(thread_zext_ln18_fu_137_p1);
    sensitive << ( i_0_i_i_reg_90 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( icmp_ln15_fu_125_p2 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_block_pp0_stage0_subdone );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_enable_reg_pp0_iter2 );

    ap_done_reg = SC_LOGIC_0;
    ap_CS_fsm = "001";
    ap_enable_reg_pp0_iter0 = SC_LOGIC_0;
    ap_enable_reg_pp0_iter1 = SC_LOGIC_0;
    ap_enable_reg_pp0_iter2 = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "Loop_for_Loop_proc_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_continue, "(port)ap_continue");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, a, "(port)a");
    sc_trace(mVcdFile, b, "(port)b");
    sc_trace(mVcdFile, in_r_address0, "(port)in_r_address0");
    sc_trace(mVcdFile, in_r_ce0, "(port)in_r_ce0");
    sc_trace(mVcdFile, in_r_q0, "(port)in_r_q0");
    sc_trace(mVcdFile, c, "(port)c");
    sc_trace(mVcdFile, out_r_address0, "(port)out_r_address0");
    sc_trace(mVcdFile, out_r_ce0, "(port)out_r_ce0");
    sc_trace(mVcdFile, out_r_we0, "(port)out_r_we0");
    sc_trace(mVcdFile, out_r_d0, "(port)out_r_d0");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_done_reg, "ap_done_reg");
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, i_0_i_i_reg_90, "i_0_i_i_reg_90");
    sc_trace(mVcdFile, sext_ln23_fu_101_p1, "sext_ln23_fu_101_p1");
    sc_trace(mVcdFile, sext_ln23_reg_157, "sext_ln23_reg_157");
    sc_trace(mVcdFile, ap_block_state1, "ap_block_state1");
    sc_trace(mVcdFile, res_fu_109_p2, "res_fu_109_p2");
    sc_trace(mVcdFile, res_reg_162, "res_reg_162");
    sc_trace(mVcdFile, sext_ln23_1_fu_121_p1, "sext_ln23_1_fu_121_p1");
    sc_trace(mVcdFile, sext_ln23_1_reg_167, "sext_ln23_1_reg_167");
    sc_trace(mVcdFile, icmp_ln15_fu_125_p2, "icmp_ln15_fu_125_p2");
    sc_trace(mVcdFile, icmp_ln15_reg_172, "icmp_ln15_reg_172");
    sc_trace(mVcdFile, ap_CS_fsm_pp0_stage0, "ap_CS_fsm_pp0_stage0");
    sc_trace(mVcdFile, ap_block_state2_pp0_stage0_iter0, "ap_block_state2_pp0_stage0_iter0");
    sc_trace(mVcdFile, ap_block_state3_pp0_stage0_iter1, "ap_block_state3_pp0_stage0_iter1");
    sc_trace(mVcdFile, ap_block_state4_pp0_stage0_iter2, "ap_block_state4_pp0_stage0_iter2");
    sc_trace(mVcdFile, ap_block_pp0_stage0_11001, "ap_block_pp0_stage0_11001");
    sc_trace(mVcdFile, icmp_ln15_reg_172_pp0_iter1_reg, "icmp_ln15_reg_172_pp0_iter1_reg");
    sc_trace(mVcdFile, i_fu_131_p2, "i_fu_131_p2");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter0, "ap_enable_reg_pp0_iter0");
    sc_trace(mVcdFile, zext_ln18_fu_137_p1, "zext_ln18_fu_137_p1");
    sc_trace(mVcdFile, zext_ln18_reg_181, "zext_ln18_reg_181");
    sc_trace(mVcdFile, zext_ln18_reg_181_pp0_iter1_reg, "zext_ln18_reg_181_pp0_iter1_reg");
    sc_trace(mVcdFile, mul_ln23_fu_142_p2, "mul_ln23_fu_142_p2");
    sc_trace(mVcdFile, mul_ln23_reg_191, "mul_ln23_reg_191");
    sc_trace(mVcdFile, ap_block_pp0_stage0_subdone, "ap_block_pp0_stage0_subdone");
    sc_trace(mVcdFile, ap_condition_pp0_exit_iter0_state2, "ap_condition_pp0_exit_iter0_state2");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter1, "ap_enable_reg_pp0_iter1");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter2, "ap_enable_reg_pp0_iter2");
    sc_trace(mVcdFile, ap_block_pp0_stage0, "ap_block_pp0_stage0");
    sc_trace(mVcdFile, res_fu_109_p0, "res_fu_109_p0");
    sc_trace(mVcdFile, res_fu_109_p1, "res_fu_109_p1");
    sc_trace(mVcdFile, sext_ln23_1_cast_fu_105_p1, "sext_ln23_1_cast_fu_105_p1");
    sc_trace(mVcdFile, add_ln23_1_fu_115_p2, "add_ln23_1_fu_115_p2");
    sc_trace(mVcdFile, mul_ln23_fu_142_p0, "mul_ln23_fu_142_p0");
    sc_trace(mVcdFile, mul_ln23_fu_142_p1, "mul_ln23_fu_142_p1");
    sc_trace(mVcdFile, add_ln23_fu_147_p2, "add_ln23_fu_147_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
    sc_trace(mVcdFile, ap_idle_pp0, "ap_idle_pp0");
    sc_trace(mVcdFile, ap_enable_pp0, "ap_enable_pp0");
#endif

    }
}

Loop_for_Loop_proc::~Loop_for_Loop_proc() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void Loop_for_Loop_proc::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_done_reg = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_continue.read())) {
            ap_done_reg = ap_const_logic_0;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
            ap_done_reg = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter0 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
             esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && 
             esl_seteq<1,1,1>(ap_const_logic_1, ap_condition_pp0_exit_iter0_state2.read()))) {
            ap_enable_reg_pp0_iter0 = ap_const_logic_0;
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                    !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
            ap_enable_reg_pp0_iter0 = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter1 = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0)) {
            if (esl_seteq<1,1,1>(ap_const_logic_1, ap_condition_pp0_exit_iter0_state2.read())) {
                ap_enable_reg_pp0_iter1 = (ap_condition_pp0_exit_iter0_state2.read() ^ ap_const_logic_1);
            } else if (esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1)) {
                ap_enable_reg_pp0_iter1 = ap_enable_reg_pp0_iter0.read();
            }
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter2 = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0)) {
            ap_enable_reg_pp0_iter2 = ap_enable_reg_pp0_iter1.read();
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                    !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
            ap_enable_reg_pp0_iter2 = ap_const_logic_0;
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(icmp_ln15_fu_125_p2.read(), ap_const_lv1_0))) {
        i_0_i_i_reg_90 = i_fu_131_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
        i_0_i_i_reg_90 = ap_const_lv6_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        icmp_ln15_reg_172 = icmp_ln15_fu_125_p2.read();
        icmp_ln15_reg_172_pp0_iter1_reg = icmp_ln15_reg_172.read();
        zext_ln18_reg_181_pp0_iter1_reg = zext_ln18_reg_181.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(icmp_ln15_reg_172.read(), ap_const_lv1_0))) {
        mul_ln23_reg_191 = mul_ln23_fu_142_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
        res_reg_162 = res_fu_109_p2.read();
        sext_ln23_1_reg_167 = sext_ln23_1_fu_121_p1.read();
        sext_ln23_reg_157 = sext_ln23_fu_101_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(icmp_ln15_fu_125_p2.read(), ap_const_lv1_0))) {
        zext_ln18_reg_181 = zext_ln18_fu_137_p1.read();
    }
}

void Loop_for_Loop_proc::thread_add_ln23_1_fu_115_p2() {
    add_ln23_1_fu_115_p2 = (!sext_ln23_1_cast_fu_105_p1.read().is_01() || !ap_const_lv17_27.is_01())? sc_lv<17>(): (sc_bigint<17>(sext_ln23_1_cast_fu_105_p1.read()) + sc_biguint<17>(ap_const_lv17_27));
}

void Loop_for_Loop_proc::thread_add_ln23_fu_147_p2() {
    add_ln23_fu_147_p2 = (!mul_ln23_reg_191.read().is_01() || !res_reg_162.read().is_01())? sc_lv<32>(): (sc_biguint<32>(mul_ln23_reg_191.read()) + sc_biguint<32>(res_reg_162.read()));
}

void Loop_for_Loop_proc::thread_ap_CS_fsm_pp0_stage0() {
    ap_CS_fsm_pp0_stage0 = ap_CS_fsm.read()[1];
}

void Loop_for_Loop_proc::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void Loop_for_Loop_proc::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[2];
}

void Loop_for_Loop_proc::thread_ap_block_pp0_stage0() {
    ap_block_pp0_stage0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void Loop_for_Loop_proc::thread_ap_block_pp0_stage0_11001() {
    ap_block_pp0_stage0_11001 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void Loop_for_Loop_proc::thread_ap_block_pp0_stage0_subdone() {
    ap_block_pp0_stage0_subdone = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void Loop_for_Loop_proc::thread_ap_block_state1() {
    ap_block_state1 = (esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1));
}

void Loop_for_Loop_proc::thread_ap_block_state2_pp0_stage0_iter0() {
    ap_block_state2_pp0_stage0_iter0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void Loop_for_Loop_proc::thread_ap_block_state3_pp0_stage0_iter1() {
    ap_block_state3_pp0_stage0_iter1 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void Loop_for_Loop_proc::thread_ap_block_state4_pp0_stage0_iter2() {
    ap_block_state4_pp0_stage0_iter2 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void Loop_for_Loop_proc::thread_ap_condition_pp0_exit_iter0_state2() {
    if (esl_seteq<1,1,1>(icmp_ln15_fu_125_p2.read(), ap_const_lv1_1)) {
        ap_condition_pp0_exit_iter0_state2 = ap_const_logic_1;
    } else {
        ap_condition_pp0_exit_iter0_state2 = ap_const_logic_0;
    }
}

void Loop_for_Loop_proc::thread_ap_done() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_done_reg.read();
    }
}

void Loop_for_Loop_proc::thread_ap_enable_pp0() {
    ap_enable_pp0 = (ap_idle_pp0.read() ^ ap_const_logic_1);
}

void Loop_for_Loop_proc::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void Loop_for_Loop_proc::thread_ap_idle_pp0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter2.read()))) {
        ap_idle_pp0 = ap_const_logic_1;
    } else {
        ap_idle_pp0 = ap_const_logic_0;
    }
}

void Loop_for_Loop_proc::thread_ap_ready() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void Loop_for_Loop_proc::thread_i_fu_131_p2() {
    i_fu_131_p2 = (!i_0_i_i_reg_90.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_biguint<6>(i_0_i_i_reg_90.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void Loop_for_Loop_proc::thread_icmp_ln15_fu_125_p2() {
    icmp_ln15_fu_125_p2 = (!i_0_i_i_reg_90.read().is_01() || !ap_const_lv6_3C.is_01())? sc_lv<1>(): sc_lv<1>(i_0_i_i_reg_90.read() == ap_const_lv6_3C);
}

void Loop_for_Loop_proc::thread_in_r_address0() {
    in_r_address0 =  (sc_lv<6>) (zext_ln18_fu_137_p1.read());
}

void Loop_for_Loop_proc::thread_in_r_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        in_r_ce0 = ap_const_logic_1;
    } else {
        in_r_ce0 = ap_const_logic_0;
    }
}

void Loop_for_Loop_proc::thread_mul_ln23_fu_142_p0() {
    mul_ln23_fu_142_p0 = in_r_q0.read();
}

void Loop_for_Loop_proc::thread_mul_ln23_fu_142_p1() {
    mul_ln23_fu_142_p1 =  (sc_lv<16>) (sext_ln23_reg_157.read());
}

void Loop_for_Loop_proc::thread_mul_ln23_fu_142_p2() {
    mul_ln23_fu_142_p2 = (!mul_ln23_fu_142_p0.read().is_01() || !mul_ln23_fu_142_p1.read().is_01())? sc_lv<32>(): sc_bigint<32>(mul_ln23_fu_142_p0.read()) * sc_bigint<16>(mul_ln23_fu_142_p1.read());
}

void Loop_for_Loop_proc::thread_out_r_address0() {
    out_r_address0 =  (sc_lv<6>) (zext_ln18_reg_181_pp0_iter1_reg.read());
}

void Loop_for_Loop_proc::thread_out_r_ce0() {
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()))) {
        out_r_ce0 = ap_const_logic_1;
    } else {
        out_r_ce0 = ap_const_logic_0;
    }
}

void Loop_for_Loop_proc::thread_out_r_d0() {
    out_r_d0 = (!sext_ln23_1_reg_167.read().is_01() || !add_ln23_fu_147_p2.read().is_01())? sc_lv<32>(): (sc_bigint<32>(sext_ln23_1_reg_167.read()) + sc_biguint<32>(add_ln23_fu_147_p2.read()));
}

void Loop_for_Loop_proc::thread_out_r_we0() {
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()) && 
         esl_seteq<1,1,1>(icmp_ln15_reg_172_pp0_iter1_reg.read(), ap_const_lv1_0))) {
        out_r_we0 = ap_const_logic_1;
    } else {
        out_r_we0 = ap_const_logic_0;
    }
}

void Loop_for_Loop_proc::thread_res_fu_109_p0() {
    res_fu_109_p0 = c.read();
}

void Loop_for_Loop_proc::thread_res_fu_109_p1() {
    res_fu_109_p1 = c.read();
}

void Loop_for_Loop_proc::thread_res_fu_109_p2() {
    res_fu_109_p2 = (!res_fu_109_p0.read().is_01() || !res_fu_109_p1.read().is_01())? sc_lv<32>(): sc_bigint<32>(res_fu_109_p0.read()) * sc_bigint<32>(res_fu_109_p1.read());
}

void Loop_for_Loop_proc::thread_sext_ln23_1_cast_fu_105_p1() {
    sext_ln23_1_cast_fu_105_p1 = esl_sext<17,16>(b.read());
}

void Loop_for_Loop_proc::thread_sext_ln23_1_fu_121_p1() {
    sext_ln23_1_fu_121_p1 = esl_sext<32,17>(add_ln23_1_fu_115_p2.read());
}

void Loop_for_Loop_proc::thread_sext_ln23_fu_101_p1() {
    sext_ln23_fu_101_p1 = esl_sext<32,16>(a.read());
}

void Loop_for_Loop_proc::thread_zext_ln18_fu_137_p1() {
    zext_ln18_fu_137_p1 = esl_zext<64,6>(i_0_i_i_reg_90.read());
}

void Loop_for_Loop_proc::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((!(esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()) && esl_seteq<1,1,1>(ap_enable_reg_pp0_iter1.read(), ap_const_logic_0)) && !(esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(icmp_ln15_fu_125_p2.read(), ap_const_lv1_1) && esl_seteq<1,1,1>(ap_enable_reg_pp0_iter1.read(), ap_const_logic_0)))) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            } else if (((esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()) && 
  esl_seteq<1,1,1>(ap_enable_reg_pp0_iter1.read(), ap_const_logic_0)) || (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
  esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && 
  esl_seteq<1,1,1>(icmp_ln15_fu_125_p2.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_enable_reg_pp0_iter1.read(), ap_const_logic_0)))) {
                ap_NS_fsm = ap_ST_fsm_state5;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            }
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state1;
            break;
        default : 
            ap_NS_fsm = "XXX";
            break;
    }
}

}

