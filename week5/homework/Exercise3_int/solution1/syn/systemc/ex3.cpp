// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "ex3.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic ex3::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic ex3::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<37> ex3::ap_ST_fsm_state1 = "1";
const sc_lv<37> ex3::ap_ST_fsm_state2 = "10";
const sc_lv<37> ex3::ap_ST_fsm_state3 = "100";
const sc_lv<37> ex3::ap_ST_fsm_state4 = "1000";
const sc_lv<37> ex3::ap_ST_fsm_state5 = "10000";
const sc_lv<37> ex3::ap_ST_fsm_state6 = "100000";
const sc_lv<37> ex3::ap_ST_fsm_state7 = "1000000";
const sc_lv<37> ex3::ap_ST_fsm_state8 = "10000000";
const sc_lv<37> ex3::ap_ST_fsm_state9 = "100000000";
const sc_lv<37> ex3::ap_ST_fsm_state10 = "1000000000";
const sc_lv<37> ex3::ap_ST_fsm_state11 = "10000000000";
const sc_lv<37> ex3::ap_ST_fsm_state12 = "100000000000";
const sc_lv<37> ex3::ap_ST_fsm_state13 = "1000000000000";
const sc_lv<37> ex3::ap_ST_fsm_state14 = "10000000000000";
const sc_lv<37> ex3::ap_ST_fsm_state15 = "100000000000000";
const sc_lv<37> ex3::ap_ST_fsm_state16 = "1000000000000000";
const sc_lv<37> ex3::ap_ST_fsm_state17 = "10000000000000000";
const sc_lv<37> ex3::ap_ST_fsm_state18 = "100000000000000000";
const sc_lv<37> ex3::ap_ST_fsm_state19 = "1000000000000000000";
const sc_lv<37> ex3::ap_ST_fsm_state20 = "10000000000000000000";
const sc_lv<37> ex3::ap_ST_fsm_state21 = "100000000000000000000";
const sc_lv<37> ex3::ap_ST_fsm_state22 = "1000000000000000000000";
const sc_lv<37> ex3::ap_ST_fsm_state23 = "10000000000000000000000";
const sc_lv<37> ex3::ap_ST_fsm_state24 = "100000000000000000000000";
const sc_lv<37> ex3::ap_ST_fsm_state25 = "1000000000000000000000000";
const sc_lv<37> ex3::ap_ST_fsm_state26 = "10000000000000000000000000";
const sc_lv<37> ex3::ap_ST_fsm_state27 = "100000000000000000000000000";
const sc_lv<37> ex3::ap_ST_fsm_state28 = "1000000000000000000000000000";
const sc_lv<37> ex3::ap_ST_fsm_state29 = "10000000000000000000000000000";
const sc_lv<37> ex3::ap_ST_fsm_state30 = "100000000000000000000000000000";
const sc_lv<37> ex3::ap_ST_fsm_state31 = "1000000000000000000000000000000";
const sc_lv<37> ex3::ap_ST_fsm_state32 = "10000000000000000000000000000000";
const sc_lv<37> ex3::ap_ST_fsm_state33 = "100000000000000000000000000000000";
const sc_lv<37> ex3::ap_ST_fsm_state34 = "1000000000000000000000000000000000";
const sc_lv<37> ex3::ap_ST_fsm_state35 = "10000000000000000000000000000000000";
const sc_lv<37> ex3::ap_ST_fsm_state36 = "100000000000000000000000000000000000";
const sc_lv<37> ex3::ap_ST_fsm_state37 = "1000000000000000000000000000000000000";
const sc_lv<32> ex3::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> ex3::ap_const_lv32_23 = "100011";
const sc_lv<32> ex3::ap_const_lv32_24 = "100100";
const bool ex3::ap_const_boolean_1 = true;

ex3::ex3(sc_module_name name) : sc_module(name), mVcdFile(0) {
    ex3_sdiv_32s_32nsbkb_U1 = new ex3_sdiv_32s_32nsbkb<1,36,32,32,32>("ex3_sdiv_32s_32nsbkb_U1");
    ex3_sdiv_32s_32nsbkb_U1->clk(ap_clk);
    ex3_sdiv_32s_32nsbkb_U1->reset(ap_rst);
    ex3_sdiv_32s_32nsbkb_U1->start(grp_fu_35_ap_start);
    ex3_sdiv_32s_32nsbkb_U1->done(grp_fu_35_ap_done);
    ex3_sdiv_32s_32nsbkb_U1->din0(a);
    ex3_sdiv_32s_32nsbkb_U1->din1(b);
    ex3_sdiv_32s_32nsbkb_U1->ce(ap_var_for_const0);
    ex3_sdiv_32s_32nsbkb_U1->dout(grp_fu_35_p2);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state36);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state37);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_CS_fsm_state37 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state37 );

    SC_METHOD(thread_c);
    sensitive << ( ap_CS_fsm_state37 );
    sensitive << ( z_fu_45_p2 );
    sensitive << ( y_fu_41_p2 );

    SC_METHOD(thread_c_ap_vld);
    sensitive << ( ap_CS_fsm_state37 );

    SC_METHOD(thread_grp_fu_35_ap_start);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_y_fu_41_p1);
    sensitive << ( a );
    sensitive << ( ap_CS_fsm_state37 );

    SC_METHOD(thread_y_fu_41_p2);
    sensitive << ( x_reg_69 );
    sensitive << ( y_fu_41_p1 );

    SC_METHOD(thread_z_fu_45_p1);
    sensitive << ( a );
    sensitive << ( ap_CS_fsm_state37 );

    SC_METHOD(thread_z_fu_45_p2);
    sensitive << ( b );
    sensitive << ( z_fu_45_p1 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    SC_THREAD(thread_ap_var_for_const0);

    ap_CS_fsm = "0000000000000000000000000000000000001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "ex3_sc_trace_" << apTFileNum ++;
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
    sc_trace(mVcdFile, a, "(port)a");
    sc_trace(mVcdFile, b, "(port)b");
    sc_trace(mVcdFile, c, "(port)c");
    sc_trace(mVcdFile, c_ap_vld, "(port)c_ap_vld");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, grp_fu_35_p2, "grp_fu_35_p2");
    sc_trace(mVcdFile, x_reg_69, "x_reg_69");
    sc_trace(mVcdFile, ap_CS_fsm_state36, "ap_CS_fsm_state36");
    sc_trace(mVcdFile, ap_CS_fsm_state37, "ap_CS_fsm_state37");
    sc_trace(mVcdFile, y_fu_41_p1, "y_fu_41_p1");
    sc_trace(mVcdFile, z_fu_45_p1, "z_fu_45_p1");
    sc_trace(mVcdFile, z_fu_45_p2, "z_fu_45_p2");
    sc_trace(mVcdFile, y_fu_41_p2, "y_fu_41_p2");
    sc_trace(mVcdFile, grp_fu_35_ap_start, "grp_fu_35_ap_start");
    sc_trace(mVcdFile, grp_fu_35_ap_done, "grp_fu_35_ap_done");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
    mHdltvinHandle.open("ex3.hdltvin.dat");
    mHdltvoutHandle.open("ex3.hdltvout.dat");
}

ex3::~ex3() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
    delete ex3_sdiv_32s_32nsbkb_U1;
}

void ex3::thread_ap_var_for_const0() {
    ap_var_for_const0 = ap_const_logic_1;
}

void ex3::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state36.read())) {
        x_reg_69 = grp_fu_35_p2.read();
    }
}

void ex3::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void ex3::thread_ap_CS_fsm_state36() {
    ap_CS_fsm_state36 = ap_CS_fsm.read()[35];
}

void ex3::thread_ap_CS_fsm_state37() {
    ap_CS_fsm_state37 = ap_CS_fsm.read()[36];
}

void ex3::thread_ap_done() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state37.read())) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void ex3::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void ex3::thread_ap_ready() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state37.read())) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void ex3::thread_c() {
    c = (!z_fu_45_p2.read().is_01() || !y_fu_41_p2.read().is_01())? sc_lv<32>(): (sc_biguint<32>(z_fu_45_p2.read()) + sc_biguint<32>(y_fu_41_p2.read()));
}

void ex3::thread_c_ap_vld() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state37.read())) {
        c_ap_vld = ap_const_logic_1;
    } else {
        c_ap_vld = ap_const_logic_0;
    }
}

void ex3::thread_grp_fu_35_ap_start() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        grp_fu_35_ap_start = ap_const_logic_1;
    } else {
        grp_fu_35_ap_start = ap_const_logic_0;
    }
}

void ex3::thread_y_fu_41_p1() {
    y_fu_41_p1 = a.read();
}

void ex3::thread_y_fu_41_p2() {
    y_fu_41_p2 = (!x_reg_69.read().is_01() || !y_fu_41_p1.read().is_01())? sc_lv<32>(): sc_bigint<32>(x_reg_69.read()) * sc_bigint<32>(y_fu_41_p1.read());
}

void ex3::thread_z_fu_45_p1() {
    z_fu_45_p1 = a.read();
}

void ex3::thread_z_fu_45_p2() {
    z_fu_45_p2 = (!b.read().is_01() || !z_fu_45_p1.read().is_01())? sc_lv<32>(): (sc_biguint<32>(b.read()) - sc_bigint<32>(z_fu_45_p1.read()));
}

void ex3::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            ap_NS_fsm = ap_ST_fsm_state3;
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
            ap_NS_fsm = ap_ST_fsm_state7;
            break;
        case 64 : 
            ap_NS_fsm = ap_ST_fsm_state8;
            break;
        case 128 : 
            ap_NS_fsm = ap_ST_fsm_state9;
            break;
        case 256 : 
            ap_NS_fsm = ap_ST_fsm_state10;
            break;
        case 512 : 
            ap_NS_fsm = ap_ST_fsm_state11;
            break;
        case 1024 : 
            ap_NS_fsm = ap_ST_fsm_state12;
            break;
        case 2048 : 
            ap_NS_fsm = ap_ST_fsm_state13;
            break;
        case 4096 : 
            ap_NS_fsm = ap_ST_fsm_state14;
            break;
        case 8192 : 
            ap_NS_fsm = ap_ST_fsm_state15;
            break;
        case 16384 : 
            ap_NS_fsm = ap_ST_fsm_state16;
            break;
        case 32768 : 
            ap_NS_fsm = ap_ST_fsm_state17;
            break;
        case 65536 : 
            ap_NS_fsm = ap_ST_fsm_state18;
            break;
        case 131072 : 
            ap_NS_fsm = ap_ST_fsm_state19;
            break;
        case 262144 : 
            ap_NS_fsm = ap_ST_fsm_state20;
            break;
        case 524288 : 
            ap_NS_fsm = ap_ST_fsm_state21;
            break;
        case 1048576 : 
            ap_NS_fsm = ap_ST_fsm_state22;
            break;
        case 2097152 : 
            ap_NS_fsm = ap_ST_fsm_state23;
            break;
        case 4194304 : 
            ap_NS_fsm = ap_ST_fsm_state24;
            break;
        case 8388608 : 
            ap_NS_fsm = ap_ST_fsm_state25;
            break;
        case 16777216 : 
            ap_NS_fsm = ap_ST_fsm_state26;
            break;
        case 33554432 : 
            ap_NS_fsm = ap_ST_fsm_state27;
            break;
        case 67108864 : 
            ap_NS_fsm = ap_ST_fsm_state28;
            break;
        case 134217728 : 
            ap_NS_fsm = ap_ST_fsm_state29;
            break;
        case 268435456 : 
            ap_NS_fsm = ap_ST_fsm_state30;
            break;
        case 536870912 : 
            ap_NS_fsm = ap_ST_fsm_state31;
            break;
        case 1073741824 : 
            ap_NS_fsm = ap_ST_fsm_state32;
            break;
        case 2147483648 : 
            ap_NS_fsm = ap_ST_fsm_state33;
            break;
        case 4294967296 : 
            ap_NS_fsm = ap_ST_fsm_state34;
            break;
        case 8589934592 : 
            ap_NS_fsm = ap_ST_fsm_state35;
            break;
        case 17179869184 : 
            ap_NS_fsm = ap_ST_fsm_state36;
            break;
        case 34359738368 : 
            ap_NS_fsm = ap_ST_fsm_state37;
            break;
        case 68719476736 : 
            ap_NS_fsm = ap_ST_fsm_state1;
            break;
        default : 
            ap_NS_fsm = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
            break;
    }
}

void ex3::thread_hdltv_gen() {
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
        mHdltvinHandle << " , " <<  " \"a\" :  \"" << a.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"b\" :  \"" << b.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"c\" :  \"" << c.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"c_ap_vld\" :  \"" << c_ap_vld.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

