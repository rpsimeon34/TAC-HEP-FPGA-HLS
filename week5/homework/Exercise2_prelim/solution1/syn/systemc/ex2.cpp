// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "ex2.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic ex2::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic ex2::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<4> ex2::ap_ST_fsm_state1 = "1";
const sc_lv<4> ex2::ap_ST_fsm_state2 = "10";
const sc_lv<4> ex2::ap_ST_fsm_state3 = "100";
const sc_lv<4> ex2::ap_ST_fsm_state4 = "1000";
const sc_lv<32> ex2::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> ex2::ap_const_lv32_1 = "1";
const sc_lv<1> ex2::ap_const_lv1_0 = "0";
const sc_lv<32> ex2::ap_const_lv32_2 = "10";
const sc_lv<32> ex2::ap_const_lv32_3 = "11";
const sc_lv<3> ex2::ap_const_lv3_0 = "000";
const sc_lv<1> ex2::ap_const_lv1_1 = "1";
const sc_lv<12> ex2::ap_const_lv12_0 = "000000000000";
const sc_lv<3> ex2::ap_const_lv3_6 = "110";
const sc_lv<3> ex2::ap_const_lv3_1 = "1";
const bool ex2::ap_const_boolean_1 = true;

ex2::ex2(sc_module_name name) : sc_module(name), mVcdFile(0) {
    ex2_mac_muladd_5sbkb_U1 = new ex2_mac_muladd_5sbkb<1,1,5,5,12,12>("ex2_mac_muladd_5sbkb_U1");
    ex2_mac_muladd_5sbkb_U1->din0(B_q0);
    ex2_mac_muladd_5sbkb_U1->din1(A_q0);
    ex2_mac_muladd_5sbkb_U1->din2(acc_0_reg_103);
    ex2_mac_muladd_5sbkb_U1->dout(grp_fu_205_p3);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_A_address0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( sext_ln10_3_fu_187_p1 );

    SC_METHOD(thread_A_ce0);
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_B_address0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( zext_ln10_1_fu_173_p1 );

    SC_METHOD(thread_B_ce0);
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_C_address0);
    sensitive << ( zext_ln10_reg_221 );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_C_ce0);
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_C_d0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( acc_0_reg_103 );

    SC_METHOD(thread_C_we0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( icmp_ln9_fu_161_p2 );

    SC_METHOD(thread_add_ln10_fu_182_p2);
    sensitive << ( sub_ln10_reg_226 );
    sensitive << ( zext_ln10_4_fu_178_p1 );

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
    sensitive << ( icmp_ln7_fu_115_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln7_fu_115_p2 );

    SC_METHOD(thread_i_fu_121_p2);
    sensitive << ( i_0_reg_81 );

    SC_METHOD(thread_icmp_ln7_fu_115_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( i_0_reg_81 );

    SC_METHOD(thread_icmp_ln9_fu_161_p2);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( j_0_reg_92 );

    SC_METHOD(thread_j_fu_167_p2);
    sensitive << ( j_0_reg_92 );

    SC_METHOD(thread_sext_ln10_3_fu_187_p1);
    sensitive << ( add_ln10_fu_182_p2 );

    SC_METHOD(thread_sub_ln10_fu_155_p2);
    sensitive << ( zext_ln10_2_fu_139_p1 );
    sensitive << ( zext_ln10_3_fu_151_p1 );

    SC_METHOD(thread_tmp_1_fu_131_p3);
    sensitive << ( i_0_reg_81 );

    SC_METHOD(thread_tmp_2_fu_143_p3);
    sensitive << ( i_0_reg_81 );

    SC_METHOD(thread_zext_ln10_1_fu_173_p1);
    sensitive << ( j_0_reg_92 );

    SC_METHOD(thread_zext_ln10_2_fu_139_p1);
    sensitive << ( tmp_1_fu_131_p3 );

    SC_METHOD(thread_zext_ln10_3_fu_151_p1);
    sensitive << ( tmp_2_fu_143_p3 );

    SC_METHOD(thread_zext_ln10_4_fu_178_p1);
    sensitive << ( j_0_reg_92 );

    SC_METHOD(thread_zext_ln10_fu_127_p1);
    sensitive << ( i_0_reg_81 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln7_fu_115_p2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( icmp_ln9_fu_161_p2 );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    ap_CS_fsm = "0001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "ex2_sc_trace_" << apTFileNum ++;
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
    sc_trace(mVcdFile, A_address0, "(port)A_address0");
    sc_trace(mVcdFile, A_ce0, "(port)A_ce0");
    sc_trace(mVcdFile, A_q0, "(port)A_q0");
    sc_trace(mVcdFile, B_address0, "(port)B_address0");
    sc_trace(mVcdFile, B_ce0, "(port)B_ce0");
    sc_trace(mVcdFile, B_q0, "(port)B_q0");
    sc_trace(mVcdFile, C_address0, "(port)C_address0");
    sc_trace(mVcdFile, C_ce0, "(port)C_ce0");
    sc_trace(mVcdFile, C_we0, "(port)C_we0");
    sc_trace(mVcdFile, C_d0, "(port)C_d0");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, i_fu_121_p2, "i_fu_121_p2");
    sc_trace(mVcdFile, i_reg_216, "i_reg_216");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, zext_ln10_fu_127_p1, "zext_ln10_fu_127_p1");
    sc_trace(mVcdFile, zext_ln10_reg_221, "zext_ln10_reg_221");
    sc_trace(mVcdFile, icmp_ln7_fu_115_p2, "icmp_ln7_fu_115_p2");
    sc_trace(mVcdFile, sub_ln10_fu_155_p2, "sub_ln10_fu_155_p2");
    sc_trace(mVcdFile, sub_ln10_reg_226, "sub_ln10_reg_226");
    sc_trace(mVcdFile, j_fu_167_p2, "j_fu_167_p2");
    sc_trace(mVcdFile, j_reg_234, "j_reg_234");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, icmp_ln9_fu_161_p2, "icmp_ln9_fu_161_p2");
    sc_trace(mVcdFile, grp_fu_205_p3, "grp_fu_205_p3");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, i_0_reg_81, "i_0_reg_81");
    sc_trace(mVcdFile, j_0_reg_92, "j_0_reg_92");
    sc_trace(mVcdFile, acc_0_reg_103, "acc_0_reg_103");
    sc_trace(mVcdFile, sext_ln10_3_fu_187_p1, "sext_ln10_3_fu_187_p1");
    sc_trace(mVcdFile, zext_ln10_1_fu_173_p1, "zext_ln10_1_fu_173_p1");
    sc_trace(mVcdFile, tmp_1_fu_131_p3, "tmp_1_fu_131_p3");
    sc_trace(mVcdFile, tmp_2_fu_143_p3, "tmp_2_fu_143_p3");
    sc_trace(mVcdFile, zext_ln10_2_fu_139_p1, "zext_ln10_2_fu_139_p1");
    sc_trace(mVcdFile, zext_ln10_3_fu_151_p1, "zext_ln10_3_fu_151_p1");
    sc_trace(mVcdFile, zext_ln10_4_fu_178_p1, "zext_ln10_4_fu_178_p1");
    sc_trace(mVcdFile, add_ln10_fu_182_p2, "add_ln10_fu_182_p2");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
    mHdltvinHandle.open("ex2.hdltvin.dat");
    mHdltvoutHandle.open("ex2.hdltvout.dat");
}

ex2::~ex2() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
    delete ex2_mac_muladd_5sbkb_U1;
}

void ex2::thread_ap_clk_no_reset_() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        acc_0_reg_103 = grp_fu_205_p3.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(icmp_ln7_fu_115_p2.read(), ap_const_lv1_0))) {
        acc_0_reg_103 = ap_const_lv12_0;
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
         esl_seteq<1,1,1>(icmp_ln9_fu_161_p2.read(), ap_const_lv1_1))) {
        i_0_reg_81 = i_reg_216.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        i_0_reg_81 = ap_const_lv3_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        j_0_reg_92 = j_reg_234.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(icmp_ln7_fu_115_p2.read(), ap_const_lv1_0))) {
        j_0_reg_92 = ap_const_lv3_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        i_reg_216 = i_fu_121_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        j_reg_234 = j_fu_167_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(icmp_ln7_fu_115_p2.read(), ap_const_lv1_0))) {
        sub_ln10_reg_226 = sub_ln10_fu_155_p2.read();
        zext_ln10_reg_221 = zext_ln10_fu_127_p1.read();
    }
}

void ex2::thread_A_address0() {
    A_address0 =  (sc_lv<6>) (sext_ln10_3_fu_187_p1.read());
}

void ex2::thread_A_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        A_ce0 = ap_const_logic_1;
    } else {
        A_ce0 = ap_const_logic_0;
    }
}

void ex2::thread_B_address0() {
    B_address0 =  (sc_lv<3>) (zext_ln10_1_fu_173_p1.read());
}

void ex2::thread_B_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        B_ce0 = ap_const_logic_1;
    } else {
        B_ce0 = ap_const_logic_0;
    }
}

void ex2::thread_C_address0() {
    C_address0 =  (sc_lv<3>) (zext_ln10_reg_221.read());
}

void ex2::thread_C_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        C_ce0 = ap_const_logic_1;
    } else {
        C_ce0 = ap_const_logic_0;
    }
}

void ex2::thread_C_d0() {
    C_d0 = acc_0_reg_103.read().range(6-1, 0);
}

void ex2::thread_C_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
         esl_seteq<1,1,1>(icmp_ln9_fu_161_p2.read(), ap_const_lv1_1))) {
        C_we0 = ap_const_logic_1;
    } else {
        C_we0 = ap_const_logic_0;
    }
}

void ex2::thread_add_ln10_fu_182_p2() {
    add_ln10_fu_182_p2 = (!sub_ln10_reg_226.read().is_01() || !zext_ln10_4_fu_178_p1.read().is_01())? sc_lv<7>(): (sc_biguint<7>(sub_ln10_reg_226.read()) + sc_biguint<7>(zext_ln10_4_fu_178_p1.read()));
}

void ex2::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void ex2::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void ex2::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void ex2::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void ex2::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(icmp_ln7_fu_115_p2.read(), ap_const_lv1_1))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void ex2::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void ex2::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(icmp_ln7_fu_115_p2.read(), ap_const_lv1_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void ex2::thread_i_fu_121_p2() {
    i_fu_121_p2 = (!i_0_reg_81.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(i_0_reg_81.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void ex2::thread_icmp_ln7_fu_115_p2() {
    icmp_ln7_fu_115_p2 = (!i_0_reg_81.read().is_01() || !ap_const_lv3_6.is_01())? sc_lv<1>(): sc_lv<1>(i_0_reg_81.read() == ap_const_lv3_6);
}

void ex2::thread_icmp_ln9_fu_161_p2() {
    icmp_ln9_fu_161_p2 = (!j_0_reg_92.read().is_01() || !ap_const_lv3_6.is_01())? sc_lv<1>(): sc_lv<1>(j_0_reg_92.read() == ap_const_lv3_6);
}

void ex2::thread_j_fu_167_p2() {
    j_fu_167_p2 = (!j_0_reg_92.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(j_0_reg_92.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void ex2::thread_sext_ln10_3_fu_187_p1() {
    sext_ln10_3_fu_187_p1 = esl_sext<64,7>(add_ln10_fu_182_p2.read());
}

void ex2::thread_sub_ln10_fu_155_p2() {
    sub_ln10_fu_155_p2 = (!zext_ln10_2_fu_139_p1.read().is_01() || !zext_ln10_3_fu_151_p1.read().is_01())? sc_lv<7>(): (sc_biguint<7>(zext_ln10_2_fu_139_p1.read()) - sc_biguint<7>(zext_ln10_3_fu_151_p1.read()));
}

void ex2::thread_tmp_1_fu_131_p3() {
    tmp_1_fu_131_p3 = esl_concat<3,3>(i_0_reg_81.read(), ap_const_lv3_0);
}

void ex2::thread_tmp_2_fu_143_p3() {
    tmp_2_fu_143_p3 = esl_concat<3,1>(i_0_reg_81.read(), ap_const_lv1_0);
}

void ex2::thread_zext_ln10_1_fu_173_p1() {
    zext_ln10_1_fu_173_p1 = esl_zext<64,3>(j_0_reg_92.read());
}

void ex2::thread_zext_ln10_2_fu_139_p1() {
    zext_ln10_2_fu_139_p1 = esl_zext<7,6>(tmp_1_fu_131_p3.read());
}

void ex2::thread_zext_ln10_3_fu_151_p1() {
    zext_ln10_3_fu_151_p1 = esl_zext<7,4>(tmp_2_fu_143_p3.read());
}

void ex2::thread_zext_ln10_4_fu_178_p1() {
    zext_ln10_4_fu_178_p1 = esl_zext<7,3>(j_0_reg_92.read());
}

void ex2::thread_zext_ln10_fu_127_p1() {
    zext_ln10_fu_127_p1 = esl_zext<64,3>(i_0_reg_81.read());
}

void ex2::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(icmp_ln7_fu_115_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(icmp_ln9_fu_161_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state4;
            }
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_fsm_state3;
            break;
        default : 
            ap_NS_fsm = "XXXX";
            break;
    }
}

void ex2::thread_hdltv_gen() {
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
        mHdltvoutHandle << " , " <<  " \"A_address0\" :  \"" << A_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"A_ce0\" :  \"" << A_ce0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"A_q0\" :  \"" << A_q0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"B_address0\" :  \"" << B_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"B_ce0\" :  \"" << B_ce0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"B_q0\" :  \"" << B_q0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"C_address0\" :  \"" << C_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"C_ce0\" :  \"" << C_ce0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"C_we0\" :  \"" << C_we0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"C_d0\" :  \"" << C_d0.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

