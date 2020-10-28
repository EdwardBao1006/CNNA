-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2019.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity p_sc_stream_router_eop is
port (
    clk : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    din_0_dout : IN STD_LOGIC_VECTOR (383 downto 0);
    din_0_empty_n : IN STD_LOGIC;
    din_0_read : OUT STD_LOGIC;
    din_1_dout : IN STD_LOGIC_VECTOR (0 downto 0);
    din_1_empty_n : IN STD_LOGIC;
    din_1_read : OUT STD_LOGIC;
    din_2_dout : IN STD_LOGIC_VECTOR (47 downto 0);
    din_2_empty_n : IN STD_LOGIC;
    din_2_read : OUT STD_LOGIC;
    ctrl_channel_dout : IN STD_LOGIC_VECTOR (0 downto 0);
    ctrl_channel_empty_n : IN STD_LOGIC;
    ctrl_channel_read : OUT STD_LOGIC;
    dout_a_0_din : OUT STD_LOGIC_VECTOR (383 downto 0);
    dout_a_0_full_n : IN STD_LOGIC;
    dout_a_0_write : OUT STD_LOGIC;
    dout_a_1_din : OUT STD_LOGIC_VECTOR (0 downto 0);
    dout_a_1_full_n : IN STD_LOGIC;
    dout_a_1_write : OUT STD_LOGIC;
    dout_a_2_din : OUT STD_LOGIC_VECTOR (47 downto 0);
    dout_a_2_full_n : IN STD_LOGIC;
    dout_a_2_write : OUT STD_LOGIC;
    dout_b_0_din : OUT STD_LOGIC_VECTOR (383 downto 0);
    dout_b_0_full_n : IN STD_LOGIC;
    dout_b_0_write : OUT STD_LOGIC;
    dout_b_1_din : OUT STD_LOGIC_VECTOR (0 downto 0);
    dout_b_1_full_n : IN STD_LOGIC;
    dout_b_1_write : OUT STD_LOGIC;
    dout_b_2_din : OUT STD_LOGIC_VECTOR (47 downto 0);
    dout_b_2_full_n : IN STD_LOGIC;
    dout_b_2_write : OUT STD_LOGIC;
    s_packed_in : OUT STD_LOGIC_VECTOR (31 downto 0);
    s_packed_out_A : OUT STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    s_packed_out_B : OUT STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    s_state : OUT STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000" );
end;


architecture behav of p_sc_stream_router_eop is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "p_sc_stream_router_eop,hls_ip_2019_1,{HLS_INPUT_TYPE=sc,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xczu3eg-sbva484-1-e,HLS_INPUT_CLOCK=5.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=4.334000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=422,HLS_SYN_LUT=361,HLS_VERSION=2019_1}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_din_0_read : STD_LOGIC;
    signal grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_din_1_read : STD_LOGIC;
    signal grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_din_2_read : STD_LOGIC;
    signal grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_ctrl_channel_read : STD_LOGIC;
    signal grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_dout_a_0_din : STD_LOGIC_VECTOR (383 downto 0);
    signal grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_dout_a_0_write : STD_LOGIC;
    signal grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_dout_a_1_din : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_dout_a_1_write : STD_LOGIC;
    signal grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_dout_a_2_din : STD_LOGIC_VECTOR (47 downto 0);
    signal grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_dout_a_2_write : STD_LOGIC;
    signal grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_dout_b_0_din : STD_LOGIC_VECTOR (383 downto 0);
    signal grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_dout_b_0_write : STD_LOGIC;
    signal grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_dout_b_1_din : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_dout_b_1_write : STD_LOGIC;
    signal grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_dout_b_2_din : STD_LOGIC_VECTOR (47 downto 0);
    signal grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_dout_b_2_write : STD_LOGIC;
    signal grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_s_packed_in : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_s_packed_in_ap_vld : STD_LOGIC;
    signal grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_s_packed_out_A : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_s_packed_out_A_ap_vld : STD_LOGIC;
    signal grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_s_packed_out_B : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_s_packed_out_B_ap_vld : STD_LOGIC;
    signal grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_s_state : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_s_state_ap_vld : STD_LOGIC;

    component p_sc_stream_router_eop_thread_sc_stream_router IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        din_0_dout : IN STD_LOGIC_VECTOR (383 downto 0);
        din_0_empty_n : IN STD_LOGIC;
        din_0_read : OUT STD_LOGIC;
        din_1_dout : IN STD_LOGIC_VECTOR (0 downto 0);
        din_1_empty_n : IN STD_LOGIC;
        din_1_read : OUT STD_LOGIC;
        din_2_dout : IN STD_LOGIC_VECTOR (47 downto 0);
        din_2_empty_n : IN STD_LOGIC;
        din_2_read : OUT STD_LOGIC;
        ctrl_channel_dout : IN STD_LOGIC_VECTOR (0 downto 0);
        ctrl_channel_empty_n : IN STD_LOGIC;
        ctrl_channel_read : OUT STD_LOGIC;
        dout_a_0_din : OUT STD_LOGIC_VECTOR (383 downto 0);
        dout_a_0_full_n : IN STD_LOGIC;
        dout_a_0_write : OUT STD_LOGIC;
        dout_a_1_din : OUT STD_LOGIC_VECTOR (0 downto 0);
        dout_a_1_full_n : IN STD_LOGIC;
        dout_a_1_write : OUT STD_LOGIC;
        dout_a_2_din : OUT STD_LOGIC_VECTOR (47 downto 0);
        dout_a_2_full_n : IN STD_LOGIC;
        dout_a_2_write : OUT STD_LOGIC;
        dout_b_0_din : OUT STD_LOGIC_VECTOR (383 downto 0);
        dout_b_0_full_n : IN STD_LOGIC;
        dout_b_0_write : OUT STD_LOGIC;
        dout_b_1_din : OUT STD_LOGIC_VECTOR (0 downto 0);
        dout_b_1_full_n : IN STD_LOGIC;
        dout_b_1_write : OUT STD_LOGIC;
        dout_b_2_din : OUT STD_LOGIC_VECTOR (47 downto 0);
        dout_b_2_full_n : IN STD_LOGIC;
        dout_b_2_write : OUT STD_LOGIC;
        s_packed_in : OUT STD_LOGIC_VECTOR (31 downto 0);
        s_packed_in_ap_vld : OUT STD_LOGIC;
        s_packed_out_A : OUT STD_LOGIC_VECTOR (31 downto 0);
        s_packed_out_A_ap_vld : OUT STD_LOGIC;
        s_packed_out_B : OUT STD_LOGIC_VECTOR (31 downto 0);
        s_packed_out_B_ap_vld : OUT STD_LOGIC;
        s_state : OUT STD_LOGIC_VECTOR (31 downto 0);
        s_state_ap_vld : OUT STD_LOGIC );
    end component;



begin
    grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96 : component p_sc_stream_router_eop_thread_sc_stream_router
    port map (
        ap_clk => clk,
        ap_rst => reset,
        din_0_dout => din_0_dout,
        din_0_empty_n => din_0_empty_n,
        din_0_read => grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_din_0_read,
        din_1_dout => din_1_dout,
        din_1_empty_n => din_1_empty_n,
        din_1_read => grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_din_1_read,
        din_2_dout => din_2_dout,
        din_2_empty_n => din_2_empty_n,
        din_2_read => grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_din_2_read,
        ctrl_channel_dout => ctrl_channel_dout,
        ctrl_channel_empty_n => ctrl_channel_empty_n,
        ctrl_channel_read => grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_ctrl_channel_read,
        dout_a_0_din => grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_dout_a_0_din,
        dout_a_0_full_n => dout_a_0_full_n,
        dout_a_0_write => grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_dout_a_0_write,
        dout_a_1_din => grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_dout_a_1_din,
        dout_a_1_full_n => dout_a_1_full_n,
        dout_a_1_write => grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_dout_a_1_write,
        dout_a_2_din => grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_dout_a_2_din,
        dout_a_2_full_n => dout_a_2_full_n,
        dout_a_2_write => grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_dout_a_2_write,
        dout_b_0_din => grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_dout_b_0_din,
        dout_b_0_full_n => dout_b_0_full_n,
        dout_b_0_write => grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_dout_b_0_write,
        dout_b_1_din => grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_dout_b_1_din,
        dout_b_1_full_n => dout_b_1_full_n,
        dout_b_1_write => grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_dout_b_1_write,
        dout_b_2_din => grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_dout_b_2_din,
        dout_b_2_full_n => dout_b_2_full_n,
        dout_b_2_write => grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_dout_b_2_write,
        s_packed_in => grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_s_packed_in,
        s_packed_in_ap_vld => grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_s_packed_in_ap_vld,
        s_packed_out_A => grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_s_packed_out_A,
        s_packed_out_A_ap_vld => grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_s_packed_out_A_ap_vld,
        s_packed_out_B => grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_s_packed_out_B,
        s_packed_out_B_ap_vld => grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_s_packed_out_B_ap_vld,
        s_state => grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_s_state,
        s_state_ap_vld => grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_s_state_ap_vld);





    s_packed_in_assign_proc : process(clk)
    begin
        if (clk'event and clk =  '1') then
            if ((grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_s_packed_in_ap_vld = ap_const_logic_1)) then 
                s_packed_in <= grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_s_packed_in;
            end if; 
        end if;
    end process;


    s_packed_out_A_assign_proc : process(clk)
    begin
        if (clk'event and clk =  '1') then
            if (reset = '1') then
                s_packed_out_A <= ap_const_lv32_0;
            else
                if ((grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_s_packed_out_A_ap_vld = ap_const_logic_1)) then 
                    s_packed_out_A <= grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_s_packed_out_A;
                end if; 
            end if;
        end if;
    end process;


    s_packed_out_B_assign_proc : process(clk)
    begin
        if (clk'event and clk =  '1') then
            if (reset = '1') then
                s_packed_out_B <= ap_const_lv32_0;
            else
                if ((grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_s_packed_out_B_ap_vld = ap_const_logic_1)) then 
                    s_packed_out_B <= grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_s_packed_out_B;
                end if; 
            end if;
        end if;
    end process;


    s_state_assign_proc : process(clk)
    begin
        if (clk'event and clk =  '1') then
            if (reset = '1') then
                s_state <= ap_const_lv32_0;
            else
                if ((grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_s_state_ap_vld = ap_const_logic_1)) then 
                    s_state <= grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_s_state;
                end if; 
            end if;
        end if;
    end process;

    ctrl_channel_read <= grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_ctrl_channel_read;
    din_0_read <= grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_din_0_read;
    din_1_read <= grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_din_1_read;
    din_2_read <= grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_din_2_read;
    dout_a_0_din <= grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_dout_a_0_din;
    dout_a_0_write <= grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_dout_a_0_write;
    dout_a_1_din <= grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_dout_a_1_din;
    dout_a_1_write <= grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_dout_a_1_write;
    dout_a_2_din <= grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_dout_a_2_din;
    dout_a_2_write <= grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_dout_a_2_write;
    dout_b_0_din <= grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_dout_b_0_din;
    dout_b_0_write <= grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_dout_b_0_write;
    dout_b_1_din <= grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_dout_b_1_din;
    dout_b_1_write <= grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_dout_b_1_write;
    dout_b_2_din <= grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_dout_b_2_din;
    dout_b_2_write <= grp_p_sc_stream_router_eop_thread_sc_stream_router_fu_96_dout_b_2_write;
end behav;