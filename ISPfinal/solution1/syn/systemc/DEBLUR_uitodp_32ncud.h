// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __DEBLUR_uitodp_32ncud__HH__
#define __DEBLUR_uitodp_32ncud__HH__
#include "ACMP_uitodp.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int dout_WIDTH>
SC_MODULE(DEBLUR_uitodp_32ncud) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    ACMP_uitodp<ID, 6, din0_WIDTH, dout_WIDTH> ACMP_uitodp_U;

    SC_CTOR(DEBLUR_uitodp_32ncud):  ACMP_uitodp_U ("ACMP_uitodp_U") {
        ACMP_uitodp_U.clk(clk);
        ACMP_uitodp_U.reset(reset);
        ACMP_uitodp_U.ce(ce);
        ACMP_uitodp_U.din0(din0);
        ACMP_uitodp_U.dout(dout);

    }

};

#endif //