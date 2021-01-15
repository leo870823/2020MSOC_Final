// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "array_copy3.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic array_copy3::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic array_copy3::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<3> array_copy3::ap_ST_fsm_state1 = "1";
const sc_lv<3> array_copy3::ap_ST_fsm_pp0_stage0 = "10";
const sc_lv<3> array_copy3::ap_ST_fsm_state4 = "100";
const bool array_copy3::ap_const_boolean_1 = true;
const sc_lv<32> array_copy3::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> array_copy3::ap_const_lv32_1 = "1";
const bool array_copy3::ap_const_boolean_0 = false;
const sc_lv<1> array_copy3::ap_const_lv1_0 = "0";
const sc_lv<1> array_copy3::ap_const_lv1_1 = "1";
const sc_lv<15> array_copy3::ap_const_lv15_0 = "000000000000000";
const sc_lv<8> array_copy3::ap_const_lv8_0 = "00000000";
const sc_lv<15> array_copy3::ap_const_lv15_4000 = "100000000000000";
const sc_lv<15> array_copy3::ap_const_lv15_1 = "1";
const sc_lv<8> array_copy3::ap_const_lv8_1 = "1";
const sc_lv<8> array_copy3::ap_const_lv8_80 = "10000000";
const sc_lv<7> array_copy3::ap_const_lv7_0 = "0000000";
const sc_lv<32> array_copy3::ap_const_lv32_2 = "10";

array_copy3::array_copy3(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_add_ln21_fu_112_p2);
    sensitive << ( indvar_flatten_reg_73 );

    SC_METHOD(thread_add_ln321_fu_162_p2);
    sensitive << ( zext_ln321_fu_158_p1 );
    sensitive << ( zext_ln24_fu_154_p1 );

    SC_METHOD(thread_ap_CS_fsm_pp0_stage0);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_block_pp0_stage0);

    SC_METHOD(thread_ap_block_pp0_stage0_11001);

    SC_METHOD(thread_ap_block_pp0_stage0_subdone);

    SC_METHOD(thread_ap_block_state2_pp0_stage0_iter0);

    SC_METHOD(thread_ap_block_state3_pp0_stage0_iter1);

    SC_METHOD(thread_ap_condition_pp0_exit_iter0_state2);
    sensitive << ( icmp_ln21_fu_106_p2 );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_ap_enable_pp0);
    sensitive << ( ap_idle_pp0 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_idle_pp0);
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );

    SC_METHOD(thread_ap_phi_mux_y_0_phi_fu_88_p4);
    sensitive << ( y_0_reg_84 );
    sensitive << ( icmp_ln21_reg_179 );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( select_ln26_1_reg_188 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage0 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_data_in_V_address0);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( zext_ln321_4_fu_168_p1 );
    sensitive << ( ap_block_pp0_stage0 );

    SC_METHOD(thread_data_in_V_ce0);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_enable_reg_pp0_iter0 );

    SC_METHOD(thread_data_out_V_address0);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( zext_ln321_4_reg_193 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage0 );

    SC_METHOD(thread_data_out_V_ce0);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_enable_reg_pp0_iter1 );

    SC_METHOD(thread_data_out_V_d0);
    sensitive << ( data_in_V_q0 );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage0 );

    SC_METHOD(thread_data_out_V_we0);
    sensitive << ( icmp_ln21_reg_179 );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_enable_reg_pp0_iter1 );

    SC_METHOD(thread_icmp_ln21_fu_106_p2);
    sensitive << ( indvar_flatten_reg_73 );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_enable_reg_pp0_iter0 );

    SC_METHOD(thread_icmp_ln23_fu_124_p2);
    sensitive << ( x_0_reg_95 );
    sensitive << ( icmp_ln21_fu_106_p2 );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_enable_reg_pp0_iter0 );

    SC_METHOD(thread_select_ln26_1_fu_138_p3);
    sensitive << ( ap_phi_mux_y_0_phi_fu_88_p4 );
    sensitive << ( icmp_ln23_fu_124_p2 );
    sensitive << ( y_fu_118_p2 );

    SC_METHOD(thread_select_ln26_fu_130_p3);
    sensitive << ( x_0_reg_95 );
    sensitive << ( icmp_ln23_fu_124_p2 );

    SC_METHOD(thread_tmp_fu_146_p3);
    sensitive << ( select_ln26_1_fu_138_p3 );

    SC_METHOD(thread_x_fu_173_p2);
    sensitive << ( select_ln26_fu_130_p3 );

    SC_METHOD(thread_y_fu_118_p2);
    sensitive << ( ap_phi_mux_y_0_phi_fu_88_p4 );

    SC_METHOD(thread_zext_ln24_fu_154_p1);
    sensitive << ( tmp_fu_146_p3 );

    SC_METHOD(thread_zext_ln321_4_fu_168_p1);
    sensitive << ( add_ln321_fu_162_p2 );

    SC_METHOD(thread_zext_ln321_fu_158_p1);
    sensitive << ( select_ln26_fu_130_p3 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( icmp_ln21_fu_106_p2 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_block_pp0_stage0_subdone );

    ap_CS_fsm = "001";
    ap_enable_reg_pp0_iter0 = SC_LOGIC_0;
    ap_enable_reg_pp0_iter1 = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "array_copy3_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, data_in_V_address0, "(port)data_in_V_address0");
    sc_trace(mVcdFile, data_in_V_ce0, "(port)data_in_V_ce0");
    sc_trace(mVcdFile, data_in_V_q0, "(port)data_in_V_q0");
    sc_trace(mVcdFile, data_out_V_address0, "(port)data_out_V_address0");
    sc_trace(mVcdFile, data_out_V_ce0, "(port)data_out_V_ce0");
    sc_trace(mVcdFile, data_out_V_we0, "(port)data_out_V_we0");
    sc_trace(mVcdFile, data_out_V_d0, "(port)data_out_V_d0");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, indvar_flatten_reg_73, "indvar_flatten_reg_73");
    sc_trace(mVcdFile, y_0_reg_84, "y_0_reg_84");
    sc_trace(mVcdFile, x_0_reg_95, "x_0_reg_95");
    sc_trace(mVcdFile, icmp_ln21_fu_106_p2, "icmp_ln21_fu_106_p2");
    sc_trace(mVcdFile, icmp_ln21_reg_179, "icmp_ln21_reg_179");
    sc_trace(mVcdFile, ap_CS_fsm_pp0_stage0, "ap_CS_fsm_pp0_stage0");
    sc_trace(mVcdFile, ap_block_state2_pp0_stage0_iter0, "ap_block_state2_pp0_stage0_iter0");
    sc_trace(mVcdFile, ap_block_state3_pp0_stage0_iter1, "ap_block_state3_pp0_stage0_iter1");
    sc_trace(mVcdFile, ap_block_pp0_stage0_11001, "ap_block_pp0_stage0_11001");
    sc_trace(mVcdFile, add_ln21_fu_112_p2, "add_ln21_fu_112_p2");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter0, "ap_enable_reg_pp0_iter0");
    sc_trace(mVcdFile, select_ln26_1_fu_138_p3, "select_ln26_1_fu_138_p3");
    sc_trace(mVcdFile, select_ln26_1_reg_188, "select_ln26_1_reg_188");
    sc_trace(mVcdFile, zext_ln321_4_fu_168_p1, "zext_ln321_4_fu_168_p1");
    sc_trace(mVcdFile, zext_ln321_4_reg_193, "zext_ln321_4_reg_193");
    sc_trace(mVcdFile, x_fu_173_p2, "x_fu_173_p2");
    sc_trace(mVcdFile, ap_block_pp0_stage0_subdone, "ap_block_pp0_stage0_subdone");
    sc_trace(mVcdFile, ap_condition_pp0_exit_iter0_state2, "ap_condition_pp0_exit_iter0_state2");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter1, "ap_enable_reg_pp0_iter1");
    sc_trace(mVcdFile, ap_phi_mux_y_0_phi_fu_88_p4, "ap_phi_mux_y_0_phi_fu_88_p4");
    sc_trace(mVcdFile, ap_block_pp0_stage0, "ap_block_pp0_stage0");
    sc_trace(mVcdFile, icmp_ln23_fu_124_p2, "icmp_ln23_fu_124_p2");
    sc_trace(mVcdFile, y_fu_118_p2, "y_fu_118_p2");
    sc_trace(mVcdFile, tmp_fu_146_p3, "tmp_fu_146_p3");
    sc_trace(mVcdFile, select_ln26_fu_130_p3, "select_ln26_fu_130_p3");
    sc_trace(mVcdFile, zext_ln321_fu_158_p1, "zext_ln321_fu_158_p1");
    sc_trace(mVcdFile, zext_ln24_fu_154_p1, "zext_ln24_fu_154_p1");
    sc_trace(mVcdFile, add_ln321_fu_162_p2, "add_ln321_fu_162_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
    sc_trace(mVcdFile, ap_idle_pp0, "ap_idle_pp0");
    sc_trace(mVcdFile, ap_enable_pp0, "ap_enable_pp0");
#endif

    }
}

array_copy3::~array_copy3() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void array_copy3::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter0 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
             esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && 
             esl_seteq<1,1,1>(ap_const_logic_1, ap_condition_pp0_exit_iter0_state2.read()))) {
            ap_enable_reg_pp0_iter0 = ap_const_logic_0;
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                    esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
            ap_enable_reg_pp0_iter0 = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter1 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && 
             esl_seteq<1,1,1>(ap_const_logic_1, ap_condition_pp0_exit_iter0_state2.read()))) {
            ap_enable_reg_pp0_iter1 = (ap_condition_pp0_exit_iter0_state2.read() ^ ap_const_logic_1);
        } else if (esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0)) {
            ap_enable_reg_pp0_iter1 = ap_enable_reg_pp0_iter0.read();
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                    esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
            ap_enable_reg_pp0_iter1 = ap_const_logic_0;
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(icmp_ln21_fu_106_p2.read(), ap_const_lv1_0))) {
        indvar_flatten_reg_73 = add_ln21_fu_112_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        indvar_flatten_reg_73 = ap_const_lv15_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(icmp_ln21_fu_106_p2.read(), ap_const_lv1_0))) {
        x_0_reg_95 = x_fu_173_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        x_0_reg_95 = ap_const_lv8_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(icmp_ln21_reg_179.read(), ap_const_lv1_0))) {
        y_0_reg_84 = select_ln26_1_reg_188.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        y_0_reg_84 = ap_const_lv8_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        icmp_ln21_reg_179 = icmp_ln21_fu_106_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && esl_seteq<1,1,1>(icmp_ln21_fu_106_p2.read(), ap_const_lv1_0))) {
        select_ln26_1_reg_188 = select_ln26_1_fu_138_p3.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(icmp_ln21_fu_106_p2.read(), ap_const_lv1_0))) {
        zext_ln321_4_reg_193 = zext_ln321_4_fu_168_p1.read();
    }
}

void array_copy3::thread_add_ln21_fu_112_p2() {
    add_ln21_fu_112_p2 = (!indvar_flatten_reg_73.read().is_01() || !ap_const_lv15_1.is_01())? sc_lv<15>(): (sc_biguint<15>(indvar_flatten_reg_73.read()) + sc_biguint<15>(ap_const_lv15_1));
}

void array_copy3::thread_add_ln321_fu_162_p2() {
    add_ln321_fu_162_p2 = (!zext_ln321_fu_158_p1.read().is_01() || !zext_ln24_fu_154_p1.read().is_01())? sc_lv<16>(): (sc_biguint<16>(zext_ln321_fu_158_p1.read()) + sc_biguint<16>(zext_ln24_fu_154_p1.read()));
}

void array_copy3::thread_ap_CS_fsm_pp0_stage0() {
    ap_CS_fsm_pp0_stage0 = ap_CS_fsm.read()[1];
}

void array_copy3::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void array_copy3::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[2];
}

void array_copy3::thread_ap_block_pp0_stage0() {
    ap_block_pp0_stage0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void array_copy3::thread_ap_block_pp0_stage0_11001() {
    ap_block_pp0_stage0_11001 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void array_copy3::thread_ap_block_pp0_stage0_subdone() {
    ap_block_pp0_stage0_subdone = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void array_copy3::thread_ap_block_state2_pp0_stage0_iter0() {
    ap_block_state2_pp0_stage0_iter0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void array_copy3::thread_ap_block_state3_pp0_stage0_iter1() {
    ap_block_state3_pp0_stage0_iter1 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void array_copy3::thread_ap_condition_pp0_exit_iter0_state2() {
    if (esl_seteq<1,1,1>(icmp_ln21_fu_106_p2.read(), ap_const_lv1_1)) {
        ap_condition_pp0_exit_iter0_state2 = ap_const_logic_1;
    } else {
        ap_condition_pp0_exit_iter0_state2 = ap_const_logic_0;
    }
}

void array_copy3::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void array_copy3::thread_ap_enable_pp0() {
    ap_enable_pp0 = (ap_idle_pp0.read() ^ ap_const_logic_1);
}

void array_copy3::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void array_copy3::thread_ap_idle_pp0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter1.read()))) {
        ap_idle_pp0 = ap_const_logic_1;
    } else {
        ap_idle_pp0 = ap_const_logic_0;
    }
}

void array_copy3::thread_ap_phi_mux_y_0_phi_fu_88_p4() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(icmp_ln21_reg_179.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0))) {
        ap_phi_mux_y_0_phi_fu_88_p4 = select_ln26_1_reg_188.read();
    } else {
        ap_phi_mux_y_0_phi_fu_88_p4 = y_0_reg_84.read();
    }
}

void array_copy3::thread_ap_ready() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void array_copy3::thread_data_in_V_address0() {
    data_in_V_address0 =  (sc_lv<14>) (zext_ln321_4_fu_168_p1.read());
}

void array_copy3::thread_data_in_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        data_in_V_ce0 = ap_const_logic_1;
    } else {
        data_in_V_ce0 = ap_const_logic_0;
    }
}

void array_copy3::thread_data_out_V_address0() {
    data_out_V_address0 =  (sc_lv<14>) (zext_ln321_4_reg_193.read());
}

void array_copy3::thread_data_out_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()))) {
        data_out_V_ce0 = ap_const_logic_1;
    } else {
        data_out_V_ce0 = ap_const_logic_0;
    }
}

void array_copy3::thread_data_out_V_d0() {
    data_out_V_d0 = data_in_V_q0.read();
}

void array_copy3::thread_data_out_V_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(icmp_ln21_reg_179.read(), ap_const_lv1_0))) {
        data_out_V_we0 = ap_const_logic_1;
    } else {
        data_out_V_we0 = ap_const_logic_0;
    }
}

void array_copy3::thread_icmp_ln21_fu_106_p2() {
    icmp_ln21_fu_106_p2 = (!indvar_flatten_reg_73.read().is_01() || !ap_const_lv15_4000.is_01())? sc_lv<1>(): sc_lv<1>(indvar_flatten_reg_73.read() == ap_const_lv15_4000);
}

void array_copy3::thread_icmp_ln23_fu_124_p2() {
    icmp_ln23_fu_124_p2 = (!x_0_reg_95.read().is_01() || !ap_const_lv8_80.is_01())? sc_lv<1>(): sc_lv<1>(x_0_reg_95.read() == ap_const_lv8_80);
}

void array_copy3::thread_select_ln26_1_fu_138_p3() {
    select_ln26_1_fu_138_p3 = (!icmp_ln23_fu_124_p2.read()[0].is_01())? sc_lv<8>(): ((icmp_ln23_fu_124_p2.read()[0].to_bool())? y_fu_118_p2.read(): ap_phi_mux_y_0_phi_fu_88_p4.read());
}

void array_copy3::thread_select_ln26_fu_130_p3() {
    select_ln26_fu_130_p3 = (!icmp_ln23_fu_124_p2.read()[0].is_01())? sc_lv<8>(): ((icmp_ln23_fu_124_p2.read()[0].to_bool())? ap_const_lv8_0: x_0_reg_95.read());
}

void array_copy3::thread_tmp_fu_146_p3() {
    tmp_fu_146_p3 = esl_concat<8,7>(select_ln26_1_fu_138_p3.read(), ap_const_lv7_0);
}

void array_copy3::thread_x_fu_173_p2() {
    x_fu_173_p2 = (!select_ln26_fu_130_p3.read().is_01() || !ap_const_lv8_1.is_01())? sc_lv<8>(): (sc_biguint<8>(select_ln26_fu_130_p3.read()) + sc_biguint<8>(ap_const_lv8_1));
}

void array_copy3::thread_y_fu_118_p2() {
    y_fu_118_p2 = (!ap_phi_mux_y_0_phi_fu_88_p4.read().is_01() || !ap_const_lv8_1.is_01())? sc_lv<8>(): (sc_biguint<8>(ap_phi_mux_y_0_phi_fu_88_p4.read()) + sc_biguint<8>(ap_const_lv8_1));
}

void array_copy3::thread_zext_ln24_fu_154_p1() {
    zext_ln24_fu_154_p1 = esl_zext<16,15>(tmp_fu_146_p3.read());
}

void array_copy3::thread_zext_ln321_4_fu_168_p1() {
    zext_ln321_4_fu_168_p1 = esl_zext<64,16>(add_ln321_fu_162_p2.read());
}

void array_copy3::thread_zext_ln321_fu_158_p1() {
    zext_ln321_fu_158_p1 = esl_zext<16,8>(select_ln26_fu_130_p3.read());
}

void array_copy3::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if (!(esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(icmp_ln21_fu_106_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(icmp_ln21_fu_106_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state4;
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

