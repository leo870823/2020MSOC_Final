// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Relax (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        x_V_address0,
        x_V_ce0,
        x_V_q0,
        x_old_V_address0,
        x_old_V_ce0,
        x_old_V_q0,
        x_bar_V_address0,
        x_bar_V_ce0,
        x_bar_V_we0,
        x_bar_V_d0
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_pp0_stage0 = 3'd2;
parameter    ap_ST_fsm_state14 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [13:0] x_V_address0;
output   x_V_ce0;
input  [7:0] x_V_q0;
output  [13:0] x_old_V_address0;
output   x_old_V_ce0;
input  [7:0] x_old_V_q0;
output  [13:0] x_bar_V_address0;
output   x_bar_V_ce0;
output   x_bar_V_we0;
output  [7:0] x_bar_V_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg x_V_ce0;
reg x_old_V_ce0;
reg x_bar_V_ce0;
reg x_bar_V_we0;

(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [14:0] indvar_flatten_reg_119;
reg   [7:0] j_0_reg_130;
reg   [7:0] i_0_reg_141;
wire   [0:0] icmp_ln207_fu_155_p2;
reg   [0:0] icmp_ln207_reg_490;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
wire    ap_block_state4_pp0_stage0_iter2;
wire    ap_block_state5_pp0_stage0_iter3;
wire    ap_block_state6_pp0_stage0_iter4;
wire    ap_block_state7_pp0_stage0_iter5;
wire    ap_block_state8_pp0_stage0_iter6;
wire    ap_block_state9_pp0_stage0_iter7;
wire    ap_block_state10_pp0_stage0_iter8;
wire    ap_block_state11_pp0_stage0_iter9;
wire    ap_block_state12_pp0_stage0_iter10;
wire    ap_block_state13_pp0_stage0_iter11;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln207_reg_490_pp0_iter1_reg;
reg   [0:0] icmp_ln207_reg_490_pp0_iter2_reg;
reg   [0:0] icmp_ln207_reg_490_pp0_iter3_reg;
reg   [0:0] icmp_ln207_reg_490_pp0_iter4_reg;
reg   [0:0] icmp_ln207_reg_490_pp0_iter5_reg;
reg   [0:0] icmp_ln207_reg_490_pp0_iter6_reg;
reg   [0:0] icmp_ln207_reg_490_pp0_iter7_reg;
reg   [0:0] icmp_ln207_reg_490_pp0_iter8_reg;
reg   [0:0] icmp_ln207_reg_490_pp0_iter9_reg;
reg   [0:0] icmp_ln207_reg_490_pp0_iter10_reg;
wire   [14:0] add_ln207_fu_161_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [7:0] select_ln212_1_fu_187_p3;
reg   [7:0] select_ln212_1_reg_499;
wire   [63:0] zext_ln215_7_fu_217_p1;
reg   [63:0] zext_ln215_7_reg_504;
reg   [63:0] zext_ln215_7_reg_504_pp0_iter1_reg;
reg   [63:0] zext_ln215_7_reg_504_pp0_iter2_reg;
reg   [63:0] zext_ln215_7_reg_504_pp0_iter3_reg;
reg   [63:0] zext_ln215_7_reg_504_pp0_iter4_reg;
reg   [63:0] zext_ln215_7_reg_504_pp0_iter5_reg;
reg   [63:0] zext_ln215_7_reg_504_pp0_iter6_reg;
reg   [63:0] zext_ln215_7_reg_504_pp0_iter7_reg;
reg   [63:0] zext_ln215_7_reg_504_pp0_iter8_reg;
reg   [63:0] zext_ln215_7_reg_504_pp0_iter9_reg;
reg   [63:0] zext_ln215_7_reg_504_pp0_iter10_reg;
wire   [7:0] i_fu_223_p2;
wire   [8:0] ret_V_fu_237_p2;
reg   [8:0] ret_V_reg_524;
wire   [63:0] grp_fu_152_p1;
reg   [63:0] val_assign_reg_534;
wire   [63:0] reg_V_fu_247_p1;
reg   [63:0] reg_V_reg_539;
reg   [63:0] reg_V_reg_539_pp0_iter9_reg;
reg   [0:0] p_Result_31_reg_545;
reg   [0:0] p_Result_31_reg_545_pp0_iter9_reg;
wire   [7:0] trunc_ln331_fu_276_p1;
reg   [7:0] trunc_ln331_reg_550;
reg   [7:0] trunc_ln331_reg_550_pp0_iter9_reg;
wire   [0:0] icmp_ln326_fu_280_p2;
reg   [0:0] icmp_ln326_reg_556;
reg   [0:0] icmp_ln326_reg_556_pp0_iter9_reg;
wire  signed [11:0] sh_amt_fu_286_p2;
reg  signed [11:0] sh_amt_reg_562;
wire   [0:0] icmp_ln330_fu_292_p2;
reg   [0:0] icmp_ln330_reg_568;
reg   [0:0] icmp_ln330_reg_568_pp0_iter9_reg;
wire   [0:0] icmp_ln332_fu_298_p2;
reg   [0:0] icmp_ln332_reg_573;
wire   [0:0] icmp_ln333_fu_304_p2;
reg   [0:0] icmp_ln333_reg_579;
reg   [0:0] icmp_ln333_reg_579_pp0_iter9_reg;
wire   [0:0] or_ln330_fu_310_p2;
reg   [0:0] or_ln330_reg_585;
wire   [0:0] and_ln332_fu_379_p2;
reg   [0:0] and_ln332_reg_591;
wire   [7:0] select_ln326_fu_421_p3;
reg   [7:0] select_ln326_reg_596;
wire   [7:0] select_ln351_fu_483_p3;
reg   [7:0] select_ln351_reg_601;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_enable_reg_pp0_iter10;
reg    ap_enable_reg_pp0_iter11;
reg   [7:0] ap_phi_mux_j_0_phi_fu_134_p4;
wire    ap_block_pp0_stage0;
wire  signed [31:0] grp_fu_152_p0;
wire   [0:0] icmp_ln209_fu_173_p2;
wire   [7:0] j_fu_167_p2;
wire   [14:0] tmp_fu_195_p3;
wire   [7:0] select_ln212_fu_179_p3;
wire   [15:0] zext_ln215_fu_207_p1;
wire   [15:0] zext_ln210_fu_203_p1;
wire   [15:0] add_ln215_fu_211_p2;
wire  signed [8:0] lhs_V_fu_229_p1;
wire  signed [8:0] rhs_V_fu_233_p1;
wire   [10:0] p_Result_s_fu_262_p4;
wire   [62:0] trunc_ln310_fu_250_p1;
wire   [11:0] exp_V_fu_272_p1;
wire   [51:0] trunc_ln318_fu_316_p1;
wire   [11:0] sh_amt_24_fu_330_p2;
wire   [7:0] tmp_82_fu_339_p4;
wire  signed [31:0] sext_ln329_fu_327_p1;
wire   [52:0] tmp_35_fu_319_p3;
wire   [52:0] zext_ln334_fu_355_p1;
wire   [52:0] lshr_ln334_fu_359_p2;
wire   [7:0] trunc_ln342_fu_335_p1;
wire   [0:0] xor_ln330_fu_374_p2;
wire   [0:0] and_ln333_fu_384_p2;
wire   [7:0] trunc_ln334_fu_365_p1;
wire   [0:0] or_ln332_fu_397_p2;
wire   [0:0] icmp_ln343_fu_349_p2;
wire   [0:0] xor_ln332_fu_401_p2;
wire   [0:0] and_ln343_fu_407_p2;
wire   [7:0] shl_ln345_fu_369_p2;
wire   [7:0] select_ln333_fu_389_p3;
wire   [7:0] select_ln343_fu_413_p3;
wire   [0:0] tmp_83_fu_428_p3;
wire   [0:0] xor_ln333_fu_443_p2;
wire   [0:0] and_ln333_24_fu_448_p2;
wire   [7:0] select_ln336_fu_435_p3;
wire   [0:0] xor_ln326_fu_460_p2;
wire   [0:0] and_ln330_fu_465_p2;
wire   [7:0] select_ln333_24_fu_453_p3;
wire   [7:0] select_ln330_fu_470_p3;
wire   [7:0] sub_ln461_fu_477_p2;
wire    ap_CS_fsm_state14;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_enable_reg_pp0_iter11 = 1'b0;
end

cross_channel_debibs #(
    .ID( 1 ),
    .NUM_STAGE( 6 ),
    .din0_WIDTH( 32 ),
    .dout_WIDTH( 64 ))
cross_channel_debibs_U71(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_152_p0),
    .ce(1'b1),
    .dout(grp_fu_152_p1)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state2) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state2)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state2);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter11 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln207_fu_155_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_0_reg_141 <= i_fu_223_p2;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_0_reg_141 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln207_fu_155_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten_reg_119 <= add_ln207_fu_161_p2;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        indvar_flatten_reg_119 <= 15'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln207_reg_490 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        j_0_reg_130 <= select_ln212_1_reg_499;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        j_0_reg_130 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln207_reg_490_pp0_iter8_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        and_ln332_reg_591 <= and_ln332_fu_379_p2;
        select_ln326_reg_596 <= select_ln326_fu_421_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln207_reg_490 <= icmp_ln207_fu_155_p2;
        icmp_ln207_reg_490_pp0_iter1_reg <= icmp_ln207_reg_490;
        zext_ln215_7_reg_504_pp0_iter1_reg[15 : 0] <= zext_ln215_7_reg_504[15 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        icmp_ln207_reg_490_pp0_iter10_reg <= icmp_ln207_reg_490_pp0_iter9_reg;
        icmp_ln207_reg_490_pp0_iter2_reg <= icmp_ln207_reg_490_pp0_iter1_reg;
        icmp_ln207_reg_490_pp0_iter3_reg <= icmp_ln207_reg_490_pp0_iter2_reg;
        icmp_ln207_reg_490_pp0_iter4_reg <= icmp_ln207_reg_490_pp0_iter3_reg;
        icmp_ln207_reg_490_pp0_iter5_reg <= icmp_ln207_reg_490_pp0_iter4_reg;
        icmp_ln207_reg_490_pp0_iter6_reg <= icmp_ln207_reg_490_pp0_iter5_reg;
        icmp_ln207_reg_490_pp0_iter7_reg <= icmp_ln207_reg_490_pp0_iter6_reg;
        icmp_ln207_reg_490_pp0_iter8_reg <= icmp_ln207_reg_490_pp0_iter7_reg;
        icmp_ln207_reg_490_pp0_iter9_reg <= icmp_ln207_reg_490_pp0_iter8_reg;
        icmp_ln326_reg_556_pp0_iter9_reg <= icmp_ln326_reg_556;
        icmp_ln330_reg_568_pp0_iter9_reg <= icmp_ln330_reg_568;
        icmp_ln333_reg_579_pp0_iter9_reg <= icmp_ln333_reg_579;
        p_Result_31_reg_545_pp0_iter9_reg <= p_Result_31_reg_545;
        reg_V_reg_539_pp0_iter9_reg <= reg_V_reg_539;
        trunc_ln331_reg_550_pp0_iter9_reg <= trunc_ln331_reg_550;
        zext_ln215_7_reg_504_pp0_iter10_reg[15 : 0] <= zext_ln215_7_reg_504_pp0_iter9_reg[15 : 0];
        zext_ln215_7_reg_504_pp0_iter2_reg[15 : 0] <= zext_ln215_7_reg_504_pp0_iter1_reg[15 : 0];
        zext_ln215_7_reg_504_pp0_iter3_reg[15 : 0] <= zext_ln215_7_reg_504_pp0_iter2_reg[15 : 0];
        zext_ln215_7_reg_504_pp0_iter4_reg[15 : 0] <= zext_ln215_7_reg_504_pp0_iter3_reg[15 : 0];
        zext_ln215_7_reg_504_pp0_iter5_reg[15 : 0] <= zext_ln215_7_reg_504_pp0_iter4_reg[15 : 0];
        zext_ln215_7_reg_504_pp0_iter6_reg[15 : 0] <= zext_ln215_7_reg_504_pp0_iter5_reg[15 : 0];
        zext_ln215_7_reg_504_pp0_iter7_reg[15 : 0] <= zext_ln215_7_reg_504_pp0_iter6_reg[15 : 0];
        zext_ln215_7_reg_504_pp0_iter8_reg[15 : 0] <= zext_ln215_7_reg_504_pp0_iter7_reg[15 : 0];
        zext_ln215_7_reg_504_pp0_iter9_reg[15 : 0] <= zext_ln215_7_reg_504_pp0_iter8_reg[15 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln207_reg_490_pp0_iter7_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln326_reg_556 <= icmp_ln326_fu_280_p2;
        icmp_ln330_reg_568 <= icmp_ln330_fu_292_p2;
        icmp_ln332_reg_573 <= icmp_ln332_fu_298_p2;
        icmp_ln333_reg_579 <= icmp_ln333_fu_304_p2;
        or_ln330_reg_585 <= or_ln330_fu_310_p2;
        p_Result_31_reg_545 <= reg_V_fu_247_p1[32'd63];
        reg_V_reg_539 <= reg_V_fu_247_p1;
        sh_amt_reg_562 <= sh_amt_fu_286_p2;
        trunc_ln331_reg_550 <= trunc_ln331_fu_276_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln207_reg_490 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ret_V_reg_524 <= ret_V_fu_237_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln207_fu_155_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        select_ln212_1_reg_499 <= select_ln212_1_fu_187_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln207_reg_490_pp0_iter9_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        select_ln351_reg_601 <= select_ln351_fu_483_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln207_reg_490_pp0_iter6_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        val_assign_reg_534 <= grp_fu_152_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln207_fu_155_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        zext_ln215_7_reg_504[15 : 0] <= zext_ln215_7_fu_217_p1[15 : 0];
    end
end

always @ (*) begin
    if ((icmp_ln207_fu_155_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln207_reg_490 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        ap_phi_mux_j_0_phi_fu_134_p4 = select_ln212_1_reg_499;
    end else begin
        ap_phi_mux_j_0_phi_fu_134_p4 = j_0_reg_130;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        x_V_ce0 = 1'b1;
    end else begin
        x_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        x_bar_V_ce0 = 1'b1;
    end else begin
        x_bar_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln207_reg_490_pp0_iter10_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        x_bar_V_we0 = 1'b1;
    end else begin
        x_bar_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        x_old_V_ce0 = 1'b1;
    end else begin
        x_old_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((icmp_ln207_fu_155_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone)) & ~((ap_enable_reg_pp0_iter11 == 1'b1) & (ap_enable_reg_pp0_iter10 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((icmp_ln207_fu_155_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone)) | ((ap_enable_reg_pp0_iter11 == 1'b1) & (ap_enable_reg_pp0_iter10 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln207_fu_161_p2 = (indvar_flatten_reg_119 + 15'd1);

assign add_ln215_fu_211_p2 = (zext_ln215_fu_207_p1 + zext_ln210_fu_203_p1);

assign and_ln330_fu_465_p2 = (xor_ln326_fu_460_p2 & icmp_ln330_reg_568_pp0_iter9_reg);

assign and_ln332_fu_379_p2 = (xor_ln330_fu_374_p2 & icmp_ln332_reg_573);

assign and_ln333_24_fu_448_p2 = (xor_ln333_fu_443_p2 & and_ln332_reg_591);

assign and_ln333_fu_384_p2 = (icmp_ln333_reg_579 & and_ln332_fu_379_p2);

assign and_ln343_fu_407_p2 = (xor_ln332_fu_401_p2 & icmp_ln343_fu_349_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage0_iter8 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter9 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage0_iter10 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage0_iter11 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter6 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter7 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign exp_V_fu_272_p1 = p_Result_s_fu_262_p4;

assign grp_fu_152_p0 = $signed(ret_V_reg_524);

assign i_fu_223_p2 = (8'd1 + select_ln212_fu_179_p3);

assign icmp_ln207_fu_155_p2 = ((indvar_flatten_reg_119 == 15'd16384) ? 1'b1 : 1'b0);

assign icmp_ln209_fu_173_p2 = ((i_0_reg_141 == 8'd128) ? 1'b1 : 1'b0);

assign icmp_ln326_fu_280_p2 = ((trunc_ln310_fu_250_p1 == 63'd0) ? 1'b1 : 1'b0);

assign icmp_ln330_fu_292_p2 = ((p_Result_s_fu_262_p4 == 11'd1075) ? 1'b1 : 1'b0);

assign icmp_ln332_fu_298_p2 = (($signed(sh_amt_fu_286_p2) > $signed(12'd0)) ? 1'b1 : 1'b0);

assign icmp_ln333_fu_304_p2 = (($signed(sh_amt_fu_286_p2) < $signed(12'd54)) ? 1'b1 : 1'b0);

assign icmp_ln343_fu_349_p2 = (($signed(tmp_82_fu_339_p4) < $signed(8'd1)) ? 1'b1 : 1'b0);

assign j_fu_167_p2 = (8'd1 + ap_phi_mux_j_0_phi_fu_134_p4);

assign lhs_V_fu_229_p1 = $signed(x_V_q0);

assign lshr_ln334_fu_359_p2 = tmp_35_fu_319_p3 >> zext_ln334_fu_355_p1;

assign or_ln330_fu_310_p2 = (icmp_ln330_fu_292_p2 | icmp_ln326_fu_280_p2);

assign or_ln332_fu_397_p2 = (or_ln330_reg_585 | icmp_ln332_reg_573);

assign p_Result_s_fu_262_p4 = {{reg_V_fu_247_p1[62:52]}};

assign reg_V_fu_247_p1 = val_assign_reg_534;

assign ret_V_fu_237_p2 = ($signed(lhs_V_fu_229_p1) - $signed(rhs_V_fu_233_p1));

assign rhs_V_fu_233_p1 = $signed(x_old_V_q0);

assign select_ln212_1_fu_187_p3 = ((icmp_ln209_fu_173_p2[0:0] === 1'b1) ? j_fu_167_p2 : ap_phi_mux_j_0_phi_fu_134_p4);

assign select_ln212_fu_179_p3 = ((icmp_ln209_fu_173_p2[0:0] === 1'b1) ? 8'd0 : i_0_reg_141);

assign select_ln326_fu_421_p3 = ((icmp_ln326_reg_556[0:0] === 1'b1) ? 8'd0 : select_ln343_fu_413_p3);

assign select_ln330_fu_470_p3 = ((and_ln330_fu_465_p2[0:0] === 1'b1) ? trunc_ln331_reg_550_pp0_iter9_reg : select_ln333_24_fu_453_p3);

assign select_ln333_24_fu_453_p3 = ((and_ln333_24_fu_448_p2[0:0] === 1'b1) ? select_ln336_fu_435_p3 : select_ln326_reg_596);

assign select_ln333_fu_389_p3 = ((and_ln333_fu_384_p2[0:0] === 1'b1) ? trunc_ln334_fu_365_p1 : 8'd0);

assign select_ln336_fu_435_p3 = ((tmp_83_fu_428_p3[0:0] === 1'b1) ? 8'd255 : 8'd0);

assign select_ln343_fu_413_p3 = ((and_ln343_fu_407_p2[0:0] === 1'b1) ? shl_ln345_fu_369_p2 : select_ln333_fu_389_p3);

assign select_ln351_fu_483_p3 = ((p_Result_31_reg_545_pp0_iter9_reg[0:0] === 1'b1) ? sub_ln461_fu_477_p2 : select_ln330_fu_470_p3);

assign sext_ln329_fu_327_p1 = sh_amt_reg_562;

assign sh_amt_24_fu_330_p2 = ($signed(12'd0) - $signed(sh_amt_reg_562));

assign sh_amt_fu_286_p2 = (12'd1075 - exp_V_fu_272_p1);

assign shl_ln345_fu_369_p2 = trunc_ln331_reg_550 << trunc_ln342_fu_335_p1;

assign sub_ln461_fu_477_p2 = (8'd0 - select_ln330_fu_470_p3);

assign tmp_35_fu_319_p3 = {{1'd1}, {trunc_ln318_fu_316_p1}};

assign tmp_82_fu_339_p4 = {{sh_amt_24_fu_330_p2[10:3]}};

assign tmp_83_fu_428_p3 = reg_V_reg_539_pp0_iter9_reg[32'd63];

assign tmp_fu_195_p3 = {{select_ln212_1_fu_187_p3}, {7'd0}};

assign trunc_ln310_fu_250_p1 = reg_V_fu_247_p1[62:0];

assign trunc_ln318_fu_316_p1 = reg_V_reg_539[51:0];

assign trunc_ln331_fu_276_p1 = reg_V_fu_247_p1[7:0];

assign trunc_ln334_fu_365_p1 = lshr_ln334_fu_359_p2[7:0];

assign trunc_ln342_fu_335_p1 = sh_amt_24_fu_330_p2[7:0];

assign x_V_address0 = zext_ln215_7_fu_217_p1;

assign x_bar_V_address0 = zext_ln215_7_reg_504_pp0_iter10_reg;

assign x_bar_V_d0 = select_ln351_reg_601;

assign x_old_V_address0 = zext_ln215_7_fu_217_p1;

assign xor_ln326_fu_460_p2 = (icmp_ln326_reg_556_pp0_iter9_reg ^ 1'd1);

assign xor_ln330_fu_374_p2 = (or_ln330_reg_585 ^ 1'd1);

assign xor_ln332_fu_401_p2 = (or_ln332_fu_397_p2 ^ 1'd1);

assign xor_ln333_fu_443_p2 = (icmp_ln333_reg_579_pp0_iter9_reg ^ 1'd1);

assign zext_ln210_fu_203_p1 = tmp_fu_195_p3;

assign zext_ln215_7_fu_217_p1 = add_ln215_fu_211_p2;

assign zext_ln215_fu_207_p1 = select_ln212_fu_179_p3;

assign zext_ln334_fu_355_p1 = $unsigned(sext_ln329_fu_327_p1);

always @ (posedge ap_clk) begin
    zext_ln215_7_reg_504[63:16] <= 48'b000000000000000000000000000000000000000000000000;
    zext_ln215_7_reg_504_pp0_iter1_reg[63:16] <= 48'b000000000000000000000000000000000000000000000000;
    zext_ln215_7_reg_504_pp0_iter2_reg[63:16] <= 48'b000000000000000000000000000000000000000000000000;
    zext_ln215_7_reg_504_pp0_iter3_reg[63:16] <= 48'b000000000000000000000000000000000000000000000000;
    zext_ln215_7_reg_504_pp0_iter4_reg[63:16] <= 48'b000000000000000000000000000000000000000000000000;
    zext_ln215_7_reg_504_pp0_iter5_reg[63:16] <= 48'b000000000000000000000000000000000000000000000000;
    zext_ln215_7_reg_504_pp0_iter6_reg[63:16] <= 48'b000000000000000000000000000000000000000000000000;
    zext_ln215_7_reg_504_pp0_iter7_reg[63:16] <= 48'b000000000000000000000000000000000000000000000000;
    zext_ln215_7_reg_504_pp0_iter8_reg[63:16] <= 48'b000000000000000000000000000000000000000000000000;
    zext_ln215_7_reg_504_pp0_iter9_reg[63:16] <= 48'b000000000000000000000000000000000000000000000000;
    zext_ln215_7_reg_504_pp0_iter10_reg[63:16] <= 48'b000000000000000000000000000000000000000000000000;
end

endmodule //Relax