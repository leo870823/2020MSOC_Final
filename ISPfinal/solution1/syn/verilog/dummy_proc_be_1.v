// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module dummy_proc_be_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        status_in_data_V_dout,
        status_in_data_V_empty_n,
        status_in_data_V_read,
        ovflo,
        ovflo_ap_vld,
        in_r_dout,
        in_r_empty_n,
        in_r_read,
        out_r_address0,
        out_r_ce0,
        out_r_we0,
        out_r_d0
);

parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [7:0] status_in_data_V_dout;
input   status_in_data_V_empty_n;
output   status_in_data_V_read;
output   ovflo;
output   ovflo_ap_vld;
input  [63:0] in_r_dout;
input   in_r_empty_n;
output   in_r_read;
output  [6:0] out_r_address0;
output   out_r_ce0;
output   out_r_we0;
output  [63:0] out_r_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg status_in_data_V_read;
reg ovflo;
reg ovflo_ap_vld;
reg in_r_read;
reg out_r_ce0;
reg out_r_we0;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    status_in_data_V_blk_n;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln160_fu_104_p2;
reg    in_r_blk_n;
wire   [7:0] i_fu_110_p2;
reg    ap_block_state2;
reg   [7:0] i_0_reg_93;
reg    ap_block_state1;
wire   [63:0] zext_ln161_fu_116_p1;
wire   [0:0] trunc_ln681_fu_121_p1;
reg    ovflo_preg;
reg   [1:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 2'd1;
#0 ovflo_preg = 1'b0;
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
        end else if ((~(((icmp_ln160_fu_104_p2 == 1'd0) & (in_r_empty_n == 1'b0)) | ((icmp_ln160_fu_104_p2 == 1'd1) & (status_in_data_V_empty_n == 1'b0))) & (icmp_ln160_fu_104_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ovflo_preg <= 1'b0;
    end else begin
        if ((~(((icmp_ln160_fu_104_p2 == 1'd0) & (in_r_empty_n == 1'b0)) | ((icmp_ln160_fu_104_p2 == 1'd1) & (status_in_data_V_empty_n == 1'b0))) & (icmp_ln160_fu_104_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ovflo_preg <= trunc_ln681_fu_121_p1;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~(((icmp_ln160_fu_104_p2 == 1'd0) & (in_r_empty_n == 1'b0)) | ((icmp_ln160_fu_104_p2 == 1'd1) & (status_in_data_V_empty_n == 1'b0))) & (icmp_ln160_fu_104_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        i_0_reg_93 <= i_fu_110_p2;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        i_0_reg_93 <= 8'd0;
    end
end

always @ (*) begin
    if ((~(((icmp_ln160_fu_104_p2 == 1'd0) & (in_r_empty_n == 1'b0)) | ((icmp_ln160_fu_104_p2 == 1'd1) & (status_in_data_V_empty_n == 1'b0))) & (icmp_ln160_fu_104_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
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
    if ((~(((icmp_ln160_fu_104_p2 == 1'd0) & (in_r_empty_n == 1'b0)) | ((icmp_ln160_fu_104_p2 == 1'd1) & (status_in_data_V_empty_n == 1'b0))) & (icmp_ln160_fu_104_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln160_fu_104_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        in_r_blk_n = in_r_empty_n;
    end else begin
        in_r_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~(((icmp_ln160_fu_104_p2 == 1'd0) & (in_r_empty_n == 1'b0)) | ((icmp_ln160_fu_104_p2 == 1'd1) & (status_in_data_V_empty_n == 1'b0))) & (icmp_ln160_fu_104_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        in_r_read = 1'b1;
    end else begin
        in_r_read = 1'b0;
    end
end

always @ (*) begin
    if ((~(((icmp_ln160_fu_104_p2 == 1'd0) & (in_r_empty_n == 1'b0)) | ((icmp_ln160_fu_104_p2 == 1'd1) & (status_in_data_V_empty_n == 1'b0))) & (1'b1 == ap_CS_fsm_state2))) begin
        out_r_ce0 = 1'b1;
    end else begin
        out_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~(((icmp_ln160_fu_104_p2 == 1'd0) & (in_r_empty_n == 1'b0)) | ((icmp_ln160_fu_104_p2 == 1'd1) & (status_in_data_V_empty_n == 1'b0))) & (icmp_ln160_fu_104_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        out_r_we0 = 1'b1;
    end else begin
        out_r_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((~(((icmp_ln160_fu_104_p2 == 1'd0) & (in_r_empty_n == 1'b0)) | ((icmp_ln160_fu_104_p2 == 1'd1) & (status_in_data_V_empty_n == 1'b0))) & (icmp_ln160_fu_104_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ovflo = trunc_ln681_fu_121_p1;
    end else begin
        ovflo = ovflo_preg;
    end
end

always @ (*) begin
    if ((~(((icmp_ln160_fu_104_p2 == 1'd0) & (in_r_empty_n == 1'b0)) | ((icmp_ln160_fu_104_p2 == 1'd1) & (status_in_data_V_empty_n == 1'b0))) & (icmp_ln160_fu_104_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ovflo_ap_vld = 1'b1;
    end else begin
        ovflo_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln160_fu_104_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        status_in_data_V_blk_n = status_in_data_V_empty_n;
    end else begin
        status_in_data_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~(((icmp_ln160_fu_104_p2 == 1'd0) & (in_r_empty_n == 1'b0)) | ((icmp_ln160_fu_104_p2 == 1'd1) & (status_in_data_V_empty_n == 1'b0))) & (icmp_ln160_fu_104_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        status_in_data_V_read = 1'b1;
    end else begin
        status_in_data_V_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if ((~(((icmp_ln160_fu_104_p2 == 1'd0) & (in_r_empty_n == 1'b0)) | ((icmp_ln160_fu_104_p2 == 1'd1) & (status_in_data_V_empty_n == 1'b0))) & (icmp_ln160_fu_104_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if ((~(((icmp_ln160_fu_104_p2 == 1'd0) & (in_r_empty_n == 1'b0)) | ((icmp_ln160_fu_104_p2 == 1'd1) & (status_in_data_V_empty_n == 1'b0))) & (icmp_ln160_fu_104_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state2 = (((icmp_ln160_fu_104_p2 == 1'd0) & (in_r_empty_n == 1'b0)) | ((icmp_ln160_fu_104_p2 == 1'd1) & (status_in_data_V_empty_n == 1'b0)));
end

assign i_fu_110_p2 = (i_0_reg_93 + 8'd1);

assign icmp_ln160_fu_104_p2 = ((i_0_reg_93 == 8'd128) ? 1'b1 : 1'b0);

assign out_r_address0 = zext_ln161_fu_116_p1;

assign out_r_d0 = in_r_dout;

assign trunc_ln681_fu_121_p1 = status_in_data_V_dout[0:0];

assign zext_ln161_fu_116_p1 = i_0_reg_93;

endmodule //dummy_proc_be_1