// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module fft_top_2D (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        direction,
        in_M_real_address0,
        in_M_real_ce0,
        in_M_real_q0,
        in_M_imag_address0,
        in_M_imag_ce0,
        in_M_imag_q0,
        out_M_real_address0,
        out_M_real_ce0,
        out_M_real_we0,
        out_M_real_d0,
        out_M_imag_address0,
        out_M_imag_ce0,
        out_M_imag_we0,
        out_M_imag_d0
);

parameter    ap_ST_fsm_state1 = 15'd1;
parameter    ap_ST_fsm_state2 = 15'd2;
parameter    ap_ST_fsm_state3 = 15'd4;
parameter    ap_ST_fsm_state4 = 15'd8;
parameter    ap_ST_fsm_state5 = 15'd16;
parameter    ap_ST_fsm_state6 = 15'd32;
parameter    ap_ST_fsm_state7 = 15'd64;
parameter    ap_ST_fsm_state8 = 15'd128;
parameter    ap_ST_fsm_state9 = 15'd256;
parameter    ap_ST_fsm_state10 = 15'd512;
parameter    ap_ST_fsm_state11 = 15'd1024;
parameter    ap_ST_fsm_state12 = 15'd2048;
parameter    ap_ST_fsm_state13 = 15'd4096;
parameter    ap_ST_fsm_state14 = 15'd8192;
parameter    ap_ST_fsm_state15 = 15'd16384;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input   direction;
output  [13:0] in_M_real_address0;
output   in_M_real_ce0;
input  [31:0] in_M_real_q0;
output  [13:0] in_M_imag_address0;
output   in_M_imag_ce0;
input  [31:0] in_M_imag_q0;
output  [13:0] out_M_real_address0;
output   out_M_real_ce0;
output   out_M_real_we0;
output  [31:0] out_M_real_d0;
output  [13:0] out_M_imag_address0;
output   out_M_imag_ce0;
output   out_M_imag_we0;
output  [31:0] out_M_imag_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[13:0] in_M_real_address0;
reg in_M_real_ce0;
reg[13:0] in_M_imag_address0;
reg in_M_imag_ce0;
reg[13:0] out_M_real_address0;
reg out_M_real_ce0;
reg out_M_real_we0;
reg[31:0] out_M_real_d0;
reg[13:0] out_M_imag_address0;
reg out_M_imag_ce0;
reg out_M_imag_we0;
reg[31:0] out_M_imag_d0;

(* fsm_encoding = "none" *) reg   [14:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [6:0] add_ln199_fu_321_p2;
wire    ap_CS_fsm_state2;
wire   [6:0] add_ln199_1_fu_338_p2;
wire    ap_CS_fsm_state3;
wire   [7:0] i_1_fu_361_p2;
reg   [7:0] i_1_reg_623;
wire    ap_CS_fsm_state4;
wire   [15:0] zext_ln203_fu_375_p1;
reg   [15:0] zext_ln203_reg_628;
wire   [0:0] icmp_ln202_fu_355_p2;
wire   [7:0] j_fu_385_p2;
reg   [7:0] j_reg_637;
wire    ap_CS_fsm_state5;
wire   [0:0] icmp_ln203_fu_379_p2;
wire   [7:0] k_fu_434_p2;
reg   [7:0] k_reg_655;
wire    ap_CS_fsm_state8;
wire   [15:0] add_ln210_fu_449_p2;
reg   [15:0] add_ln210_reg_660;
wire   [0:0] icmp_ln209_fu_428_p2;
wire   [7:0] j_1_fu_479_p2;
reg   [7:0] j_1_reg_673;
wire    ap_CS_fsm_state10;
wire   [15:0] zext_ln217_fu_485_p1;
reg   [15:0] zext_ln217_reg_678;
wire   [0:0] icmp_ln216_fu_473_p2;
wire   [7:0] i_fu_495_p2;
reg   [7:0] i_reg_687;
wire    ap_CS_fsm_state11;
wire   [0:0] icmp_ln217_fu_489_p2;
wire   [7:0] i_2_fu_552_p2;
reg   [7:0] i_2_reg_705;
wire    ap_CS_fsm_state14;
wire   [15:0] add_ln223_fu_575_p2;
reg   [15:0] add_ln223_reg_710;
wire   [0:0] icmp_ln222_fu_546_p2;
reg   [6:0] buffer_out_address0;
reg    buffer_out_ce0;
reg    buffer_out_we0;
reg   [63:0] buffer_out_d0;
wire   [63:0] buffer_out_q0;
reg   [6:0] buffer_in_address0;
reg    buffer_in_ce0;
reg    buffer_in_we0;
reg   [63:0] buffer_in_d0;
wire   [63:0] buffer_in_q0;
wire   [6:0] grp_fft_top_fu_304_in_r_address0;
wire    grp_fft_top_fu_304_in_r_ce0;
wire   [63:0] grp_fft_top_fu_304_in_r_d0;
wire    grp_fft_top_fu_304_in_r_we0;
wire   [6:0] grp_fft_top_fu_304_in_r_address1;
wire    grp_fft_top_fu_304_in_r_ce1;
wire   [63:0] grp_fft_top_fu_304_in_r_d1;
wire    grp_fft_top_fu_304_in_r_we1;
wire   [6:0] grp_fft_top_fu_304_out_r_address0;
wire    grp_fft_top_fu_304_out_r_ce0;
wire   [63:0] grp_fft_top_fu_304_out_r_d0;
wire    grp_fft_top_fu_304_out_r_we0;
wire   [6:0] grp_fft_top_fu_304_out_r_address1;
wire    grp_fft_top_fu_304_out_r_ce1;
wire   [63:0] grp_fft_top_fu_304_out_r_d1;
wire    grp_fft_top_fu_304_out_r_we1;
wire    grp_fft_top_fu_304_direction_ap_ack;
wire    grp_fft_top_fu_304_ap_start;
wire    grp_fft_top_fu_304_ap_done;
wire    grp_fft_top_fu_304_ap_ready;
wire    grp_fft_top_fu_304_ap_idle;
reg    grp_fft_top_fu_304_ap_continue;
reg   [6:0] phi_ln199_reg_214;
wire   [0:0] icmp_ln199_fu_332_p2;
reg   [6:0] phi_ln199_1_reg_225;
wire   [0:0] icmp_ln199_1_fu_349_p2;
reg   [7:0] i_0_reg_236;
reg   [7:0] j_0_reg_247;
wire    ap_CS_fsm_state6;
reg   [7:0] k_0_reg_259;
wire    ap_CS_fsm_state7;
wire    ap_sync_grp_fft_top_fu_304_ap_ready;
wire    ap_sync_grp_fft_top_fu_304_ap_done;
reg    ap_block_state7_on_subcall_done;
wire    ap_CS_fsm_state9;
reg   [7:0] j2_0_reg_270;
reg   [7:0] i3_0_reg_281;
wire    ap_CS_fsm_state12;
reg   [7:0] i4_0_reg_293;
wire    ap_CS_fsm_state13;
reg    ap_block_state13_on_subcall_done;
wire    ap_CS_fsm_state15;
reg    grp_fft_top_fu_304_ap_start_reg;
reg    ap_sync_reg_grp_fft_top_fu_304_ap_ready;
reg    ap_sync_reg_grp_fft_top_fu_304_ap_done;
wire   [63:0] zext_ln199_fu_327_p1;
wire   [63:0] zext_ln199_1_fu_344_p1;
wire   [63:0] zext_ln204_2_fu_400_p1;
wire   [63:0] zext_ln204_fu_406_p1;
wire   [63:0] zext_ln210_fu_440_p1;
wire   [63:0] zext_ln210_2_fu_454_p1;
wire   [63:0] zext_ln218_2_fu_518_p1;
wire   [63:0] zext_ln218_fu_524_p1;
wire   [63:0] zext_ln223_fu_558_p1;
wire   [63:0] zext_ln223_2_fu_580_p1;
wire   [63:0] buffer_in_M_imag_ad_fu_419_p3;
wire   [63:0] buffer_in_M_imag_ad_1_fu_537_p3;
wire   [31:0] bitcast_ln210_fu_463_p1;
wire   [31:0] bitcast_ln223_fu_589_p1;
wire   [31:0] bitcast_ln210_1_fu_468_p1;
wire   [31:0] bitcast_ln223_1_fu_594_p1;
wire   [14:0] tmp_s_fu_367_p3;
wire   [15:0] zext_ln204_1_fu_391_p1;
wire   [15:0] add_ln204_fu_395_p2;
wire   [31:0] bitcast_ln204_1_fu_415_p1;
wire   [31:0] bitcast_ln204_fu_411_p1;
wire   [15:0] zext_ln210_1_fu_445_p1;
wire   [31:0] trunc_ln210_fu_459_p1;
wire   [31:0] grp_fu_311_p4;
wire   [14:0] tmp_142_fu_501_p3;
wire   [15:0] zext_ln218_1_fu_509_p1;
wire   [15:0] add_ln218_fu_513_p2;
wire   [31:0] bitcast_ln218_1_fu_533_p1;
wire   [31:0] bitcast_ln218_fu_529_p1;
wire   [14:0] tmp_143_fu_563_p3;
wire   [15:0] zext_ln223_1_fu_571_p1;
wire   [31:0] trunc_ln223_fu_585_p1;
reg   [14:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 15'd1;
#0 grp_fft_top_fu_304_ap_start_reg = 1'b0;
#0 ap_sync_reg_grp_fft_top_fu_304_ap_ready = 1'b0;
#0 ap_sync_reg_grp_fft_top_fu_304_ap_done = 1'b0;
end

fft_top_2D_bufferocq #(
    .DataWidth( 64 ),
    .AddressRange( 128 ),
    .AddressWidth( 7 ))
buffer_out_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(buffer_out_address0),
    .ce0(buffer_out_ce0),
    .we0(buffer_out_we0),
    .d0(buffer_out_d0),
    .q0(buffer_out_q0)
);

fft_top_2D_bufferocq #(
    .DataWidth( 64 ),
    .AddressRange( 128 ),
    .AddressWidth( 7 ))
buffer_in_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(buffer_in_address0),
    .ce0(buffer_in_ce0),
    .we0(buffer_in_we0),
    .d0(buffer_in_d0),
    .q0(buffer_in_q0)
);

fft_top grp_fft_top_fu_304(
    .direction(direction),
    .in_r_address0(grp_fft_top_fu_304_in_r_address0),
    .in_r_ce0(grp_fft_top_fu_304_in_r_ce0),
    .in_r_d0(grp_fft_top_fu_304_in_r_d0),
    .in_r_q0(buffer_in_q0),
    .in_r_we0(grp_fft_top_fu_304_in_r_we0),
    .in_r_address1(grp_fft_top_fu_304_in_r_address1),
    .in_r_ce1(grp_fft_top_fu_304_in_r_ce1),
    .in_r_d1(grp_fft_top_fu_304_in_r_d1),
    .in_r_q1(64'd0),
    .in_r_we1(grp_fft_top_fu_304_in_r_we1),
    .out_r_address0(grp_fft_top_fu_304_out_r_address0),
    .out_r_ce0(grp_fft_top_fu_304_out_r_ce0),
    .out_r_d0(grp_fft_top_fu_304_out_r_d0),
    .out_r_q0(64'd0),
    .out_r_we0(grp_fft_top_fu_304_out_r_we0),
    .out_r_address1(grp_fft_top_fu_304_out_r_address1),
    .out_r_ce1(grp_fft_top_fu_304_out_r_ce1),
    .out_r_d1(grp_fft_top_fu_304_out_r_d1),
    .out_r_q1(64'd0),
    .out_r_we1(grp_fft_top_fu_304_out_r_we1),
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .direction_ap_vld(1'b1),
    .direction_ap_ack(grp_fft_top_fu_304_direction_ap_ack),
    .ap_start(grp_fft_top_fu_304_ap_start),
    .ap_done(grp_fft_top_fu_304_ap_done),
    .ap_ready(grp_fft_top_fu_304_ap_ready),
    .ap_idle(grp_fft_top_fu_304_ap_idle),
    .ap_continue(grp_fft_top_fu_304_ap_continue)
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
        ap_sync_reg_grp_fft_top_fu_304_ap_done <= 1'b0;
    end else begin
        if ((((1'b0 == ap_block_state13_on_subcall_done) & (1'b1 == ap_CS_fsm_state13)) | ((1'b0 == ap_block_state7_on_subcall_done) & (1'b1 == ap_CS_fsm_state7)))) begin
            ap_sync_reg_grp_fft_top_fu_304_ap_done <= 1'b0;
        end else if ((grp_fft_top_fu_304_ap_done == 1'b1)) begin
            ap_sync_reg_grp_fft_top_fu_304_ap_done <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_grp_fft_top_fu_304_ap_ready <= 1'b0;
    end else begin
        if ((((1'b0 == ap_block_state13_on_subcall_done) & (1'b1 == ap_CS_fsm_state13)) | ((1'b0 == ap_block_state7_on_subcall_done) & (1'b1 == ap_CS_fsm_state7)))) begin
            ap_sync_reg_grp_fft_top_fu_304_ap_ready <= 1'b0;
        end else if ((grp_fft_top_fu_304_ap_ready == 1'b1)) begin
            ap_sync_reg_grp_fft_top_fu_304_ap_ready <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_fft_top_fu_304_ap_start_reg <= 1'b0;
    end else begin
        if ((((1'b1 == ap_CS_fsm_state5) & (icmp_ln203_fu_379_p2 == 1'd1)) | ((ap_sync_grp_fft_top_fu_304_ap_ready == 1'b0) & (1'b1 == ap_CS_fsm_state13)) | ((ap_sync_grp_fft_top_fu_304_ap_ready == 1'b0) & (1'b1 == ap_CS_fsm_state7)) | ((1'b1 == ap_CS_fsm_state11) & (icmp_ln217_fu_489_p2 == 1'd1)))) begin
            grp_fft_top_fu_304_ap_start_reg <= 1'b1;
        end else if ((grp_fft_top_fu_304_ap_ready == 1'b1)) begin
            grp_fft_top_fu_304_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        i3_0_reg_281 <= i_reg_687;
    end else if (((icmp_ln216_fu_473_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
        i3_0_reg_281 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        i4_0_reg_293 <= i_2_reg_705;
    end else if (((1'b0 == ap_block_state13_on_subcall_done) & (1'b1 == ap_CS_fsm_state13))) begin
        i4_0_reg_293 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln199_1_fu_349_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        i_0_reg_236 <= 8'd0;
    end else if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln209_fu_428_p2 == 1'd1))) begin
        i_0_reg_236 <= i_1_reg_623;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln202_fu_355_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        j2_0_reg_270 <= 8'd0;
    end else if (((1'b1 == ap_CS_fsm_state14) & (icmp_ln222_fu_546_p2 == 1'd1))) begin
        j2_0_reg_270 <= j_1_reg_673;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        j_0_reg_247 <= j_reg_637;
    end else if (((icmp_ln202_fu_355_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        j_0_reg_247 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        k_0_reg_259 <= k_reg_655;
    end else if (((1'b0 == ap_block_state7_on_subcall_done) & (1'b1 == ap_CS_fsm_state7))) begin
        k_0_reg_259 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln199_fu_332_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        phi_ln199_1_reg_225 <= 7'd0;
    end else if (((icmp_ln199_1_fu_349_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        phi_ln199_1_reg_225 <= add_ln199_1_fu_338_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln199_fu_332_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        phi_ln199_reg_214 <= add_ln199_fu_321_p2;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        phi_ln199_reg_214 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln209_fu_428_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        add_ln210_reg_660 <= add_ln210_fu_449_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln222_fu_546_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        add_ln223_reg_710 <= add_ln223_fu_575_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        i_1_reg_623 <= i_1_fu_361_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        i_2_reg_705 <= i_2_fu_552_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        i_reg_687 <= i_fu_495_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        j_1_reg_673 <= j_1_fu_479_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        j_reg_637 <= j_fu_385_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        k_reg_655 <= k_fu_434_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln202_fu_355_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        zext_ln203_reg_628[14 : 7] <= zext_ln203_fu_375_p1[14 : 7];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln216_fu_473_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
        zext_ln217_reg_678[7 : 0] <= zext_ln217_fu_485_p1[7 : 0];
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state10) & (icmp_ln216_fu_473_p2 == 1'd1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state10) & (icmp_ln216_fu_473_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buffer_in_address0 = zext_ln218_fu_524_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buffer_in_address0 = zext_ln204_fu_406_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buffer_in_address0 = zext_ln199_fu_327_p1;
    end else if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state7))) begin
        buffer_in_address0 = grp_fft_top_fu_304_in_r_address0;
    end else begin
        buffer_in_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state6))) begin
        buffer_in_ce0 = 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state7))) begin
        buffer_in_ce0 = grp_fft_top_fu_304_in_r_ce0;
    end else begin
        buffer_in_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buffer_in_d0 = buffer_in_M_imag_ad_1_fu_537_p3;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buffer_in_d0 = buffer_in_M_imag_ad_fu_419_p3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buffer_in_d0 = 64'd0;
    end else begin
        buffer_in_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state6))) begin
        buffer_in_we0 = 1'b1;
    end else begin
        buffer_in_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buffer_out_address0 = zext_ln223_fu_558_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        buffer_out_address0 = zext_ln210_fu_440_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buffer_out_address0 = zext_ln199_1_fu_344_p1;
    end else if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state7))) begin
        buffer_out_address0 = grp_fft_top_fu_304_out_r_address0;
    end else begin
        buffer_out_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state8))) begin
        buffer_out_ce0 = 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state7))) begin
        buffer_out_ce0 = grp_fft_top_fu_304_out_r_ce0;
    end else begin
        buffer_out_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buffer_out_d0 = 64'd0;
    end else if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state7))) begin
        buffer_out_d0 = grp_fft_top_fu_304_out_r_d0;
    end else begin
        buffer_out_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buffer_out_we0 = 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state7))) begin
        buffer_out_we0 = grp_fft_top_fu_304_out_r_we0;
    end else begin
        buffer_out_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_state13_on_subcall_done) & (1'b1 == ap_CS_fsm_state13)) | ((1'b0 == ap_block_state7_on_subcall_done) & (1'b1 == ap_CS_fsm_state7)))) begin
        grp_fft_top_fu_304_ap_continue = 1'b1;
    end else begin
        grp_fft_top_fu_304_ap_continue = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        in_M_imag_address0 = zext_ln218_2_fu_518_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        in_M_imag_address0 = zext_ln204_2_fu_400_p1;
    end else begin
        in_M_imag_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state11))) begin
        in_M_imag_ce0 = 1'b1;
    end else begin
        in_M_imag_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        in_M_real_address0 = zext_ln218_2_fu_518_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        in_M_real_address0 = zext_ln204_2_fu_400_p1;
    end else begin
        in_M_real_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state11))) begin
        in_M_real_ce0 = 1'b1;
    end else begin
        in_M_real_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        out_M_imag_address0 = zext_ln223_2_fu_580_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        out_M_imag_address0 = zext_ln210_2_fu_454_p1;
    end else begin
        out_M_imag_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state9))) begin
        out_M_imag_ce0 = 1'b1;
    end else begin
        out_M_imag_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        out_M_imag_d0 = bitcast_ln223_1_fu_594_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        out_M_imag_d0 = bitcast_ln210_1_fu_468_p1;
    end else begin
        out_M_imag_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state9))) begin
        out_M_imag_we0 = 1'b1;
    end else begin
        out_M_imag_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        out_M_real_address0 = zext_ln223_2_fu_580_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        out_M_real_address0 = zext_ln210_2_fu_454_p1;
    end else begin
        out_M_real_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state9))) begin
        out_M_real_ce0 = 1'b1;
    end else begin
        out_M_real_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        out_M_real_d0 = bitcast_ln223_fu_589_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        out_M_real_d0 = bitcast_ln210_fu_463_p1;
    end else begin
        out_M_real_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state9))) begin
        out_M_real_we0 = 1'b1;
    end else begin
        out_M_real_we0 = 1'b0;
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
            if (((icmp_ln199_fu_332_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln199_1_fu_349_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((icmp_ln202_fu_355_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln203_fu_379_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state7 : begin
            if (((1'b0 == ap_block_state7_on_subcall_done) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state8 : begin
            if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln209_fu_428_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state10 : begin
            if (((1'b1 == ap_CS_fsm_state10) & (icmp_ln216_fu_473_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state11 : begin
            if (((1'b1 == ap_CS_fsm_state11) & (icmp_ln217_fu_489_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state13 : begin
            if (((1'b0 == ap_block_state13_on_subcall_done) & (1'b1 == ap_CS_fsm_state13))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        ap_ST_fsm_state14 : begin
            if (((1'b1 == ap_CS_fsm_state14) & (icmp_ln222_fu_546_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln199_1_fu_338_p2 = (phi_ln199_1_reg_225 + 7'd1);

assign add_ln199_fu_321_p2 = (phi_ln199_reg_214 + 7'd1);

assign add_ln204_fu_395_p2 = (zext_ln203_reg_628 + zext_ln204_1_fu_391_p1);

assign add_ln210_fu_449_p2 = (zext_ln210_1_fu_445_p1 + zext_ln203_reg_628);

assign add_ln218_fu_513_p2 = (zext_ln217_reg_678 + zext_ln218_1_fu_509_p1);

assign add_ln223_fu_575_p2 = (zext_ln223_1_fu_571_p1 + zext_ln217_reg_678);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

always @ (*) begin
    ap_block_state13_on_subcall_done = ((ap_sync_grp_fft_top_fu_304_ap_ready & ap_sync_grp_fft_top_fu_304_ap_done) == 1'b0);
end

always @ (*) begin
    ap_block_state7_on_subcall_done = ((ap_sync_grp_fft_top_fu_304_ap_ready & ap_sync_grp_fft_top_fu_304_ap_done) == 1'b0);
end

assign ap_sync_grp_fft_top_fu_304_ap_done = (grp_fft_top_fu_304_ap_done | ap_sync_reg_grp_fft_top_fu_304_ap_done);

assign ap_sync_grp_fft_top_fu_304_ap_ready = (grp_fft_top_fu_304_ap_ready | ap_sync_reg_grp_fft_top_fu_304_ap_ready);

assign bitcast_ln204_1_fu_415_p1 = in_M_imag_q0;

assign bitcast_ln204_fu_411_p1 = in_M_real_q0;

assign bitcast_ln210_1_fu_468_p1 = grp_fu_311_p4;

assign bitcast_ln210_fu_463_p1 = trunc_ln210_fu_459_p1;

assign bitcast_ln218_1_fu_533_p1 = in_M_imag_q0;

assign bitcast_ln218_fu_529_p1 = in_M_real_q0;

assign bitcast_ln223_1_fu_594_p1 = grp_fu_311_p4;

assign bitcast_ln223_fu_589_p1 = trunc_ln223_fu_585_p1;

assign buffer_in_M_imag_ad_1_fu_537_p3 = {{bitcast_ln218_1_fu_533_p1}, {bitcast_ln218_fu_529_p1}};

assign buffer_in_M_imag_ad_fu_419_p3 = {{bitcast_ln204_1_fu_415_p1}, {bitcast_ln204_fu_411_p1}};

assign grp_fft_top_fu_304_ap_start = grp_fft_top_fu_304_ap_start_reg;

assign grp_fu_311_p4 = {{buffer_out_q0[63:32]}};

assign i_1_fu_361_p2 = (i_0_reg_236 + 8'd1);

assign i_2_fu_552_p2 = (i4_0_reg_293 + 8'd1);

assign i_fu_495_p2 = (i3_0_reg_281 + 8'd1);

assign icmp_ln199_1_fu_349_p2 = ((phi_ln199_1_reg_225 == 7'd127) ? 1'b1 : 1'b0);

assign icmp_ln199_fu_332_p2 = ((phi_ln199_reg_214 == 7'd127) ? 1'b1 : 1'b0);

assign icmp_ln202_fu_355_p2 = ((i_0_reg_236 == 8'd128) ? 1'b1 : 1'b0);

assign icmp_ln203_fu_379_p2 = ((j_0_reg_247 == 8'd128) ? 1'b1 : 1'b0);

assign icmp_ln209_fu_428_p2 = ((k_0_reg_259 == 8'd128) ? 1'b1 : 1'b0);

assign icmp_ln216_fu_473_p2 = ((j2_0_reg_270 == 8'd128) ? 1'b1 : 1'b0);

assign icmp_ln217_fu_489_p2 = ((i3_0_reg_281 == 8'd128) ? 1'b1 : 1'b0);

assign icmp_ln222_fu_546_p2 = ((i4_0_reg_293 == 8'd128) ? 1'b1 : 1'b0);

assign j_1_fu_479_p2 = (j2_0_reg_270 + 8'd1);

assign j_fu_385_p2 = (j_0_reg_247 + 8'd1);

assign k_fu_434_p2 = (k_0_reg_259 + 8'd1);

assign tmp_142_fu_501_p3 = {{i3_0_reg_281}, {7'd0}};

assign tmp_143_fu_563_p3 = {{i4_0_reg_293}, {7'd0}};

assign tmp_s_fu_367_p3 = {{i_0_reg_236}, {7'd0}};

assign trunc_ln210_fu_459_p1 = buffer_out_q0[31:0];

assign trunc_ln223_fu_585_p1 = buffer_out_q0[31:0];

assign zext_ln199_1_fu_344_p1 = phi_ln199_1_reg_225;

assign zext_ln199_fu_327_p1 = phi_ln199_reg_214;

assign zext_ln203_fu_375_p1 = tmp_s_fu_367_p3;

assign zext_ln204_1_fu_391_p1 = j_0_reg_247;

assign zext_ln204_2_fu_400_p1 = add_ln204_fu_395_p2;

assign zext_ln204_fu_406_p1 = j_0_reg_247;

assign zext_ln210_1_fu_445_p1 = k_0_reg_259;

assign zext_ln210_2_fu_454_p1 = add_ln210_reg_660;

assign zext_ln210_fu_440_p1 = k_0_reg_259;

assign zext_ln217_fu_485_p1 = j2_0_reg_270;

assign zext_ln218_1_fu_509_p1 = tmp_142_fu_501_p3;

assign zext_ln218_2_fu_518_p1 = add_ln218_fu_513_p2;

assign zext_ln218_fu_524_p1 = i3_0_reg_281;

assign zext_ln223_1_fu_571_p1 = tmp_143_fu_563_p3;

assign zext_ln223_2_fu_580_p1 = add_ln223_reg_710;

assign zext_ln223_fu_558_p1 = i4_0_reg_293;

always @ (posedge ap_clk) begin
    zext_ln203_reg_628[6:0] <= 7'b0000000;
    zext_ln203_reg_628[15] <= 1'b0;
    zext_ln217_reg_678[15:8] <= 8'b00000000;
end

endmodule //fft_top_2D
