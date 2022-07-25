-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
-- Date        : Mon Jul 25 13:17:34 2022
-- Host        : dgraz running 64-bit Manjaro Linux
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               /home/davide/git/Progetto-reti-logiche-2022/project_reti_logiche/project_reti_logiche.sim/sim_1/impl/func/xsim/project_tb_func_impl.vhd
-- Design      : project_reti_logiche
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tfbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FF_D is
  port (
    output : out STD_LOGIC;
    output_reg_0 : out STD_LOGIC;
    component_enable : in STD_LOGIC;
    u : in STD_LOGIC;
    i_clk_IBUF_BUFG : in STD_LOGIC;
    component_reset_BUFG : in STD_LOGIC;
    FF2_signal : in STD_LOGIC
  );
end FF_D;

architecture STRUCTURE of FF_D is
  signal \^output\ : STD_LOGIC;
begin
  output <= \^output\;
\half_z_inout_shifter[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^output\,
      I1 => FF2_signal,
      O => output_reg_0
    );
output_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => component_enable,
      CLR => component_reset_BUFG,
      D => u,
      Q => \^output\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FF_D_0 is
  port (
    FF2_signal : out STD_LOGIC;
    component_enable : in STD_LOGIC;
    output : in STD_LOGIC;
    i_clk_IBUF_BUFG : in STD_LOGIC;
    component_reset_BUFG : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of FF_D_0 : entity is "FF_D";
end FF_D_0;

architecture STRUCTURE of FF_D_0 is
begin
output_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => component_enable,
      CLR => component_reset_BUFG,
      D => output,
      Q => FF2_signal
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity controller is
  port (
    o_done_OBUF : out STD_LOGIC;
    component_enable : out STD_LOGIC;
    o_data_OBUF : out STD_LOGIC_VECTOR ( 1 downto 0 );
    u : out STD_LOGIC;
    \current_state_reg[2]_0\ : out STD_LOGIC;
    o_en_OBUF : out STD_LOGIC;
    o_we_OBUF : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    component_reset_BUFG : in STD_LOGIC;
    i_clk_IBUF_BUFG : in STD_LOGIC;
    FF2_signal : in STD_LOGIC;
    output : in STD_LOGIC;
    i_start_IBUF : in STD_LOGIC;
    i_rst_IBUF : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_clk_IBUF : in STD_LOGIC
  );
end controller;

architecture STRUCTURE of controller is
  signal \base_read[0]_i_2_n_0\ : STD_LOGIC;
  signal base_read_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \base_read_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \base_read_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \base_read_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \base_read_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \base_read_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \base_read_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \base_read_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \base_read_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \base_read_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \base_read_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \base_read_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \base_read_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \base_read_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \base_read_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \base_read_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \base_read_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \base_read_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \base_read_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \base_read_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \base_write[0]_i_3_n_0\ : STD_LOGIC;
  signal base_write_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \base_write_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \base_write_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \base_write_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \base_write_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \base_write_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \base_write_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \base_write_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \base_write_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \base_write_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \base_write_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \base_write_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \base_write_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \base_write_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \base_write_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \base_write_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \base_write_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \base_write_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \base_write_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \base_write_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal component_enable0 : STD_LOGIC;
  signal component_enable01_out : STD_LOGIC;
  signal current_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^current_state_reg[2]_0\ : STD_LOGIC;
  signal done0 : STD_LOGIC;
  signal done_reg_i_12_n_0 : STD_LOGIC;
  signal done_reg_i_13_n_0 : STD_LOGIC;
  signal done_reg_i_18_n_0 : STD_LOGIC;
  signal done_reg_i_19_n_0 : STD_LOGIC;
  signal done_reg_i_2_n_0 : STD_LOGIC;
  signal done_reg_i_30_n_0 : STD_LOGIC;
  signal done_reg_i_31_n_0 : STD_LOGIC;
  signal done_reg_i_3_n_0 : STD_LOGIC;
  signal done_reg_i_4_n_0 : STD_LOGIC;
  signal done_reg_i_5_n_0 : STD_LOGIC;
  signal done_reg_i_6_n_0 : STD_LOGIC;
  signal done_reg_i_7_n_0 : STD_LOGIC;
  signal enable_down : STD_LOGIC;
  signal enable_down0 : STD_LOGIC;
  signal enable_down_reg_i_2_n_0 : STD_LOGIC;
  signal enable_up : STD_LOGIC;
  signal enable_up0 : STD_LOGIC;
  signal enable_up_reg_i_2_n_0 : STD_LOGIC;
  signal \mem_address_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_address_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \mem_address_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \mem_address_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \mem_address_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \mem_address_reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \mem_address_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \mem_address_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \mem_address_reg[15]_i_3_n_0\ : STD_LOGIC;
  signal \mem_address_reg[15]_i_4_n_0\ : STD_LOGIC;
  signal \mem_address_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \mem_address_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \mem_address_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \mem_address_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \mem_address_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \mem_address_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \mem_address_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \mem_address_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \mem_address_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal mem_inout0 : STD_LOGIC;
  signal \mem_inout_reg_n_0_[0]\ : STD_LOGIC;
  signal \mem_inout_reg_n_0_[1]\ : STD_LOGIC;
  signal \mem_inout_reg_n_0_[2]\ : STD_LOGIC;
  signal \mem_inout_reg_n_0_[3]\ : STD_LOGIC;
  signal \mem_inout_reg_n_0_[7]\ : STD_LOGIC;
  signal next_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \next_state_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \next_state_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \next_state_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \next_state_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \next_state_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \next_state_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \next_state_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \next_state_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \next_state_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \next_state_reg[3]_i_5_n_0\ : STD_LOGIC;
  signal \next_state_reg[3]_i_6_n_0\ : STD_LOGIC;
  signal \next_state_reg[3]_i_7_n_0\ : STD_LOGIC;
  signal \next_state_reg[3]_i_8_n_0\ : STD_LOGIC;
  signal number_of_words : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal number_of_words0 : STD_LOGIC;
  signal number_of_words02_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \number_of_words[0]_C_i_1_n_0\ : STD_LOGIC;
  signal \number_of_words[12]_C_i_3_n_0\ : STD_LOGIC;
  signal \number_of_words[12]_C_i_4_n_0\ : STD_LOGIC;
  signal \number_of_words[12]_C_i_5_n_0\ : STD_LOGIC;
  signal \number_of_words[12]_C_i_6_n_0\ : STD_LOGIC;
  signal \number_of_words[12]_C_i_7_n_0\ : STD_LOGIC;
  signal \number_of_words[12]_C_i_8_n_0\ : STD_LOGIC;
  signal \number_of_words[12]_C_i_9_n_0\ : STD_LOGIC;
  signal \number_of_words[16]_C_i_2_n_0\ : STD_LOGIC;
  signal \number_of_words[16]_C_i_6_n_0\ : STD_LOGIC;
  signal \number_of_words[16]_C_i_7_n_0\ : STD_LOGIC;
  signal \number_of_words[16]_C_i_8_n_0\ : STD_LOGIC;
  signal \number_of_words[16]_C_i_9_n_0\ : STD_LOGIC;
  signal \number_of_words[20]_C_i_3_n_0\ : STD_LOGIC;
  signal \number_of_words[20]_C_i_4_n_0\ : STD_LOGIC;
  signal \number_of_words[20]_C_i_5_n_0\ : STD_LOGIC;
  signal \number_of_words[20]_C_i_6_n_0\ : STD_LOGIC;
  signal \number_of_words[20]_C_i_7_n_0\ : STD_LOGIC;
  signal \number_of_words[20]_C_i_8_n_0\ : STD_LOGIC;
  signal \number_of_words[20]_C_i_9_n_0\ : STD_LOGIC;
  signal \number_of_words[24]_C_i_2_n_0\ : STD_LOGIC;
  signal \number_of_words[24]_C_i_6_n_0\ : STD_LOGIC;
  signal \number_of_words[24]_C_i_7_n_0\ : STD_LOGIC;
  signal \number_of_words[24]_C_i_8_n_0\ : STD_LOGIC;
  signal \number_of_words[24]_C_i_9_n_0\ : STD_LOGIC;
  signal \number_of_words[28]_C_i_3_n_0\ : STD_LOGIC;
  signal \number_of_words[28]_C_i_4_n_0\ : STD_LOGIC;
  signal \number_of_words[28]_C_i_5_n_0\ : STD_LOGIC;
  signal \number_of_words[28]_C_i_6_n_0\ : STD_LOGIC;
  signal \number_of_words[28]_C_i_7_n_0\ : STD_LOGIC;
  signal \number_of_words[28]_C_i_8_n_0\ : STD_LOGIC;
  signal \number_of_words[28]_C_i_9_n_0\ : STD_LOGIC;
  signal \number_of_words[31]_C_i_5_n_0\ : STD_LOGIC;
  signal \number_of_words[31]_C_i_6_n_0\ : STD_LOGIC;
  signal \number_of_words[31]_C_i_7_n_0\ : STD_LOGIC;
  signal \number_of_words[4]_C_i_10_n_0\ : STD_LOGIC;
  signal \number_of_words[4]_C_i_4_n_0\ : STD_LOGIC;
  signal \number_of_words[4]_C_i_5_n_0\ : STD_LOGIC;
  signal \number_of_words[4]_C_i_6_n_0\ : STD_LOGIC;
  signal \number_of_words[4]_C_i_7_n_0\ : STD_LOGIC;
  signal \number_of_words[4]_C_i_8_n_0\ : STD_LOGIC;
  signal \number_of_words[4]_C_i_9_n_0\ : STD_LOGIC;
  signal \number_of_words[8]_C_i_2_n_0\ : STD_LOGIC;
  signal \number_of_words[8]_C_i_3_n_0\ : STD_LOGIC;
  signal \number_of_words[8]_C_i_4_n_0\ : STD_LOGIC;
  signal \number_of_words[8]_C_i_5_n_0\ : STD_LOGIC;
  signal \number_of_words[8]_C_i_6_n_0\ : STD_LOGIC;
  signal \number_of_words[8]_C_i_7_n_0\ : STD_LOGIC;
  signal \number_of_words[8]_C_i_8_n_0\ : STD_LOGIC;
  signal \number_of_words[8]_C_i_9_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[0]_C_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[0]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[0]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[0]_LDC_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[0]_P_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[10]_C_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[10]_P_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[11]_C_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[11]_P_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[12]_C_i_1_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[12]_C_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[12]_P_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[13]_C_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[13]_P_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[14]_C_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[14]_P_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[15]_C_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[15]_P_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[16]_C_i_1_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[16]_C_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[16]_P_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[17]_C_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[17]_P_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[18]_C_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[18]_P_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[19]_C_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[19]_P_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[1]_C_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[1]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[1]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[1]_LDC_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[1]_P_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[20]_C_i_1_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[20]_C_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[20]_P_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[21]_C_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[21]_P_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[22]_C_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[22]_P_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[23]_C_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[23]_P_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[24]_C_i_1_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[24]_C_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[24]_P_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[25]_C_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[25]_P_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[26]_C_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[26]_P_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[27]_C_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[27]_P_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[28]_C_i_1_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[28]_C_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[28]_P_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[29]_C_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[29]_P_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[2]_C_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[2]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[2]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[2]_LDC_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[2]_P_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[30]_C_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[30]_P_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[31]_C_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[31]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[31]_LDC_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[31]_P_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[3]_C_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[3]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[3]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[3]_LDC_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[3]_P_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[4]_C_i_1_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[4]_C_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[4]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[4]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[4]_LDC_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[4]_P_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[5]_C_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[5]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[5]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[5]_LDC_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[5]_P_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[6]_C_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[6]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[6]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[6]_LDC_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[6]_P_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[7]_C_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[7]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[7]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[7]_LDC_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[7]_P_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[8]_C_i_1_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[8]_C_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[8]_P_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[9]_C_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[9]_P_n_0\ : STD_LOGIC;
  signal \o_data_OBUF[1]_inst_i_3_n_0\ : STD_LOGIC;
  signal \o_data_OBUF[1]_inst_i_4_n_0\ : STD_LOGIC;
  signal \o_data_OBUF[1]_inst_i_5_n_0\ : STD_LOGIC;
  signal \o_data_OBUF[1]_inst_i_6_n_0\ : STD_LOGIC;
  signal o_en_OBUF_inst_i_2_n_0 : STD_LOGIC;
  signal output_i_2_n_0 : STD_LOGIC;
  signal output_i_3_n_0 : STD_LOGIC;
  signal output_i_4_n_0 : STD_LOGIC;
  signal output_i_5_n_0 : STD_LOGIC;
  signal output_i_6_n_0 : STD_LOGIC;
  signal p_1_in2_in : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal p_4_in : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  signal sel : STD_LOGIC;
  signal \^u\ : STD_LOGIC;
  signal \NLW_base_read_reg[0]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_base_read_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_base_read_reg[4]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_base_read_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_base_write_reg[0]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_base_write_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_base_write_reg[4]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_base_write_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_number_of_words_reg[12]_C_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_number_of_words_reg[16]_C_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_number_of_words_reg[20]_C_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_number_of_words_reg[24]_C_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_number_of_words_reg[28]_C_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_number_of_words_reg[31]_C_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_number_of_words_reg[31]_C_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_number_of_words_reg[4]_C_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_number_of_words_reg[8]_C_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \base_read_reg[0]_i_1\ : label is "SWEEP";
  attribute OPT_MODIFIED of \base_read_reg[12]_i_1\ : label is "SWEEP";
  attribute OPT_MODIFIED of \base_read_reg[4]_i_1\ : label is "SWEEP";
  attribute OPT_MODIFIED of \base_read_reg[8]_i_1\ : label is "SWEEP";
  attribute OPT_MODIFIED of \base_write_reg[0]_i_2\ : label is "SWEEP";
  attribute OPT_MODIFIED of \base_write_reg[12]_i_1\ : label is "SWEEP";
  attribute OPT_MODIFIED of \base_write_reg[4]_i_1\ : label is "SWEEP";
  attribute OPT_MODIFIED of \base_write_reg[8]_i_1\ : label is "SWEEP";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of component_enable_reg : label is "LDP";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of component_enable_reg : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of done_reg : label is "LDP";
  attribute XILINX_TRANSFORM_PINMAP of done_reg : label is "VCC:GE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of done_reg_i_10 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of done_reg_i_11 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of done_reg_i_14 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of done_reg_i_15 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of done_reg_i_16 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of done_reg_i_17 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of done_reg_i_26 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of done_reg_i_27 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of done_reg_i_28 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of done_reg_i_29 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of done_reg_i_8 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of done_reg_i_9 : label is "soft_lutpair9";
  attribute XILINX_LEGACY_PRIM of enable_down_reg : label is "LDP";
  attribute XILINX_TRANSFORM_PINMAP of enable_down_reg : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of enable_up_reg : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of enable_up_reg : label is "VCC:GE";
  attribute SOFT_HLUTNM of enable_up_reg_i_1 : label is "soft_lutpair4";
  attribute XILINX_LEGACY_PRIM of \mem_address_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \mem_address_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \mem_address_reg[10]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \mem_address_reg[10]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \mem_address_reg[11]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \mem_address_reg[11]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \mem_address_reg[12]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \mem_address_reg[12]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \mem_address_reg[13]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \mem_address_reg[13]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \mem_address_reg[14]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \mem_address_reg[14]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \mem_address_reg[15]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \mem_address_reg[15]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \mem_address_reg[15]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \mem_address_reg[15]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \mem_address_reg[15]_i_4\ : label is "soft_lutpair1";
  attribute XILINX_LEGACY_PRIM of \mem_address_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \mem_address_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \mem_address_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \mem_address_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \mem_address_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \mem_address_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \mem_address_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \mem_address_reg[4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \mem_address_reg[5]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \mem_address_reg[5]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \mem_address_reg[6]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \mem_address_reg[6]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \mem_address_reg[7]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \mem_address_reg[7]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \mem_address_reg[8]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \mem_address_reg[8]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \mem_address_reg[9]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \mem_address_reg[9]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \mem_inout_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \mem_inout_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \mem_inout_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \mem_inout_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \mem_inout_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \mem_inout_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \mem_inout_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \mem_inout_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \mem_inout_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \mem_inout_reg[4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \mem_inout_reg[5]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \mem_inout_reg[5]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \mem_inout_reg[6]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \mem_inout_reg[6]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \mem_inout_reg[7]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \mem_inout_reg[7]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \mem_inout_reg[7]_i_1\ : label is "soft_lutpair4";
  attribute XILINX_LEGACY_PRIM of \next_state_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \next_state_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \next_state_reg[0]_i_2\ : label is "soft_lutpair6";
  attribute XILINX_LEGACY_PRIM of \next_state_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \next_state_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \next_state_reg[1]_i_1\ : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM of \next_state_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \next_state_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \next_state_reg[2]_i_1\ : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM of \next_state_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \next_state_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \next_state_reg[3]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \next_state_reg[3]_i_5\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \next_state_reg[3]_i_6\ : label is "soft_lutpair5";
  attribute XILINX_LEGACY_PRIM of \number_of_words_reg[0]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \number_of_words_reg[0]_LDC\ : label is "VCC:GE";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \number_of_words_reg[12]_C_i_1\ : label is 35;
  attribute OPT_MODIFIED of \number_of_words_reg[12]_C_i_1\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \number_of_words_reg[16]_C_i_1\ : label is 35;
  attribute OPT_MODIFIED of \number_of_words_reg[16]_C_i_1\ : label is "SWEEP";
  attribute XILINX_LEGACY_PRIM of \number_of_words_reg[1]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \number_of_words_reg[1]_LDC\ : label is "VCC:GE";
  attribute ADDER_THRESHOLD of \number_of_words_reg[20]_C_i_1\ : label is 35;
  attribute OPT_MODIFIED of \number_of_words_reg[20]_C_i_1\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \number_of_words_reg[24]_C_i_1\ : label is 35;
  attribute OPT_MODIFIED of \number_of_words_reg[24]_C_i_1\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \number_of_words_reg[28]_C_i_1\ : label is 35;
  attribute OPT_MODIFIED of \number_of_words_reg[28]_C_i_1\ : label is "SWEEP";
  attribute XILINX_LEGACY_PRIM of \number_of_words_reg[2]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \number_of_words_reg[2]_LDC\ : label is "VCC:GE";
  attribute ADDER_THRESHOLD of \number_of_words_reg[31]_C_i_2\ : label is 35;
  attribute OPT_MODIFIED of \number_of_words_reg[31]_C_i_2\ : label is "SWEEP";
  attribute XILINX_LEGACY_PRIM of \number_of_words_reg[31]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \number_of_words_reg[31]_LDC\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \number_of_words_reg[3]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \number_of_words_reg[3]_LDC\ : label is "VCC:GE";
  attribute ADDER_THRESHOLD of \number_of_words_reg[4]_C_i_1\ : label is 35;
  attribute OPT_MODIFIED of \number_of_words_reg[4]_C_i_1\ : label is "SWEEP";
  attribute XILINX_LEGACY_PRIM of \number_of_words_reg[4]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \number_of_words_reg[4]_LDC\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \number_of_words_reg[5]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \number_of_words_reg[5]_LDC\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \number_of_words_reg[6]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \number_of_words_reg[6]_LDC\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \number_of_words_reg[7]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \number_of_words_reg[7]_LDC\ : label is "VCC:GE";
  attribute ADDER_THRESHOLD of \number_of_words_reg[8]_C_i_1\ : label is 35;
  attribute OPT_MODIFIED of \number_of_words_reg[8]_C_i_1\ : label is "SWEEP";
  attribute SOFT_HLUTNM of o_en_OBUF_inst_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of o_we_OBUF_inst_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of output_i_6 : label is "soft_lutpair3";
begin
  \current_state_reg[2]_0\ <= \^current_state_reg[2]_0\;
  u <= \^u\;
\base_read[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => base_read_reg(0),
      O => \base_read[0]_i_2_n_0\
    );
\base_read_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      CLR => component_reset_BUFG,
      D => \base_read_reg[0]_i_1_n_7\,
      Q => base_read_reg(0)
    );
\base_read_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \base_read_reg[0]_i_1_n_0\,
      CO(2 downto 0) => \NLW_base_read_reg[0]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \base_read_reg[0]_i_1_n_4\,
      O(2) => \base_read_reg[0]_i_1_n_5\,
      O(1) => \base_read_reg[0]_i_1_n_6\,
      O(0) => \base_read_reg[0]_i_1_n_7\,
      S(3 downto 1) => base_read_reg(3 downto 1),
      S(0) => \base_read[0]_i_2_n_0\
    );
\base_read_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      CLR => component_reset_BUFG,
      D => \base_read_reg[8]_i_1_n_5\,
      Q => base_read_reg(10)
    );
\base_read_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      CLR => component_reset_BUFG,
      D => \base_read_reg[8]_i_1_n_4\,
      Q => base_read_reg(11)
    );
\base_read_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      CLR => component_reset_BUFG,
      D => \base_read_reg[12]_i_1_n_7\,
      Q => base_read_reg(12)
    );
\base_read_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \base_read_reg[8]_i_1_n_0\,
      CO(3 downto 0) => \NLW_base_read_reg[12]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \base_read_reg[12]_i_1_n_4\,
      O(2) => \base_read_reg[12]_i_1_n_5\,
      O(1) => \base_read_reg[12]_i_1_n_6\,
      O(0) => \base_read_reg[12]_i_1_n_7\,
      S(3 downto 0) => base_read_reg(15 downto 12)
    );
\base_read_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      CLR => component_reset_BUFG,
      D => \base_read_reg[12]_i_1_n_6\,
      Q => base_read_reg(13)
    );
\base_read_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      CLR => component_reset_BUFG,
      D => \base_read_reg[12]_i_1_n_5\,
      Q => base_read_reg(14)
    );
\base_read_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      CLR => component_reset_BUFG,
      D => \base_read_reg[12]_i_1_n_4\,
      Q => base_read_reg(15)
    );
\base_read_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      CLR => component_reset_BUFG,
      D => \base_read_reg[0]_i_1_n_6\,
      Q => base_read_reg(1)
    );
\base_read_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      CLR => component_reset_BUFG,
      D => \base_read_reg[0]_i_1_n_5\,
      Q => base_read_reg(2)
    );
\base_read_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      CLR => component_reset_BUFG,
      D => \base_read_reg[0]_i_1_n_4\,
      Q => base_read_reg(3)
    );
\base_read_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      CLR => component_reset_BUFG,
      D => \base_read_reg[4]_i_1_n_7\,
      Q => base_read_reg(4)
    );
\base_read_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \base_read_reg[0]_i_1_n_0\,
      CO(3) => \base_read_reg[4]_i_1_n_0\,
      CO(2 downto 0) => \NLW_base_read_reg[4]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \base_read_reg[4]_i_1_n_4\,
      O(2) => \base_read_reg[4]_i_1_n_5\,
      O(1) => \base_read_reg[4]_i_1_n_6\,
      O(0) => \base_read_reg[4]_i_1_n_7\,
      S(3 downto 0) => base_read_reg(7 downto 4)
    );
\base_read_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      CLR => component_reset_BUFG,
      D => \base_read_reg[4]_i_1_n_6\,
      Q => base_read_reg(5)
    );
\base_read_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      CLR => component_reset_BUFG,
      D => \base_read_reg[4]_i_1_n_5\,
      Q => base_read_reg(6)
    );
\base_read_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      CLR => component_reset_BUFG,
      D => \base_read_reg[4]_i_1_n_4\,
      Q => base_read_reg(7)
    );
\base_read_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      CLR => component_reset_BUFG,
      D => \base_read_reg[8]_i_1_n_7\,
      Q => base_read_reg(8)
    );
\base_read_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \base_read_reg[4]_i_1_n_0\,
      CO(3) => \base_read_reg[8]_i_1_n_0\,
      CO(2 downto 0) => \NLW_base_read_reg[8]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \base_read_reg[8]_i_1_n_4\,
      O(2) => \base_read_reg[8]_i_1_n_5\,
      O(1) => \base_read_reg[8]_i_1_n_6\,
      O(0) => \base_read_reg[8]_i_1_n_7\,
      S(3 downto 0) => base_read_reg(11 downto 8)
    );
\base_read_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      CLR => component_reset_BUFG,
      D => \base_read_reg[8]_i_1_n_6\,
      Q => base_read_reg(9)
    );
\base_write[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6000"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(2),
      I2 => current_state(1),
      I3 => current_state(0),
      O => sel
    );
\base_write[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => base_write_reg(0),
      O => \base_write[0]_i_3_n_0\
    );
\base_write_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => sel,
      CLR => component_reset_BUFG,
      D => \base_write_reg[0]_i_2_n_7\,
      Q => base_write_reg(0)
    );
\base_write_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \base_write_reg[0]_i_2_n_0\,
      CO(2 downto 0) => \NLW_base_write_reg[0]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \base_write_reg[0]_i_2_n_4\,
      O(2) => \base_write_reg[0]_i_2_n_5\,
      O(1) => \base_write_reg[0]_i_2_n_6\,
      O(0) => \base_write_reg[0]_i_2_n_7\,
      S(3 downto 1) => base_write_reg(3 downto 1),
      S(0) => \base_write[0]_i_3_n_0\
    );
\base_write_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => sel,
      CLR => component_reset_BUFG,
      D => \base_write_reg[8]_i_1_n_5\,
      Q => base_write_reg(10)
    );
\base_write_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => sel,
      CLR => component_reset_BUFG,
      D => \base_write_reg[8]_i_1_n_4\,
      Q => base_write_reg(11)
    );
\base_write_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => sel,
      CLR => component_reset_BUFG,
      D => \base_write_reg[12]_i_1_n_7\,
      Q => base_write_reg(12)
    );
\base_write_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \base_write_reg[8]_i_1_n_0\,
      CO(3 downto 0) => \NLW_base_write_reg[12]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \base_write_reg[12]_i_1_n_4\,
      O(2) => \base_write_reg[12]_i_1_n_5\,
      O(1) => \base_write_reg[12]_i_1_n_6\,
      O(0) => \base_write_reg[12]_i_1_n_7\,
      S(3 downto 0) => base_write_reg(15 downto 12)
    );
\base_write_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => sel,
      CLR => component_reset_BUFG,
      D => \base_write_reg[12]_i_1_n_6\,
      Q => base_write_reg(13)
    );
\base_write_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => sel,
      CLR => component_reset_BUFG,
      D => \base_write_reg[12]_i_1_n_5\,
      Q => base_write_reg(14)
    );
\base_write_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => sel,
      CLR => component_reset_BUFG,
      D => \base_write_reg[12]_i_1_n_4\,
      Q => base_write_reg(15)
    );
\base_write_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => sel,
      CLR => component_reset_BUFG,
      D => \base_write_reg[0]_i_2_n_6\,
      Q => base_write_reg(1)
    );
\base_write_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => sel,
      CLR => component_reset_BUFG,
      D => \base_write_reg[0]_i_2_n_5\,
      Q => base_write_reg(2)
    );
\base_write_reg[3]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => sel,
      D => \base_write_reg[0]_i_2_n_4\,
      PRE => component_reset_BUFG,
      Q => base_write_reg(3)
    );
\base_write_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => sel,
      CLR => component_reset_BUFG,
      D => \base_write_reg[4]_i_1_n_7\,
      Q => base_write_reg(4)
    );
\base_write_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \base_write_reg[0]_i_2_n_0\,
      CO(3) => \base_write_reg[4]_i_1_n_0\,
      CO(2 downto 0) => \NLW_base_write_reg[4]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \base_write_reg[4]_i_1_n_4\,
      O(2) => \base_write_reg[4]_i_1_n_5\,
      O(1) => \base_write_reg[4]_i_1_n_6\,
      O(0) => \base_write_reg[4]_i_1_n_7\,
      S(3 downto 0) => base_write_reg(7 downto 4)
    );
\base_write_reg[5]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => sel,
      D => \base_write_reg[4]_i_1_n_6\,
      PRE => component_reset_BUFG,
      Q => base_write_reg(5)
    );
\base_write_reg[6]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => sel,
      D => \base_write_reg[4]_i_1_n_5\,
      PRE => component_reset_BUFG,
      Q => base_write_reg(6)
    );
\base_write_reg[7]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => sel,
      D => \base_write_reg[4]_i_1_n_4\,
      PRE => component_reset_BUFG,
      Q => base_write_reg(7)
    );
\base_write_reg[8]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => sel,
      D => \base_write_reg[8]_i_1_n_7\,
      PRE => component_reset_BUFG,
      Q => base_write_reg(8)
    );
\base_write_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \base_write_reg[4]_i_1_n_0\,
      CO(3) => \base_write_reg[8]_i_1_n_0\,
      CO(2 downto 0) => \NLW_base_write_reg[8]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \base_write_reg[8]_i_1_n_4\,
      O(2) => \base_write_reg[8]_i_1_n_5\,
      O(1) => \base_write_reg[8]_i_1_n_6\,
      O(0) => \base_write_reg[8]_i_1_n_7\,
      S(3 downto 0) => base_write_reg(11 downto 8)
    );
\base_write_reg[9]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => sel,
      D => \base_write_reg[8]_i_1_n_6\,
      PRE => component_reset_BUFG,
      Q => base_write_reg(9)
    );
component_enable_reg: unisim.vcomponents.LDPE
    generic map(
      INIT => '0'
    )
        port map (
      D => '0',
      G => component_enable01_out,
      GE => '1',
      PRE => component_enable0,
      Q => component_enable
    );
component_enable_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => enable_up,
      I1 => enable_down,
      O => component_enable01_out
    );
component_enable_reg_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => enable_up,
      I1 => enable_down,
      O => component_enable0
    );
\current_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => i_rst_IBUF,
      D => next_state(0),
      Q => current_state(0)
    );
\current_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => i_rst_IBUF,
      D => next_state(1),
      Q => current_state(1)
    );
\current_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => i_rst_IBUF,
      D => next_state(2),
      Q => current_state(2)
    );
\current_state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => i_rst_IBUF,
      D => next_state(3),
      Q => current_state(3)
    );
done_reg: unisim.vcomponents.LDPE
    generic map(
      INIT => '1'
    )
        port map (
      D => '0',
      G => component_reset_BUFG,
      GE => '1',
      PRE => done0,
      Q => o_done_OBUF
    );
done_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => done_reg_i_2_n_0,
      I1 => done_reg_i_3_n_0,
      I2 => done_reg_i_4_n_0,
      I3 => done_reg_i_5_n_0,
      I4 => done_reg_i_6_n_0,
      I5 => done_reg_i_7_n_0,
      O => done0
    );
done_reg_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \number_of_words_reg[16]_P_n_0\,
      I1 => \number_of_words_reg[31]_LDC_n_0\,
      I2 => \number_of_words_reg[16]_C_n_0\,
      O => number_of_words(16)
    );
done_reg_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \number_of_words_reg[17]_P_n_0\,
      I1 => \number_of_words_reg[31]_LDC_n_0\,
      I2 => \number_of_words_reg[17]_C_n_0\,
      O => number_of_words(17)
    );
done_reg_i_12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => \number_of_words_reg[22]_C_n_0\,
      I1 => \number_of_words_reg[22]_P_n_0\,
      I2 => \number_of_words_reg[23]_C_n_0\,
      I3 => \number_of_words_reg[31]_LDC_n_0\,
      I4 => \number_of_words_reg[23]_P_n_0\,
      O => done_reg_i_12_n_0
    );
done_reg_i_13: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => \number_of_words_reg[20]_C_n_0\,
      I1 => \number_of_words_reg[20]_P_n_0\,
      I2 => \number_of_words_reg[21]_C_n_0\,
      I3 => \number_of_words_reg[31]_LDC_n_0\,
      I4 => \number_of_words_reg[21]_P_n_0\,
      O => done_reg_i_13_n_0
    );
done_reg_i_14: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \number_of_words_reg[26]_P_n_0\,
      I1 => \number_of_words_reg[31]_LDC_n_0\,
      I2 => \number_of_words_reg[26]_C_n_0\,
      O => number_of_words(26)
    );
done_reg_i_15: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \number_of_words_reg[27]_P_n_0\,
      I1 => \number_of_words_reg[31]_LDC_n_0\,
      I2 => \number_of_words_reg[27]_C_n_0\,
      O => number_of_words(27)
    );
done_reg_i_16: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \number_of_words_reg[24]_P_n_0\,
      I1 => \number_of_words_reg[31]_LDC_n_0\,
      I2 => \number_of_words_reg[24]_C_n_0\,
      O => number_of_words(24)
    );
done_reg_i_17: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \number_of_words_reg[25]_P_n_0\,
      I1 => \number_of_words_reg[31]_LDC_n_0\,
      I2 => \number_of_words_reg[25]_C_n_0\,
      O => number_of_words(25)
    );
done_reg_i_18: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => \number_of_words_reg[30]_C_n_0\,
      I1 => \number_of_words_reg[30]_P_n_0\,
      I2 => \number_of_words_reg[31]_C_n_0\,
      I3 => \number_of_words_reg[31]_LDC_n_0\,
      I4 => \number_of_words_reg[31]_P_n_0\,
      O => done_reg_i_18_n_0
    );
done_reg_i_19: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => \number_of_words_reg[28]_C_n_0\,
      I1 => \number_of_words_reg[28]_P_n_0\,
      I2 => \number_of_words_reg[29]_C_n_0\,
      I3 => \number_of_words_reg[31]_LDC_n_0\,
      I4 => \number_of_words_reg[29]_P_n_0\,
      O => done_reg_i_19_n_0
    );
done_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040000000000000"
    )
        port map (
      I0 => i_rst_IBUF,
      I1 => i_start_IBUF,
      I2 => current_state(3),
      I3 => current_state(2),
      I4 => current_state(1),
      I5 => current_state(0),
      O => done_reg_i_2_n_0
    );
done_reg_i_20: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \number_of_words_reg[5]_P_n_0\,
      I1 => \number_of_words_reg[5]_LDC_n_0\,
      I2 => \number_of_words_reg[5]_C_n_0\,
      O => number_of_words(5)
    );
done_reg_i_21: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \number_of_words_reg[7]_P_n_0\,
      I1 => \number_of_words_reg[7]_LDC_n_0\,
      I2 => \number_of_words_reg[7]_C_n_0\,
      O => number_of_words(7)
    );
done_reg_i_22: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \number_of_words_reg[6]_P_n_0\,
      I1 => \number_of_words_reg[6]_LDC_n_0\,
      I2 => \number_of_words_reg[6]_C_n_0\,
      O => number_of_words(6)
    );
done_reg_i_23: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \number_of_words_reg[1]_P_n_0\,
      I1 => \number_of_words_reg[1]_LDC_n_0\,
      I2 => \number_of_words_reg[1]_C_n_0\,
      O => number_of_words(1)
    );
done_reg_i_24: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \number_of_words_reg[3]_P_n_0\,
      I1 => \number_of_words_reg[3]_LDC_n_0\,
      I2 => \number_of_words_reg[3]_C_n_0\,
      O => number_of_words(3)
    );
done_reg_i_25: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \number_of_words_reg[2]_P_n_0\,
      I1 => \number_of_words_reg[2]_LDC_n_0\,
      I2 => \number_of_words_reg[2]_C_n_0\,
      O => number_of_words(2)
    );
done_reg_i_26: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \number_of_words_reg[10]_P_n_0\,
      I1 => \number_of_words_reg[31]_LDC_n_0\,
      I2 => \number_of_words_reg[10]_C_n_0\,
      O => number_of_words(10)
    );
done_reg_i_27: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \number_of_words_reg[11]_P_n_0\,
      I1 => \number_of_words_reg[31]_LDC_n_0\,
      I2 => \number_of_words_reg[11]_C_n_0\,
      O => number_of_words(11)
    );
done_reg_i_28: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \number_of_words_reg[8]_P_n_0\,
      I1 => \number_of_words_reg[31]_LDC_n_0\,
      I2 => \number_of_words_reg[8]_C_n_0\,
      O => number_of_words(8)
    );
done_reg_i_29: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \number_of_words_reg[9]_P_n_0\,
      I1 => \number_of_words_reg[31]_LDC_n_0\,
      I2 => \number_of_words_reg[9]_C_n_0\,
      O => number_of_words(9)
    );
done_reg_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => number_of_words(18),
      I1 => number_of_words(19),
      I2 => number_of_words(16),
      I3 => number_of_words(17),
      I4 => done_reg_i_12_n_0,
      I5 => done_reg_i_13_n_0,
      O => done_reg_i_3_n_0
    );
done_reg_i_30: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => \number_of_words_reg[14]_C_n_0\,
      I1 => \number_of_words_reg[14]_P_n_0\,
      I2 => \number_of_words_reg[15]_C_n_0\,
      I3 => \number_of_words_reg[31]_LDC_n_0\,
      I4 => \number_of_words_reg[15]_P_n_0\,
      O => done_reg_i_30_n_0
    );
done_reg_i_31: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => \number_of_words_reg[12]_C_n_0\,
      I1 => \number_of_words_reg[12]_P_n_0\,
      I2 => \number_of_words_reg[13]_C_n_0\,
      I3 => \number_of_words_reg[31]_LDC_n_0\,
      I4 => \number_of_words_reg[13]_P_n_0\,
      O => done_reg_i_31_n_0
    );
done_reg_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => number_of_words(26),
      I1 => number_of_words(27),
      I2 => number_of_words(24),
      I3 => number_of_words(25),
      I4 => done_reg_i_18_n_0,
      I5 => done_reg_i_19_n_0,
      O => done_reg_i_4_n_0
    );
done_reg_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEFEA"
    )
        port map (
      I0 => number_of_words(5),
      I1 => \number_of_words_reg[4]_P_n_0\,
      I2 => \number_of_words_reg[4]_LDC_n_0\,
      I3 => \number_of_words_reg[4]_C_n_0\,
      I4 => number_of_words(7),
      I5 => number_of_words(6),
      O => done_reg_i_5_n_0
    );
done_reg_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEFEA"
    )
        port map (
      I0 => number_of_words(1),
      I1 => \number_of_words_reg[0]_P_n_0\,
      I2 => \number_of_words_reg[0]_LDC_n_0\,
      I3 => \number_of_words_reg[0]_C_n_0\,
      I4 => number_of_words(3),
      I5 => number_of_words(2),
      O => done_reg_i_6_n_0
    );
done_reg_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => number_of_words(10),
      I1 => number_of_words(11),
      I2 => number_of_words(8),
      I3 => number_of_words(9),
      I4 => done_reg_i_30_n_0,
      I5 => done_reg_i_31_n_0,
      O => done_reg_i_7_n_0
    );
done_reg_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \number_of_words_reg[18]_P_n_0\,
      I1 => \number_of_words_reg[31]_LDC_n_0\,
      I2 => \number_of_words_reg[18]_C_n_0\,
      O => number_of_words(18)
    );
done_reg_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \number_of_words_reg[19]_P_n_0\,
      I1 => \number_of_words_reg[31]_LDC_n_0\,
      I2 => \number_of_words_reg[19]_C_n_0\,
      O => number_of_words(19)
    );
enable_down_reg: unisim.vcomponents.LDPE
    generic map(
      INIT => '0'
    )
        port map (
      D => '0',
      G => enable_down0,
      GE => '1',
      PRE => enable_down_reg_i_2_n_0,
      Q => enable_down
    );
enable_down_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000800"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(1),
      I2 => i_clk_IBUF,
      I3 => current_state(3),
      I4 => current_state(2),
      I5 => i_rst_IBUF,
      O => enable_down0
    );
enable_down_reg_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(0),
      I2 => current_state(3),
      I3 => current_state(2),
      O => enable_down_reg_i_2_n_0
    );
enable_up_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => enable_up_reg_i_2_n_0,
      D => enable_up0,
      G => enable_up0,
      GE => '1',
      Q => enable_up
    );
enable_up_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(3),
      I2 => current_state(0),
      I3 => current_state(1),
      I4 => i_clk_IBUF,
      O => enable_up0
    );
enable_up_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0080"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(1),
      I2 => current_state(3),
      I3 => current_state(2),
      I4 => i_rst_IBUF,
      O => enable_up_reg_i_2_n_0
    );
\mem_address_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mem_address_reg[0]_i_1_n_0\,
      G => \mem_address_reg[15]_i_2_n_0\,
      GE => '1',
      Q => Q(0)
    );
\mem_address_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => base_read_reg(0),
      I1 => \mem_address_reg[15]_i_3_n_0\,
      I2 => base_write_reg(0),
      I3 => \mem_address_reg[15]_i_4_n_0\,
      O => \mem_address_reg[0]_i_1_n_0\
    );
\mem_address_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mem_address_reg[10]_i_1_n_0\,
      G => \mem_address_reg[15]_i_2_n_0\,
      GE => '1',
      Q => Q(10)
    );
\mem_address_reg[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => base_read_reg(10),
      I1 => \mem_address_reg[15]_i_3_n_0\,
      I2 => base_write_reg(10),
      I3 => \mem_address_reg[15]_i_4_n_0\,
      O => \mem_address_reg[10]_i_1_n_0\
    );
\mem_address_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mem_address_reg[11]_i_1_n_0\,
      G => \mem_address_reg[15]_i_2_n_0\,
      GE => '1',
      Q => Q(11)
    );
\mem_address_reg[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => base_read_reg(11),
      I1 => \mem_address_reg[15]_i_3_n_0\,
      I2 => base_write_reg(11),
      I3 => \mem_address_reg[15]_i_4_n_0\,
      O => \mem_address_reg[11]_i_1_n_0\
    );
\mem_address_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mem_address_reg[12]_i_1_n_0\,
      G => \mem_address_reg[15]_i_2_n_0\,
      GE => '1',
      Q => Q(12)
    );
\mem_address_reg[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => base_read_reg(12),
      I1 => \mem_address_reg[15]_i_3_n_0\,
      I2 => base_write_reg(12),
      I3 => \mem_address_reg[15]_i_4_n_0\,
      O => \mem_address_reg[12]_i_1_n_0\
    );
\mem_address_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mem_address_reg[13]_i_1_n_0\,
      G => \mem_address_reg[15]_i_2_n_0\,
      GE => '1',
      Q => Q(13)
    );
\mem_address_reg[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => base_read_reg(13),
      I1 => \mem_address_reg[15]_i_3_n_0\,
      I2 => base_write_reg(13),
      I3 => \mem_address_reg[15]_i_4_n_0\,
      O => \mem_address_reg[13]_i_1_n_0\
    );
\mem_address_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mem_address_reg[14]_i_1_n_0\,
      G => \mem_address_reg[15]_i_2_n_0\,
      GE => '1',
      Q => Q(14)
    );
\mem_address_reg[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => base_read_reg(14),
      I1 => \mem_address_reg[15]_i_3_n_0\,
      I2 => base_write_reg(14),
      I3 => \mem_address_reg[15]_i_4_n_0\,
      O => \mem_address_reg[14]_i_1_n_0\
    );
\mem_address_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mem_address_reg[15]_i_1_n_0\,
      G => \mem_address_reg[15]_i_2_n_0\,
      GE => '1',
      Q => Q(15)
    );
\mem_address_reg[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => base_read_reg(15),
      I1 => \mem_address_reg[15]_i_3_n_0\,
      I2 => base_write_reg(15),
      I3 => \mem_address_reg[15]_i_4_n_0\,
      O => \mem_address_reg[15]_i_1_n_0\
    );
\mem_address_reg[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0444FFFF"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(1),
      I2 => current_state(2),
      I3 => current_state(3),
      I4 => o_en_OBUF_inst_i_2_n_0,
      O => \mem_address_reg[15]_i_2_n_0\
    );
\mem_address_reg[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55575555"
    )
        port map (
      I0 => o_en_OBUF_inst_i_2_n_0,
      I1 => current_state(2),
      I2 => current_state(3),
      I3 => current_state(0),
      I4 => current_state(1),
      O => \mem_address_reg[15]_i_3_n_0\
    );
\mem_address_reg[15]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA8AAAA"
    )
        port map (
      I0 => o_en_OBUF_inst_i_2_n_0,
      I1 => current_state(2),
      I2 => current_state(3),
      I3 => current_state(0),
      I4 => current_state(1),
      O => \mem_address_reg[15]_i_4_n_0\
    );
\mem_address_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mem_address_reg[1]_i_1_n_0\,
      G => \mem_address_reg[15]_i_2_n_0\,
      GE => '1',
      Q => Q(1)
    );
\mem_address_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => base_read_reg(1),
      I1 => \mem_address_reg[15]_i_3_n_0\,
      I2 => base_write_reg(1),
      I3 => \mem_address_reg[15]_i_4_n_0\,
      O => \mem_address_reg[1]_i_1_n_0\
    );
\mem_address_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mem_address_reg[2]_i_1_n_0\,
      G => \mem_address_reg[15]_i_2_n_0\,
      GE => '1',
      Q => Q(2)
    );
\mem_address_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => base_read_reg(2),
      I1 => \mem_address_reg[15]_i_3_n_0\,
      I2 => base_write_reg(2),
      I3 => \mem_address_reg[15]_i_4_n_0\,
      O => \mem_address_reg[2]_i_1_n_0\
    );
\mem_address_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mem_address_reg[3]_i_1_n_0\,
      G => \mem_address_reg[15]_i_2_n_0\,
      GE => '1',
      Q => Q(3)
    );
\mem_address_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => base_read_reg(3),
      I1 => \mem_address_reg[15]_i_3_n_0\,
      I2 => base_write_reg(3),
      I3 => \mem_address_reg[15]_i_4_n_0\,
      O => \mem_address_reg[3]_i_1_n_0\
    );
\mem_address_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mem_address_reg[4]_i_1_n_0\,
      G => \mem_address_reg[15]_i_2_n_0\,
      GE => '1',
      Q => Q(4)
    );
\mem_address_reg[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => base_read_reg(4),
      I1 => \mem_address_reg[15]_i_3_n_0\,
      I2 => base_write_reg(4),
      I3 => \mem_address_reg[15]_i_4_n_0\,
      O => \mem_address_reg[4]_i_1_n_0\
    );
\mem_address_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mem_address_reg[5]_i_1_n_0\,
      G => \mem_address_reg[15]_i_2_n_0\,
      GE => '1',
      Q => Q(5)
    );
\mem_address_reg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => base_read_reg(5),
      I1 => \mem_address_reg[15]_i_3_n_0\,
      I2 => base_write_reg(5),
      I3 => \mem_address_reg[15]_i_4_n_0\,
      O => \mem_address_reg[5]_i_1_n_0\
    );
\mem_address_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mem_address_reg[6]_i_1_n_0\,
      G => \mem_address_reg[15]_i_2_n_0\,
      GE => '1',
      Q => Q(6)
    );
\mem_address_reg[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => base_read_reg(6),
      I1 => \mem_address_reg[15]_i_3_n_0\,
      I2 => base_write_reg(6),
      I3 => \mem_address_reg[15]_i_4_n_0\,
      O => \mem_address_reg[6]_i_1_n_0\
    );
\mem_address_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mem_address_reg[7]_i_1_n_0\,
      G => \mem_address_reg[15]_i_2_n_0\,
      GE => '1',
      Q => Q(7)
    );
\mem_address_reg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => base_read_reg(7),
      I1 => \mem_address_reg[15]_i_3_n_0\,
      I2 => base_write_reg(7),
      I3 => \mem_address_reg[15]_i_4_n_0\,
      O => \mem_address_reg[7]_i_1_n_0\
    );
\mem_address_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mem_address_reg[8]_i_1_n_0\,
      G => \mem_address_reg[15]_i_2_n_0\,
      GE => '1',
      Q => Q(8)
    );
\mem_address_reg[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => base_read_reg(8),
      I1 => \mem_address_reg[15]_i_3_n_0\,
      I2 => base_write_reg(8),
      I3 => \mem_address_reg[15]_i_4_n_0\,
      O => \mem_address_reg[8]_i_1_n_0\
    );
\mem_address_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mem_address_reg[9]_i_1_n_0\,
      G => \mem_address_reg[15]_i_2_n_0\,
      GE => '1',
      Q => Q(9)
    );
\mem_address_reg[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => base_read_reg(9),
      I1 => \mem_address_reg[15]_i_3_n_0\,
      I2 => base_write_reg(9),
      I3 => \mem_address_reg[15]_i_4_n_0\,
      O => \mem_address_reg[9]_i_1_n_0\
    );
\mem_inout_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(0),
      G => mem_inout0,
      GE => '1',
      Q => \mem_inout_reg_n_0_[0]\
    );
\mem_inout_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(1),
      G => mem_inout0,
      GE => '1',
      Q => \mem_inout_reg_n_0_[1]\
    );
\mem_inout_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(2),
      G => mem_inout0,
      GE => '1',
      Q => \mem_inout_reg_n_0_[2]\
    );
\mem_inout_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(3),
      G => mem_inout0,
      GE => '1',
      Q => \mem_inout_reg_n_0_[3]\
    );
\mem_inout_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(4),
      G => mem_inout0,
      GE => '1',
      Q => p_3_in
    );
\mem_inout_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(5),
      G => mem_inout0,
      GE => '1',
      Q => p_4_in
    );
\mem_inout_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(6),
      G => mem_inout0,
      GE => '1',
      Q => p_5_in
    );
\mem_inout_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(7),
      G => mem_inout0,
      GE => '1',
      Q => \mem_inout_reg_n_0_[7]\
    );
\mem_inout_reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(3),
      I2 => current_state(0),
      I3 => current_state(1),
      I4 => i_clk_IBUF,
      O => mem_inout0
    );
\next_state_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \next_state_reg[0]_i_1_n_0\,
      G => \next_state_reg[3]_i_2_n_0\,
      GE => '1',
      Q => next_state(0)
    );
\next_state_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAAA"
    )
        port map (
      I0 => \next_state_reg[0]_i_2_n_0\,
      I1 => done_reg_i_7_n_0,
      I2 => \next_state_reg[3]_i_4_n_0\,
      I3 => done_reg_i_4_n_0,
      I4 => done_reg_i_3_n_0,
      I5 => \next_state_reg[0]_i_3_n_0\,
      O => \next_state_reg[0]_i_1_n_0\
    );
\next_state_reg[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D500"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(2),
      I2 => current_state(3),
      I3 => i_start_IBUF,
      O => \next_state_reg[0]_i_2_n_0\
    );
\next_state_reg[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C100"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(3),
      I2 => current_state(1),
      I3 => i_start_IBUF,
      O => \next_state_reg[0]_i_3_n_0\
    );
\next_state_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \next_state_reg[1]_i_1_n_0\,
      G => \next_state_reg[3]_i_2_n_0\,
      GE => '1',
      Q => next_state(1)
    );
\next_state_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C4C4C888"
    )
        port map (
      I0 => current_state(1),
      I1 => i_start_IBUF,
      I2 => current_state(3),
      I3 => current_state(2),
      I4 => current_state(0),
      O => \next_state_reg[1]_i_1_n_0\
    );
\next_state_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \next_state_reg[2]_i_1_n_0\,
      G => \next_state_reg[3]_i_2_n_0\,
      GE => '1',
      Q => next_state(2)
    );
\next_state_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"002A0080"
    )
        port map (
      I0 => i_start_IBUF,
      I1 => current_state(1),
      I2 => current_state(0),
      I3 => current_state(3),
      I4 => current_state(2),
      O => \next_state_reg[2]_i_1_n_0\
    );
\next_state_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \next_state_reg[3]_i_1_n_0\,
      G => \next_state_reg[3]_i_2_n_0\,
      GE => '1',
      Q => next_state(3)
    );
\next_state_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAAA"
    )
        port map (
      I0 => \next_state_reg[3]_i_3_n_0\,
      I1 => done_reg_i_7_n_0,
      I2 => \next_state_reg[3]_i_4_n_0\,
      I3 => done_reg_i_4_n_0,
      I4 => done_reg_i_3_n_0,
      I5 => \next_state_reg[3]_i_5_n_0\,
      O => \next_state_reg[3]_i_1_n_0\
    );
\next_state_reg[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBBBBBBBBA"
    )
        port map (
      I0 => \next_state_reg[3]_i_6_n_0\,
      I1 => current_state(2),
      I2 => done_reg_i_7_n_0,
      I3 => \next_state_reg[3]_i_4_n_0\,
      I4 => done_reg_i_4_n_0,
      I5 => done_reg_i_3_n_0,
      O => \next_state_reg[3]_i_2_n_0\
    );
\next_state_reg[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0C0C0C0"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(3),
      I2 => i_start_IBUF,
      I3 => current_state(0),
      I4 => current_state(1),
      O => \next_state_reg[3]_i_3_n_0\
    );
\next_state_reg[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => number_of_words(2),
      I1 => number_of_words(3),
      I2 => number_of_words(0),
      I3 => number_of_words(1),
      I4 => \next_state_reg[3]_i_7_n_0\,
      I5 => \next_state_reg[3]_i_8_n_0\,
      O => \next_state_reg[3]_i_4_n_0\
    );
\next_state_reg[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAE0000"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => current_state(2),
      I4 => i_start_IBUF,
      O => \next_state_reg[3]_i_5_n_0\
    );
\next_state_reg[3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77777FFF"
    )
        port map (
      I0 => i_start_IBUF,
      I1 => current_state(3),
      I2 => current_state(0),
      I3 => current_state(1),
      I4 => current_state(2),
      O => \next_state_reg[3]_i_6_n_0\
    );
\next_state_reg[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFE2E2E2FFE2"
    )
        port map (
      I0 => \number_of_words_reg[6]_C_n_0\,
      I1 => \number_of_words_reg[6]_LDC_n_0\,
      I2 => \number_of_words_reg[6]_P_n_0\,
      I3 => \number_of_words_reg[7]_C_n_0\,
      I4 => \number_of_words_reg[7]_LDC_n_0\,
      I5 => \number_of_words_reg[7]_P_n_0\,
      O => \next_state_reg[3]_i_7_n_0\
    );
\next_state_reg[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFE2E2E2FFE2"
    )
        port map (
      I0 => \number_of_words_reg[4]_C_n_0\,
      I1 => \number_of_words_reg[4]_LDC_n_0\,
      I2 => \number_of_words_reg[4]_P_n_0\,
      I3 => \number_of_words_reg[5]_C_n_0\,
      I4 => \number_of_words_reg[5]_LDC_n_0\,
      I5 => \number_of_words_reg[5]_P_n_0\,
      O => \next_state_reg[3]_i_8_n_0\
    );
\number_of_words[0]_C_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F70"
    )
        port map (
      I0 => \number_of_words_reg[0]_LDC_n_0\,
      I1 => \number_of_words_reg[0]_P_n_0\,
      I2 => number_of_words0,
      I3 => \number_of_words_reg[0]_C_n_0\,
      O => \number_of_words[0]_C_i_1_n_0\
    );
\number_of_words[0]_P_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \number_of_words_reg[0]_C_n_0\,
      I1 => \number_of_words_reg[0]_LDC_n_0\,
      I2 => \number_of_words_reg[0]_P_n_0\,
      O => number_of_words02_in(0)
    );
\number_of_words[12]_C_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \number_of_words_reg[12]_P_n_0\,
      I1 => \number_of_words_reg[31]_LDC_n_0\,
      I2 => \number_of_words_reg[12]_C_n_0\,
      O => number_of_words(12)
    );
\number_of_words[12]_C_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \number_of_words_reg[11]_P_n_0\,
      I1 => \number_of_words_reg[31]_LDC_n_0\,
      I2 => \number_of_words_reg[11]_C_n_0\,
      O => \number_of_words[12]_C_i_3_n_0\
    );
\number_of_words[12]_C_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \number_of_words_reg[10]_P_n_0\,
      I1 => \number_of_words_reg[31]_LDC_n_0\,
      I2 => \number_of_words_reg[10]_C_n_0\,
      O => \number_of_words[12]_C_i_4_n_0\
    );
\number_of_words[12]_C_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \number_of_words_reg[9]_P_n_0\,
      I1 => \number_of_words_reg[31]_LDC_n_0\,
      I2 => \number_of_words_reg[9]_C_n_0\,
      O => \number_of_words[12]_C_i_5_n_0\
    );
\number_of_words[12]_C_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \number_of_words_reg[12]_C_n_0\,
      I1 => \number_of_words_reg[31]_LDC_n_0\,
      I2 => \number_of_words_reg[12]_P_n_0\,
      O => \number_of_words[12]_C_i_6_n_0\
    );
\number_of_words[12]_C_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \number_of_words_reg[11]_C_n_0\,
      I1 => \number_of_words_reg[31]_LDC_n_0\,
      I2 => \number_of_words_reg[11]_P_n_0\,
      O => \number_of_words[12]_C_i_7_n_0\
    );
\number_of_words[12]_C_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \number_of_words_reg[10]_C_n_0\,
      I1 => \number_of_words_reg[31]_LDC_n_0\,
      I2 => \number_of_words_reg[10]_P_n_0\,
      O => \number_of_words[12]_C_i_8_n_0\
    );
\number_of_words[12]_C_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \number_of_words_reg[9]_C_n_0\,
      I1 => \number_of_words_reg[31]_LDC_n_0\,
      I2 => \number_of_words_reg[9]_P_n_0\,
      O => \number_of_words[12]_C_i_9_n_0\
    );
\number_of_words[16]_C_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \number_of_words_reg[16]_P_n_0\,
      I1 => \number_of_words_reg[31]_LDC_n_0\,
      I2 => \number_of_words_reg[16]_C_n_0\,
      O => \number_of_words[16]_C_i_2_n_0\
    );
\number_of_words[16]_C_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \number_of_words_reg[15]_P_n_0\,
      I1 => \number_of_words_reg[31]_LDC_n_0\,
      I2 => \number_of_words_reg[15]_C_n_0\,
      O => number_of_words(15)
    );
\number_of_words[16]_C_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \number_of_words_reg[14]_P_n_0\,
      I1 => \number_of_words_reg[31]_LDC_n_0\,
      I2 => \number_of_words_reg[14]_C_n_0\,
      O => number_of_words(14)
    );
\number_of_words[16]_C_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \number_of_words_reg[13]_P_n_0\,
      I1 => \number_of_words_reg[31]_LDC_n_0\,
      I2 => \number_of_words_reg[13]_C_n_0\,
      O => number_of_words(13)
    );
\number_of_words[16]_C_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \number_of_words_reg[16]_C_n_0\,
      I1 => \number_of_words_reg[31]_LDC_n_0\,
      I2 => \number_of_words_reg[16]_P_n_0\,
      O => \number_of_words[16]_C_i_6_n_0\
    );
\number_of_words[16]_C_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \number_of_words_reg[15]_C_n_0\,
      I1 => \number_of_words_reg[31]_LDC_n_0\,
      I2 => \number_of_words_reg[15]_P_n_0\,
      O => \number_of_words[16]_C_i_7_n_0\
    );
\number_of_words[16]_C_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \number_of_words_reg[14]_C_n_0\,
      I1 => \number_of_words_reg[31]_LDC_n_0\,
      I2 => \number_of_words_reg[14]_P_n_0\,
      O => \number_of_words[16]_C_i_8_n_0\
    );
\number_of_words[16]_C_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \number_of_words_reg[13]_C_n_0\,
      I1 => \number_of_words_reg[31]_LDC_n_0\,
      I2 => \number_of_words_reg[13]_P_n_0\,
      O => \number_of_words[16]_C_i_9_n_0\
    );
\number_of_words[20]_C_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \number_of_words_reg[20]_P_n_0\,
      I1 => \number_of_words_reg[31]_LDC_n_0\,
      I2 => \number_of_words_reg[20]_C_n_0\,
      O => number_of_words(20)
    );
\number_of_words[20]_C_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \number_of_words_reg[19]_P_n_0\,
      I1 => \number_of_words_reg[31]_LDC_n_0\,
      I2 => \number_of_words_reg[19]_C_n_0\,
      O => \number_of_words[20]_C_i_3_n_0\
    );
\number_of_words[20]_C_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \number_of_words_reg[18]_P_n_0\,
      I1 => \number_of_words_reg[31]_LDC_n_0\,
      I2 => \number_of_words_reg[18]_C_n_0\,
      O => \number_of_words[20]_C_i_4_n_0\
    );
\number_of_words[20]_C_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \number_of_words_reg[17]_P_n_0\,
      I1 => \number_of_words_reg[31]_LDC_n_0\,
      I2 => \number_of_words_reg[17]_C_n_0\,
      O => \number_of_words[20]_C_i_5_n_0\
    );
\number_of_words[20]_C_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \number_of_words_reg[20]_C_n_0\,
      I1 => \number_of_words_reg[31]_LDC_n_0\,
      I2 => \number_of_words_reg[20]_P_n_0\,
      O => \number_of_words[20]_C_i_6_n_0\
    );
\number_of_words[20]_C_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \number_of_words_reg[19]_C_n_0\,
      I1 => \number_of_words_reg[31]_LDC_n_0\,
      I2 => \number_of_words_reg[19]_P_n_0\,
      O => \number_of_words[20]_C_i_7_n_0\
    );
\number_of_words[20]_C_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \number_of_words_reg[18]_C_n_0\,
      I1 => \number_of_words_reg[31]_LDC_n_0\,
      I2 => \number_of_words_reg[18]_P_n_0\,
      O => \number_of_words[20]_C_i_8_n_0\
    );
\number_of_words[20]_C_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \number_of_words_reg[17]_C_n_0\,
      I1 => \number_of_words_reg[31]_LDC_n_0\,
      I2 => \number_of_words_reg[17]_P_n_0\,
      O => \number_of_words[20]_C_i_9_n_0\
    );
\number_of_words[24]_C_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \number_of_words_reg[24]_P_n_0\,
      I1 => \number_of_words_reg[31]_LDC_n_0\,
      I2 => \number_of_words_reg[24]_C_n_0\,
      O => \number_of_words[24]_C_i_2_n_0\
    );
\number_of_words[24]_C_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \number_of_words_reg[23]_P_n_0\,
      I1 => \number_of_words_reg[31]_LDC_n_0\,
      I2 => \number_of_words_reg[23]_C_n_0\,
      O => number_of_words(23)
    );
\number_of_words[24]_C_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \number_of_words_reg[22]_P_n_0\,
      I1 => \number_of_words_reg[31]_LDC_n_0\,
      I2 => \number_of_words_reg[22]_C_n_0\,
      O => number_of_words(22)
    );
\number_of_words[24]_C_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \number_of_words_reg[21]_P_n_0\,
      I1 => \number_of_words_reg[31]_LDC_n_0\,
      I2 => \number_of_words_reg[21]_C_n_0\,
      O => number_of_words(21)
    );
\number_of_words[24]_C_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \number_of_words_reg[24]_C_n_0\,
      I1 => \number_of_words_reg[31]_LDC_n_0\,
      I2 => \number_of_words_reg[24]_P_n_0\,
      O => \number_of_words[24]_C_i_6_n_0\
    );
\number_of_words[24]_C_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \number_of_words_reg[23]_C_n_0\,
      I1 => \number_of_words_reg[31]_LDC_n_0\,
      I2 => \number_of_words_reg[23]_P_n_0\,
      O => \number_of_words[24]_C_i_7_n_0\
    );
\number_of_words[24]_C_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \number_of_words_reg[22]_C_n_0\,
      I1 => \number_of_words_reg[31]_LDC_n_0\,
      I2 => \number_of_words_reg[22]_P_n_0\,
      O => \number_of_words[24]_C_i_8_n_0\
    );
\number_of_words[24]_C_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \number_of_words_reg[21]_C_n_0\,
      I1 => \number_of_words_reg[31]_LDC_n_0\,
      I2 => \number_of_words_reg[21]_P_n_0\,
      O => \number_of_words[24]_C_i_9_n_0\
    );
\number_of_words[28]_C_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \number_of_words_reg[28]_P_n_0\,
      I1 => \number_of_words_reg[31]_LDC_n_0\,
      I2 => \number_of_words_reg[28]_C_n_0\,
      O => number_of_words(28)
    );
\number_of_words[28]_C_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \number_of_words_reg[27]_P_n_0\,
      I1 => \number_of_words_reg[31]_LDC_n_0\,
      I2 => \number_of_words_reg[27]_C_n_0\,
      O => \number_of_words[28]_C_i_3_n_0\
    );
\number_of_words[28]_C_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \number_of_words_reg[26]_P_n_0\,
      I1 => \number_of_words_reg[31]_LDC_n_0\,
      I2 => \number_of_words_reg[26]_C_n_0\,
      O => \number_of_words[28]_C_i_4_n_0\
    );
\number_of_words[28]_C_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \number_of_words_reg[25]_P_n_0\,
      I1 => \number_of_words_reg[31]_LDC_n_0\,
      I2 => \number_of_words_reg[25]_C_n_0\,
      O => \number_of_words[28]_C_i_5_n_0\
    );
\number_of_words[28]_C_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \number_of_words_reg[28]_C_n_0\,
      I1 => \number_of_words_reg[31]_LDC_n_0\,
      I2 => \number_of_words_reg[28]_P_n_0\,
      O => \number_of_words[28]_C_i_6_n_0\
    );
\number_of_words[28]_C_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \number_of_words_reg[27]_C_n_0\,
      I1 => \number_of_words_reg[31]_LDC_n_0\,
      I2 => \number_of_words_reg[27]_P_n_0\,
      O => \number_of_words[28]_C_i_7_n_0\
    );
\number_of_words[28]_C_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \number_of_words_reg[26]_C_n_0\,
      I1 => \number_of_words_reg[31]_LDC_n_0\,
      I2 => \number_of_words_reg[26]_P_n_0\,
      O => \number_of_words[28]_C_i_8_n_0\
    );
\number_of_words[28]_C_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \number_of_words_reg[25]_C_n_0\,
      I1 => \number_of_words_reg[31]_LDC_n_0\,
      I2 => \number_of_words_reg[25]_P_n_0\,
      O => \number_of_words[28]_C_i_9_n_0\
    );
\number_of_words[31]_C_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(3),
      I2 => current_state(0),
      I3 => current_state(1),
      O => number_of_words0
    );
\number_of_words[31]_C_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \number_of_words_reg[30]_P_n_0\,
      I1 => \number_of_words_reg[31]_LDC_n_0\,
      I2 => \number_of_words_reg[30]_C_n_0\,
      O => number_of_words(30)
    );
\number_of_words[31]_C_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \number_of_words_reg[29]_P_n_0\,
      I1 => \number_of_words_reg[31]_LDC_n_0\,
      I2 => \number_of_words_reg[29]_C_n_0\,
      O => number_of_words(29)
    );
\number_of_words[31]_C_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \number_of_words_reg[31]_C_n_0\,
      I1 => \number_of_words_reg[31]_LDC_n_0\,
      I2 => \number_of_words_reg[31]_P_n_0\,
      O => \number_of_words[31]_C_i_5_n_0\
    );
\number_of_words[31]_C_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \number_of_words_reg[30]_C_n_0\,
      I1 => \number_of_words_reg[31]_LDC_n_0\,
      I2 => \number_of_words_reg[30]_P_n_0\,
      O => \number_of_words[31]_C_i_6_n_0\
    );
\number_of_words[31]_C_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \number_of_words_reg[29]_C_n_0\,
      I1 => \number_of_words_reg[31]_LDC_n_0\,
      I2 => \number_of_words_reg[29]_P_n_0\,
      O => \number_of_words[31]_C_i_7_n_0\
    );
\number_of_words[4]_C_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \number_of_words_reg[1]_C_n_0\,
      I1 => \number_of_words_reg[1]_LDC_n_0\,
      I2 => \number_of_words_reg[1]_P_n_0\,
      O => \number_of_words[4]_C_i_10_n_0\
    );
\number_of_words[4]_C_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \number_of_words_reg[0]_P_n_0\,
      I1 => \number_of_words_reg[0]_LDC_n_0\,
      I2 => \number_of_words_reg[0]_C_n_0\,
      O => number_of_words(0)
    );
\number_of_words[4]_C_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \number_of_words_reg[4]_P_n_0\,
      I1 => \number_of_words_reg[4]_LDC_n_0\,
      I2 => \number_of_words_reg[4]_C_n_0\,
      O => number_of_words(4)
    );
\number_of_words[4]_C_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \number_of_words_reg[3]_P_n_0\,
      I1 => \number_of_words_reg[3]_LDC_n_0\,
      I2 => \number_of_words_reg[3]_C_n_0\,
      O => \number_of_words[4]_C_i_4_n_0\
    );
\number_of_words[4]_C_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \number_of_words_reg[2]_P_n_0\,
      I1 => \number_of_words_reg[2]_LDC_n_0\,
      I2 => \number_of_words_reg[2]_C_n_0\,
      O => \number_of_words[4]_C_i_5_n_0\
    );
\number_of_words[4]_C_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \number_of_words_reg[1]_P_n_0\,
      I1 => \number_of_words_reg[1]_LDC_n_0\,
      I2 => \number_of_words_reg[1]_C_n_0\,
      O => \number_of_words[4]_C_i_6_n_0\
    );
\number_of_words[4]_C_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \number_of_words_reg[4]_C_n_0\,
      I1 => \number_of_words_reg[4]_LDC_n_0\,
      I2 => \number_of_words_reg[4]_P_n_0\,
      O => \number_of_words[4]_C_i_7_n_0\
    );
\number_of_words[4]_C_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \number_of_words_reg[3]_C_n_0\,
      I1 => \number_of_words_reg[3]_LDC_n_0\,
      I2 => \number_of_words_reg[3]_P_n_0\,
      O => \number_of_words[4]_C_i_8_n_0\
    );
\number_of_words[4]_C_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \number_of_words_reg[2]_C_n_0\,
      I1 => \number_of_words_reg[2]_LDC_n_0\,
      I2 => \number_of_words_reg[2]_P_n_0\,
      O => \number_of_words[4]_C_i_9_n_0\
    );
\number_of_words[8]_C_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \number_of_words_reg[8]_P_n_0\,
      I1 => \number_of_words_reg[31]_LDC_n_0\,
      I2 => \number_of_words_reg[8]_C_n_0\,
      O => \number_of_words[8]_C_i_2_n_0\
    );
\number_of_words[8]_C_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \number_of_words_reg[7]_P_n_0\,
      I1 => \number_of_words_reg[7]_LDC_n_0\,
      I2 => \number_of_words_reg[7]_C_n_0\,
      O => \number_of_words[8]_C_i_3_n_0\
    );
\number_of_words[8]_C_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \number_of_words_reg[6]_P_n_0\,
      I1 => \number_of_words_reg[6]_LDC_n_0\,
      I2 => \number_of_words_reg[6]_C_n_0\,
      O => \number_of_words[8]_C_i_4_n_0\
    );
\number_of_words[8]_C_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \number_of_words_reg[5]_P_n_0\,
      I1 => \number_of_words_reg[5]_LDC_n_0\,
      I2 => \number_of_words_reg[5]_C_n_0\,
      O => \number_of_words[8]_C_i_5_n_0\
    );
\number_of_words[8]_C_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \number_of_words_reg[8]_C_n_0\,
      I1 => \number_of_words_reg[31]_LDC_n_0\,
      I2 => \number_of_words_reg[8]_P_n_0\,
      O => \number_of_words[8]_C_i_6_n_0\
    );
\number_of_words[8]_C_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \number_of_words_reg[7]_C_n_0\,
      I1 => \number_of_words_reg[7]_LDC_n_0\,
      I2 => \number_of_words_reg[7]_P_n_0\,
      O => \number_of_words[8]_C_i_7_n_0\
    );
\number_of_words[8]_C_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \number_of_words_reg[6]_C_n_0\,
      I1 => \number_of_words_reg[6]_LDC_n_0\,
      I2 => \number_of_words_reg[6]_P_n_0\,
      O => \number_of_words[8]_C_i_8_n_0\
    );
\number_of_words[8]_C_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \number_of_words_reg[5]_C_n_0\,
      I1 => \number_of_words_reg[5]_LDC_n_0\,
      I2 => \number_of_words_reg[5]_P_n_0\,
      O => \number_of_words[8]_C_i_9_n_0\
    );
\number_of_words_reg[0]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => \number_of_words_reg[0]_LDC_i_2_n_0\,
      D => \number_of_words[0]_C_i_1_n_0\,
      Q => \number_of_words_reg[0]_C_n_0\
    );
\number_of_words_reg[0]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '1'
    )
        port map (
      CLR => \number_of_words_reg[0]_LDC_i_2_n_0\,
      D => '1',
      G => \number_of_words_reg[0]_LDC_i_1_n_0\,
      GE => '1',
      Q => \number_of_words_reg[0]_LDC_n_0\
    );
\number_of_words_reg[0]_LDC_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCCCCCCCAC"
    )
        port map (
      I0 => D(0),
      I1 => i_rst_IBUF,
      I2 => current_state(0),
      I3 => current_state(1),
      I4 => current_state(3),
      I5 => current_state(2),
      O => \number_of_words_reg[0]_LDC_i_1_n_0\
    );
\number_of_words_reg[0]_LDC_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(3),
      I2 => current_state(1),
      I3 => current_state(0),
      I4 => D(0),
      O => \number_of_words_reg[0]_LDC_i_2_n_0\
    );
\number_of_words_reg[0]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      D => number_of_words02_in(0),
      PRE => \number_of_words_reg[0]_LDC_i_1_n_0\,
      Q => \number_of_words_reg[0]_P_n_0\
    );
\number_of_words_reg[10]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      CLR => p_1_in2_in,
      D => number_of_words02_in(10),
      Q => \number_of_words_reg[10]_C_n_0\
    );
\number_of_words_reg[10]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      D => number_of_words02_in(10),
      PRE => \number_of_words_reg[31]_LDC_i_1_n_0\,
      Q => \number_of_words_reg[10]_P_n_0\
    );
\number_of_words_reg[11]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      CLR => p_1_in2_in,
      D => number_of_words02_in(11),
      Q => \number_of_words_reg[11]_C_n_0\
    );
\number_of_words_reg[11]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      D => number_of_words02_in(11),
      PRE => \number_of_words_reg[31]_LDC_i_1_n_0\,
      Q => \number_of_words_reg[11]_P_n_0\
    );
\number_of_words_reg[12]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      CLR => p_1_in2_in,
      D => number_of_words02_in(12),
      Q => \number_of_words_reg[12]_C_n_0\
    );
\number_of_words_reg[12]_C_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \number_of_words_reg[8]_C_i_1_n_0\,
      CO(3) => \number_of_words_reg[12]_C_i_1_n_0\,
      CO(2 downto 0) => \NLW_number_of_words_reg[12]_C_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => number_of_words(12),
      DI(2) => \number_of_words[12]_C_i_3_n_0\,
      DI(1) => \number_of_words[12]_C_i_4_n_0\,
      DI(0) => \number_of_words[12]_C_i_5_n_0\,
      O(3 downto 0) => number_of_words02_in(12 downto 9),
      S(3) => \number_of_words[12]_C_i_6_n_0\,
      S(2) => \number_of_words[12]_C_i_7_n_0\,
      S(1) => \number_of_words[12]_C_i_8_n_0\,
      S(0) => \number_of_words[12]_C_i_9_n_0\
    );
\number_of_words_reg[12]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      D => number_of_words02_in(12),
      PRE => \number_of_words_reg[31]_LDC_i_1_n_0\,
      Q => \number_of_words_reg[12]_P_n_0\
    );
\number_of_words_reg[13]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      CLR => p_1_in2_in,
      D => number_of_words02_in(13),
      Q => \number_of_words_reg[13]_C_n_0\
    );
\number_of_words_reg[13]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      D => number_of_words02_in(13),
      PRE => \number_of_words_reg[31]_LDC_i_1_n_0\,
      Q => \number_of_words_reg[13]_P_n_0\
    );
\number_of_words_reg[14]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      CLR => p_1_in2_in,
      D => number_of_words02_in(14),
      Q => \number_of_words_reg[14]_C_n_0\
    );
\number_of_words_reg[14]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      D => number_of_words02_in(14),
      PRE => \number_of_words_reg[31]_LDC_i_1_n_0\,
      Q => \number_of_words_reg[14]_P_n_0\
    );
\number_of_words_reg[15]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      CLR => p_1_in2_in,
      D => number_of_words02_in(15),
      Q => \number_of_words_reg[15]_C_n_0\
    );
\number_of_words_reg[15]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      D => number_of_words02_in(15),
      PRE => \number_of_words_reg[31]_LDC_i_1_n_0\,
      Q => \number_of_words_reg[15]_P_n_0\
    );
\number_of_words_reg[16]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      CLR => p_1_in2_in,
      D => number_of_words02_in(16),
      Q => \number_of_words_reg[16]_C_n_0\
    );
\number_of_words_reg[16]_C_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \number_of_words_reg[12]_C_i_1_n_0\,
      CO(3) => \number_of_words_reg[16]_C_i_1_n_0\,
      CO(2 downto 0) => \NLW_number_of_words_reg[16]_C_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \number_of_words[16]_C_i_2_n_0\,
      DI(2 downto 0) => number_of_words(15 downto 13),
      O(3 downto 0) => number_of_words02_in(16 downto 13),
      S(3) => \number_of_words[16]_C_i_6_n_0\,
      S(2) => \number_of_words[16]_C_i_7_n_0\,
      S(1) => \number_of_words[16]_C_i_8_n_0\,
      S(0) => \number_of_words[16]_C_i_9_n_0\
    );
\number_of_words_reg[16]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      D => number_of_words02_in(16),
      PRE => \number_of_words_reg[31]_LDC_i_1_n_0\,
      Q => \number_of_words_reg[16]_P_n_0\
    );
\number_of_words_reg[17]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      CLR => p_1_in2_in,
      D => number_of_words02_in(17),
      Q => \number_of_words_reg[17]_C_n_0\
    );
\number_of_words_reg[17]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      D => number_of_words02_in(17),
      PRE => \number_of_words_reg[31]_LDC_i_1_n_0\,
      Q => \number_of_words_reg[17]_P_n_0\
    );
\number_of_words_reg[18]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      CLR => p_1_in2_in,
      D => number_of_words02_in(18),
      Q => \number_of_words_reg[18]_C_n_0\
    );
\number_of_words_reg[18]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      D => number_of_words02_in(18),
      PRE => \number_of_words_reg[31]_LDC_i_1_n_0\,
      Q => \number_of_words_reg[18]_P_n_0\
    );
\number_of_words_reg[19]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      CLR => p_1_in2_in,
      D => number_of_words02_in(19),
      Q => \number_of_words_reg[19]_C_n_0\
    );
\number_of_words_reg[19]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      D => number_of_words02_in(19),
      PRE => \number_of_words_reg[31]_LDC_i_1_n_0\,
      Q => \number_of_words_reg[19]_P_n_0\
    );
\number_of_words_reg[1]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      CLR => \number_of_words_reg[1]_LDC_i_2_n_0\,
      D => number_of_words02_in(1),
      Q => \number_of_words_reg[1]_C_n_0\
    );
\number_of_words_reg[1]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '1'
    )
        port map (
      CLR => \number_of_words_reg[1]_LDC_i_2_n_0\,
      D => '1',
      G => \number_of_words_reg[1]_LDC_i_1_n_0\,
      GE => '1',
      Q => \number_of_words_reg[1]_LDC_n_0\
    );
\number_of_words_reg[1]_LDC_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCCCCCCCAC"
    )
        port map (
      I0 => D(1),
      I1 => i_rst_IBUF,
      I2 => current_state(0),
      I3 => current_state(1),
      I4 => current_state(3),
      I5 => current_state(2),
      O => \number_of_words_reg[1]_LDC_i_1_n_0\
    );
\number_of_words_reg[1]_LDC_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(3),
      I2 => current_state(1),
      I3 => current_state(0),
      I4 => D(1),
      O => \number_of_words_reg[1]_LDC_i_2_n_0\
    );
\number_of_words_reg[1]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      D => number_of_words02_in(1),
      PRE => \number_of_words_reg[1]_LDC_i_1_n_0\,
      Q => \number_of_words_reg[1]_P_n_0\
    );
\number_of_words_reg[20]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      CLR => p_1_in2_in,
      D => number_of_words02_in(20),
      Q => \number_of_words_reg[20]_C_n_0\
    );
\number_of_words_reg[20]_C_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \number_of_words_reg[16]_C_i_1_n_0\,
      CO(3) => \number_of_words_reg[20]_C_i_1_n_0\,
      CO(2 downto 0) => \NLW_number_of_words_reg[20]_C_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => number_of_words(20),
      DI(2) => \number_of_words[20]_C_i_3_n_0\,
      DI(1) => \number_of_words[20]_C_i_4_n_0\,
      DI(0) => \number_of_words[20]_C_i_5_n_0\,
      O(3 downto 0) => number_of_words02_in(20 downto 17),
      S(3) => \number_of_words[20]_C_i_6_n_0\,
      S(2) => \number_of_words[20]_C_i_7_n_0\,
      S(1) => \number_of_words[20]_C_i_8_n_0\,
      S(0) => \number_of_words[20]_C_i_9_n_0\
    );
\number_of_words_reg[20]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      D => number_of_words02_in(20),
      PRE => \number_of_words_reg[31]_LDC_i_1_n_0\,
      Q => \number_of_words_reg[20]_P_n_0\
    );
\number_of_words_reg[21]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      CLR => p_1_in2_in,
      D => number_of_words02_in(21),
      Q => \number_of_words_reg[21]_C_n_0\
    );
\number_of_words_reg[21]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      D => number_of_words02_in(21),
      PRE => \number_of_words_reg[31]_LDC_i_1_n_0\,
      Q => \number_of_words_reg[21]_P_n_0\
    );
\number_of_words_reg[22]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      CLR => p_1_in2_in,
      D => number_of_words02_in(22),
      Q => \number_of_words_reg[22]_C_n_0\
    );
\number_of_words_reg[22]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      D => number_of_words02_in(22),
      PRE => \number_of_words_reg[31]_LDC_i_1_n_0\,
      Q => \number_of_words_reg[22]_P_n_0\
    );
\number_of_words_reg[23]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      CLR => p_1_in2_in,
      D => number_of_words02_in(23),
      Q => \number_of_words_reg[23]_C_n_0\
    );
\number_of_words_reg[23]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      D => number_of_words02_in(23),
      PRE => \number_of_words_reg[31]_LDC_i_1_n_0\,
      Q => \number_of_words_reg[23]_P_n_0\
    );
\number_of_words_reg[24]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      CLR => p_1_in2_in,
      D => number_of_words02_in(24),
      Q => \number_of_words_reg[24]_C_n_0\
    );
\number_of_words_reg[24]_C_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \number_of_words_reg[20]_C_i_1_n_0\,
      CO(3) => \number_of_words_reg[24]_C_i_1_n_0\,
      CO(2 downto 0) => \NLW_number_of_words_reg[24]_C_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \number_of_words[24]_C_i_2_n_0\,
      DI(2 downto 0) => number_of_words(23 downto 21),
      O(3 downto 0) => number_of_words02_in(24 downto 21),
      S(3) => \number_of_words[24]_C_i_6_n_0\,
      S(2) => \number_of_words[24]_C_i_7_n_0\,
      S(1) => \number_of_words[24]_C_i_8_n_0\,
      S(0) => \number_of_words[24]_C_i_9_n_0\
    );
\number_of_words_reg[24]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      D => number_of_words02_in(24),
      PRE => \number_of_words_reg[31]_LDC_i_1_n_0\,
      Q => \number_of_words_reg[24]_P_n_0\
    );
\number_of_words_reg[25]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      CLR => p_1_in2_in,
      D => number_of_words02_in(25),
      Q => \number_of_words_reg[25]_C_n_0\
    );
\number_of_words_reg[25]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      D => number_of_words02_in(25),
      PRE => \number_of_words_reg[31]_LDC_i_1_n_0\,
      Q => \number_of_words_reg[25]_P_n_0\
    );
\number_of_words_reg[26]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      CLR => p_1_in2_in,
      D => number_of_words02_in(26),
      Q => \number_of_words_reg[26]_C_n_0\
    );
\number_of_words_reg[26]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      D => number_of_words02_in(26),
      PRE => \number_of_words_reg[31]_LDC_i_1_n_0\,
      Q => \number_of_words_reg[26]_P_n_0\
    );
\number_of_words_reg[27]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      CLR => p_1_in2_in,
      D => number_of_words02_in(27),
      Q => \number_of_words_reg[27]_C_n_0\
    );
\number_of_words_reg[27]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      D => number_of_words02_in(27),
      PRE => \number_of_words_reg[31]_LDC_i_1_n_0\,
      Q => \number_of_words_reg[27]_P_n_0\
    );
\number_of_words_reg[28]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      CLR => p_1_in2_in,
      D => number_of_words02_in(28),
      Q => \number_of_words_reg[28]_C_n_0\
    );
\number_of_words_reg[28]_C_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \number_of_words_reg[24]_C_i_1_n_0\,
      CO(3) => \number_of_words_reg[28]_C_i_1_n_0\,
      CO(2 downto 0) => \NLW_number_of_words_reg[28]_C_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => number_of_words(28),
      DI(2) => \number_of_words[28]_C_i_3_n_0\,
      DI(1) => \number_of_words[28]_C_i_4_n_0\,
      DI(0) => \number_of_words[28]_C_i_5_n_0\,
      O(3 downto 0) => number_of_words02_in(28 downto 25),
      S(3) => \number_of_words[28]_C_i_6_n_0\,
      S(2) => \number_of_words[28]_C_i_7_n_0\,
      S(1) => \number_of_words[28]_C_i_8_n_0\,
      S(0) => \number_of_words[28]_C_i_9_n_0\
    );
\number_of_words_reg[28]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      D => number_of_words02_in(28),
      PRE => \number_of_words_reg[31]_LDC_i_1_n_0\,
      Q => \number_of_words_reg[28]_P_n_0\
    );
\number_of_words_reg[29]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      CLR => p_1_in2_in,
      D => number_of_words02_in(29),
      Q => \number_of_words_reg[29]_C_n_0\
    );
\number_of_words_reg[29]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      D => number_of_words02_in(29),
      PRE => \number_of_words_reg[31]_LDC_i_1_n_0\,
      Q => \number_of_words_reg[29]_P_n_0\
    );
\number_of_words_reg[2]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      CLR => \number_of_words_reg[2]_LDC_i_2_n_0\,
      D => number_of_words02_in(2),
      Q => \number_of_words_reg[2]_C_n_0\
    );
\number_of_words_reg[2]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '1'
    )
        port map (
      CLR => \number_of_words_reg[2]_LDC_i_2_n_0\,
      D => '1',
      G => \number_of_words_reg[2]_LDC_i_1_n_0\,
      GE => '1',
      Q => \number_of_words_reg[2]_LDC_n_0\
    );
\number_of_words_reg[2]_LDC_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCCCCCCCAC"
    )
        port map (
      I0 => D(2),
      I1 => i_rst_IBUF,
      I2 => current_state(0),
      I3 => current_state(1),
      I4 => current_state(3),
      I5 => current_state(2),
      O => \number_of_words_reg[2]_LDC_i_1_n_0\
    );
\number_of_words_reg[2]_LDC_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(3),
      I2 => current_state(1),
      I3 => current_state(0),
      I4 => D(2),
      O => \number_of_words_reg[2]_LDC_i_2_n_0\
    );
\number_of_words_reg[2]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      D => number_of_words02_in(2),
      PRE => \number_of_words_reg[2]_LDC_i_1_n_0\,
      Q => \number_of_words_reg[2]_P_n_0\
    );
\number_of_words_reg[30]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      CLR => p_1_in2_in,
      D => number_of_words02_in(30),
      Q => \number_of_words_reg[30]_C_n_0\
    );
\number_of_words_reg[30]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      D => number_of_words02_in(30),
      PRE => \number_of_words_reg[31]_LDC_i_1_n_0\,
      Q => \number_of_words_reg[30]_P_n_0\
    );
\number_of_words_reg[31]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      CLR => p_1_in2_in,
      D => number_of_words02_in(31),
      Q => \number_of_words_reg[31]_C_n_0\
    );
\number_of_words_reg[31]_C_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \number_of_words_reg[28]_C_i_1_n_0\,
      CO(3 downto 0) => \NLW_number_of_words_reg[31]_C_i_2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => number_of_words(30 downto 29),
      O(3) => \NLW_number_of_words_reg[31]_C_i_2_O_UNCONNECTED\(3),
      O(2 downto 0) => number_of_words02_in(31 downto 29),
      S(3) => '0',
      S(2) => \number_of_words[31]_C_i_5_n_0\,
      S(1) => \number_of_words[31]_C_i_6_n_0\,
      S(0) => \number_of_words[31]_C_i_7_n_0\
    );
\number_of_words_reg[31]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '1'
    )
        port map (
      CLR => p_1_in2_in,
      D => '1',
      G => \number_of_words_reg[31]_LDC_i_1_n_0\,
      GE => '1',
      Q => \number_of_words_reg[31]_LDC_n_0\
    );
\number_of_words_reg[31]_LDC_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0000"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(3),
      I2 => current_state(1),
      I3 => current_state(0),
      I4 => i_rst_IBUF,
      O => \number_of_words_reg[31]_LDC_i_1_n_0\
    );
\number_of_words_reg[31]_LDC_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(3),
      I2 => current_state(1),
      I3 => current_state(0),
      O => p_1_in2_in
    );
\number_of_words_reg[31]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      D => number_of_words02_in(31),
      PRE => \number_of_words_reg[31]_LDC_i_1_n_0\,
      Q => \number_of_words_reg[31]_P_n_0\
    );
\number_of_words_reg[3]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      CLR => \number_of_words_reg[3]_LDC_i_2_n_0\,
      D => number_of_words02_in(3),
      Q => \number_of_words_reg[3]_C_n_0\
    );
\number_of_words_reg[3]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '1'
    )
        port map (
      CLR => \number_of_words_reg[3]_LDC_i_2_n_0\,
      D => '1',
      G => \number_of_words_reg[3]_LDC_i_1_n_0\,
      GE => '1',
      Q => \number_of_words_reg[3]_LDC_n_0\
    );
\number_of_words_reg[3]_LDC_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCCCCCCCAC"
    )
        port map (
      I0 => D(3),
      I1 => i_rst_IBUF,
      I2 => current_state(0),
      I3 => current_state(1),
      I4 => current_state(3),
      I5 => current_state(2),
      O => \number_of_words_reg[3]_LDC_i_1_n_0\
    );
\number_of_words_reg[3]_LDC_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(3),
      I2 => current_state(1),
      I3 => current_state(0),
      I4 => D(3),
      O => \number_of_words_reg[3]_LDC_i_2_n_0\
    );
\number_of_words_reg[3]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      D => number_of_words02_in(3),
      PRE => \number_of_words_reg[3]_LDC_i_1_n_0\,
      Q => \number_of_words_reg[3]_P_n_0\
    );
\number_of_words_reg[4]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      CLR => \number_of_words_reg[4]_LDC_i_2_n_0\,
      D => number_of_words02_in(4),
      Q => \number_of_words_reg[4]_C_n_0\
    );
\number_of_words_reg[4]_C_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \number_of_words_reg[4]_C_i_1_n_0\,
      CO(2 downto 0) => \NLW_number_of_words_reg[4]_C_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => number_of_words(0),
      DI(3) => number_of_words(4),
      DI(2) => \number_of_words[4]_C_i_4_n_0\,
      DI(1) => \number_of_words[4]_C_i_5_n_0\,
      DI(0) => \number_of_words[4]_C_i_6_n_0\,
      O(3 downto 0) => number_of_words02_in(4 downto 1),
      S(3) => \number_of_words[4]_C_i_7_n_0\,
      S(2) => \number_of_words[4]_C_i_8_n_0\,
      S(1) => \number_of_words[4]_C_i_9_n_0\,
      S(0) => \number_of_words[4]_C_i_10_n_0\
    );
\number_of_words_reg[4]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '1'
    )
        port map (
      CLR => \number_of_words_reg[4]_LDC_i_2_n_0\,
      D => '1',
      G => \number_of_words_reg[4]_LDC_i_1_n_0\,
      GE => '1',
      Q => \number_of_words_reg[4]_LDC_n_0\
    );
\number_of_words_reg[4]_LDC_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCCCCCCCAC"
    )
        port map (
      I0 => D(4),
      I1 => i_rst_IBUF,
      I2 => current_state(0),
      I3 => current_state(1),
      I4 => current_state(3),
      I5 => current_state(2),
      O => \number_of_words_reg[4]_LDC_i_1_n_0\
    );
\number_of_words_reg[4]_LDC_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(3),
      I2 => current_state(1),
      I3 => current_state(0),
      I4 => D(4),
      O => \number_of_words_reg[4]_LDC_i_2_n_0\
    );
\number_of_words_reg[4]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      D => number_of_words02_in(4),
      PRE => \number_of_words_reg[4]_LDC_i_1_n_0\,
      Q => \number_of_words_reg[4]_P_n_0\
    );
\number_of_words_reg[5]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      CLR => \number_of_words_reg[5]_LDC_i_2_n_0\,
      D => number_of_words02_in(5),
      Q => \number_of_words_reg[5]_C_n_0\
    );
\number_of_words_reg[5]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '1'
    )
        port map (
      CLR => \number_of_words_reg[5]_LDC_i_2_n_0\,
      D => '1',
      G => \number_of_words_reg[5]_LDC_i_1_n_0\,
      GE => '1',
      Q => \number_of_words_reg[5]_LDC_n_0\
    );
\number_of_words_reg[5]_LDC_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCCCCCCCAC"
    )
        port map (
      I0 => D(5),
      I1 => i_rst_IBUF,
      I2 => current_state(0),
      I3 => current_state(1),
      I4 => current_state(3),
      I5 => current_state(2),
      O => \number_of_words_reg[5]_LDC_i_1_n_0\
    );
\number_of_words_reg[5]_LDC_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(3),
      I2 => current_state(1),
      I3 => current_state(0),
      I4 => D(5),
      O => \number_of_words_reg[5]_LDC_i_2_n_0\
    );
\number_of_words_reg[5]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      D => number_of_words02_in(5),
      PRE => \number_of_words_reg[5]_LDC_i_1_n_0\,
      Q => \number_of_words_reg[5]_P_n_0\
    );
\number_of_words_reg[6]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      CLR => \number_of_words_reg[6]_LDC_i_2_n_0\,
      D => number_of_words02_in(6),
      Q => \number_of_words_reg[6]_C_n_0\
    );
\number_of_words_reg[6]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '1'
    )
        port map (
      CLR => \number_of_words_reg[6]_LDC_i_2_n_0\,
      D => '1',
      G => \number_of_words_reg[6]_LDC_i_1_n_0\,
      GE => '1',
      Q => \number_of_words_reg[6]_LDC_n_0\
    );
\number_of_words_reg[6]_LDC_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCCCCCCCAC"
    )
        port map (
      I0 => D(6),
      I1 => i_rst_IBUF,
      I2 => current_state(0),
      I3 => current_state(1),
      I4 => current_state(3),
      I5 => current_state(2),
      O => \number_of_words_reg[6]_LDC_i_1_n_0\
    );
\number_of_words_reg[6]_LDC_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(3),
      I2 => current_state(1),
      I3 => current_state(0),
      I4 => D(6),
      O => \number_of_words_reg[6]_LDC_i_2_n_0\
    );
\number_of_words_reg[6]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      D => number_of_words02_in(6),
      PRE => \number_of_words_reg[6]_LDC_i_1_n_0\,
      Q => \number_of_words_reg[6]_P_n_0\
    );
\number_of_words_reg[7]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      CLR => \number_of_words_reg[7]_LDC_i_2_n_0\,
      D => number_of_words02_in(7),
      Q => \number_of_words_reg[7]_C_n_0\
    );
\number_of_words_reg[7]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '1'
    )
        port map (
      CLR => \number_of_words_reg[7]_LDC_i_2_n_0\,
      D => '1',
      G => \number_of_words_reg[7]_LDC_i_1_n_0\,
      GE => '1',
      Q => \number_of_words_reg[7]_LDC_n_0\
    );
\number_of_words_reg[7]_LDC_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCCCCCCCAC"
    )
        port map (
      I0 => D(7),
      I1 => i_rst_IBUF,
      I2 => current_state(0),
      I3 => current_state(1),
      I4 => current_state(3),
      I5 => current_state(2),
      O => \number_of_words_reg[7]_LDC_i_1_n_0\
    );
\number_of_words_reg[7]_LDC_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(3),
      I2 => current_state(1),
      I3 => current_state(0),
      I4 => D(7),
      O => \number_of_words_reg[7]_LDC_i_2_n_0\
    );
\number_of_words_reg[7]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      D => number_of_words02_in(7),
      PRE => \number_of_words_reg[7]_LDC_i_1_n_0\,
      Q => \number_of_words_reg[7]_P_n_0\
    );
\number_of_words_reg[8]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      CLR => p_1_in2_in,
      D => number_of_words02_in(8),
      Q => \number_of_words_reg[8]_C_n_0\
    );
\number_of_words_reg[8]_C_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \number_of_words_reg[4]_C_i_1_n_0\,
      CO(3) => \number_of_words_reg[8]_C_i_1_n_0\,
      CO(2 downto 0) => \NLW_number_of_words_reg[8]_C_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \number_of_words[8]_C_i_2_n_0\,
      DI(2) => \number_of_words[8]_C_i_3_n_0\,
      DI(1) => \number_of_words[8]_C_i_4_n_0\,
      DI(0) => \number_of_words[8]_C_i_5_n_0\,
      O(3 downto 0) => number_of_words02_in(8 downto 5),
      S(3) => \number_of_words[8]_C_i_6_n_0\,
      S(2) => \number_of_words[8]_C_i_7_n_0\,
      S(1) => \number_of_words[8]_C_i_8_n_0\,
      S(0) => \number_of_words[8]_C_i_9_n_0\
    );
\number_of_words_reg[8]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      D => number_of_words02_in(8),
      PRE => \number_of_words_reg[31]_LDC_i_1_n_0\,
      Q => \number_of_words_reg[8]_P_n_0\
    );
\number_of_words_reg[9]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      CLR => p_1_in2_in,
      D => number_of_words02_in(9),
      Q => \number_of_words_reg[9]_C_n_0\
    );
\number_of_words_reg[9]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => number_of_words0,
      D => number_of_words02_in(9),
      PRE => \number_of_words_reg[31]_LDC_i_1_n_0\,
      Q => \number_of_words_reg[9]_P_n_0\
    );
\o_data_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000ACCA0000"
    )
        port map (
      I0 => \^u\,
      I1 => \^current_state_reg[2]_0\,
      I2 => FF2_signal,
      I3 => output,
      I4 => i_start_IBUF,
      I5 => i_rst_IBUF,
      O => o_data_OBUF(0)
    );
\o_data_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A000C0"
    )
        port map (
      I0 => \^current_state_reg[2]_0\,
      I1 => \^u\,
      I2 => i_start_IBUF,
      I3 => i_rst_IBUF,
      I4 => FF2_signal,
      O => o_data_OBUF(1)
    );
\o_data_OBUF[1]_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \o_data_OBUF[1]_inst_i_3_n_0\,
      I1 => \o_data_OBUF[1]_inst_i_4_n_0\,
      I2 => \o_data_OBUF[1]_inst_i_5_n_0\,
      I3 => \o_data_OBUF[1]_inst_i_6_n_0\,
      O => \^current_state_reg[2]_0\
    );
\o_data_OBUF[1]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000F000F535F"
    )
        port map (
      I0 => p_5_in,
      I1 => \mem_inout_reg_n_0_[2]\,
      I2 => current_state(2),
      I3 => current_state(3),
      I4 => current_state(0),
      I5 => current_state(1),
      O => \o_data_OBUF[1]_inst_i_3_n_0\
    );
\o_data_OBUF[1]_inst_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001D00"
    )
        port map (
      I0 => \mem_inout_reg_n_0_[1]\,
      I1 => current_state(2),
      I2 => p_4_in,
      I3 => current_state(0),
      I4 => current_state(1),
      O => \o_data_OBUF[1]_inst_i_4_n_0\
    );
\o_data_OBUF[1]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001D00"
    )
        port map (
      I0 => \mem_inout_reg_n_0_[0]\,
      I1 => current_state(2),
      I2 => p_3_in,
      I3 => current_state(1),
      I4 => current_state(0),
      O => \o_data_OBUF[1]_inst_i_5_n_0\
    );
\o_data_OBUF[1]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F3F000F000F000"
    )
        port map (
      I0 => \mem_inout_reg_n_0_[3]\,
      I1 => \mem_inout_reg_n_0_[7]\,
      I2 => current_state(3),
      I3 => current_state(2),
      I4 => current_state(1),
      I5 => current_state(0),
      O => \o_data_OBUF[1]_inst_i_6_n_0\
    );
o_en_OBUF_inst_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00050AAB"
    )
        port map (
      I0 => current_state(1),
      I1 => o_en_OBUF_inst_i_2_n_0,
      I2 => current_state(3),
      I3 => current_state(2),
      I4 => current_state(0),
      O => o_en_OBUF
    );
o_en_OBUF_inst_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => next_state(0),
      I1 => next_state(1),
      I2 => next_state(3),
      I3 => next_state(2),
      O => o_en_OBUF_inst_i_2_n_0
    );
o_we_OBUF_inst_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0060"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(2),
      I2 => current_state(1),
      I3 => current_state(0),
      O => o_we_OBUF
    );
output_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => output_i_2_n_0,
      I1 => output_i_3_n_0,
      I2 => output_i_4_n_0,
      I3 => output_i_5_n_0,
      I4 => output_i_6_n_0,
      O => \^u\
    );
output_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0030000008000800"
    )
        port map (
      I0 => \mem_inout_reg_n_0_[1]\,
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => current_state(3),
      I4 => p_3_in,
      I5 => current_state(2),
      O => output_i_2_n_0
    );
output_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => \mem_inout_reg_n_0_[3]\,
      I1 => current_state(2),
      I2 => current_state(3),
      I3 => current_state(1),
      I4 => current_state(0),
      O => output_i_3_n_0
    );
output_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100101001000000"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(0),
      I2 => current_state(3),
      I3 => p_5_in,
      I4 => current_state(2),
      I5 => \mem_inout_reg_n_0_[2]\,
      O => output_i_4_n_0
    );
output_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0030000008000800"
    )
        port map (
      I0 => \mem_inout_reg_n_0_[0]\,
      I1 => current_state(1),
      I2 => current_state(0),
      I3 => current_state(3),
      I4 => p_4_in,
      I5 => current_state(2),
      O => output_i_5_n_0
    );
output_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(3),
      I2 => \mem_inout_reg_n_0_[7]\,
      I3 => current_state(1),
      I4 => current_state(0),
      O => output_i_6_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity string_manager is
  port (
    o_data_OBUF : out STD_LOGIC_VECTOR ( 5 downto 0 );
    component_reset : out STD_LOGIC;
    i_start_IBUF : in STD_LOGIC;
    i_rst_IBUF : in STD_LOGIC;
    component_enable : in STD_LOGIC;
    i_clk_IBUF_BUFG : in STD_LOGIC;
    \half_z_inout_shifter_reg[3]_0\ : in STD_LOGIC;
    u : in STD_LOGIC;
    FF2_signal : in STD_LOGIC;
    \half_z_inout_shifter_reg[2]_0\ : in STD_LOGIC
  );
end string_manager;

architecture STRUCTURE of string_manager is
  signal \^component_reset\ : STD_LOGIC;
  signal half_z_inout_shifter : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \half_z_inout_shifter[2]_i_1_n_0\ : STD_LOGIC;
  signal \half_z_inout_shifter[3]_i_1_n_0\ : STD_LOGIC;
  signal \half_z_inout_shifter[7]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \o_data_OBUF[2]_inst_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \o_data_OBUF[3]_inst_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \o_data_OBUF[4]_inst_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \o_data_OBUF[5]_inst_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \o_data_OBUF[6]_inst_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \o_data_OBUF[7]_inst_i_1\ : label is "soft_lutpair13";
begin
  component_reset <= \^component_reset\;
component_reset_BUFG_inst_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => i_rst_IBUF,
      I1 => i_start_IBUF,
      O => \^component_reset\
    );
\half_z_inout_shifter[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00ACFFFF00AC0000"
    )
        port map (
      I0 => u,
      I1 => \half_z_inout_shifter_reg[3]_0\,
      I2 => \half_z_inout_shifter_reg[2]_0\,
      I3 => \^component_reset\,
      I4 => component_enable,
      I5 => half_z_inout_shifter(2),
      O => \half_z_inout_shifter[2]_i_1_n_0\
    );
\half_z_inout_shifter[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0CFFFF0A0C0000"
    )
        port map (
      I0 => \half_z_inout_shifter_reg[3]_0\,
      I1 => u,
      I2 => \^component_reset\,
      I3 => FF2_signal,
      I4 => component_enable,
      I5 => half_z_inout_shifter(3),
      O => \half_z_inout_shifter[3]_i_1_n_0\
    );
\half_z_inout_shifter[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => i_start_IBUF,
      I1 => i_rst_IBUF,
      I2 => component_enable,
      O => \half_z_inout_shifter[7]_i_1_n_0\
    );
\half_z_inout_shifter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \half_z_inout_shifter[2]_i_1_n_0\,
      Q => half_z_inout_shifter(2),
      R => '0'
    );
\half_z_inout_shifter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \half_z_inout_shifter[3]_i_1_n_0\,
      Q => half_z_inout_shifter(3),
      R => '0'
    );
\half_z_inout_shifter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => component_enable,
      D => half_z_inout_shifter(2),
      Q => half_z_inout_shifter(4),
      R => \half_z_inout_shifter[7]_i_1_n_0\
    );
\half_z_inout_shifter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => component_enable,
      D => half_z_inout_shifter(3),
      Q => half_z_inout_shifter(5),
      R => \half_z_inout_shifter[7]_i_1_n_0\
    );
\half_z_inout_shifter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => component_enable,
      D => half_z_inout_shifter(4),
      Q => half_z_inout_shifter(6),
      R => \half_z_inout_shifter[7]_i_1_n_0\
    );
\half_z_inout_shifter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => component_enable,
      D => half_z_inout_shifter(5),
      Q => half_z_inout_shifter(7),
      R => \half_z_inout_shifter[7]_i_1_n_0\
    );
\o_data_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => half_z_inout_shifter(2),
      I1 => i_start_IBUF,
      I2 => i_rst_IBUF,
      O => o_data_OBUF(0)
    );
\o_data_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => half_z_inout_shifter(3),
      I1 => i_start_IBUF,
      I2 => i_rst_IBUF,
      O => o_data_OBUF(1)
    );
\o_data_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => half_z_inout_shifter(4),
      I1 => i_start_IBUF,
      I2 => i_rst_IBUF,
      O => o_data_OBUF(2)
    );
\o_data_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => half_z_inout_shifter(5),
      I1 => i_start_IBUF,
      I2 => i_rst_IBUF,
      O => o_data_OBUF(3)
    );
\o_data_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => half_z_inout_shifter(6),
      I1 => i_start_IBUF,
      I2 => i_rst_IBUF,
      O => o_data_OBUF(4)
    );
\o_data_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => half_z_inout_shifter(7),
      I1 => i_start_IBUF,
      I2 => i_rst_IBUF,
      O => o_data_OBUF(5)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity convolutional_encoder is
  port (
    output : out STD_LOGIC;
    FF2_signal : out STD_LOGIC;
    output_reg : out STD_LOGIC;
    component_enable : in STD_LOGIC;
    u : in STD_LOGIC;
    i_clk_IBUF_BUFG : in STD_LOGIC;
    component_reset_BUFG : in STD_LOGIC
  );
end convolutional_encoder;

architecture STRUCTURE of convolutional_encoder is
  signal \^ff2_signal\ : STD_LOGIC;
  signal \^output\ : STD_LOGIC;
begin
  FF2_signal <= \^ff2_signal\;
  output <= \^output\;
FF1: entity work.FF_D
     port map (
      FF2_signal => \^ff2_signal\,
      component_enable => component_enable,
      component_reset_BUFG => component_reset_BUFG,
      i_clk_IBUF_BUFG => i_clk_IBUF_BUFG,
      output => \^output\,
      output_reg_0 => output_reg,
      u => u
    );
FF2: entity work.FF_D_0
     port map (
      FF2_signal => \^ff2_signal\,
      component_enable => component_enable,
      component_reset_BUFG => component_reset_BUFG,
      i_clk_IBUF_BUFG => i_clk_IBUF_BUFG,
      output => \^output\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity project_reti_logiche is
  port (
    i_clk : in STD_LOGIC;
    i_rst : in STD_LOGIC;
    i_start : in STD_LOGIC;
    i_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_address : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_done : out STD_LOGIC;
    o_en : out STD_LOGIC;
    o_we : out STD_LOGIC;
    o_data : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of project_reti_logiche : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of project_reti_logiche : entity is "2908cd79";
end project_reti_logiche;

architecture STRUCTURE of project_reti_logiche is
  signal FF2_signal : STD_LOGIC;
  signal component_enable : STD_LOGIC;
  signal component_reset : STD_LOGIC;
  signal component_reset_BUFG : STD_LOGIC;
  signal cont_n_5 : STD_LOGIC;
  signal encoder_n_2 : STD_LOGIC;
  signal i_clk_IBUF : STD_LOGIC;
  signal i_clk_IBUF_BUFG : STD_LOGIC;
  signal i_data_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal i_rst_IBUF : STD_LOGIC;
  signal i_start_IBUF : STD_LOGIC;
  signal o_address_OBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal o_data_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal o_done_OBUF : STD_LOGIC;
  signal o_en_OBUF : STD_LOGIC;
  signal o_we_OBUF : STD_LOGIC;
  signal output : STD_LOGIC;
  signal u : STD_LOGIC;
begin
component_reset_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => component_reset,
      O => component_reset_BUFG
    );
cont: entity work.controller
     port map (
      D(7 downto 0) => i_data_IBUF(7 downto 0),
      FF2_signal => FF2_signal,
      Q(15 downto 0) => o_address_OBUF(15 downto 0),
      component_enable => component_enable,
      component_reset_BUFG => component_reset_BUFG,
      \current_state_reg[2]_0\ => cont_n_5,
      i_clk_IBUF => i_clk_IBUF,
      i_clk_IBUF_BUFG => i_clk_IBUF_BUFG,
      i_rst_IBUF => i_rst_IBUF,
      i_start_IBUF => i_start_IBUF,
      o_data_OBUF(1 downto 0) => o_data_OBUF(1 downto 0),
      o_done_OBUF => o_done_OBUF,
      o_en_OBUF => o_en_OBUF,
      o_we_OBUF => o_we_OBUF,
      output => output,
      u => u
    );
encoder: entity work.convolutional_encoder
     port map (
      FF2_signal => FF2_signal,
      component_enable => component_enable,
      component_reset_BUFG => component_reset_BUFG,
      i_clk_IBUF_BUFG => i_clk_IBUF_BUFG,
      output => output,
      output_reg => encoder_n_2,
      u => u
    );
i_clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => i_clk_IBUF,
      O => i_clk_IBUF_BUFG
    );
i_clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => i_clk,
      O => i_clk_IBUF
    );
\i_data_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(0),
      O => i_data_IBUF(0)
    );
\i_data_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(1),
      O => i_data_IBUF(1)
    );
\i_data_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(2),
      O => i_data_IBUF(2)
    );
\i_data_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(3),
      O => i_data_IBUF(3)
    );
\i_data_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(4),
      O => i_data_IBUF(4)
    );
\i_data_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(5),
      O => i_data_IBUF(5)
    );
\i_data_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(6),
      O => i_data_IBUF(6)
    );
\i_data_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(7),
      O => i_data_IBUF(7)
    );
i_rst_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => i_rst,
      O => i_rst_IBUF
    );
i_start_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => i_start,
      O => i_start_IBUF
    );
\o_address_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(0),
      O => o_address(0)
    );
\o_address_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(10),
      O => o_address(10)
    );
\o_address_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(11),
      O => o_address(11)
    );
\o_address_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(12),
      O => o_address(12)
    );
\o_address_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(13),
      O => o_address(13)
    );
\o_address_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(14),
      O => o_address(14)
    );
\o_address_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(15),
      O => o_address(15)
    );
\o_address_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(1),
      O => o_address(1)
    );
\o_address_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(2),
      O => o_address(2)
    );
\o_address_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(3),
      O => o_address(3)
    );
\o_address_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(4),
      O => o_address(4)
    );
\o_address_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(5),
      O => o_address(5)
    );
\o_address_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(6),
      O => o_address(6)
    );
\o_address_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(7),
      O => o_address(7)
    );
\o_address_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(8),
      O => o_address(8)
    );
\o_address_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(9),
      O => o_address(9)
    );
\o_data_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(0),
      O => o_data(0)
    );
\o_data_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(1),
      O => o_data(1)
    );
\o_data_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(2),
      O => o_data(2)
    );
\o_data_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(3),
      O => o_data(3)
    );
\o_data_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(4),
      O => o_data(4)
    );
\o_data_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(5),
      O => o_data(5)
    );
\o_data_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(6),
      O => o_data(6)
    );
\o_data_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(7),
      O => o_data(7)
    );
o_done_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => o_done_OBUF,
      O => o_done
    );
o_en_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => o_en_OBUF,
      O => o_en
    );
o_we_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => o_we_OBUF,
      O => o_we
    );
str_mng: entity work.string_manager
     port map (
      FF2_signal => FF2_signal,
      component_enable => component_enable,
      component_reset => component_reset,
      \half_z_inout_shifter_reg[2]_0\ => encoder_n_2,
      \half_z_inout_shifter_reg[3]_0\ => cont_n_5,
      i_clk_IBUF_BUFG => i_clk_IBUF_BUFG,
      i_rst_IBUF => i_rst_IBUF,
      i_start_IBUF => i_start_IBUF,
      o_data_OBUF(5 downto 0) => o_data_OBUF(7 downto 2),
      u => u
    );
end STRUCTURE;
