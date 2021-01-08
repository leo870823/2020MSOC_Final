// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _Relax_HH_
#define _Relax_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "cross_channel_debibs.h"

namespace ap_rtl {

struct Relax : public sc_module {
    // Port declarations 16
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<14> > x_V_address0;
    sc_out< sc_logic > x_V_ce0;
    sc_in< sc_lv<8> > x_V_q0;
    sc_out< sc_lv<14> > x_old_V_address0;
    sc_out< sc_logic > x_old_V_ce0;
    sc_in< sc_lv<8> > x_old_V_q0;
    sc_out< sc_lv<14> > x_bar_V_address0;
    sc_out< sc_logic > x_bar_V_ce0;
    sc_out< sc_logic > x_bar_V_we0;
    sc_out< sc_lv<8> > x_bar_V_d0;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    Relax(sc_module_name name);
    SC_HAS_PROCESS(Relax);

    ~Relax();

    sc_trace_file* mVcdFile;

    cross_channel_debibs<1,6,32,64>* cross_channel_debibs_U71;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<15> > indvar_flatten_reg_119;
    sc_signal< sc_lv<8> > j_0_reg_130;
    sc_signal< sc_lv<8> > i_0_reg_141;
    sc_signal< sc_lv<1> > icmp_ln207_fu_155_p2;
    sc_signal< sc_lv<1> > icmp_ln207_reg_490;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter2;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter3;
    sc_signal< bool > ap_block_state6_pp0_stage0_iter4;
    sc_signal< bool > ap_block_state7_pp0_stage0_iter5;
    sc_signal< bool > ap_block_state8_pp0_stage0_iter6;
    sc_signal< bool > ap_block_state9_pp0_stage0_iter7;
    sc_signal< bool > ap_block_state10_pp0_stage0_iter8;
    sc_signal< bool > ap_block_state11_pp0_stage0_iter9;
    sc_signal< bool > ap_block_state12_pp0_stage0_iter10;
    sc_signal< bool > ap_block_state13_pp0_stage0_iter11;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<1> > icmp_ln207_reg_490_pp0_iter1_reg;
    sc_signal< sc_lv<1> > icmp_ln207_reg_490_pp0_iter2_reg;
    sc_signal< sc_lv<1> > icmp_ln207_reg_490_pp0_iter3_reg;
    sc_signal< sc_lv<1> > icmp_ln207_reg_490_pp0_iter4_reg;
    sc_signal< sc_lv<1> > icmp_ln207_reg_490_pp0_iter5_reg;
    sc_signal< sc_lv<1> > icmp_ln207_reg_490_pp0_iter6_reg;
    sc_signal< sc_lv<1> > icmp_ln207_reg_490_pp0_iter7_reg;
    sc_signal< sc_lv<1> > icmp_ln207_reg_490_pp0_iter8_reg;
    sc_signal< sc_lv<1> > icmp_ln207_reg_490_pp0_iter9_reg;
    sc_signal< sc_lv<1> > icmp_ln207_reg_490_pp0_iter10_reg;
    sc_signal< sc_lv<15> > add_ln207_fu_161_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<8> > select_ln212_1_fu_187_p3;
    sc_signal< sc_lv<8> > select_ln212_1_reg_499;
    sc_signal< sc_lv<64> > zext_ln215_7_fu_217_p1;
    sc_signal< sc_lv<64> > zext_ln215_7_reg_504;
    sc_signal< sc_lv<64> > zext_ln215_7_reg_504_pp0_iter1_reg;
    sc_signal< sc_lv<64> > zext_ln215_7_reg_504_pp0_iter2_reg;
    sc_signal< sc_lv<64> > zext_ln215_7_reg_504_pp0_iter3_reg;
    sc_signal< sc_lv<64> > zext_ln215_7_reg_504_pp0_iter4_reg;
    sc_signal< sc_lv<64> > zext_ln215_7_reg_504_pp0_iter5_reg;
    sc_signal< sc_lv<64> > zext_ln215_7_reg_504_pp0_iter6_reg;
    sc_signal< sc_lv<64> > zext_ln215_7_reg_504_pp0_iter7_reg;
    sc_signal< sc_lv<64> > zext_ln215_7_reg_504_pp0_iter8_reg;
    sc_signal< sc_lv<64> > zext_ln215_7_reg_504_pp0_iter9_reg;
    sc_signal< sc_lv<64> > zext_ln215_7_reg_504_pp0_iter10_reg;
    sc_signal< sc_lv<8> > i_fu_223_p2;
    sc_signal< sc_lv<9> > ret_V_fu_237_p2;
    sc_signal< sc_lv<9> > ret_V_reg_524;
    sc_signal< sc_lv<64> > grp_fu_152_p1;
    sc_signal< sc_lv<64> > val_assign_reg_534;
    sc_signal< sc_lv<64> > reg_V_fu_247_p1;
    sc_signal< sc_lv<64> > reg_V_reg_539;
    sc_signal< sc_lv<64> > reg_V_reg_539_pp0_iter9_reg;
    sc_signal< sc_lv<1> > p_Result_31_reg_545;
    sc_signal< sc_lv<1> > p_Result_31_reg_545_pp0_iter9_reg;
    sc_signal< sc_lv<8> > trunc_ln331_fu_276_p1;
    sc_signal< sc_lv<8> > trunc_ln331_reg_550;
    sc_signal< sc_lv<8> > trunc_ln331_reg_550_pp0_iter9_reg;
    sc_signal< sc_lv<1> > icmp_ln326_fu_280_p2;
    sc_signal< sc_lv<1> > icmp_ln326_reg_556;
    sc_signal< sc_lv<1> > icmp_ln326_reg_556_pp0_iter9_reg;
    sc_signal< sc_lv<12> > sh_amt_fu_286_p2;
    sc_signal< sc_lv<12> > sh_amt_reg_562;
    sc_signal< sc_lv<1> > icmp_ln330_fu_292_p2;
    sc_signal< sc_lv<1> > icmp_ln330_reg_568;
    sc_signal< sc_lv<1> > icmp_ln330_reg_568_pp0_iter9_reg;
    sc_signal< sc_lv<1> > icmp_ln332_fu_298_p2;
    sc_signal< sc_lv<1> > icmp_ln332_reg_573;
    sc_signal< sc_lv<1> > icmp_ln333_fu_304_p2;
    sc_signal< sc_lv<1> > icmp_ln333_reg_579;
    sc_signal< sc_lv<1> > icmp_ln333_reg_579_pp0_iter9_reg;
    sc_signal< sc_lv<1> > or_ln330_fu_310_p2;
    sc_signal< sc_lv<1> > or_ln330_reg_585;
    sc_signal< sc_lv<1> > and_ln332_fu_379_p2;
    sc_signal< sc_lv<1> > and_ln332_reg_591;
    sc_signal< sc_lv<8> > select_ln326_fu_421_p3;
    sc_signal< sc_lv<8> > select_ln326_reg_596;
    sc_signal< sc_lv<8> > select_ln351_fu_483_p3;
    sc_signal< sc_lv<8> > select_ln351_reg_601;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter3;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter4;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter5;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter6;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter7;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter8;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter9;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter10;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter11;
    sc_signal< sc_lv<8> > ap_phi_mux_j_0_phi_fu_134_p4;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<32> > grp_fu_152_p0;
    sc_signal< sc_lv<1> > icmp_ln209_fu_173_p2;
    sc_signal< sc_lv<8> > j_fu_167_p2;
    sc_signal< sc_lv<15> > tmp_fu_195_p3;
    sc_signal< sc_lv<8> > select_ln212_fu_179_p3;
    sc_signal< sc_lv<16> > zext_ln215_fu_207_p1;
    sc_signal< sc_lv<16> > zext_ln210_fu_203_p1;
    sc_signal< sc_lv<16> > add_ln215_fu_211_p2;
    sc_signal< sc_lv<9> > lhs_V_fu_229_p1;
    sc_signal< sc_lv<9> > rhs_V_fu_233_p1;
    sc_signal< sc_lv<11> > p_Result_s_fu_262_p4;
    sc_signal< sc_lv<63> > trunc_ln310_fu_250_p1;
    sc_signal< sc_lv<12> > exp_V_fu_272_p1;
    sc_signal< sc_lv<52> > trunc_ln318_fu_316_p1;
    sc_signal< sc_lv<12> > sh_amt_24_fu_330_p2;
    sc_signal< sc_lv<8> > tmp_82_fu_339_p4;
    sc_signal< sc_lv<32> > sext_ln329_fu_327_p1;
    sc_signal< sc_lv<53> > tmp_35_fu_319_p3;
    sc_signal< sc_lv<53> > zext_ln334_fu_355_p1;
    sc_signal< sc_lv<53> > lshr_ln334_fu_359_p2;
    sc_signal< sc_lv<8> > trunc_ln342_fu_335_p1;
    sc_signal< sc_lv<1> > xor_ln330_fu_374_p2;
    sc_signal< sc_lv<1> > and_ln333_fu_384_p2;
    sc_signal< sc_lv<8> > trunc_ln334_fu_365_p1;
    sc_signal< sc_lv<1> > or_ln332_fu_397_p2;
    sc_signal< sc_lv<1> > icmp_ln343_fu_349_p2;
    sc_signal< sc_lv<1> > xor_ln332_fu_401_p2;
    sc_signal< sc_lv<1> > and_ln343_fu_407_p2;
    sc_signal< sc_lv<8> > shl_ln345_fu_369_p2;
    sc_signal< sc_lv<8> > select_ln333_fu_389_p3;
    sc_signal< sc_lv<8> > select_ln343_fu_413_p3;
    sc_signal< sc_lv<1> > tmp_83_fu_428_p3;
    sc_signal< sc_lv<1> > xor_ln333_fu_443_p2;
    sc_signal< sc_lv<1> > and_ln333_24_fu_448_p2;
    sc_signal< sc_lv<8> > select_ln336_fu_435_p3;
    sc_signal< sc_lv<1> > xor_ln326_fu_460_p2;
    sc_signal< sc_lv<1> > and_ln330_fu_465_p2;
    sc_signal< sc_lv<8> > select_ln333_24_fu_453_p3;
    sc_signal< sc_lv<8> > select_ln330_fu_470_p3;
    sc_signal< sc_lv<8> > sub_ln461_fu_477_p2;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_fsm_state1;
    static const sc_lv<3> ap_ST_fsm_pp0_stage0;
    static const sc_lv<3> ap_ST_fsm_state14;
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
    static const sc_lv<32> ap_const_lv32_3F;
    static const sc_lv<32> ap_const_lv32_34;
    static const sc_lv<32> ap_const_lv32_3E;
    static const sc_lv<63> ap_const_lv63_0;
    static const sc_lv<12> ap_const_lv12_433;
    static const sc_lv<11> ap_const_lv11_433;
    static const sc_lv<12> ap_const_lv12_0;
    static const sc_lv<12> ap_const_lv12_36;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<8> ap_const_lv8_FF;
    static const sc_lv<32> ap_const_lv32_2;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_add_ln207_fu_161_p2();
    void thread_add_ln215_fu_211_p2();
    void thread_and_ln330_fu_465_p2();
    void thread_and_ln332_fu_379_p2();
    void thread_and_ln333_24_fu_448_p2();
    void thread_and_ln333_fu_384_p2();
    void thread_and_ln343_fu_407_p2();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state14();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state10_pp0_stage0_iter8();
    void thread_ap_block_state11_pp0_stage0_iter9();
    void thread_ap_block_state12_pp0_stage0_iter10();
    void thread_ap_block_state13_pp0_stage0_iter11();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state3_pp0_stage0_iter1();
    void thread_ap_block_state4_pp0_stage0_iter2();
    void thread_ap_block_state5_pp0_stage0_iter3();
    void thread_ap_block_state6_pp0_stage0_iter4();
    void thread_ap_block_state7_pp0_stage0_iter5();
    void thread_ap_block_state8_pp0_stage0_iter6();
    void thread_ap_block_state9_pp0_stage0_iter7();
    void thread_ap_condition_pp0_exit_iter0_state2();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_phi_mux_j_0_phi_fu_134_p4();
    void thread_ap_ready();
    void thread_exp_V_fu_272_p1();
    void thread_grp_fu_152_p0();
    void thread_i_fu_223_p2();
    void thread_icmp_ln207_fu_155_p2();
    void thread_icmp_ln209_fu_173_p2();
    void thread_icmp_ln326_fu_280_p2();
    void thread_icmp_ln330_fu_292_p2();
    void thread_icmp_ln332_fu_298_p2();
    void thread_icmp_ln333_fu_304_p2();
    void thread_icmp_ln343_fu_349_p2();
    void thread_j_fu_167_p2();
    void thread_lhs_V_fu_229_p1();
    void thread_lshr_ln334_fu_359_p2();
    void thread_or_ln330_fu_310_p2();
    void thread_or_ln332_fu_397_p2();
    void thread_p_Result_s_fu_262_p4();
    void thread_reg_V_fu_247_p1();
    void thread_ret_V_fu_237_p2();
    void thread_rhs_V_fu_233_p1();
    void thread_select_ln212_1_fu_187_p3();
    void thread_select_ln212_fu_179_p3();
    void thread_select_ln326_fu_421_p3();
    void thread_select_ln330_fu_470_p3();
    void thread_select_ln333_24_fu_453_p3();
    void thread_select_ln333_fu_389_p3();
    void thread_select_ln336_fu_435_p3();
    void thread_select_ln343_fu_413_p3();
    void thread_select_ln351_fu_483_p3();
    void thread_sext_ln329_fu_327_p1();
    void thread_sh_amt_24_fu_330_p2();
    void thread_sh_amt_fu_286_p2();
    void thread_shl_ln345_fu_369_p2();
    void thread_sub_ln461_fu_477_p2();
    void thread_tmp_35_fu_319_p3();
    void thread_tmp_82_fu_339_p4();
    void thread_tmp_83_fu_428_p3();
    void thread_tmp_fu_195_p3();
    void thread_trunc_ln310_fu_250_p1();
    void thread_trunc_ln318_fu_316_p1();
    void thread_trunc_ln331_fu_276_p1();
    void thread_trunc_ln334_fu_365_p1();
    void thread_trunc_ln342_fu_335_p1();
    void thread_x_V_address0();
    void thread_x_V_ce0();
    void thread_x_bar_V_address0();
    void thread_x_bar_V_ce0();
    void thread_x_bar_V_d0();
    void thread_x_bar_V_we0();
    void thread_x_old_V_address0();
    void thread_x_old_V_ce0();
    void thread_xor_ln326_fu_460_p2();
    void thread_xor_ln330_fu_374_p2();
    void thread_xor_ln332_fu_401_p2();
    void thread_xor_ln333_fu_443_p2();
    void thread_zext_ln210_fu_203_p1();
    void thread_zext_ln215_7_fu_217_p1();
    void thread_zext_ln215_fu_207_p1();
    void thread_zext_ln334_fu_355_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
