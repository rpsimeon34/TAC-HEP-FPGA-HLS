// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "ex4.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic ex4::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic ex4::ap_const_logic_0 = sc_dt::Log_0;
const bool ex4::ap_const_boolean_1 = true;

ex4::ex4(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_B);
    sensitive << ( ap_start );
    sensitive << ( add_ln16_7_fu_141_p2 );
    sensitive << ( add_ln16_3_fu_117_p2 );

    SC_METHOD(thread_B_ap_vld);
    sensitive << ( ap_start );

    SC_METHOD(thread_add_ln16_1_fu_105_p2);
    sensitive << ( A_A4 );
    sensitive << ( A_A5 );

    SC_METHOD(thread_add_ln16_2_fu_111_p2);
    sensitive << ( A_A3 );
    sensitive << ( add_ln16_1_fu_105_p2 );

    SC_METHOD(thread_add_ln16_3_fu_117_p2);
    sensitive << ( add_ln16_2_fu_111_p2 );
    sensitive << ( add_ln16_fu_99_p2 );

    SC_METHOD(thread_add_ln16_4_fu_123_p2);
    sensitive << ( A_A6 );
    sensitive << ( A_A7 );

    SC_METHOD(thread_add_ln16_5_fu_129_p2);
    sensitive << ( A_A9 );
    sensitive << ( A_A10 );

    SC_METHOD(thread_add_ln16_6_fu_135_p2);
    sensitive << ( A_A8 );
    sensitive << ( add_ln16_5_fu_129_p2 );

    SC_METHOD(thread_add_ln16_7_fu_141_p2);
    sensitive << ( add_ln16_6_fu_135_p2 );
    sensitive << ( add_ln16_4_fu_123_p2 );

    SC_METHOD(thread_add_ln16_fu_99_p2);
    sensitive << ( A_A1 );
    sensitive << ( A_A2 );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );

    SC_METHOD(thread_ap_idle);

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_start );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_virtual_clock.pos() );

    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "ex4_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, A_A1, "(port)A_A1");
    sc_trace(mVcdFile, A_A2, "(port)A_A2");
    sc_trace(mVcdFile, A_A3, "(port)A_A3");
    sc_trace(mVcdFile, A_A4, "(port)A_A4");
    sc_trace(mVcdFile, A_A5, "(port)A_A5");
    sc_trace(mVcdFile, A_A6, "(port)A_A6");
    sc_trace(mVcdFile, A_A7, "(port)A_A7");
    sc_trace(mVcdFile, A_A8, "(port)A_A8");
    sc_trace(mVcdFile, A_A9, "(port)A_A9");
    sc_trace(mVcdFile, A_A10, "(port)A_A10");
    sc_trace(mVcdFile, B, "(port)B");
    sc_trace(mVcdFile, B_ap_vld, "(port)B_ap_vld");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, add_ln16_1_fu_105_p2, "add_ln16_1_fu_105_p2");
    sc_trace(mVcdFile, add_ln16_2_fu_111_p2, "add_ln16_2_fu_111_p2");
    sc_trace(mVcdFile, add_ln16_fu_99_p2, "add_ln16_fu_99_p2");
    sc_trace(mVcdFile, add_ln16_5_fu_129_p2, "add_ln16_5_fu_129_p2");
    sc_trace(mVcdFile, add_ln16_6_fu_135_p2, "add_ln16_6_fu_135_p2");
    sc_trace(mVcdFile, add_ln16_4_fu_123_p2, "add_ln16_4_fu_123_p2");
    sc_trace(mVcdFile, add_ln16_7_fu_141_p2, "add_ln16_7_fu_141_p2");
    sc_trace(mVcdFile, add_ln16_3_fu_117_p2, "add_ln16_3_fu_117_p2");
#endif

    }
    mHdltvinHandle.open("ex4.hdltvin.dat");
    mHdltvoutHandle.open("ex4.hdltvout.dat");
}

ex4::~ex4() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
}

void ex4::thread_B() {
    B = (!add_ln16_7_fu_141_p2.read().is_01() || !add_ln16_3_fu_117_p2.read().is_01())? sc_lv<32>(): (sc_biguint<32>(add_ln16_7_fu_141_p2.read()) + sc_biguint<32>(add_ln16_3_fu_117_p2.read()));
}

void ex4::thread_B_ap_vld() {
    if (esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1)) {
        B_ap_vld = ap_const_logic_1;
    } else {
        B_ap_vld = ap_const_logic_0;
    }
}

void ex4::thread_add_ln16_1_fu_105_p2() {
    add_ln16_1_fu_105_p2 = (!A_A4.read().is_01() || !A_A5.read().is_01())? sc_lv<32>(): (sc_biguint<32>(A_A4.read()) + sc_biguint<32>(A_A5.read()));
}

void ex4::thread_add_ln16_2_fu_111_p2() {
    add_ln16_2_fu_111_p2 = (!add_ln16_1_fu_105_p2.read().is_01() || !A_A3.read().is_01())? sc_lv<32>(): (sc_biguint<32>(add_ln16_1_fu_105_p2.read()) + sc_biguint<32>(A_A3.read()));
}

void ex4::thread_add_ln16_3_fu_117_p2() {
    add_ln16_3_fu_117_p2 = (!add_ln16_2_fu_111_p2.read().is_01() || !add_ln16_fu_99_p2.read().is_01())? sc_lv<32>(): (sc_biguint<32>(add_ln16_2_fu_111_p2.read()) + sc_biguint<32>(add_ln16_fu_99_p2.read()));
}

void ex4::thread_add_ln16_4_fu_123_p2() {
    add_ln16_4_fu_123_p2 = (!A_A6.read().is_01() || !A_A7.read().is_01())? sc_lv<32>(): (sc_biguint<32>(A_A6.read()) + sc_biguint<32>(A_A7.read()));
}

void ex4::thread_add_ln16_5_fu_129_p2() {
    add_ln16_5_fu_129_p2 = (!A_A9.read().is_01() || !A_A10.read().is_01())? sc_lv<32>(): (sc_biguint<32>(A_A9.read()) + sc_biguint<32>(A_A10.read()));
}

void ex4::thread_add_ln16_6_fu_135_p2() {
    add_ln16_6_fu_135_p2 = (!add_ln16_5_fu_129_p2.read().is_01() || !A_A8.read().is_01())? sc_lv<32>(): (sc_biguint<32>(add_ln16_5_fu_129_p2.read()) + sc_biguint<32>(A_A8.read()));
}

void ex4::thread_add_ln16_7_fu_141_p2() {
    add_ln16_7_fu_141_p2 = (!add_ln16_6_fu_135_p2.read().is_01() || !add_ln16_4_fu_123_p2.read().is_01())? sc_lv<32>(): (sc_biguint<32>(add_ln16_6_fu_135_p2.read()) + sc_biguint<32>(add_ln16_4_fu_123_p2.read()));
}

void ex4::thread_add_ln16_fu_99_p2() {
    add_ln16_fu_99_p2 = (!A_A2.read().is_01() || !A_A1.read().is_01())? sc_lv<32>(): (sc_biguint<32>(A_A2.read()) + sc_biguint<32>(A_A1.read()));
}

void ex4::thread_ap_done() {
    ap_done = ap_start.read();
}

void ex4::thread_ap_idle() {
    ap_idle = ap_const_logic_1;
}

void ex4::thread_ap_ready() {
    ap_ready = ap_start.read();
}

void ex4::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"A_A1\" :  \"" << A_A1.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"A_A2\" :  \"" << A_A2.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"A_A3\" :  \"" << A_A3.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"A_A4\" :  \"" << A_A4.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"A_A5\" :  \"" << A_A5.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"A_A6\" :  \"" << A_A6.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"A_A7\" :  \"" << A_A7.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"A_A8\" :  \"" << A_A8.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"A_A9\" :  \"" << A_A9.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"A_A10\" :  \"" << A_A10.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"B\" :  \"" << B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"B_ap_vld\" :  \"" << B_ap_vld.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

