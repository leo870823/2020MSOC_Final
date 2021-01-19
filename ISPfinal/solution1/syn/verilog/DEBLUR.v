// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="DEBLUR,hls_ip_2019_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=1,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=9.406250,HLS_SYN_LAT=43489621,HLS_SYN_TPT=none,HLS_SYN_MEM=530,HLS_SYN_DSP=124,HLS_SYN_FF=36071,HLS_SYN_LUT=43600,HLS_VERSION=2019_2}" *)

module DEBLUR (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        refImg_R_address0,
        refImg_R_ce0,
        refImg_R_q0,
        refImg_R_address1,
        refImg_R_ce1,
        refImg_R_q1,
        adjChImg_G_address0,
        adjChImg_G_ce0,
        adjChImg_G_we0,
        adjChImg_G_d0,
        adjChImg_G_q0,
        adjChImg_G_address1,
        adjChImg_G_ce1,
        adjChImg_G_q1,
        adjChImg_B_address0,
        adjChImg_B_ce0,
        adjChImg_B_we0,
        adjChImg_B_d0,
        adjChImg_B_q0,
        adjChImg_B_address1,
        adjChImg_B_ce1,
        adjChImg_B_q1,
        nominator_R_M_real_address0,
        nominator_R_M_real_ce0,
        nominator_R_M_real_we0,
        nominator_R_M_real_d0,
        nominator_R_M_real_q0,
        nominator_R_M_real_address1,
        nominator_R_M_real_ce1,
        nominator_R_M_real_we1,
        nominator_R_M_real_d1,
        nominator_R_M_real_q1,
        nominator_R_M_imag_address0,
        nominator_R_M_imag_ce0,
        nominator_R_M_imag_we0,
        nominator_R_M_imag_d0,
        nominator_R_M_imag_q0,
        nominator_R_M_imag_address1,
        nominator_R_M_imag_ce1,
        nominator_R_M_imag_we1,
        nominator_R_M_imag_d1,
        nominator_R_M_imag_q1,
        denominator_R_address0,
        denominator_R_ce0,
        denominator_R_we0,
        denominator_R_d0,
        denominator_R_q0,
        denominator_R_address1,
        denominator_R_ce1,
        denominator_R_we1,
        denominator_R_d1,
        denominator_R_q1,
        nominator_G_M_real_address0,
        nominator_G_M_real_ce0,
        nominator_G_M_real_q0,
        nominator_G_M_imag_address0,
        nominator_G_M_imag_ce0,
        nominator_G_M_imag_q0,
        denominator_G_address0,
        denominator_G_ce0,
        denominator_G_q0,
        nominator_B_M_real_address0,
        nominator_B_M_real_ce0,
        nominator_B_M_real_q0,
        nominator_B_M_imag_address0,
        nominator_B_M_imag_ce0,
        nominator_B_M_imag_q0,
        denominator_B_address0,
        denominator_B_ce0,
        denominator_B_q0
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [13:0] refImg_R_address0;
output   refImg_R_ce0;
input  [31:0] refImg_R_q0;
output  [13:0] refImg_R_address1;
output   refImg_R_ce1;
input  [31:0] refImg_R_q1;
output  [13:0] adjChImg_G_address0;
output   adjChImg_G_ce0;
output   adjChImg_G_we0;
output  [31:0] adjChImg_G_d0;
input  [31:0] adjChImg_G_q0;
output  [13:0] adjChImg_G_address1;
output   adjChImg_G_ce1;
input  [31:0] adjChImg_G_q1;
output  [13:0] adjChImg_B_address0;
output   adjChImg_B_ce0;
output   adjChImg_B_we0;
output  [31:0] adjChImg_B_d0;
input  [31:0] adjChImg_B_q0;
output  [13:0] adjChImg_B_address1;
output   adjChImg_B_ce1;
input  [31:0] adjChImg_B_q1;
output  [13:0] nominator_R_M_real_address0;
output   nominator_R_M_real_ce0;
output   nominator_R_M_real_we0;
output  [31:0] nominator_R_M_real_d0;
input  [31:0] nominator_R_M_real_q0;
output  [13:0] nominator_R_M_real_address1;
output   nominator_R_M_real_ce1;
output   nominator_R_M_real_we1;
output  [31:0] nominator_R_M_real_d1;
input  [31:0] nominator_R_M_real_q1;
output  [13:0] nominator_R_M_imag_address0;
output   nominator_R_M_imag_ce0;
output   nominator_R_M_imag_we0;
output  [31:0] nominator_R_M_imag_d0;
input  [31:0] nominator_R_M_imag_q0;
output  [13:0] nominator_R_M_imag_address1;
output   nominator_R_M_imag_ce1;
output   nominator_R_M_imag_we1;
output  [31:0] nominator_R_M_imag_d1;
input  [31:0] nominator_R_M_imag_q1;
output  [13:0] denominator_R_address0;
output   denominator_R_ce0;
output   denominator_R_we0;
output  [31:0] denominator_R_d0;
input  [31:0] denominator_R_q0;
output  [13:0] denominator_R_address1;
output   denominator_R_ce1;
output   denominator_R_we1;
output  [31:0] denominator_R_d1;
input  [31:0] denominator_R_q1;
output  [13:0] nominator_G_M_real_address0;
output   nominator_G_M_real_ce0;
input  [31:0] nominator_G_M_real_q0;
output  [13:0] nominator_G_M_imag_address0;
output   nominator_G_M_imag_ce0;
input  [31:0] nominator_G_M_imag_q0;
output  [13:0] denominator_G_address0;
output   denominator_G_ce0;
input  [31:0] denominator_G_q0;
output  [13:0] nominator_B_M_real_address0;
output   nominator_B_M_real_ce0;
input  [31:0] nominator_B_M_real_q0;
output  [13:0] nominator_B_M_imag_address0;
output   nominator_B_M_imag_ce0;
input  [31:0] nominator_B_M_imag_q0;
output  [13:0] denominator_B_address0;
output   denominator_B_ce0;
input  [31:0] denominator_B_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg refImg_R_ce0;
reg refImg_R_ce1;
reg[13:0] adjChImg_G_address0;
reg adjChImg_G_ce0;
reg adjChImg_G_we0;
reg adjChImg_G_ce1;
reg[13:0] adjChImg_B_address0;
reg adjChImg_B_ce0;
reg adjChImg_B_we0;
reg adjChImg_B_ce1;
reg nominator_G_M_real_ce0;
reg nominator_G_M_imag_ce0;
reg denominator_G_ce0;
reg nominator_B_M_real_ce0;
reg nominator_B_M_imag_ce0;
reg denominator_B_ce0;

(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire    grp_cross_channel_deblur_fu_32_ap_start;
wire    grp_cross_channel_deblur_fu_32_ap_done;
wire    grp_cross_channel_deblur_fu_32_ap_idle;
wire    grp_cross_channel_deblur_fu_32_ap_ready;
wire   [13:0] grp_cross_channel_deblur_fu_32_Img_address0;
wire    grp_cross_channel_deblur_fu_32_Img_ce0;
wire    grp_cross_channel_deblur_fu_32_Img_we0;
wire   [31:0] grp_cross_channel_deblur_fu_32_Img_d0;
reg   [31:0] grp_cross_channel_deblur_fu_32_Img_q0;
wire   [13:0] grp_cross_channel_deblur_fu_32_adjChImg_address0;
wire    grp_cross_channel_deblur_fu_32_adjChImg_ce0;
wire   [13:0] grp_cross_channel_deblur_fu_32_adjChImg_address1;
wire    grp_cross_channel_deblur_fu_32_adjChImg_ce1;
wire   [13:0] grp_cross_channel_deblur_fu_32_adjChImg2_address0;
wire    grp_cross_channel_deblur_fu_32_adjChImg2_ce0;
reg   [31:0] grp_cross_channel_deblur_fu_32_adjChImg2_q0;
wire   [13:0] grp_cross_channel_deblur_fu_32_adjChImg2_address1;
wire    grp_cross_channel_deblur_fu_32_adjChImg2_ce1;
reg   [31:0] grp_cross_channel_deblur_fu_32_adjChImg2_q1;
wire   [13:0] grp_cross_channel_deblur_fu_32_coe_a_M_real_address0;
wire    grp_cross_channel_deblur_fu_32_coe_a_M_real_ce0;
reg   [31:0] grp_cross_channel_deblur_fu_32_coe_a_M_real_q0;
wire   [13:0] grp_cross_channel_deblur_fu_32_coe_a_M_imag_address0;
wire    grp_cross_channel_deblur_fu_32_coe_a_M_imag_ce0;
reg   [31:0] grp_cross_channel_deblur_fu_32_coe_a_M_imag_q0;
wire   [13:0] grp_cross_channel_deblur_fu_32_coe_b_address0;
wire    grp_cross_channel_deblur_fu_32_coe_b_ce0;
reg   [31:0] grp_cross_channel_deblur_fu_32_coe_b_q0;
reg    grp_cross_channel_deblur_fu_32_ap_start_reg;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state4;
reg   [3:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 4'd1;
#0 grp_cross_channel_deblur_fu_32_ap_start_reg = 1'b0;
end

cross_channel_deblur grp_cross_channel_deblur_fu_32(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_cross_channel_deblur_fu_32_ap_start),
    .ap_done(grp_cross_channel_deblur_fu_32_ap_done),
    .ap_idle(grp_cross_channel_deblur_fu_32_ap_idle),
    .ap_ready(grp_cross_channel_deblur_fu_32_ap_ready),
    .Img_address0(grp_cross_channel_deblur_fu_32_Img_address0),
    .Img_ce0(grp_cross_channel_deblur_fu_32_Img_ce0),
    .Img_we0(grp_cross_channel_deblur_fu_32_Img_we0),
    .Img_d0(grp_cross_channel_deblur_fu_32_Img_d0),
    .Img_q0(grp_cross_channel_deblur_fu_32_Img_q0),
    .adjChImg_address0(grp_cross_channel_deblur_fu_32_adjChImg_address0),
    .adjChImg_ce0(grp_cross_channel_deblur_fu_32_adjChImg_ce0),
    .adjChImg_q0(refImg_R_q0),
    .adjChImg_address1(grp_cross_channel_deblur_fu_32_adjChImg_address1),
    .adjChImg_ce1(grp_cross_channel_deblur_fu_32_adjChImg_ce1),
    .adjChImg_q1(refImg_R_q1),
    .adjChImg2_address0(grp_cross_channel_deblur_fu_32_adjChImg2_address0),
    .adjChImg2_ce0(grp_cross_channel_deblur_fu_32_adjChImg2_ce0),
    .adjChImg2_q0(grp_cross_channel_deblur_fu_32_adjChImg2_q0),
    .adjChImg2_address1(grp_cross_channel_deblur_fu_32_adjChImg2_address1),
    .adjChImg2_ce1(grp_cross_channel_deblur_fu_32_adjChImg2_ce1),
    .adjChImg2_q1(grp_cross_channel_deblur_fu_32_adjChImg2_q1),
    .coe_a_M_real_address0(grp_cross_channel_deblur_fu_32_coe_a_M_real_address0),
    .coe_a_M_real_ce0(grp_cross_channel_deblur_fu_32_coe_a_M_real_ce0),
    .coe_a_M_real_q0(grp_cross_channel_deblur_fu_32_coe_a_M_real_q0),
    .coe_a_M_imag_address0(grp_cross_channel_deblur_fu_32_coe_a_M_imag_address0),
    .coe_a_M_imag_ce0(grp_cross_channel_deblur_fu_32_coe_a_M_imag_ce0),
    .coe_a_M_imag_q0(grp_cross_channel_deblur_fu_32_coe_a_M_imag_q0),
    .coe_b_address0(grp_cross_channel_deblur_fu_32_coe_b_address0),
    .coe_b_ce0(grp_cross_channel_deblur_fu_32_coe_b_ce0),
    .coe_b_q0(grp_cross_channel_deblur_fu_32_coe_b_q0)
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
        grp_cross_channel_deblur_fu_32_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state3) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
            grp_cross_channel_deblur_fu_32_ap_start_reg <= 1'b1;
        end else if ((grp_cross_channel_deblur_fu_32_ap_ready == 1'b1)) begin
            grp_cross_channel_deblur_fu_32_ap_start_reg <= 1'b0;
        end
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        adjChImg_B_address0 = grp_cross_channel_deblur_fu_32_adjChImg2_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        adjChImg_B_address0 = grp_cross_channel_deblur_fu_32_Img_address0;
    end else begin
        adjChImg_B_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        adjChImg_B_ce0 = grp_cross_channel_deblur_fu_32_adjChImg2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        adjChImg_B_ce0 = grp_cross_channel_deblur_fu_32_Img_ce0;
    end else begin
        adjChImg_B_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        adjChImg_B_ce1 = grp_cross_channel_deblur_fu_32_adjChImg2_ce1;
    end else begin
        adjChImg_B_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        adjChImg_B_we0 = grp_cross_channel_deblur_fu_32_Img_we0;
    end else begin
        adjChImg_B_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        adjChImg_G_address0 = grp_cross_channel_deblur_fu_32_adjChImg2_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        adjChImg_G_address0 = grp_cross_channel_deblur_fu_32_Img_address0;
    end else begin
        adjChImg_G_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        adjChImg_G_ce0 = grp_cross_channel_deblur_fu_32_adjChImg2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        adjChImg_G_ce0 = grp_cross_channel_deblur_fu_32_Img_ce0;
    end else begin
        adjChImg_G_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        adjChImg_G_ce1 = grp_cross_channel_deblur_fu_32_adjChImg2_ce1;
    end else begin
        adjChImg_G_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        adjChImg_G_we0 = grp_cross_channel_deblur_fu_32_Img_we0;
    end else begin
        adjChImg_G_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) & (grp_cross_channel_deblur_fu_32_ap_done == 1'b1))) begin
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
    if (((1'b1 == ap_CS_fsm_state4) & (grp_cross_channel_deblur_fu_32_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        denominator_B_ce0 = grp_cross_channel_deblur_fu_32_coe_b_ce0;
    end else begin
        denominator_B_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        denominator_G_ce0 = grp_cross_channel_deblur_fu_32_coe_b_ce0;
    end else begin
        denominator_G_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_cross_channel_deblur_fu_32_Img_q0 = adjChImg_B_q0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_cross_channel_deblur_fu_32_Img_q0 = adjChImg_G_q0;
    end else begin
        grp_cross_channel_deblur_fu_32_Img_q0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_cross_channel_deblur_fu_32_adjChImg2_q0 = adjChImg_G_q0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_cross_channel_deblur_fu_32_adjChImg2_q0 = adjChImg_B_q0;
    end else begin
        grp_cross_channel_deblur_fu_32_adjChImg2_q0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_cross_channel_deblur_fu_32_adjChImg2_q1 = adjChImg_G_q1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_cross_channel_deblur_fu_32_adjChImg2_q1 = adjChImg_B_q1;
    end else begin
        grp_cross_channel_deblur_fu_32_adjChImg2_q1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_cross_channel_deblur_fu_32_coe_a_M_imag_q0 = nominator_B_M_imag_q0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_cross_channel_deblur_fu_32_coe_a_M_imag_q0 = nominator_G_M_imag_q0;
    end else begin
        grp_cross_channel_deblur_fu_32_coe_a_M_imag_q0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_cross_channel_deblur_fu_32_coe_a_M_real_q0 = nominator_B_M_real_q0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_cross_channel_deblur_fu_32_coe_a_M_real_q0 = nominator_G_M_real_q0;
    end else begin
        grp_cross_channel_deblur_fu_32_coe_a_M_real_q0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_cross_channel_deblur_fu_32_coe_b_q0 = denominator_B_q0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_cross_channel_deblur_fu_32_coe_b_q0 = denominator_G_q0;
    end else begin
        grp_cross_channel_deblur_fu_32_coe_b_q0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nominator_B_M_imag_ce0 = grp_cross_channel_deblur_fu_32_coe_a_M_imag_ce0;
    end else begin
        nominator_B_M_imag_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nominator_B_M_real_ce0 = grp_cross_channel_deblur_fu_32_coe_a_M_real_ce0;
    end else begin
        nominator_B_M_real_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        nominator_G_M_imag_ce0 = grp_cross_channel_deblur_fu_32_coe_a_M_imag_ce0;
    end else begin
        nominator_G_M_imag_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        nominator_G_M_real_ce0 = grp_cross_channel_deblur_fu_32_coe_a_M_real_ce0;
    end else begin
        nominator_G_M_real_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2))) begin
        refImg_R_ce0 = grp_cross_channel_deblur_fu_32_adjChImg_ce0;
    end else begin
        refImg_R_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2))) begin
        refImg_R_ce1 = grp_cross_channel_deblur_fu_32_adjChImg_ce1;
    end else begin
        refImg_R_ce1 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (grp_cross_channel_deblur_fu_32_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_cross_channel_deblur_fu_32_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign adjChImg_B_address1 = grp_cross_channel_deblur_fu_32_adjChImg2_address1;

assign adjChImg_B_d0 = grp_cross_channel_deblur_fu_32_Img_d0;

assign adjChImg_G_address1 = grp_cross_channel_deblur_fu_32_adjChImg2_address1;

assign adjChImg_G_d0 = grp_cross_channel_deblur_fu_32_Img_d0;

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign denominator_B_address0 = grp_cross_channel_deblur_fu_32_coe_b_address0;

assign denominator_G_address0 = grp_cross_channel_deblur_fu_32_coe_b_address0;

assign denominator_R_address0 = 14'd0;

assign denominator_R_address1 = 14'd0;

assign denominator_R_ce0 = 1'b0;

assign denominator_R_ce1 = 1'b0;

assign denominator_R_d0 = 32'd0;

assign denominator_R_d1 = 32'd0;

assign denominator_R_we0 = 1'b0;

assign denominator_R_we1 = 1'b0;

assign grp_cross_channel_deblur_fu_32_ap_start = grp_cross_channel_deblur_fu_32_ap_start_reg;

assign nominator_B_M_imag_address0 = grp_cross_channel_deblur_fu_32_coe_a_M_imag_address0;

assign nominator_B_M_real_address0 = grp_cross_channel_deblur_fu_32_coe_a_M_real_address0;

assign nominator_G_M_imag_address0 = grp_cross_channel_deblur_fu_32_coe_a_M_imag_address0;

assign nominator_G_M_real_address0 = grp_cross_channel_deblur_fu_32_coe_a_M_real_address0;

assign nominator_R_M_imag_address0 = 14'd0;

assign nominator_R_M_imag_address1 = 14'd0;

assign nominator_R_M_imag_ce0 = 1'b0;

assign nominator_R_M_imag_ce1 = 1'b0;

assign nominator_R_M_imag_d0 = 32'd0;

assign nominator_R_M_imag_d1 = 32'd0;

assign nominator_R_M_imag_we0 = 1'b0;

assign nominator_R_M_imag_we1 = 1'b0;

assign nominator_R_M_real_address0 = 14'd0;

assign nominator_R_M_real_address1 = 14'd0;

assign nominator_R_M_real_ce0 = 1'b0;

assign nominator_R_M_real_ce1 = 1'b0;

assign nominator_R_M_real_d0 = 32'd0;

assign nominator_R_M_real_d1 = 32'd0;

assign nominator_R_M_real_we0 = 1'b0;

assign nominator_R_M_real_we1 = 1'b0;

assign refImg_R_address0 = grp_cross_channel_deblur_fu_32_adjChImg_address0;

assign refImg_R_address1 = grp_cross_channel_deblur_fu_32_adjChImg_address1;

endmodule //DEBLUR