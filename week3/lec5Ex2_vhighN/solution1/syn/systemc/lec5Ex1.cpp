// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "lec5Ex1.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic lec5Ex1::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic lec5Ex1::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<4> lec5Ex1::ap_ST_fsm_state1 = "1";
const sc_lv<4> lec5Ex1::ap_ST_fsm_state2 = "10";
const sc_lv<4> lec5Ex1::ap_ST_fsm_state3 = "100";
const sc_lv<4> lec5Ex1::ap_ST_fsm_state4 = "1000";
const sc_lv<32> lec5Ex1::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> lec5Ex1::ap_const_lv32_1 = "1";
const sc_lv<1> lec5Ex1::ap_const_lv1_0 = "0";
const sc_lv<32> lec5Ex1::ap_const_lv32_2 = "10";
const sc_lv<32> lec5Ex1::ap_const_lv32_3 = "11";
const sc_lv<6> lec5Ex1::ap_const_lv6_15 = "10101";
const sc_lv<1> lec5Ex1::ap_const_lv1_1 = "1";
const sc_lv<5> lec5Ex1::ap_const_lv5_0 = "00000";
const sc_lv<6> lec5Ex1::ap_const_lv6_3F = "111111";
const sc_lv<32> lec5Ex1::ap_const_lv32_5 = "101";
const sc_lv<6> lec5Ex1::ap_const_lv6_0 = "000000";
const bool lec5Ex1::ap_const_boolean_1 = true;

lec5Ex1::lec5Ex1(sc_module_name name) : sc_module(name), mVcdFile(0) {
    arr_U = new lec5Ex1_arr("arr_U");
    arr_U->clk(ap_clk);
    arr_U->reset(ap_rst);
    arr_U->address0(arr_address0);
    arr_U->ce0(arr_ce0);
    arr_U->we0(arr_we0);
    arr_U->d0(arr_d0);
    arr_U->q0(arr_q0);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_fu_136_p3 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_phi_mux_i_0_phi_fu_108_p4);
    sensitive << ( i_0_reg_104 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_fu_136_p3 );

    SC_METHOD(thread_arr_address0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln16_fu_144_p2 );
    sensitive << ( tmp_fu_136_p3 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( zext_ln20_fu_150_p1 );
    sensitive << ( zext_ln20_1_fu_155_p1 );

    SC_METHOD(thread_arr_ce0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln16_fu_144_p2 );
    sensitive << ( tmp_fu_136_p3 );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_arr_d0);
    sensitive << ( x );
    sensitive << ( arr_q0 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln16_fu_144_p2 );
    sensitive << ( tmp_fu_136_p3 );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_arr_we0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln16_fu_144_p2 );
    sensitive << ( icmp_ln16_reg_190 );
    sensitive << ( tmp_fu_136_p3 );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_c_address0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( zext_ln23_fu_159_p1 );

    SC_METHOD(thread_c_ce0);
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_grp_fu_125_p0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_phi_mux_i_0_phi_fu_108_p4 );
    sensitive << ( i_0_reg_104 );

    SC_METHOD(thread_grp_fu_125_p2);
    sensitive << ( grp_fu_125_p0 );

    SC_METHOD(thread_icmp_ln16_fu_144_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_fu_136_p3 );
    sensitive << ( i_0_reg_104 );

    SC_METHOD(thread_mul_ln23_fu_163_p0);
    sensitive << ( c_q0 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_mul_ln23_fu_163_p2);
    sensitive << ( data_0_reg_116 );
    sensitive << ( mul_ln23_fu_163_p0 );

    SC_METHOD(thread_sext_ln15_fu_132_p1);
    sensitive << ( i_0_reg_104 );

    SC_METHOD(thread_sum_fu_169_p2);
    sensitive << ( sum_0_reg_91 );
    sensitive << ( mul_ln23_fu_163_p2 );

    SC_METHOD(thread_tmp_fu_136_p3);
    sensitive << ( i_0_reg_104 );

    SC_METHOD(thread_y);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_fu_136_p3 );
    sensitive << ( sum_0_reg_91 );

    SC_METHOD(thread_y_ap_vld);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_fu_136_p3 );

    SC_METHOD(thread_zext_ln20_1_fu_155_p1);
    sensitive << ( sext_ln15_reg_181 );

    SC_METHOD(thread_zext_ln20_fu_150_p1);
    sensitive << ( grp_fu_125_p2 );

    SC_METHOD(thread_zext_ln23_fu_159_p1);
    sensitive << ( sext_ln15_reg_181 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_fu_136_p3 );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    ap_CS_fsm = "0001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "lec5Ex1_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, y, "(port)y");
    sc_trace(mVcdFile, y_ap_vld, "(port)y_ap_vld");
    sc_trace(mVcdFile, c_address0, "(port)c_address0");
    sc_trace(mVcdFile, c_ce0, "(port)c_ce0");
    sc_trace(mVcdFile, c_q0, "(port)c_q0");
    sc_trace(mVcdFile, x, "(port)x");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, arr_address0, "arr_address0");
    sc_trace(mVcdFile, arr_ce0, "arr_ce0");
    sc_trace(mVcdFile, arr_we0, "arr_we0");
    sc_trace(mVcdFile, arr_d0, "arr_d0");
    sc_trace(mVcdFile, arr_q0, "arr_q0");
    sc_trace(mVcdFile, sext_ln15_fu_132_p1, "sext_ln15_fu_132_p1");
    sc_trace(mVcdFile, sext_ln15_reg_181, "sext_ln15_reg_181");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, icmp_ln16_fu_144_p2, "icmp_ln16_fu_144_p2");
    sc_trace(mVcdFile, icmp_ln16_reg_190, "icmp_ln16_reg_190");
    sc_trace(mVcdFile, tmp_fu_136_p3, "tmp_fu_136_p3");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, grp_fu_125_p2, "grp_fu_125_p2");
    sc_trace(mVcdFile, i_reg_209, "i_reg_209");
    sc_trace(mVcdFile, sum_fu_169_p2, "sum_fu_169_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, sum_0_reg_91, "sum_0_reg_91");
    sc_trace(mVcdFile, ap_phi_mux_i_0_phi_fu_108_p4, "ap_phi_mux_i_0_phi_fu_108_p4");
    sc_trace(mVcdFile, i_0_reg_104, "i_0_reg_104");
    sc_trace(mVcdFile, data_0_reg_116, "data_0_reg_116");
    sc_trace(mVcdFile, zext_ln20_fu_150_p1, "zext_ln20_fu_150_p1");
    sc_trace(mVcdFile, zext_ln20_1_fu_155_p1, "zext_ln20_1_fu_155_p1");
    sc_trace(mVcdFile, zext_ln23_fu_159_p1, "zext_ln23_fu_159_p1");
    sc_trace(mVcdFile, grp_fu_125_p0, "grp_fu_125_p0");
    sc_trace(mVcdFile, mul_ln23_fu_163_p0, "mul_ln23_fu_163_p0");
    sc_trace(mVcdFile, mul_ln23_fu_163_p2, "mul_ln23_fu_163_p2");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
    mHdltvinHandle.open("lec5Ex1.hdltvin.dat");
    mHdltvoutHandle.open("lec5Ex1.hdltvout.dat");
}

lec5Ex1::~lec5Ex1() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
    delete arr_U;
}

void lec5Ex1::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
         esl_seteq<1,1,1>(icmp_ln16_reg_190.read(), ap_const_lv1_0))) {
        data_0_reg_116 = arr_q0.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(tmp_fu_136_p3.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(icmp_ln16_fu_144_p2.read(), ap_const_lv1_1))) {
        data_0_reg_116 = x.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        i_0_reg_104 = i_reg_209.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        i_0_reg_104 = ap_const_lv6_15;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        sum_0_reg_91 = sum_fu_169_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        sum_0_reg_91 = ap_const_lv32_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        i_reg_209 = grp_fu_125_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(tmp_fu_136_p3.read(), ap_const_lv1_0))) {
        icmp_ln16_reg_190 = icmp_ln16_fu_144_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        sext_ln15_reg_181 = sext_ln15_fu_132_p1.read();
    }
}

void lec5Ex1::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void lec5Ex1::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void lec5Ex1::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void lec5Ex1::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void lec5Ex1::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(tmp_fu_136_p3.read(), ap_const_lv1_1))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void lec5Ex1::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void lec5Ex1::thread_ap_phi_mux_i_0_phi_fu_108_p4() {
    ap_phi_mux_i_0_phi_fu_108_p4 = i_0_reg_104.read();
}

void lec5Ex1::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(tmp_fu_136_p3.read(), ap_const_lv1_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void lec5Ex1::thread_arr_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        arr_address0 =  (sc_lv<5>) (zext_ln20_1_fu_155_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(tmp_fu_136_p3.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(icmp_ln16_fu_144_p2.read(), ap_const_lv1_1))) {
        arr_address0 = ap_const_lv5_0;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(tmp_fu_136_p3.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(icmp_ln16_fu_144_p2.read(), ap_const_lv1_0))) {
        arr_address0 =  (sc_lv<5>) (zext_ln20_fu_150_p1.read());
    } else {
        arr_address0 = "XXXXX";
    }
}

void lec5Ex1::thread_arr_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(tmp_fu_136_p3.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(icmp_ln16_fu_144_p2.read(), ap_const_lv1_0)) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(tmp_fu_136_p3.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(icmp_ln16_fu_144_p2.read(), ap_const_lv1_1)))) {
        arr_ce0 = ap_const_logic_1;
    } else {
        arr_ce0 = ap_const_logic_0;
    }
}

void lec5Ex1::thread_arr_d0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        arr_d0 = arr_q0.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(tmp_fu_136_p3.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(icmp_ln16_fu_144_p2.read(), ap_const_lv1_1))) {
        arr_d0 = x.read();
    } else {
        arr_d0 =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void lec5Ex1::thread_arr_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
          esl_seteq<1,1,1>(icmp_ln16_reg_190.read(), ap_const_lv1_0)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(tmp_fu_136_p3.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(icmp_ln16_fu_144_p2.read(), ap_const_lv1_1)))) {
        arr_we0 = ap_const_logic_1;
    } else {
        arr_we0 = ap_const_logic_0;
    }
}

void lec5Ex1::thread_c_address0() {
    c_address0 =  (sc_lv<5>) (zext_ln23_fu_159_p1.read());
}

void lec5Ex1::thread_c_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        c_ce0 = ap_const_logic_1;
    } else {
        c_ce0 = ap_const_logic_0;
    }
}

void lec5Ex1::thread_grp_fu_125_p0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        grp_fu_125_p0 = i_0_reg_104.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_fu_125_p0 = ap_phi_mux_i_0_phi_fu_108_p4.read();
    } else {
        grp_fu_125_p0 =  (sc_lv<6>) ("XXXXXX");
    }
}

void lec5Ex1::thread_grp_fu_125_p2() {
    grp_fu_125_p2 = (!grp_fu_125_p0.read().is_01() || !ap_const_lv6_3F.is_01())? sc_lv<6>(): (sc_bigint<6>(grp_fu_125_p0.read()) + sc_bigint<6>(ap_const_lv6_3F));
}

void lec5Ex1::thread_icmp_ln16_fu_144_p2() {
    icmp_ln16_fu_144_p2 = (!i_0_reg_104.read().is_01() || !ap_const_lv6_0.is_01())? sc_lv<1>(): sc_lv<1>(i_0_reg_104.read() == ap_const_lv6_0);
}

void lec5Ex1::thread_mul_ln23_fu_163_p0() {
    mul_ln23_fu_163_p0 = c_q0.read();
}

void lec5Ex1::thread_mul_ln23_fu_163_p2() {
    mul_ln23_fu_163_p2 = (!mul_ln23_fu_163_p0.read().is_01() || !data_0_reg_116.read().is_01())? sc_lv<32>(): sc_bigint<32>(mul_ln23_fu_163_p0.read()) * sc_bigint<32>(data_0_reg_116.read());
}

void lec5Ex1::thread_sext_ln15_fu_132_p1() {
    sext_ln15_fu_132_p1 = esl_sext<32,6>(i_0_reg_104.read());
}

void lec5Ex1::thread_sum_fu_169_p2() {
    sum_fu_169_p2 = (!mul_ln23_fu_163_p2.read().is_01() || !sum_0_reg_91.read().is_01())? sc_lv<32>(): (sc_biguint<32>(mul_ln23_fu_163_p2.read()) + sc_biguint<32>(sum_0_reg_91.read()));
}

void lec5Ex1::thread_tmp_fu_136_p3() {
    tmp_fu_136_p3 = i_0_reg_104.read().range(5, 5);
}

void lec5Ex1::thread_y() {
    y = sum_0_reg_91.read();
}

void lec5Ex1::thread_y_ap_vld() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(tmp_fu_136_p3.read(), ap_const_lv1_1))) {
        y_ap_vld = ap_const_logic_1;
    } else {
        y_ap_vld = ap_const_logic_0;
    }
}

void lec5Ex1::thread_zext_ln20_1_fu_155_p1() {
    zext_ln20_1_fu_155_p1 = esl_zext<64,32>(sext_ln15_reg_181.read());
}

void lec5Ex1::thread_zext_ln20_fu_150_p1() {
    zext_ln20_fu_150_p1 = esl_zext<64,6>(grp_fu_125_p2.read());
}

void lec5Ex1::thread_zext_ln23_fu_159_p1() {
    zext_ln23_fu_159_p1 = esl_zext<64,32>(sext_ln15_reg_181.read());
}

void lec5Ex1::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(tmp_fu_136_p3.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state4;
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_fsm_state2;
            break;
        default : 
            ap_NS_fsm =  (sc_lv<4>) ("XXXX");
            break;
    }
}

void lec5Ex1::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst\" :  \"" << ap_rst.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"y\" :  \"" << y.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"y_ap_vld\" :  \"" << y_ap_vld.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"c_address0\" :  \"" << c_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"c_ce0\" :  \"" << c_ce0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"c_q0\" :  \"" << c_q0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"x\" :  \"" << x.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

