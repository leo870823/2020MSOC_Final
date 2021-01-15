// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module array_copy3 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        data_in_V_address0,
        data_in_V_ce0,
        data_in_V_q0,
        data_out_V_address0,
        data_out_V_ce0,
        data_out_V_we0,
        data_out_V_d0
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_pp0_stage0 = 3'd2;
parameter    ap_ST_fsm_state4 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [13:0] data_in_V_address0;
output   data_in_V_ce0;
input  [7:0] data_in_V_q0;
output  [13:0] data_out_V_address0;
output   data_out_V_ce0;
output   data_out_V_we0;
output  [7:0] data_out_V_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg data_in_V_ce0;
reg data_out_V_ce0;
reg data_out_V_we0;

(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [14:0] indvar_flatten_reg_73;
reg   [7:0] y_0_reg_84;
reg   [7:0] x_0_reg_95;
wire   [0:0] icmp_ln21_fu_106_p2;
reg   [0:0] icmp_ln21_reg_179;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
wire   [14:0] add_ln21_fu_112_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [7:0] select_ln26_1_fu_138_p3;
reg   [7:0] select_ln26_1_reg_188;
wire   [63:0] zext_ln321_4_fu_168_p1;
reg   [63:0] zext_ln321_4_reg_193;
wire   [7:0] x_fu_173_p2;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
reg    ap_enable_reg_pp0_iter1;
reg   [7:0] ap_phi_mux_y_0_phi_fu_88_p4;
wire    ap_block_pp0_stage0;
wire   [0:0] icmp_ln23_fu_124_p2;
wire   [7:0] y_fu_118_p2;
wire   [14:0] tmp_fu_146_p3;
wire   [7:0] select_ln26_fu_130_p3;
wire   [15:0] zext_ln321_fu_158_p1;
wire   [15:0] zext_ln24_fu_154_p1;
wire   [15:0] add_ln321_fu_162_p2;
wire    ap_CS_fsm_state4;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
end

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
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state2))) begin
            ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state2);
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln21_fu_106_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten_reg_73 <= add_ln21_fu_112_p2;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        indvar_flatten_reg_73 <= 15'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln21_fu_106_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        x_0_reg_95 <= x_fu_173_p2;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        x_0_reg_95 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln21_reg_179 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        y_0_reg_84 <= select_ln26_1_reg_188;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        y_0_reg_84 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln21_reg_179 <= icmp_ln21_fu_106_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln21_fu_106_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        select_ln26_1_reg_188 <= select_ln26_1_fu_138_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln21_fu_106_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        zext_ln321_4_reg_193[15 : 0] <= zext_ln321_4_fu_168_p1[15 : 0];
    end
end

always @ (*) begin
    if ((icmp_ln21_fu_106_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln21_reg_179 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_y_0_phi_fu_88_p4 = select_ln26_1_reg_188;
    end else begin
        ap_phi_mux_y_0_phi_fu_88_p4 = y_0_reg_84;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        data_in_V_ce0 = 1'b1;
    end else begin
        data_in_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        data_out_V_ce0 = 1'b1;
    end else begin
        data_out_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln21_reg_179 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        data_out_V_we0 = 1'b1;
    end else begin
        data_out_V_we0 = 1'b0;
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
            if (~((1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln21_fu_106_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln21_fu_106_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln21_fu_112_p2 = (indvar_flatten_reg_73 + 15'd1);

assign add_ln321_fu_162_p2 = (zext_ln321_fu_158_p1 + zext_ln24_fu_154_p1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign data_in_V_address0 = zext_ln321_4_fu_168_p1;

assign data_out_V_address0 = zext_ln321_4_reg_193;

assign data_out_V_d0 = data_in_V_q0;

assign icmp_ln21_fu_106_p2 = ((indvar_flatten_reg_73 == 15'd16384) ? 1'b1 : 1'b0);

assign icmp_ln23_fu_124_p2 = ((x_0_reg_95 == 8'd128) ? 1'b1 : 1'b0);

assign select_ln26_1_fu_138_p3 = ((icmp_ln23_fu_124_p2[0:0] === 1'b1) ? y_fu_118_p2 : ap_phi_mux_y_0_phi_fu_88_p4);

assign select_ln26_fu_130_p3 = ((icmp_ln23_fu_124_p2[0:0] === 1'b1) ? 8'd0 : x_0_reg_95);

assign tmp_fu_146_p3 = {{select_ln26_1_fu_138_p3}, {7'd0}};

assign x_fu_173_p2 = (select_ln26_fu_130_p3 + 8'd1);

assign y_fu_118_p2 = (ap_phi_mux_y_0_phi_fu_88_p4 + 8'd1);

assign zext_ln24_fu_154_p1 = tmp_fu_146_p3;

assign zext_ln321_4_fu_168_p1 = add_ln321_fu_162_p2;

assign zext_ln321_fu_158_p1 = select_ln26_fu_130_p3;

always @ (posedge ap_clk) begin
    zext_ln321_4_reg_193[63:16] <= 48'b000000000000000000000000000000000000000000000000;
end

endmodule //array_copy3
