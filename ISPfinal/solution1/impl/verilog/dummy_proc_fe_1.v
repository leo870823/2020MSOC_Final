// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module dummy_proc_fe_1 (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        start_out,
        start_write,
        direction,
        config_data_V_dout,
        config_data_V_empty_n,
        config_data_V_read,
        config_data_V_din,
        config_data_V_full_n,
        config_data_V_write,
        in_r_address0,
        in_r_ce0,
        in_r_q0,
        out_r_din,
        out_r_full_n,
        out_r_write
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output   start_out;
output   start_write;
input  [0:0] direction;
input  [15:0] config_data_V_dout;
input   config_data_V_empty_n;
output   config_data_V_read;
output  [15:0] config_data_V_din;
input   config_data_V_full_n;
output   config_data_V_write;
output  [6:0] in_r_address0;
output   in_r_ce0;
input  [63:0] in_r_q0;
output  [63:0] out_r_din;
input   out_r_full_n;
output   out_r_write;

reg ap_done;
reg ap_idle;
reg start_write;
reg config_data_V_read;
reg[15:0] config_data_V_din;
reg config_data_V_write;
reg in_r_ce0;
reg out_r_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    config_data_V_i_blk_n;
reg    config_data_V_o_blk_n;
reg    out_r_blk_n;
wire    ap_CS_fsm_state3;
wire   [7:0] i_fu_132_p2;
reg   [7:0] i_reg_146;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln149_fu_126_p2;
reg   [7:0] i_0_reg_104;
reg    ap_block_state1;
wire   [63:0] zext_ln150_fu_138_p1;
reg   [2:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 3'd1;
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
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((icmp_ln149_fu_126_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((internal_ap_ready == 1'b0) & (real_start == 1'b1))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((out_r_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        i_0_reg_104 <= i_reg_146;
    end else if ((~((real_start == 1'b0) | (config_data_V_full_n == 1'b0) | (config_data_V_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        i_0_reg_104 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_reg_146 <= i_fu_132_p2;
    end
end

always @ (*) begin
    if (((icmp_ln149_fu_126_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((real_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        config_data_V_i_blk_n = config_data_V_empty_n;
    end else begin
        config_data_V_i_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        config_data_V_o_blk_n = config_data_V_full_n;
    end else begin
        config_data_V_o_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (config_data_V_full_n == 1'b0) | (config_data_V_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        config_data_V_read = 1'b1;
    end else begin
        config_data_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (config_data_V_full_n == 1'b0) | (config_data_V_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        config_data_V_write = 1'b1;
    end else begin
        config_data_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        in_r_ce0 = 1'b1;
    end else begin
        in_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln149_fu_126_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        out_r_blk_n = out_r_full_n;
    end else begin
        out_r_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((out_r_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        out_r_write = 1'b1;
    end else begin
        out_r_write = 1'b0;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (start_full_n == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (real_start == 1'b1))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((real_start == 1'b0) | (config_data_V_full_n == 1'b0) | (config_data_V_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln149_fu_126_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((out_r_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

always @ (*) begin
    ap_block_state1 = ((real_start == 1'b0) | (config_data_V_full_n == 1'b0) | (config_data_V_empty_n == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_ready = internal_ap_ready;

always @ (*) begin
    config_data_V_din = config_data_V_dout;
    config_data_V_din[32'd0] = |(direction);
end

assign i_fu_132_p2 = (i_0_reg_104 + 8'd1);

assign icmp_ln149_fu_126_p2 = ((i_0_reg_104 == 8'd128) ? 1'b1 : 1'b0);

assign in_r_address0 = zext_ln150_fu_138_p1;

assign out_r_din = in_r_q0;

assign start_out = real_start;

assign zext_ln150_fu_138_p1 = i_0_reg_104;

endmodule //dummy_proc_fe_1
