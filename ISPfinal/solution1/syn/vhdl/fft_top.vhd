-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity fft_top is
port (
    direction : IN STD_LOGIC;
    in_r_address0 : OUT STD_LOGIC_VECTOR (6 downto 0);
    in_r_ce0 : OUT STD_LOGIC;
    in_r_d0 : OUT STD_LOGIC_VECTOR (63 downto 0);
    in_r_q0 : IN STD_LOGIC_VECTOR (63 downto 0);
    in_r_we0 : OUT STD_LOGIC;
    in_r_address1 : OUT STD_LOGIC_VECTOR (6 downto 0);
    in_r_ce1 : OUT STD_LOGIC;
    in_r_d1 : OUT STD_LOGIC_VECTOR (63 downto 0);
    in_r_q1 : IN STD_LOGIC_VECTOR (63 downto 0);
    in_r_we1 : OUT STD_LOGIC;
    out_r_address0 : OUT STD_LOGIC_VECTOR (6 downto 0);
    out_r_ce0 : OUT STD_LOGIC;
    out_r_d0 : OUT STD_LOGIC_VECTOR (63 downto 0);
    out_r_q0 : IN STD_LOGIC_VECTOR (63 downto 0);
    out_r_we0 : OUT STD_LOGIC;
    out_r_address1 : OUT STD_LOGIC_VECTOR (6 downto 0);
    out_r_ce1 : OUT STD_LOGIC;
    out_r_d1 : OUT STD_LOGIC_VECTOR (63 downto 0);
    out_r_q1 : IN STD_LOGIC_VECTOR (63 downto 0);
    out_r_we1 : OUT STD_LOGIC;
    ovflo : OUT STD_LOGIC;
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    direction_ap_vld : IN STD_LOGIC;
    direction_ap_ack : OUT STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ovflo_ap_vld : OUT STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC );
end;


architecture behav of fft_top is 
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    constant ap_const_lv16_1 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000001";

    signal dummy_proc_fe_1_U0_ap_start : STD_LOGIC;
    signal dummy_proc_fe_1_U0_start_full_n : STD_LOGIC;
    signal dummy_proc_fe_1_U0_ap_done : STD_LOGIC;
    signal dummy_proc_fe_1_U0_ap_continue : STD_LOGIC;
    signal dummy_proc_fe_1_U0_ap_idle : STD_LOGIC;
    signal dummy_proc_fe_1_U0_ap_ready : STD_LOGIC;
    signal dummy_proc_fe_1_U0_start_out : STD_LOGIC;
    signal dummy_proc_fe_1_U0_start_write : STD_LOGIC;
    signal dummy_proc_fe_1_U0_direction : STD_LOGIC_VECTOR (0 downto 0);
    signal dummy_proc_fe_1_U0_config_data_V_read : STD_LOGIC;
    signal dummy_proc_fe_1_U0_config_data_V_din : STD_LOGIC_VECTOR (15 downto 0);
    signal dummy_proc_fe_1_U0_config_data_V_write : STD_LOGIC;
    signal dummy_proc_fe_1_U0_in_r_address0 : STD_LOGIC_VECTOR (6 downto 0);
    signal dummy_proc_fe_1_U0_in_r_ce0 : STD_LOGIC;
    signal dummy_proc_fe_1_U0_out_r_din : STD_LOGIC_VECTOR (63 downto 0);
    signal dummy_proc_fe_1_U0_out_r_write : STD_LOGIC;
    signal fft_config1_U0_ap_start : STD_LOGIC;
    signal fft_config1_U0_ap_done : STD_LOGIC;
    signal fft_config1_U0_ap_idle : STD_LOGIC;
    signal fft_config1_U0_ap_ready : STD_LOGIC;
    signal fft_config1_U0_ap_continue : STD_LOGIC;
    signal fft_config1_U0_xn_read : STD_LOGIC;
    signal fft_config1_U0_xk_din : STD_LOGIC_VECTOR (63 downto 0);
    signal fft_config1_U0_xk_write : STD_LOGIC;
    signal fft_config1_U0_status_data_V_din : STD_LOGIC_VECTOR (7 downto 0);
    signal fft_config1_U0_status_data_V_write : STD_LOGIC;
    signal fft_config1_U0_config_ch_data_V_read : STD_LOGIC;
    signal dummy_proc_be_1_U0_ap_start : STD_LOGIC;
    signal dummy_proc_be_1_U0_ap_done : STD_LOGIC;
    signal dummy_proc_be_1_U0_ap_continue : STD_LOGIC;
    signal dummy_proc_be_1_U0_ap_idle : STD_LOGIC;
    signal dummy_proc_be_1_U0_ap_ready : STD_LOGIC;
    signal dummy_proc_be_1_U0_status_in_data_V_read : STD_LOGIC;
    signal dummy_proc_be_1_U0_ovflo : STD_LOGIC;
    signal dummy_proc_be_1_U0_ovflo_ap_vld : STD_LOGIC;
    signal dummy_proc_be_1_U0_in_r_read : STD_LOGIC;
    signal dummy_proc_be_1_U0_out_r_address0 : STD_LOGIC_VECTOR (6 downto 0);
    signal dummy_proc_be_1_U0_out_r_ce0 : STD_LOGIC;
    signal dummy_proc_be_1_U0_out_r_we0 : STD_LOGIC;
    signal dummy_proc_be_1_U0_out_r_d0 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_sync_continue : STD_LOGIC;
    signal fft_config_data_V_full_n : STD_LOGIC;
    signal fft_config_data_V_dout : STD_LOGIC_VECTOR (15 downto 0);
    signal fft_config_data_V_empty_n : STD_LOGIC;
    signal fft_config1_U0_config_ch_data_V_full_n : STD_LOGIC;
    signal fft_config1_U0_config_ch_data_V_write : STD_LOGIC;
    signal fft_config1_U0_config_ch_data_V_din : STD_LOGIC_VECTOR (15 downto 0);
    signal xn_channel_full_n : STD_LOGIC;
    signal xn_channel_dout : STD_LOGIC_VECTOR (63 downto 0);
    signal xn_channel_empty_n : STD_LOGIC;
    signal xk_channel_full_n : STD_LOGIC;
    signal xk_channel_dout : STD_LOGIC_VECTOR (63 downto 0);
    signal xk_channel_empty_n : STD_LOGIC;
    signal fft_status_data_V_full_n : STD_LOGIC;
    signal fft_status_data_V_dout : STD_LOGIC_VECTOR (7 downto 0);
    signal fft_status_data_V_empty_n : STD_LOGIC;
    signal ap_sync_done : STD_LOGIC;
    signal ap_sync_ready : STD_LOGIC;
    signal start_for_fft_config1_U0_din : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_fft_config1_U0_full_n : STD_LOGIC;
    signal start_for_fft_config1_U0_dout : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_fft_config1_U0_empty_n : STD_LOGIC;
    signal start_for_dummy_proc_be_1_U0_din : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_dummy_proc_be_1_U0_full_n : STD_LOGIC;
    signal start_for_dummy_proc_be_1_U0_dout : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_dummy_proc_be_1_U0_empty_n : STD_LOGIC;
    signal fft_config1_U0_start_full_n : STD_LOGIC;
    signal fft_config1_U0_start_write : STD_LOGIC;
    signal dummy_proc_be_1_U0_start_full_n : STD_LOGIC;
    signal dummy_proc_be_1_U0_start_write : STD_LOGIC;

    component dummy_proc_fe_1 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        start_full_n : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        start_out : OUT STD_LOGIC;
        start_write : OUT STD_LOGIC;
        direction : IN STD_LOGIC_VECTOR (0 downto 0);
        config_data_V_dout : IN STD_LOGIC_VECTOR (15 downto 0);
        config_data_V_empty_n : IN STD_LOGIC;
        config_data_V_read : OUT STD_LOGIC;
        config_data_V_din : OUT STD_LOGIC_VECTOR (15 downto 0);
        config_data_V_full_n : IN STD_LOGIC;
        config_data_V_write : OUT STD_LOGIC;
        in_r_address0 : OUT STD_LOGIC_VECTOR (6 downto 0);
        in_r_ce0 : OUT STD_LOGIC;
        in_r_q0 : IN STD_LOGIC_VECTOR (63 downto 0);
        out_r_din : OUT STD_LOGIC_VECTOR (63 downto 0);
        out_r_full_n : IN STD_LOGIC;
        out_r_write : OUT STD_LOGIC );
    end component;


    component fft_config1_s IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ce : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        xn_dout : IN STD_LOGIC_VECTOR (63 downto 0);
        xn_empty_n : IN STD_LOGIC;
        xn_read : OUT STD_LOGIC;
        xk_din : OUT STD_LOGIC_VECTOR (63 downto 0);
        xk_full_n : IN STD_LOGIC;
        xk_write : OUT STD_LOGIC;
        status_data_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
        status_data_V_full_n : IN STD_LOGIC;
        status_data_V_write : OUT STD_LOGIC;
        config_ch_data_V_dout : IN STD_LOGIC_VECTOR (15 downto 0);
        config_ch_data_V_empty_n : IN STD_LOGIC;
        config_ch_data_V_read : OUT STD_LOGIC );
    end component;


    component dummy_proc_be_1 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        status_in_data_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        status_in_data_V_empty_n : IN STD_LOGIC;
        status_in_data_V_read : OUT STD_LOGIC;
        ovflo : OUT STD_LOGIC;
        ovflo_ap_vld : OUT STD_LOGIC;
        in_r_dout : IN STD_LOGIC_VECTOR (63 downto 0);
        in_r_empty_n : IN STD_LOGIC;
        in_r_read : OUT STD_LOGIC;
        out_r_address0 : OUT STD_LOGIC_VECTOR (6 downto 0);
        out_r_ce0 : OUT STD_LOGIC;
        out_r_we0 : OUT STD_LOGIC;
        out_r_d0 : OUT STD_LOGIC_VECTOR (63 downto 0) );
    end component;


    component fifo_w16_d2_A IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (15 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (15 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component fifo_w64_d128_A IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (63 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (63 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component fifo_w8_d2_A IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (7 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (7 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component start_for_fft_confYi IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (0 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (0 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component start_for_dummy_pg8j IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (0 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (0 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;



begin
    dummy_proc_fe_1_U0 : component dummy_proc_fe_1
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => dummy_proc_fe_1_U0_ap_start,
        start_full_n => dummy_proc_fe_1_U0_start_full_n,
        ap_done => dummy_proc_fe_1_U0_ap_done,
        ap_continue => dummy_proc_fe_1_U0_ap_continue,
        ap_idle => dummy_proc_fe_1_U0_ap_idle,
        ap_ready => dummy_proc_fe_1_U0_ap_ready,
        start_out => dummy_proc_fe_1_U0_start_out,
        start_write => dummy_proc_fe_1_U0_start_write,
        direction => dummy_proc_fe_1_U0_direction,
        config_data_V_dout => fft_config_data_V_dout,
        config_data_V_empty_n => fft_config_data_V_empty_n,
        config_data_V_read => dummy_proc_fe_1_U0_config_data_V_read,
        config_data_V_din => dummy_proc_fe_1_U0_config_data_V_din,
        config_data_V_full_n => ap_const_logic_1,
        config_data_V_write => dummy_proc_fe_1_U0_config_data_V_write,
        in_r_address0 => dummy_proc_fe_1_U0_in_r_address0,
        in_r_ce0 => dummy_proc_fe_1_U0_in_r_ce0,
        in_r_q0 => in_r_q0,
        out_r_din => dummy_proc_fe_1_U0_out_r_din,
        out_r_full_n => xn_channel_full_n,
        out_r_write => dummy_proc_fe_1_U0_out_r_write);

    fft_config1_U0 : component fft_config1_s
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => fft_config1_U0_ap_start,
        ap_ce => ap_const_logic_1,
        ap_done => fft_config1_U0_ap_done,
        ap_idle => fft_config1_U0_ap_idle,
        ap_ready => fft_config1_U0_ap_ready,
        ap_continue => fft_config1_U0_ap_continue,
        xn_dout => xn_channel_dout,
        xn_empty_n => xn_channel_empty_n,
        xn_read => fft_config1_U0_xn_read,
        xk_din => fft_config1_U0_xk_din,
        xk_full_n => xk_channel_full_n,
        xk_write => fft_config1_U0_xk_write,
        status_data_V_din => fft_config1_U0_status_data_V_din,
        status_data_V_full_n => fft_status_data_V_full_n,
        status_data_V_write => fft_config1_U0_status_data_V_write,
        config_ch_data_V_dout => ap_const_lv16_0,
        config_ch_data_V_empty_n => ap_const_logic_1,
        config_ch_data_V_read => fft_config1_U0_config_ch_data_V_read);

    dummy_proc_be_1_U0 : component dummy_proc_be_1
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => dummy_proc_be_1_U0_ap_start,
        ap_done => dummy_proc_be_1_U0_ap_done,
        ap_continue => dummy_proc_be_1_U0_ap_continue,
        ap_idle => dummy_proc_be_1_U0_ap_idle,
        ap_ready => dummy_proc_be_1_U0_ap_ready,
        status_in_data_V_dout => fft_status_data_V_dout,
        status_in_data_V_empty_n => fft_status_data_V_empty_n,
        status_in_data_V_read => dummy_proc_be_1_U0_status_in_data_V_read,
        ovflo => dummy_proc_be_1_U0_ovflo,
        ovflo_ap_vld => dummy_proc_be_1_U0_ovflo_ap_vld,
        in_r_dout => xk_channel_dout,
        in_r_empty_n => xk_channel_empty_n,
        in_r_read => dummy_proc_be_1_U0_in_r_read,
        out_r_address0 => dummy_proc_be_1_U0_out_r_address0,
        out_r_ce0 => dummy_proc_be_1_U0_out_r_ce0,
        out_r_we0 => dummy_proc_be_1_U0_out_r_we0,
        out_r_d0 => dummy_proc_be_1_U0_out_r_d0);

    fft_config_data_V_U : component fifo_w16_d2_A
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => fft_config1_U0_config_ch_data_V_din,
        if_full_n => fft_config_data_V_full_n,
        if_write => fft_config1_U0_config_ch_data_V_write,
        if_dout => fft_config_data_V_dout,
        if_empty_n => fft_config_data_V_empty_n,
        if_read => dummy_proc_fe_1_U0_config_data_V_read);

    xn_channel_U : component fifo_w64_d128_A
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => dummy_proc_fe_1_U0_out_r_din,
        if_full_n => xn_channel_full_n,
        if_write => dummy_proc_fe_1_U0_out_r_write,
        if_dout => xn_channel_dout,
        if_empty_n => xn_channel_empty_n,
        if_read => fft_config1_U0_xn_read);

    xk_channel_U : component fifo_w64_d128_A
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => fft_config1_U0_xk_din,
        if_full_n => xk_channel_full_n,
        if_write => fft_config1_U0_xk_write,
        if_dout => xk_channel_dout,
        if_empty_n => xk_channel_empty_n,
        if_read => dummy_proc_be_1_U0_in_r_read);

    fft_status_data_V_U : component fifo_w8_d2_A
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => fft_config1_U0_status_data_V_din,
        if_full_n => fft_status_data_V_full_n,
        if_write => fft_config1_U0_status_data_V_write,
        if_dout => fft_status_data_V_dout,
        if_empty_n => fft_status_data_V_empty_n,
        if_read => dummy_proc_be_1_U0_status_in_data_V_read);

    start_for_fft_confYi_U : component start_for_fft_confYi
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => start_for_fft_config1_U0_din,
        if_full_n => start_for_fft_config1_U0_full_n,
        if_write => dummy_proc_fe_1_U0_start_write,
        if_dout => start_for_fft_config1_U0_dout,
        if_empty_n => start_for_fft_config1_U0_empty_n,
        if_read => fft_config1_U0_ap_ready);

    start_for_dummy_pg8j_U : component start_for_dummy_pg8j
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => start_for_dummy_proc_be_1_U0_din,
        if_full_n => start_for_dummy_proc_be_1_U0_full_n,
        if_write => dummy_proc_fe_1_U0_start_write,
        if_dout => start_for_dummy_proc_be_1_U0_dout,
        if_empty_n => start_for_dummy_proc_be_1_U0_empty_n,
        if_read => dummy_proc_be_1_U0_ap_ready);




    ap_done <= dummy_proc_be_1_U0_ap_done;
    ap_idle <= (fft_config1_U0_ap_idle and dummy_proc_fe_1_U0_ap_idle and dummy_proc_be_1_U0_ap_idle);
    ap_ready <= dummy_proc_fe_1_U0_ap_ready;
    ap_sync_continue <= ap_continue;
    ap_sync_done <= dummy_proc_be_1_U0_ap_done;
    ap_sync_ready <= dummy_proc_fe_1_U0_ap_ready;
    direction_ap_ack <= ap_const_logic_1;
    dummy_proc_be_1_U0_ap_continue <= ap_continue;
    dummy_proc_be_1_U0_ap_start <= start_for_dummy_proc_be_1_U0_empty_n;
    dummy_proc_be_1_U0_start_full_n <= ap_const_logic_1;
    dummy_proc_be_1_U0_start_write <= ap_const_logic_0;
    dummy_proc_fe_1_U0_ap_continue <= ap_const_logic_1;
    dummy_proc_fe_1_U0_ap_start <= ap_start;
    dummy_proc_fe_1_U0_direction <= (0=>direction, others=>'-');
    dummy_proc_fe_1_U0_start_full_n <= (start_for_fft_config1_U0_full_n and start_for_dummy_proc_be_1_U0_full_n);
    fft_config1_U0_ap_continue <= ap_const_logic_1;
    fft_config1_U0_ap_start <= start_for_fft_config1_U0_empty_n;
    fft_config1_U0_config_ch_data_V_din <= ap_const_lv16_0;
    fft_config1_U0_config_ch_data_V_full_n <= fft_config_data_V_full_n;
    fft_config1_U0_config_ch_data_V_write <= ap_const_logic_0;
    fft_config1_U0_start_full_n <= ap_const_logic_1;
    fft_config1_U0_start_write <= ap_const_logic_0;
    in_r_address0 <= dummy_proc_fe_1_U0_in_r_address0;
    in_r_address1 <= ap_const_lv7_0;
    in_r_ce0 <= dummy_proc_fe_1_U0_in_r_ce0;
    in_r_ce1 <= ap_const_logic_0;
    in_r_d0 <= ap_const_lv64_0;
    in_r_d1 <= ap_const_lv64_0;
    in_r_we0 <= ap_const_logic_0;
    in_r_we1 <= ap_const_logic_0;
    out_r_address0 <= dummy_proc_be_1_U0_out_r_address0;
    out_r_address1 <= ap_const_lv7_0;
    out_r_ce0 <= dummy_proc_be_1_U0_out_r_ce0;
    out_r_ce1 <= ap_const_logic_0;
    out_r_d0 <= dummy_proc_be_1_U0_out_r_d0;
    out_r_d1 <= ap_const_lv64_0;
    out_r_we0 <= dummy_proc_be_1_U0_out_r_we0;
    out_r_we1 <= ap_const_logic_0;
    ovflo <= dummy_proc_be_1_U0_ovflo;
    ovflo_ap_vld <= dummy_proc_be_1_U0_ovflo_ap_vld;
    start_for_dummy_proc_be_1_U0_din <= (0=>ap_const_logic_1, others=>'-');
    start_for_fft_config1_U0_din <= (0=>ap_const_logic_1, others=>'-');
end behav;