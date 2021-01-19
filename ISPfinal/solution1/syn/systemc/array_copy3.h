// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _array_copy3_HH_
#define _array_copy3_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct array_copy3 : public sc_module {
    // Port declarations 13
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<14> > data_in_address0;
    sc_out< sc_logic > data_in_ce0;
    sc_in< sc_lv<32> > data_in_q0;
    sc_out< sc_lv<14> > data_out_address0;
    sc_out< sc_logic > data_out_ce0;
    sc_out< sc_logic > data_out_we0;
    sc_out< sc_lv<32> > data_out_d0;


    // Module declarations
    array_copy3(sc_module_name name);
    SC_HAS_PROCESS(array_copy3);

    ~array_copy3();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<15> > indvar_flatten_reg_73;
    sc_signal< sc_lv<8> > y_0_reg_84;
    sc_signal< sc_lv<8> > x_0_reg_95;
    sc_signal< sc_lv<1> > icmp_ln41_fu_106_p2;
    sc_signal< sc_lv<1> > icmp_ln41_reg_179;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<15> > add_ln41_fu_112_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<8> > select_ln46_1_fu_138_p3;
    sc_signal< sc_lv<8> > select_ln46_1_reg_188;
    sc_signal< sc_lv<64> > zext_ln46_1_fu_168_p1;
    sc_signal< sc_lv<64> > zext_ln46_1_reg_193;
    sc_signal< sc_lv<8> > x_fu_173_p2;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_lv<8> > ap_phi_mux_y_0_phi_fu_88_p4;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<1> > icmp_ln43_fu_124_p2;
    sc_signal< sc_lv<8> > y_fu_118_p2;
    sc_signal< sc_lv<15> > tmp_fu_146_p3;
    sc_signal< sc_lv<8> > select_ln46_fu_130_p3;
    sc_signal< sc_lv<16> > zext_ln46_fu_158_p1;
    sc_signal< sc_lv<16> > zext_ln44_fu_154_p1;
    sc_signal< sc_lv<16> > add_ln46_fu_162_p2;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_fsm_state1;
    static const sc_lv<3> ap_ST_fsm_pp0_stage0;
    static const sc_lv<3> ap_ST_fsm_state4;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<15> ap_const_lv15_0;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<15> ap_const_lv15_4000;
    static const sc_lv<15> ap_const_lv15_1;
    static const sc_lv<8> ap_const_lv8_1;
    static const sc_lv<8> ap_const_lv8_80;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<32> ap_const_lv32_2;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln41_fu_112_p2();
    void thread_add_ln46_fu_162_p2();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state4();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state3_pp0_stage0_iter1();
    void thread_ap_condition_pp0_exit_iter0_state2();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_phi_mux_y_0_phi_fu_88_p4();
    void thread_ap_ready();
    void thread_data_in_address0();
    void thread_data_in_ce0();
    void thread_data_out_address0();
    void thread_data_out_ce0();
    void thread_data_out_d0();
    void thread_data_out_we0();
    void thread_icmp_ln41_fu_106_p2();
    void thread_icmp_ln43_fu_124_p2();
    void thread_select_ln46_1_fu_138_p3();
    void thread_select_ln46_fu_130_p3();
    void thread_tmp_fu_146_p3();
    void thread_x_fu_173_p2();
    void thread_y_fu_118_p2();
    void thread_zext_ln44_fu_154_p1();
    void thread_zext_ln46_1_fu_168_p1();
    void thread_zext_ln46_fu_158_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
