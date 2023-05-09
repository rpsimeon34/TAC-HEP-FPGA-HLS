// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "lec8Ex1.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic lec8Ex1::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic lec8Ex1::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<6> lec8Ex1::ap_ST_fsm_state1 = "1";
const sc_lv<6> lec8Ex1::ap_ST_fsm_state2 = "10";
const sc_lv<6> lec8Ex1::ap_ST_fsm_state3 = "100";
const sc_lv<6> lec8Ex1::ap_ST_fsm_state4 = "1000";
const sc_lv<6> lec8Ex1::ap_ST_fsm_state5 = "10000";
const sc_lv<6> lec8Ex1::ap_ST_fsm_state6 = "100000";
const sc_lv<32> lec8Ex1::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> lec8Ex1::ap_const_lv32_1 = "1";
const sc_lv<1> lec8Ex1::ap_const_lv1_0 = "0";
const sc_lv<32> lec8Ex1::ap_const_lv32_2 = "10";
const sc_lv<6> lec8Ex1::ap_const_lv6_0 = "000000";
const sc_lv<32> lec8Ex1::ap_const_lv32_5 = "101";
const sc_lv<32> lec8Ex1::ap_const_lv32_3 = "11";
const sc_lv<17> lec8Ex1::ap_const_lv17_27 = "100111";
const sc_lv<6> lec8Ex1::ap_const_lv6_3C = "111100";
const sc_lv<6> lec8Ex1::ap_const_lv6_1 = "1";
const sc_lv<1> lec8Ex1::ap_const_lv1_1 = "1";
const bool lec8Ex1::ap_const_boolean_1 = true;

lec8Ex1::lec8Ex1(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_add_ln22_1_fu_119_p2);
    sensitive << ( sext_ln31_fu_109_p1 );

    SC_METHOD(thread_add_ln22_fu_151_p2);
    sensitive << ( res_reg_166 );
    sensitive << ( mul_ln22_reg_194 );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state6);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln14_fu_129_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln14_fu_129_p2 );

    SC_METHOD(thread_i_fu_135_p2);
    sensitive << ( i_0_reg_94 );

    SC_METHOD(thread_icmp_ln14_fu_129_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( i_0_reg_94 );

    SC_METHOD(thread_in_r_address0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( zext_ln17_fu_141_p1 );

    SC_METHOD(thread_in_r_ce0);
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_mul_ln22_fu_146_p0);
    sensitive << ( in_r_q0 );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_mul_ln22_fu_146_p1);
    sensitive << ( sext_ln22_reg_161 );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_mul_ln22_fu_146_p2);
    sensitive << ( mul_ln22_fu_146_p0 );
    sensitive << ( mul_ln22_fu_146_p1 );

    SC_METHOD(thread_out_r_address0);
    sensitive << ( zext_ln17_reg_184 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_out_r_ce0);
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_out_r_d0);
    sensitive << ( sext_ln22_1_reg_171 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( add_ln22_fu_151_p2 );

    SC_METHOD(thread_out_r_we0);
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_res_fu_113_p0);
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( c );

    SC_METHOD(thread_res_fu_113_p1);
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( c );

    SC_METHOD(thread_res_fu_113_p2);
    sensitive << ( res_fu_113_p0 );
    sensitive << ( res_fu_113_p1 );

    SC_METHOD(thread_sext_ln22_1_fu_125_p1);
    sensitive << ( add_ln22_1_fu_119_p2 );

    SC_METHOD(thread_sext_ln22_fu_105_p1);
    sensitive << ( a );

    SC_METHOD(thread_sext_ln31_fu_109_p1);
    sensitive << ( b );

    SC_METHOD(thread_zext_ln17_fu_141_p1);
    sensitive << ( i_0_reg_94 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln14_fu_129_p2 );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    ap_CS_fsm = "000001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "lec8Ex1_sc_trace_" << apTFileNum ++;
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
    sc_trace(mVcdFile, in_r_address0, "(port)in_r_address0");
    sc_trace(mVcdFile, in_r_ce0, "(port)in_r_ce0");
    sc_trace(mVcdFile, in_r_q0, "(port)in_r_q0");
    sc_trace(mVcdFile, a, "(port)a");
    sc_trace(mVcdFile, b, "(port)b");
    sc_trace(mVcdFile, c, "(port)c");
    sc_trace(mVcdFile, out_r_address0, "(port)out_r_address0");
    sc_trace(mVcdFile, out_r_ce0, "(port)out_r_ce0");
    sc_trace(mVcdFile, out_r_we0, "(port)out_r_we0");
    sc_trace(mVcdFile, out_r_d0, "(port)out_r_d0");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, sext_ln22_fu_105_p1, "sext_ln22_fu_105_p1");
    sc_trace(mVcdFile, sext_ln22_reg_161, "sext_ln22_reg_161");
    sc_trace(mVcdFile, res_fu_113_p2, "res_fu_113_p2");
    sc_trace(mVcdFile, res_reg_166, "res_reg_166");
    sc_trace(mVcdFile, sext_ln22_1_fu_125_p1, "sext_ln22_1_fu_125_p1");
    sc_trace(mVcdFile, sext_ln22_1_reg_171, "sext_ln22_1_reg_171");
    sc_trace(mVcdFile, i_fu_135_p2, "i_fu_135_p2");
    sc_trace(mVcdFile, i_reg_179, "i_reg_179");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, zext_ln17_fu_141_p1, "zext_ln17_fu_141_p1");
    sc_trace(mVcdFile, zext_ln17_reg_184, "zext_ln17_reg_184");
    sc_trace(mVcdFile, icmp_ln14_fu_129_p2, "icmp_ln14_fu_129_p2");
    sc_trace(mVcdFile, mul_ln22_fu_146_p2, "mul_ln22_fu_146_p2");
    sc_trace(mVcdFile, mul_ln22_reg_194, "mul_ln22_reg_194");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, i_0_reg_94, "i_0_reg_94");
    sc_trace(mVcdFile, ap_CS_fsm_state6, "ap_CS_fsm_state6");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, res_fu_113_p0, "res_fu_113_p0");
    sc_trace(mVcdFile, res_fu_113_p1, "res_fu_113_p1");
    sc_trace(mVcdFile, sext_ln31_fu_109_p1, "sext_ln31_fu_109_p1");
    sc_trace(mVcdFile, add_ln22_1_fu_119_p2, "add_ln22_1_fu_119_p2");
    sc_trace(mVcdFile, mul_ln22_fu_146_p0, "mul_ln22_fu_146_p0");
    sc_trace(mVcdFile, mul_ln22_fu_146_p1, "mul_ln22_fu_146_p1");
    sc_trace(mVcdFile, add_ln22_fu_151_p2, "add_ln22_fu_151_p2");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
    mHdltvinHandle.open("lec8Ex1.hdltvin.dat");
    mHdltvoutHandle.open("lec8Ex1.hdltvout.dat");
}

lec8Ex1::~lec8Ex1() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
}

void lec8Ex1::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        i_0_reg_94 = i_reg_179.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        i_0_reg_94 = ap_const_lv6_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        i_reg_179 = i_fu_135_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        mul_ln22_reg_194 = mul_ln22_fu_146_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        res_reg_166 = res_fu_113_p2.read();
        sext_ln22_1_reg_171 = sext_ln22_1_fu_125_p1.read();
        sext_ln22_reg_161 = sext_ln22_fu_105_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(icmp_ln14_fu_129_p2.read(), ap_const_lv1_0))) {
        zext_ln17_reg_184 = zext_ln17_fu_141_p1.read();
    }
}

void lec8Ex1::thread_add_ln22_1_fu_119_p2() {
    add_ln22_1_fu_119_p2 = (!sext_ln31_fu_109_p1.read().is_01() || !ap_const_lv17_27.is_01())? sc_lv<17>(): (sc_bigint<17>(sext_ln31_fu_109_p1.read()) + sc_biguint<17>(ap_const_lv17_27));
}

void lec8Ex1::thread_add_ln22_fu_151_p2() {
    add_ln22_fu_151_p2 = (!mul_ln22_reg_194.read().is_01() || !res_reg_166.read().is_01())? sc_lv<32>(): (sc_biguint<32>(mul_ln22_reg_194.read()) + sc_biguint<32>(res_reg_166.read()));
}

void lec8Ex1::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void lec8Ex1::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void lec8Ex1::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void lec8Ex1::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void lec8Ex1::thread_ap_CS_fsm_state6() {
    ap_CS_fsm_state6 = ap_CS_fsm.read()[5];
}

void lec8Ex1::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(icmp_ln14_fu_129_p2.read(), ap_const_lv1_1))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void lec8Ex1::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void lec8Ex1::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(icmp_ln14_fu_129_p2.read(), ap_const_lv1_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void lec8Ex1::thread_i_fu_135_p2() {
    i_fu_135_p2 = (!i_0_reg_94.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_biguint<6>(i_0_reg_94.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void lec8Ex1::thread_icmp_ln14_fu_129_p2() {
    icmp_ln14_fu_129_p2 = (!i_0_reg_94.read().is_01() || !ap_const_lv6_3C.is_01())? sc_lv<1>(): sc_lv<1>(i_0_reg_94.read() == ap_const_lv6_3C);
}

void lec8Ex1::thread_in_r_address0() {
    in_r_address0 =  (sc_lv<6>) (zext_ln17_fu_141_p1.read());
}

void lec8Ex1::thread_in_r_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        in_r_ce0 = ap_const_logic_1;
    } else {
        in_r_ce0 = ap_const_logic_0;
    }
}

void lec8Ex1::thread_mul_ln22_fu_146_p0() {
    mul_ln22_fu_146_p0 = in_r_q0.read();
}

void lec8Ex1::thread_mul_ln22_fu_146_p1() {
    mul_ln22_fu_146_p1 =  (sc_lv<16>) (sext_ln22_reg_161.read());
}

void lec8Ex1::thread_mul_ln22_fu_146_p2() {
    mul_ln22_fu_146_p2 = (!mul_ln22_fu_146_p0.read().is_01() || !mul_ln22_fu_146_p1.read().is_01())? sc_lv<32>(): sc_bigint<32>(mul_ln22_fu_146_p0.read()) * sc_bigint<16>(mul_ln22_fu_146_p1.read());
}

void lec8Ex1::thread_out_r_address0() {
    out_r_address0 =  (sc_lv<6>) (zext_ln17_reg_184.read());
}

void lec8Ex1::thread_out_r_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        out_r_ce0 = ap_const_logic_1;
    } else {
        out_r_ce0 = ap_const_logic_0;
    }
}

void lec8Ex1::thread_out_r_d0() {
    out_r_d0 = (!sext_ln22_1_reg_171.read().is_01() || !add_ln22_fu_151_p2.read().is_01())? sc_lv<32>(): (sc_bigint<32>(sext_ln22_1_reg_171.read()) + sc_biguint<32>(add_ln22_fu_151_p2.read()));
}

void lec8Ex1::thread_out_r_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        out_r_we0 = ap_const_logic_1;
    } else {
        out_r_we0 = ap_const_logic_0;
    }
}

void lec8Ex1::thread_res_fu_113_p0() {
    res_fu_113_p0 = c.read();
}

void lec8Ex1::thread_res_fu_113_p1() {
    res_fu_113_p1 = c.read();
}

void lec8Ex1::thread_res_fu_113_p2() {
    res_fu_113_p2 = (!res_fu_113_p0.read().is_01() || !res_fu_113_p1.read().is_01())? sc_lv<32>(): sc_bigint<32>(res_fu_113_p0.read()) * sc_bigint<32>(res_fu_113_p1.read());
}

void lec8Ex1::thread_sext_ln22_1_fu_125_p1() {
    sext_ln22_1_fu_125_p1 = esl_sext<32,17>(add_ln22_1_fu_119_p2.read());
}

void lec8Ex1::thread_sext_ln22_fu_105_p1() {
    sext_ln22_fu_105_p1 = esl_sext<32,16>(a.read());
}

void lec8Ex1::thread_sext_ln31_fu_109_p1() {
    sext_ln31_fu_109_p1 = esl_sext<17,16>(b.read());
}

void lec8Ex1::thread_zext_ln17_fu_141_p1() {
    zext_ln17_fu_141_p1 = esl_zext<64,6>(i_0_reg_94.read());
}

void lec8Ex1::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(icmp_ln14_fu_129_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state4;
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_fsm_state5;
            break;
        case 16 : 
            ap_NS_fsm = ap_ST_fsm_state6;
            break;
        case 32 : 
            ap_NS_fsm = ap_ST_fsm_state2;
            break;
        default : 
            ap_NS_fsm = "XXXXXX";
            break;
    }
}

void lec8Ex1::thread_hdltv_gen() {
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
        mHdltvoutHandle << " , " <<  " \"in_r_address0\" :  \"" << in_r_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"in_r_ce0\" :  \"" << in_r_ce0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"in_r_q0\" :  \"" << in_r_q0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"a\" :  \"" << a.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"b\" :  \"" << b.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"c\" :  \"" << c.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"out_r_address0\" :  \"" << out_r_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"out_r_ce0\" :  \"" << out_r_ce0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"out_r_we0\" :  \"" << out_r_we0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"out_r_d0\" :  \"" << out_r_d0.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

