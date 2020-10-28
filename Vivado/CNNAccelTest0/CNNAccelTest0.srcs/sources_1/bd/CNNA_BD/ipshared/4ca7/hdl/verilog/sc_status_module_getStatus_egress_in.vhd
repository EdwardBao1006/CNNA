-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2019.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity sc_status_module_getStatus_egress_in is
port (
    status_val : OUT STD_LOGIC_VECTOR (31 downto 0);
    status_val_ap_vld : OUT STD_LOGIC;
    egress_in : IN STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of sc_status_module_getStatus_egress_in is 
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_logic_1 : STD_LOGIC := '1';



begin



    status_val <= egress_in;
    status_val_ap_vld <= ap_const_logic_1;
end behav;