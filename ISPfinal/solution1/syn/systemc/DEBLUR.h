// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _DEBLUR_HH_
#define _DEBLUR_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "cross_channel_deblur.h"

namespace ap_rtl {

struct DEBLUR : public sc_module {
    // Port declarations 76
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<14> > refImg_R_address0;
    sc_out< sc_logic > refImg_R_ce0;
    sc_in< sc_lv<32> > refImg_R_q0;
    sc_out< sc_lv<14> > refImg_R_address1;
    sc_out< sc_logic > refImg_R_ce1;
    sc_in< sc_lv<32> > refImg_R_q1;
    sc_out< sc_lv<14> > adjChImg_G_address0;
    sc_out< sc_logic > adjChImg_G_ce0;
    sc_out< sc_logic > adjChImg_G_we0;
    sc_out< sc_lv<32> > adjChImg_G_d0;
    sc_in< sc_lv<32> > adjChImg_G_q0;
    sc_out< sc_lv<14> > adjChImg_G_address1;
    sc_out< sc_logic > adjChImg_G_ce1;
    sc_in< sc_lv<32> > adjChImg_G_q1;
    sc_out< sc_lv<14> > adjChImg_B_address0;
    sc_out< sc_logic > adjChImg_B_ce0;
    sc_out< sc_logic > adjChImg_B_we0;
    sc_out< sc_lv<32> > adjChImg_B_d0;
    sc_in< sc_lv<32> > adjChImg_B_q0;
    sc_out< sc_lv<14> > adjChImg_B_address1;
    sc_out< sc_logic > adjChImg_B_ce1;
    sc_in< sc_lv<32> > adjChImg_B_q1;
    sc_out< sc_lv<14> > nominator_R_M_real_address0;
    sc_out< sc_logic > nominator_R_M_real_ce0;
    sc_out< sc_logic > nominator_R_M_real_we0;
    sc_out< sc_lv<32> > nominator_R_M_real_d0;
    sc_in< sc_lv<32> > nominator_R_M_real_q0;
    sc_out< sc_lv<14> > nominator_R_M_real_address1;
    sc_out< sc_logic > nominator_R_M_real_ce1;
    sc_out< sc_logic > nominator_R_M_real_we1;
    sc_out< sc_lv<32> > nominator_R_M_real_d1;
    sc_in< sc_lv<32> > nominator_R_M_real_q1;
    sc_out< sc_lv<14> > nominator_R_M_imag_address0;
    sc_out< sc_logic > nominator_R_M_imag_ce0;
    sc_out< sc_logic > nominator_R_M_imag_we0;
    sc_out< sc_lv<32> > nominator_R_M_imag_d0;
    sc_in< sc_lv<32> > nominator_R_M_imag_q0;
    sc_out< sc_lv<14> > nominator_R_M_imag_address1;
    sc_out< sc_logic > nominator_R_M_imag_ce1;
    sc_out< sc_logic > nominator_R_M_imag_we1;
    sc_out< sc_lv<32> > nominator_R_M_imag_d1;
    sc_in< sc_lv<32> > nominator_R_M_imag_q1;
    sc_out< sc_lv<14> > denominator_R_address0;
    sc_out< sc_logic > denominator_R_ce0;
    sc_out< sc_logic > denominator_R_we0;
    sc_out< sc_lv<32> > denominator_R_d0;
    sc_in< sc_lv<32> > denominator_R_q0;
    sc_out< sc_lv<14> > denominator_R_address1;
    sc_out< sc_logic > denominator_R_ce1;
    sc_out< sc_logic > denominator_R_we1;
    sc_out< sc_lv<32> > denominator_R_d1;
    sc_in< sc_lv<32> > denominator_R_q1;
    sc_out< sc_lv<14> > nominator_G_M_real_address0;
    sc_out< sc_logic > nominator_G_M_real_ce0;
    sc_in< sc_lv<32> > nominator_G_M_real_q0;
    sc_out< sc_lv<14> > nominator_G_M_imag_address0;
    sc_out< sc_logic > nominator_G_M_imag_ce0;
    sc_in< sc_lv<32> > nominator_G_M_imag_q0;
    sc_out< sc_lv<14> > denominator_G_address0;
    sc_out< sc_logic > denominator_G_ce0;
    sc_in< sc_lv<32> > denominator_G_q0;
    sc_out< sc_lv<14> > nominator_B_M_real_address0;
    sc_out< sc_logic > nominator_B_M_real_ce0;
    sc_in< sc_lv<32> > nominator_B_M_real_q0;
    sc_out< sc_lv<14> > nominator_B_M_imag_address0;
    sc_out< sc_logic > nominator_B_M_imag_ce0;
    sc_in< sc_lv<32> > nominator_B_M_imag_q0;
    sc_out< sc_lv<14> > denominator_B_address0;
    sc_out< sc_logic > denominator_B_ce0;
    sc_in< sc_lv<32> > denominator_B_q0;


    // Module declarations
    DEBLUR(sc_module_name name);
    SC_HAS_PROCESS(DEBLUR);

    ~DEBLUR();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    cross_channel_deblur* grp_cross_channel_deblur_fu_32;
    sc_signal< sc_lv<4> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > grp_cross_channel_deblur_fu_32_ap_start;
    sc_signal< sc_logic > grp_cross_channel_deblur_fu_32_ap_done;
    sc_signal< sc_logic > grp_cross_channel_deblur_fu_32_ap_idle;
    sc_signal< sc_logic > grp_cross_channel_deblur_fu_32_ap_ready;
    sc_signal< sc_lv<14> > grp_cross_channel_deblur_fu_32_Img_address0;
    sc_signal< sc_logic > grp_cross_channel_deblur_fu_32_Img_ce0;
    sc_signal< sc_logic > grp_cross_channel_deblur_fu_32_Img_we0;
    sc_signal< sc_lv<32> > grp_cross_channel_deblur_fu_32_Img_d0;
    sc_signal< sc_lv<32> > grp_cross_channel_deblur_fu_32_Img_q0;
    sc_signal< sc_lv<14> > grp_cross_channel_deblur_fu_32_adjChImg_address0;
    sc_signal< sc_logic > grp_cross_channel_deblur_fu_32_adjChImg_ce0;
    sc_signal< sc_lv<14> > grp_cross_channel_deblur_fu_32_adjChImg_address1;
    sc_signal< sc_logic > grp_cross_channel_deblur_fu_32_adjChImg_ce1;
    sc_signal< sc_lv<14> > grp_cross_channel_deblur_fu_32_adjChImg2_address0;
    sc_signal< sc_logic > grp_cross_channel_deblur_fu_32_adjChImg2_ce0;
    sc_signal< sc_lv<32> > grp_cross_channel_deblur_fu_32_adjChImg2_q0;
    sc_signal< sc_lv<14> > grp_cross_channel_deblur_fu_32_adjChImg2_address1;
    sc_signal< sc_logic > grp_cross_channel_deblur_fu_32_adjChImg2_ce1;
    sc_signal< sc_lv<32> > grp_cross_channel_deblur_fu_32_adjChImg2_q1;
    sc_signal< sc_lv<14> > grp_cross_channel_deblur_fu_32_coe_a_M_real_address0;
    sc_signal< sc_logic > grp_cross_channel_deblur_fu_32_coe_a_M_real_ce0;
    sc_signal< sc_lv<32> > grp_cross_channel_deblur_fu_32_coe_a_M_real_q0;
    sc_signal< sc_lv<14> > grp_cross_channel_deblur_fu_32_coe_a_M_imag_address0;
    sc_signal< sc_logic > grp_cross_channel_deblur_fu_32_coe_a_M_imag_ce0;
    sc_signal< sc_lv<32> > grp_cross_channel_deblur_fu_32_coe_a_M_imag_q0;
    sc_signal< sc_lv<14> > grp_cross_channel_deblur_fu_32_coe_b_address0;
    sc_signal< sc_logic > grp_cross_channel_deblur_fu_32_coe_b_ce0;
    sc_signal< sc_lv<32> > grp_cross_channel_deblur_fu_32_coe_b_q0;
    sc_signal< sc_logic > grp_cross_channel_deblur_fu_32_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<4> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<4> ap_ST_fsm_state1;
    static const sc_lv<4> ap_ST_fsm_state2;
    static const sc_lv<4> ap_ST_fsm_state3;
    static const sc_lv<4> ap_ST_fsm_state4;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<14> ap_const_lv14_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_adjChImg_B_address0();
    void thread_adjChImg_B_address1();
    void thread_adjChImg_B_ce0();
    void thread_adjChImg_B_ce1();
    void thread_adjChImg_B_d0();
    void thread_adjChImg_B_we0();
    void thread_adjChImg_G_address0();
    void thread_adjChImg_G_address1();
    void thread_adjChImg_G_ce0();
    void thread_adjChImg_G_ce1();
    void thread_adjChImg_G_d0();
    void thread_adjChImg_G_we0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_denominator_B_address0();
    void thread_denominator_B_ce0();
    void thread_denominator_G_address0();
    void thread_denominator_G_ce0();
    void thread_denominator_R_address0();
    void thread_denominator_R_address1();
    void thread_denominator_R_ce0();
    void thread_denominator_R_ce1();
    void thread_denominator_R_d0();
    void thread_denominator_R_d1();
    void thread_denominator_R_we0();
    void thread_denominator_R_we1();
    void thread_grp_cross_channel_deblur_fu_32_Img_q0();
    void thread_grp_cross_channel_deblur_fu_32_adjChImg2_q0();
    void thread_grp_cross_channel_deblur_fu_32_adjChImg2_q1();
    void thread_grp_cross_channel_deblur_fu_32_ap_start();
    void thread_grp_cross_channel_deblur_fu_32_coe_a_M_imag_q0();
    void thread_grp_cross_channel_deblur_fu_32_coe_a_M_real_q0();
    void thread_grp_cross_channel_deblur_fu_32_coe_b_q0();
    void thread_nominator_B_M_imag_address0();
    void thread_nominator_B_M_imag_ce0();
    void thread_nominator_B_M_real_address0();
    void thread_nominator_B_M_real_ce0();
    void thread_nominator_G_M_imag_address0();
    void thread_nominator_G_M_imag_ce0();
    void thread_nominator_G_M_real_address0();
    void thread_nominator_G_M_real_ce0();
    void thread_nominator_R_M_imag_address0();
    void thread_nominator_R_M_imag_address1();
    void thread_nominator_R_M_imag_ce0();
    void thread_nominator_R_M_imag_ce1();
    void thread_nominator_R_M_imag_d0();
    void thread_nominator_R_M_imag_d1();
    void thread_nominator_R_M_imag_we0();
    void thread_nominator_R_M_imag_we1();
    void thread_nominator_R_M_real_address0();
    void thread_nominator_R_M_real_address1();
    void thread_nominator_R_M_real_ce0();
    void thread_nominator_R_M_real_ce1();
    void thread_nominator_R_M_real_d0();
    void thread_nominator_R_M_real_d1();
    void thread_nominator_R_M_real_we0();
    void thread_nominator_R_M_real_we1();
    void thread_refImg_R_address0();
    void thread_refImg_R_address1();
    void thread_refImg_R_ce0();
    void thread_refImg_R_ce1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif