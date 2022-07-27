-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
-- Date        : Wed Jul 27 14:00:45 2022
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
    component_enable : in STD_LOGIC;
    u : in STD_LOGIC;
    i_clk_IBUF_BUFG : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end FF_D;

architecture STRUCTURE of FF_D is
begin
output_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => component_enable,
      CLR => AR(0),
      D => u,
      Q => output
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FF_D_0 is
  port (
    FF2_signal : out STD_LOGIC;
    o_data_OBUF : out STD_LOGIC_VECTOR ( 0 to 0 );
    component_enable : in STD_LOGIC;
    output : in STD_LOGIC;
    i_clk_IBUF_BUFG : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    u : in STD_LOGIC;
    i_rst_IBUF : in STD_LOGIC;
    i_start_IBUF : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of FF_D_0 : entity is "FF_D";
end FF_D_0;

architecture STRUCTURE of FF_D_0 is
  signal \^ff2_signal\ : STD_LOGIC;
begin
  FF2_signal <= \^ff2_signal\;
\o_data_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00960000"
    )
        port map (
      I0 => \^ff2_signal\,
      I1 => u,
      I2 => output,
      I3 => i_rst_IBUF,
      I4 => i_start_IBUF,
      O => o_data_OBUF(0)
    );
output_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => component_enable,
      CLR => AR(0),
      D => output,
      Q => \^ff2_signal\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity controller is
  port (
    o_done_OBUF : out STD_LOGIC;
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    component_enable : out STD_LOGIC;
    i_start : out STD_LOGIC;
    u : out STD_LOGIC;
    o_en_OBUF : out STD_LOGIC;
    o_we_OBUF : out STD_LOGIC;
    o_data_OBUF : out STD_LOGIC_VECTOR ( 0 to 0 );
    i_rst : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 10 downto 0 );
    i_clk_IBUF_BUFG : in STD_LOGIC;
    i_start_IBUF : in STD_LOGIC;
    i_clk_IBUF : in STD_LOGIC;
    i_rst_IBUF : in STD_LOGIC;
    FF2_signal : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end controller;

architecture STRUCTURE of controller is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal base_read0 : STD_LOGIC;
  signal \base_read[7]_i_3_n_0\ : STD_LOGIC;
  signal base_read_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \base_write[10]_i_3_n_0\ : STD_LOGIC;
  signal base_write_reg : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \^component_enable\ : STD_LOGIC;
  signal component_enable0 : STD_LOGIC;
  signal component_enable00_out : STD_LOGIC;
  signal current_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal done0 : STD_LOGIC;
  signal done_reg_i_3_n_0 : STD_LOGIC;
  signal done_reg_i_5_n_0 : STD_LOGIC;
  signal done_reg_i_6_n_0 : STD_LOGIC;
  signal done_reg_i_7_n_0 : STD_LOGIC;
  signal done_reg_i_8_n_0 : STD_LOGIC;
  signal \^i_start\ : STD_LOGIC;
  signal mem_address1 : STD_LOGIC;
  signal \mem_address_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_address_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \mem_address_reg[10]_i_2_n_0\ : STD_LOGIC;
  signal \mem_address_reg[10]_i_4_n_0\ : STD_LOGIC;
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
  signal minusOp : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal next_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \next_state_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \next_state_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \next_state_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \next_state_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \next_state_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \number_of_words[0]_C_i_1_n_0\ : STD_LOGIC;
  signal \number_of_words[1]_C_i_1_n_0\ : STD_LOGIC;
  signal \number_of_words[1]_C_i_2_n_0\ : STD_LOGIC;
  signal \number_of_words[1]_P_i_1_n_0\ : STD_LOGIC;
  signal \number_of_words[2]_C_i_1_n_0\ : STD_LOGIC;
  signal \number_of_words[2]_P_i_2_n_0\ : STD_LOGIC;
  signal \number_of_words[3]_C_i_1_n_0\ : STD_LOGIC;
  signal \number_of_words[3]_P_i_2_n_0\ : STD_LOGIC;
  signal \number_of_words[4]_C_i_1_n_0\ : STD_LOGIC;
  signal \number_of_words[5]_C_i_1_n_0\ : STD_LOGIC;
  signal \number_of_words[5]_P_i_2_n_0\ : STD_LOGIC;
  signal \number_of_words[5]_P_i_3_n_0\ : STD_LOGIC;
  signal \number_of_words[6]_C_i_1_n_0\ : STD_LOGIC;
  signal \number_of_words[7]_C_i_1_n_0\ : STD_LOGIC;
  signal \number_of_words[7]_P_i_1_n_0\ : STD_LOGIC;
  signal \number_of_words[7]_P_i_3_n_0\ : STD_LOGIC;
  signal \number_of_words[7]_P_i_4_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[0]_C_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[0]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[0]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[0]_LDC_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[0]_P_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[1]_C_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[1]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[1]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[1]_LDC_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[1]_P_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[2]_C_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[2]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[2]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[2]_LDC_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[2]_P_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[3]_C_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[3]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[3]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[3]_LDC_n_0\ : STD_LOGIC;
  signal \number_of_words_reg[3]_P_n_0\ : STD_LOGIC;
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
  signal output_i_2_n_0 : STD_LOGIC;
  signal output_i_3_n_0 : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal p_4_in : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sel : STD_LOGIC;
  signal \^u\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \base_read[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \base_read[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \base_read[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \base_read[4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \base_read[6]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \base_read[7]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \base_write[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \base_write[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \base_write[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \base_write[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \base_write[6]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \base_write[7]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \base_write[8]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \base_write[9]_i_1\ : label is "soft_lutpair6";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of component_enable_reg : label is "LDP";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of component_enable_reg : label is "VCC:GE";
  attribute SOFT_HLUTNM of component_enable_reg_i_1 : label is "soft_lutpair2";
  attribute XILINX_LEGACY_PRIM of done_reg : label is "LDP";
  attribute XILINX_TRANSFORM_PINMAP of done_reg : label is "VCC:GE";
  attribute SOFT_HLUTNM of done_reg_i_4 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of done_reg_i_5 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of done_reg_i_6 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of done_reg_i_7 : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM of \mem_address_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \mem_address_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \mem_address_reg[10]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \mem_address_reg[10]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \mem_address_reg[10]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \mem_address_reg[10]_i_4\ : label is "soft_lutpair4";
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
  attribute XILINX_LEGACY_PRIM of \mem_address_reg[8]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \mem_address_reg[8]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \mem_address_reg[8]_i_1\ : label is "soft_lutpair4";
  attribute XILINX_LEGACY_PRIM of \mem_address_reg[9]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \mem_address_reg[9]\ : label is "VCC:GE";
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
  attribute SOFT_HLUTNM of \mem_inout_reg[7]_i_1\ : label is "soft_lutpair2";
  attribute XILINX_LEGACY_PRIM of \next_state_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \next_state_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \next_state_reg[0]_i_1\ : label is "soft_lutpair3";
  attribute XILINX_LEGACY_PRIM of \next_state_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \next_state_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \next_state_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \next_state_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \next_state_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \next_state_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \number_of_words[0]_C_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \number_of_words[1]_C_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \number_of_words[2]_C_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \number_of_words[2]_P_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \number_of_words[3]_P_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \number_of_words[4]_C_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \number_of_words[5]_P_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \number_of_words[5]_P_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \number_of_words[5]_P_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \number_of_words[6]_C_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \number_of_words[7]_P_i_3\ : label is "soft_lutpair8";
  attribute XILINX_LEGACY_PRIM of \number_of_words_reg[0]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \number_of_words_reg[0]_LDC\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \number_of_words_reg[1]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \number_of_words_reg[1]_LDC\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \number_of_words_reg[2]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \number_of_words_reg[2]_LDC\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \number_of_words_reg[3]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \number_of_words_reg[3]_LDC\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \number_of_words_reg[4]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \number_of_words_reg[4]_LDC\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \number_of_words_reg[5]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \number_of_words_reg[5]_LDC\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \number_of_words_reg[6]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \number_of_words_reg[6]_LDC\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \number_of_words_reg[7]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \number_of_words_reg[7]_LDC\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \o_data_OBUF[1]_inst_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of o_en_OBUF_inst_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of o_we_OBUF_inst_i_1 : label is "soft_lutpair12";
begin
  AR(0) <= \^ar\(0);
  component_enable <= \^component_enable\;
  i_start <= \^i_start\;
  u <= \^u\;
\base_read[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => base_read_reg(0),
      O => \plusOp__0\(0)
    );
\base_read[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => base_read_reg(0),
      I1 => base_read_reg(1),
      O => \plusOp__0\(1)
    );
\base_read[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => base_read_reg(2),
      I1 => base_read_reg(0),
      I2 => base_read_reg(1),
      O => \plusOp__0\(2)
    );
\base_read[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => base_read_reg(3),
      I1 => base_read_reg(1),
      I2 => base_read_reg(0),
      I3 => base_read_reg(2),
      O => \plusOp__0\(3)
    );
\base_read[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => base_read_reg(4),
      I1 => base_read_reg(2),
      I2 => base_read_reg(0),
      I3 => base_read_reg(1),
      I4 => base_read_reg(3),
      O => \plusOp__0\(4)
    );
\base_read[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => base_read_reg(3),
      I1 => base_read_reg(1),
      I2 => base_read_reg(0),
      I3 => base_read_reg(2),
      I4 => base_read_reg(4),
      I5 => base_read_reg(5),
      O => \plusOp__0\(5)
    );
\base_read[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => base_read_reg(6),
      I1 => \base_read[7]_i_3_n_0\,
      O => \plusOp__0\(6)
    );
\base_read[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0204"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(1),
      I2 => current_state(3),
      I3 => current_state(2),
      O => base_read0
    );
\base_read[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => base_read_reg(7),
      I1 => \base_read[7]_i_3_n_0\,
      I2 => base_read_reg(6),
      O => \plusOp__0\(7)
    );
\base_read[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => base_read_reg(5),
      I1 => base_read_reg(4),
      I2 => base_read_reg(2),
      I3 => base_read_reg(0),
      I4 => base_read_reg(1),
      I5 => base_read_reg(3),
      O => \base_read[7]_i_3_n_0\
    );
\base_read_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => base_read0,
      CLR => \^ar\(0),
      D => \plusOp__0\(0),
      Q => base_read_reg(0)
    );
\base_read_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => base_read0,
      CLR => \^ar\(0),
      D => \plusOp__0\(1),
      Q => base_read_reg(1)
    );
\base_read_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => base_read0,
      CLR => \^ar\(0),
      D => \plusOp__0\(2),
      Q => base_read_reg(2)
    );
\base_read_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => base_read0,
      CLR => \^ar\(0),
      D => \plusOp__0\(3),
      Q => base_read_reg(3)
    );
\base_read_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => base_read0,
      CLR => \^ar\(0),
      D => \plusOp__0\(4),
      Q => base_read_reg(4)
    );
\base_read_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => base_read0,
      CLR => \^ar\(0),
      D => \plusOp__0\(5),
      Q => base_read_reg(5)
    );
\base_read_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => base_read0,
      CLR => \^ar\(0),
      D => \plusOp__0\(6),
      Q => base_read_reg(6)
    );
\base_read_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => base_read0,
      CLR => \^ar\(0),
      D => \plusOp__0\(7),
      Q => base_read_reg(7)
    );
\base_write[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => base_write_reg(0),
      O => plusOp(0)
    );
\base_write[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(0),
      I2 => current_state(1),
      O => sel
    );
\base_write[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => base_write_reg(10),
      I1 => base_write_reg(8),
      I2 => base_write_reg(6),
      I3 => \base_write[10]_i_3_n_0\,
      I4 => base_write_reg(7),
      I5 => base_write_reg(9),
      O => plusOp(10)
    );
\base_write[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => base_write_reg(5),
      I1 => base_write_reg(4),
      I2 => base_write_reg(2),
      I3 => base_write_reg(0),
      I4 => base_write_reg(1),
      I5 => base_write_reg(3),
      O => \base_write[10]_i_3_n_0\
    );
\base_write[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => base_write_reg(0),
      I1 => base_write_reg(1),
      O => plusOp(1)
    );
\base_write[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => base_write_reg(2),
      I1 => base_write_reg(0),
      I2 => base_write_reg(1),
      O => plusOp(2)
    );
\base_write[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => base_write_reg(3),
      I1 => base_write_reg(1),
      I2 => base_write_reg(0),
      I3 => base_write_reg(2),
      O => plusOp(3)
    );
\base_write[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => base_write_reg(4),
      I1 => base_write_reg(2),
      I2 => base_write_reg(0),
      I3 => base_write_reg(1),
      I4 => base_write_reg(3),
      O => plusOp(4)
    );
\base_write[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => base_write_reg(3),
      I1 => base_write_reg(1),
      I2 => base_write_reg(0),
      I3 => base_write_reg(2),
      I4 => base_write_reg(4),
      I5 => base_write_reg(5),
      O => plusOp(5)
    );
\base_write[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => base_write_reg(6),
      I1 => \base_write[10]_i_3_n_0\,
      O => plusOp(6)
    );
\base_write[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => base_write_reg(7),
      I1 => \base_write[10]_i_3_n_0\,
      I2 => base_write_reg(6),
      O => plusOp(7)
    );
\base_write[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => base_write_reg(8),
      I1 => base_write_reg(6),
      I2 => \base_write[10]_i_3_n_0\,
      I3 => base_write_reg(7),
      O => plusOp(8)
    );
\base_write[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => base_write_reg(9),
      I1 => base_write_reg(7),
      I2 => \base_write[10]_i_3_n_0\,
      I3 => base_write_reg(6),
      I4 => base_write_reg(8),
      O => plusOp(9)
    );
\base_write_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => sel,
      CLR => \^ar\(0),
      D => plusOp(0),
      Q => base_write_reg(0)
    );
\base_write_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => sel,
      CLR => \^ar\(0),
      D => plusOp(10),
      Q => base_write_reg(10)
    );
\base_write_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => sel,
      CLR => \^ar\(0),
      D => plusOp(1),
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
      CLR => \^ar\(0),
      D => plusOp(2),
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
      D => plusOp(3),
      PRE => \^ar\(0),
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
      CLR => \^ar\(0),
      D => plusOp(4),
      Q => base_write_reg(4)
    );
\base_write_reg[5]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => sel,
      D => plusOp(5),
      PRE => \^ar\(0),
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
      D => plusOp(6),
      PRE => \^ar\(0),
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
      D => plusOp(7),
      PRE => \^ar\(0),
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
      D => plusOp(8),
      PRE => \^ar\(0),
      Q => base_write_reg(8)
    );
\base_write_reg[9]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => sel,
      D => plusOp(9),
      PRE => \^ar\(0),
      Q => base_write_reg(9)
    );
component_enable_reg: unisim.vcomponents.LDPE
    generic map(
      INIT => '0'
    )
        port map (
      D => '0',
      G => component_enable00_out,
      GE => '1',
      PRE => component_enable0,
      Q => \^component_enable\
    );
component_enable_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(0),
      I2 => current_state(3),
      I3 => current_state(2),
      I4 => i_clk_IBUF,
      O => component_enable00_out
    );
component_enable_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(2),
      I2 => current_state(1),
      I3 => current_state(0),
      I4 => i_clk_IBUF,
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
      G => \^ar\(0),
      GE => '1',
      PRE => done0,
      Q => o_done_OBUF
    );
done_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => i_rst_IBUF,
      I1 => i_start_IBUF,
      O => \^ar\(0)
    );
done_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => done_reg_i_3_n_0,
      I1 => current_state(2),
      I2 => current_state(3),
      I3 => current_state(0),
      I4 => current_state(1),
      I5 => \^i_start\,
      O => done0
    );
done_reg_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => done_reg_i_5_n_0,
      I1 => \number_of_words[2]_P_i_2_n_0\,
      I2 => done_reg_i_6_n_0,
      I3 => \number_of_words[5]_P_i_2_n_0\,
      I4 => done_reg_i_7_n_0,
      I5 => done_reg_i_8_n_0,
      O => done_reg_i_3_n_0
    );
done_reg_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_start_IBUF,
      I1 => i_rst_IBUF,
      O => \^i_start\
    );
done_reg_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \number_of_words_reg[2]_P_n_0\,
      I1 => \number_of_words_reg[2]_LDC_n_0\,
      I2 => \number_of_words_reg[2]_C_n_0\,
      O => done_reg_i_5_n_0
    );
done_reg_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \number_of_words_reg[3]_P_n_0\,
      I1 => \number_of_words_reg[3]_LDC_n_0\,
      I2 => \number_of_words_reg[3]_C_n_0\,
      O => done_reg_i_6_n_0
    );
done_reg_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \number_of_words_reg[5]_P_n_0\,
      I1 => \number_of_words_reg[5]_LDC_n_0\,
      I2 => \number_of_words_reg[5]_C_n_0\,
      O => done_reg_i_7_n_0
    );
done_reg_i_8: unisim.vcomponents.LUT6
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
      O => done_reg_i_8_n_0
    );
\half_z_inout_shifter[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^component_enable\,
      I1 => i_rst_IBUF,
      I2 => i_start_IBUF,
      O => i_rst
    );
\mem_address_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mem_address_reg[0]_i_1_n_0\,
      G => \mem_address_reg[10]_i_2_n_0\,
      GE => '1',
      Q => Q(0)
    );
\mem_address_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEF22222220"
    )
        port map (
      I0 => base_write_reg(0),
      I1 => \number_of_words[7]_P_i_1_n_0\,
      I2 => next_state(3),
      I3 => next_state(2),
      I4 => next_state(1),
      I5 => base_read_reg(0),
      O => \mem_address_reg[0]_i_1_n_0\
    );
\mem_address_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => mem_address1,
      D => \mem_address_reg[10]_i_1_n_0\,
      G => \mem_address_reg[10]_i_2_n_0\,
      GE => '1',
      Q => Q(10)
    );
\mem_address_reg[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AAA8"
    )
        port map (
      I0 => base_write_reg(10),
      I1 => next_state(1),
      I2 => next_state(2),
      I3 => next_state(3),
      I4 => \number_of_words[7]_P_i_1_n_0\,
      O => \mem_address_reg[10]_i_1_n_0\
    );
\mem_address_reg[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10FF"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(1),
      I2 => current_state(3),
      I3 => \mem_address_reg[10]_i_4_n_0\,
      O => \mem_address_reg[10]_i_2_n_0\
    );
\mem_address_reg[10]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF01"
    )
        port map (
      I0 => next_state(1),
      I1 => next_state(2),
      I2 => next_state(3),
      I3 => \number_of_words[7]_P_i_1_n_0\,
      O => mem_address1
    );
\mem_address_reg[10]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5554"
    )
        port map (
      I0 => \number_of_words[7]_P_i_1_n_0\,
      I1 => next_state(3),
      I2 => next_state(2),
      I3 => next_state(1),
      O => \mem_address_reg[10]_i_4_n_0\
    );
\mem_address_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mem_address_reg[1]_i_1_n_0\,
      G => \mem_address_reg[10]_i_2_n_0\,
      GE => '1',
      Q => Q(1)
    );
\mem_address_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEF22222220"
    )
        port map (
      I0 => base_write_reg(1),
      I1 => \number_of_words[7]_P_i_1_n_0\,
      I2 => next_state(3),
      I3 => next_state(2),
      I4 => next_state(1),
      I5 => base_read_reg(1),
      O => \mem_address_reg[1]_i_1_n_0\
    );
\mem_address_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mem_address_reg[2]_i_1_n_0\,
      G => \mem_address_reg[10]_i_2_n_0\,
      GE => '1',
      Q => Q(2)
    );
\mem_address_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEF22222220"
    )
        port map (
      I0 => base_write_reg(2),
      I1 => \number_of_words[7]_P_i_1_n_0\,
      I2 => next_state(3),
      I3 => next_state(2),
      I4 => next_state(1),
      I5 => base_read_reg(2),
      O => \mem_address_reg[2]_i_1_n_0\
    );
\mem_address_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mem_address_reg[3]_i_1_n_0\,
      G => \mem_address_reg[10]_i_2_n_0\,
      GE => '1',
      Q => Q(3)
    );
\mem_address_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEF22222220"
    )
        port map (
      I0 => base_write_reg(3),
      I1 => \number_of_words[7]_P_i_1_n_0\,
      I2 => next_state(3),
      I3 => next_state(2),
      I4 => next_state(1),
      I5 => base_read_reg(3),
      O => \mem_address_reg[3]_i_1_n_0\
    );
\mem_address_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mem_address_reg[4]_i_1_n_0\,
      G => \mem_address_reg[10]_i_2_n_0\,
      GE => '1',
      Q => Q(4)
    );
\mem_address_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEF22222220"
    )
        port map (
      I0 => base_write_reg(4),
      I1 => \number_of_words[7]_P_i_1_n_0\,
      I2 => next_state(3),
      I3 => next_state(2),
      I4 => next_state(1),
      I5 => base_read_reg(4),
      O => \mem_address_reg[4]_i_1_n_0\
    );
\mem_address_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mem_address_reg[5]_i_1_n_0\,
      G => \mem_address_reg[10]_i_2_n_0\,
      GE => '1',
      Q => Q(5)
    );
\mem_address_reg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEF22222220"
    )
        port map (
      I0 => base_write_reg(5),
      I1 => \number_of_words[7]_P_i_1_n_0\,
      I2 => next_state(3),
      I3 => next_state(2),
      I4 => next_state(1),
      I5 => base_read_reg(5),
      O => \mem_address_reg[5]_i_1_n_0\
    );
\mem_address_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mem_address_reg[6]_i_1_n_0\,
      G => \mem_address_reg[10]_i_2_n_0\,
      GE => '1',
      Q => Q(6)
    );
\mem_address_reg[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEF22222220"
    )
        port map (
      I0 => base_write_reg(6),
      I1 => \number_of_words[7]_P_i_1_n_0\,
      I2 => next_state(3),
      I3 => next_state(2),
      I4 => next_state(1),
      I5 => base_read_reg(6),
      O => \mem_address_reg[6]_i_1_n_0\
    );
\mem_address_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mem_address_reg[7]_i_1_n_0\,
      G => \mem_address_reg[10]_i_2_n_0\,
      GE => '1',
      Q => Q(7)
    );
\mem_address_reg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEF22222220"
    )
        port map (
      I0 => base_write_reg(7),
      I1 => \number_of_words[7]_P_i_1_n_0\,
      I2 => next_state(3),
      I3 => next_state(2),
      I4 => next_state(1),
      I5 => base_read_reg(7),
      O => \mem_address_reg[7]_i_1_n_0\
    );
\mem_address_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => mem_address1,
      D => \mem_address_reg[8]_i_1_n_0\,
      G => \mem_address_reg[10]_i_2_n_0\,
      GE => '1',
      Q => Q(8)
    );
\mem_address_reg[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AAA8"
    )
        port map (
      I0 => base_write_reg(8),
      I1 => next_state(1),
      I2 => next_state(2),
      I3 => next_state(3),
      I4 => \number_of_words[7]_P_i_1_n_0\,
      O => \mem_address_reg[8]_i_1_n_0\
    );
\mem_address_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => mem_address1,
      D => \mem_address_reg[9]_i_1_n_0\,
      G => \mem_address_reg[10]_i_2_n_0\,
      GE => '1',
      Q => Q(9)
    );
\mem_address_reg[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AAA8"
    )
        port map (
      I0 => base_write_reg(9),
      I1 => next_state(1),
      I2 => next_state(2),
      I3 => next_state(3),
      I4 => \number_of_words[7]_P_i_1_n_0\,
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
      INIT => X"00000004"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(2),
      I2 => i_clk_IBUF,
      I3 => current_state(1),
      I4 => current_state(0),
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
\next_state_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D500"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(3),
      I2 => current_state(2),
      I3 => i_start_IBUF,
      O => \next_state_reg[0]_i_1_n_0\
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
\next_state_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000AA22AAA0000"
    )
        port map (
      I0 => i_start_IBUF,
      I1 => done_reg_i_3_n_0,
      I2 => current_state(3),
      I3 => current_state(2),
      I4 => current_state(0),
      I5 => current_state(1),
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
\next_state_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AA08A20A2A0A0A0"
    )
        port map (
      I0 => i_start_IBUF,
      I1 => current_state(3),
      I2 => current_state(2),
      I3 => current_state(1),
      I4 => done_reg_i_3_n_0,
      I5 => current_state(0),
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
      INIT => X"A888A8088A888888"
    )
        port map (
      I0 => i_start_IBUF,
      I1 => current_state(3),
      I2 => current_state(2),
      I3 => current_state(1),
      I4 => done_reg_i_3_n_0,
      I5 => current_state(0),
      O => \next_state_reg[3]_i_1_n_0\
    );
\next_state_reg[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"57FFFFFF5FFFFFFF"
    )
        port map (
      I0 => i_start_IBUF,
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => current_state(3),
      I4 => current_state(2),
      I5 => done_reg_i_3_n_0,
      O => \next_state_reg[3]_i_2_n_0\
    );
\number_of_words[0]_C_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F70"
    )
        port map (
      I0 => \number_of_words_reg[0]_LDC_n_0\,
      I1 => \number_of_words_reg[0]_P_n_0\,
      I2 => \number_of_words[7]_P_i_1_n_0\,
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
      O => minusOp(0)
    );
\number_of_words[1]_C_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6FF9500"
    )
        port map (
      I0 => \number_of_words[1]_C_i_2_n_0\,
      I1 => \number_of_words_reg[1]_LDC_n_0\,
      I2 => \number_of_words_reg[1]_P_n_0\,
      I3 => \number_of_words[7]_P_i_1_n_0\,
      I4 => \number_of_words_reg[1]_C_n_0\,
      O => \number_of_words[1]_C_i_1_n_0\
    );
\number_of_words[1]_C_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \number_of_words_reg[0]_P_n_0\,
      I1 => \number_of_words_reg[0]_LDC_n_0\,
      I2 => \number_of_words_reg[0]_C_n_0\,
      O => \number_of_words[1]_C_i_2_n_0\
    );
\number_of_words[1]_P_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2E2E21D1D1DE21D"
    )
        port map (
      I0 => \number_of_words_reg[0]_C_n_0\,
      I1 => \number_of_words_reg[0]_LDC_n_0\,
      I2 => \number_of_words_reg[0]_P_n_0\,
      I3 => \number_of_words_reg[1]_C_n_0\,
      I4 => \number_of_words_reg[1]_LDC_n_0\,
      I5 => \number_of_words_reg[1]_P_n_0\,
      O => \number_of_words[1]_P_i_1_n_0\
    );
\number_of_words[2]_C_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9AFF9500"
    )
        port map (
      I0 => \number_of_words[2]_P_i_2_n_0\,
      I1 => \number_of_words_reg[2]_P_n_0\,
      I2 => \number_of_words_reg[2]_LDC_n_0\,
      I3 => \number_of_words[7]_P_i_1_n_0\,
      I4 => \number_of_words_reg[2]_C_n_0\,
      O => \number_of_words[2]_C_i_1_n_0\
    );
\number_of_words[2]_P_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9A95"
    )
        port map (
      I0 => \number_of_words[2]_P_i_2_n_0\,
      I1 => \number_of_words_reg[2]_P_n_0\,
      I2 => \number_of_words_reg[2]_LDC_n_0\,
      I3 => \number_of_words_reg[2]_C_n_0\,
      O => minusOp(2)
    );
\number_of_words[2]_P_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFE2E2E2FFE2"
    )
        port map (
      I0 => \number_of_words_reg[0]_C_n_0\,
      I1 => \number_of_words_reg[0]_LDC_n_0\,
      I2 => \number_of_words_reg[0]_P_n_0\,
      I3 => \number_of_words_reg[1]_C_n_0\,
      I4 => \number_of_words_reg[1]_LDC_n_0\,
      I5 => \number_of_words_reg[1]_P_n_0\,
      O => \number_of_words[2]_P_i_2_n_0\
    );
\number_of_words[3]_C_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9AFF9500"
    )
        port map (
      I0 => \number_of_words[3]_P_i_2_n_0\,
      I1 => \number_of_words_reg[3]_P_n_0\,
      I2 => \number_of_words_reg[3]_LDC_n_0\,
      I3 => \number_of_words[7]_P_i_1_n_0\,
      I4 => \number_of_words_reg[3]_C_n_0\,
      O => \number_of_words[3]_C_i_1_n_0\
    );
\number_of_words[3]_P_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9A95"
    )
        port map (
      I0 => \number_of_words[3]_P_i_2_n_0\,
      I1 => \number_of_words_reg[3]_P_n_0\,
      I2 => \number_of_words_reg[3]_LDC_n_0\,
      I3 => \number_of_words_reg[3]_C_n_0\,
      O => minusOp(3)
    );
\number_of_words[3]_P_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFE2"
    )
        port map (
      I0 => \number_of_words_reg[2]_C_n_0\,
      I1 => \number_of_words_reg[2]_LDC_n_0\,
      I2 => \number_of_words_reg[2]_P_n_0\,
      I3 => \number_of_words[2]_P_i_2_n_0\,
      O => \number_of_words[3]_P_i_2_n_0\
    );
\number_of_words[4]_C_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2DFF7800"
    )
        port map (
      I0 => \number_of_words_reg[4]_LDC_n_0\,
      I1 => \number_of_words_reg[4]_P_n_0\,
      I2 => \number_of_words[5]_P_i_3_n_0\,
      I3 => \number_of_words[7]_P_i_1_n_0\,
      I4 => \number_of_words_reg[4]_C_n_0\,
      O => \number_of_words[4]_C_i_1_n_0\
    );
\number_of_words[4]_P_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => \number_of_words_reg[4]_C_n_0\,
      I1 => \number_of_words_reg[4]_LDC_n_0\,
      I2 => \number_of_words_reg[4]_P_n_0\,
      I3 => \number_of_words[5]_P_i_3_n_0\,
      O => minusOp(4)
    );
\number_of_words[5]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B4BBFFFFB4440000"
    )
        port map (
      I0 => \number_of_words[5]_P_i_2_n_0\,
      I1 => \number_of_words[5]_P_i_3_n_0\,
      I2 => \number_of_words_reg[5]_P_n_0\,
      I3 => \number_of_words_reg[5]_LDC_n_0\,
      I4 => \number_of_words[7]_P_i_1_n_0\,
      I5 => \number_of_words_reg[5]_C_n_0\,
      O => \number_of_words[5]_C_i_1_n_0\
    );
\number_of_words[5]_P_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B4BBB444"
    )
        port map (
      I0 => \number_of_words[5]_P_i_2_n_0\,
      I1 => \number_of_words[5]_P_i_3_n_0\,
      I2 => \number_of_words_reg[5]_P_n_0\,
      I3 => \number_of_words_reg[5]_LDC_n_0\,
      I4 => \number_of_words_reg[5]_C_n_0\,
      O => minusOp(5)
    );
\number_of_words[5]_P_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \number_of_words_reg[4]_P_n_0\,
      I1 => \number_of_words_reg[4]_LDC_n_0\,
      I2 => \number_of_words_reg[4]_C_n_0\,
      O => \number_of_words[5]_P_i_2_n_0\
    );
\number_of_words[5]_P_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000001D"
    )
        port map (
      I0 => \number_of_words_reg[3]_C_n_0\,
      I1 => \number_of_words_reg[3]_LDC_n_0\,
      I2 => \number_of_words_reg[3]_P_n_0\,
      I3 => \number_of_words[2]_P_i_2_n_0\,
      I4 => done_reg_i_5_n_0,
      O => \number_of_words[5]_P_i_3_n_0\
    );
\number_of_words[6]_C_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2DFF7800"
    )
        port map (
      I0 => \number_of_words_reg[6]_LDC_n_0\,
      I1 => \number_of_words_reg[6]_P_n_0\,
      I2 => \number_of_words[7]_P_i_4_n_0\,
      I3 => \number_of_words[7]_P_i_1_n_0\,
      I4 => \number_of_words_reg[6]_C_n_0\,
      O => \number_of_words[6]_C_i_1_n_0\
    );
\number_of_words[6]_P_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => \number_of_words_reg[6]_C_n_0\,
      I1 => \number_of_words_reg[6]_LDC_n_0\,
      I2 => \number_of_words_reg[6]_P_n_0\,
      I3 => \number_of_words[7]_P_i_4_n_0\,
      O => minusOp(6)
    );
\number_of_words[7]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D2DDFFFF87880000"
    )
        port map (
      I0 => \number_of_words_reg[7]_LDC_n_0\,
      I1 => \number_of_words_reg[7]_P_n_0\,
      I2 => \number_of_words[7]_P_i_3_n_0\,
      I3 => \number_of_words[7]_P_i_4_n_0\,
      I4 => \number_of_words[7]_P_i_1_n_0\,
      I5 => \number_of_words_reg[7]_C_n_0\,
      O => \number_of_words[7]_C_i_1_n_0\
    );
\number_of_words[7]_P_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(0),
      I2 => current_state(2),
      I3 => current_state(3),
      O => \number_of_words[7]_P_i_1_n_0\
    );
\number_of_words[7]_P_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E21DE2E2"
    )
        port map (
      I0 => \number_of_words_reg[7]_C_n_0\,
      I1 => \number_of_words_reg[7]_LDC_n_0\,
      I2 => \number_of_words_reg[7]_P_n_0\,
      I3 => \number_of_words[7]_P_i_3_n_0\,
      I4 => \number_of_words[7]_P_i_4_n_0\,
      O => minusOp(7)
    );
\number_of_words[7]_P_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \number_of_words_reg[6]_P_n_0\,
      I1 => \number_of_words_reg[6]_LDC_n_0\,
      I2 => \number_of_words_reg[6]_C_n_0\,
      O => \number_of_words[7]_P_i_3_n_0\
    );
\number_of_words[7]_P_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => done_reg_i_7_n_0,
      I1 => done_reg_i_6_n_0,
      I2 => \number_of_words[2]_P_i_2_n_0\,
      I3 => done_reg_i_5_n_0,
      I4 => \number_of_words[5]_P_i_2_n_0\,
      O => \number_of_words[7]_P_i_4_n_0\
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
      INIT => '0'
    )
        port map (
      CLR => \number_of_words_reg[0]_LDC_i_2_n_0\,
      D => '1',
      G => \number_of_words_reg[0]_LDC_i_1_n_0\,
      GE => '1',
      Q => \number_of_words_reg[0]_LDC_n_0\
    );
\number_of_words_reg[0]_LDC_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => D(0),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => current_state(3),
      I4 => current_state(2),
      O => \number_of_words_reg[0]_LDC_i_1_n_0\
    );
\number_of_words_reg[0]_LDC_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFDF00000010"
    )
        port map (
      I0 => D(0),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => current_state(3),
      I4 => current_state(2),
      I5 => i_rst_IBUF,
      O => \number_of_words_reg[0]_LDC_i_2_n_0\
    );
\number_of_words_reg[0]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \number_of_words[7]_P_i_1_n_0\,
      D => minusOp(0),
      PRE => \number_of_words_reg[0]_LDC_i_1_n_0\,
      Q => \number_of_words_reg[0]_P_n_0\
    );
\number_of_words_reg[1]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => \number_of_words_reg[1]_LDC_i_2_n_0\,
      D => \number_of_words[1]_C_i_1_n_0\,
      Q => \number_of_words_reg[1]_C_n_0\
    );
\number_of_words_reg[1]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \number_of_words_reg[1]_LDC_i_2_n_0\,
      D => '1',
      G => \number_of_words_reg[1]_LDC_i_1_n_0\,
      GE => '1',
      Q => \number_of_words_reg[1]_LDC_n_0\
    );
\number_of_words_reg[1]_LDC_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => D(1),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => current_state(3),
      I4 => current_state(2),
      O => \number_of_words_reg[1]_LDC_i_1_n_0\
    );
\number_of_words_reg[1]_LDC_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFDF00000010"
    )
        port map (
      I0 => D(1),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => current_state(3),
      I4 => current_state(2),
      I5 => i_rst_IBUF,
      O => \number_of_words_reg[1]_LDC_i_2_n_0\
    );
\number_of_words_reg[1]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \number_of_words[7]_P_i_1_n_0\,
      D => \number_of_words[1]_P_i_1_n_0\,
      PRE => \number_of_words_reg[1]_LDC_i_1_n_0\,
      Q => \number_of_words_reg[1]_P_n_0\
    );
\number_of_words_reg[2]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => \number_of_words_reg[2]_LDC_i_2_n_0\,
      D => \number_of_words[2]_C_i_1_n_0\,
      Q => \number_of_words_reg[2]_C_n_0\
    );
\number_of_words_reg[2]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \number_of_words_reg[2]_LDC_i_2_n_0\,
      D => '1',
      G => \number_of_words_reg[2]_LDC_i_1_n_0\,
      GE => '1',
      Q => \number_of_words_reg[2]_LDC_n_0\
    );
\number_of_words_reg[2]_LDC_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => D(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => current_state(3),
      I4 => current_state(2),
      O => \number_of_words_reg[2]_LDC_i_1_n_0\
    );
\number_of_words_reg[2]_LDC_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFDF00000010"
    )
        port map (
      I0 => D(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => current_state(3),
      I4 => current_state(2),
      I5 => i_rst_IBUF,
      O => \number_of_words_reg[2]_LDC_i_2_n_0\
    );
\number_of_words_reg[2]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \number_of_words[7]_P_i_1_n_0\,
      D => minusOp(2),
      PRE => \number_of_words_reg[2]_LDC_i_1_n_0\,
      Q => \number_of_words_reg[2]_P_n_0\
    );
\number_of_words_reg[3]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => \number_of_words_reg[3]_LDC_i_2_n_0\,
      D => \number_of_words[3]_C_i_1_n_0\,
      Q => \number_of_words_reg[3]_C_n_0\
    );
\number_of_words_reg[3]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \number_of_words_reg[3]_LDC_i_2_n_0\,
      D => '1',
      G => \number_of_words_reg[3]_LDC_i_1_n_0\,
      GE => '1',
      Q => \number_of_words_reg[3]_LDC_n_0\
    );
\number_of_words_reg[3]_LDC_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => D(3),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => current_state(3),
      I4 => current_state(2),
      O => \number_of_words_reg[3]_LDC_i_1_n_0\
    );
\number_of_words_reg[3]_LDC_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFDF00000010"
    )
        port map (
      I0 => D(3),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => current_state(3),
      I4 => current_state(2),
      I5 => i_rst_IBUF,
      O => \number_of_words_reg[3]_LDC_i_2_n_0\
    );
\number_of_words_reg[3]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \number_of_words[7]_P_i_1_n_0\,
      D => minusOp(3),
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
      CE => '1',
      CLR => \number_of_words_reg[4]_LDC_i_2_n_0\,
      D => \number_of_words[4]_C_i_1_n_0\,
      Q => \number_of_words_reg[4]_C_n_0\
    );
\number_of_words_reg[4]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \number_of_words_reg[4]_LDC_i_2_n_0\,
      D => '1',
      G => \number_of_words_reg[4]_LDC_i_1_n_0\,
      GE => '1',
      Q => \number_of_words_reg[4]_LDC_n_0\
    );
\number_of_words_reg[4]_LDC_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => D(4),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => current_state(3),
      I4 => current_state(2),
      O => \number_of_words_reg[4]_LDC_i_1_n_0\
    );
\number_of_words_reg[4]_LDC_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFDF00000010"
    )
        port map (
      I0 => D(4),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => current_state(3),
      I4 => current_state(2),
      I5 => i_rst_IBUF,
      O => \number_of_words_reg[4]_LDC_i_2_n_0\
    );
\number_of_words_reg[4]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \number_of_words[7]_P_i_1_n_0\,
      D => minusOp(4),
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
      CE => '1',
      CLR => \number_of_words_reg[5]_LDC_i_2_n_0\,
      D => \number_of_words[5]_C_i_1_n_0\,
      Q => \number_of_words_reg[5]_C_n_0\
    );
\number_of_words_reg[5]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \number_of_words_reg[5]_LDC_i_2_n_0\,
      D => '1',
      G => \number_of_words_reg[5]_LDC_i_1_n_0\,
      GE => '1',
      Q => \number_of_words_reg[5]_LDC_n_0\
    );
\number_of_words_reg[5]_LDC_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => D(5),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => current_state(3),
      I4 => current_state(2),
      O => \number_of_words_reg[5]_LDC_i_1_n_0\
    );
\number_of_words_reg[5]_LDC_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFDF00000010"
    )
        port map (
      I0 => D(5),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => current_state(3),
      I4 => current_state(2),
      I5 => i_rst_IBUF,
      O => \number_of_words_reg[5]_LDC_i_2_n_0\
    );
\number_of_words_reg[5]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \number_of_words[7]_P_i_1_n_0\,
      D => minusOp(5),
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
      CE => '1',
      CLR => \number_of_words_reg[6]_LDC_i_2_n_0\,
      D => \number_of_words[6]_C_i_1_n_0\,
      Q => \number_of_words_reg[6]_C_n_0\
    );
\number_of_words_reg[6]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \number_of_words_reg[6]_LDC_i_2_n_0\,
      D => '1',
      G => \number_of_words_reg[6]_LDC_i_1_n_0\,
      GE => '1',
      Q => \number_of_words_reg[6]_LDC_n_0\
    );
\number_of_words_reg[6]_LDC_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => D(6),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => current_state(3),
      I4 => current_state(2),
      O => \number_of_words_reg[6]_LDC_i_1_n_0\
    );
\number_of_words_reg[6]_LDC_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFDF00000010"
    )
        port map (
      I0 => D(6),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => current_state(3),
      I4 => current_state(2),
      I5 => i_rst_IBUF,
      O => \number_of_words_reg[6]_LDC_i_2_n_0\
    );
\number_of_words_reg[6]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \number_of_words[7]_P_i_1_n_0\,
      D => minusOp(6),
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
      CE => '1',
      CLR => \number_of_words_reg[7]_LDC_i_2_n_0\,
      D => \number_of_words[7]_C_i_1_n_0\,
      Q => \number_of_words_reg[7]_C_n_0\
    );
\number_of_words_reg[7]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \number_of_words_reg[7]_LDC_i_2_n_0\,
      D => '1',
      G => \number_of_words_reg[7]_LDC_i_1_n_0\,
      GE => '1',
      Q => \number_of_words_reg[7]_LDC_n_0\
    );
\number_of_words_reg[7]_LDC_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => D(7),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => current_state(3),
      I4 => current_state(2),
      O => \number_of_words_reg[7]_LDC_i_1_n_0\
    );
\number_of_words_reg[7]_LDC_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFDF00000010"
    )
        port map (
      I0 => D(7),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => current_state(3),
      I4 => current_state(2),
      I5 => i_rst_IBUF,
      O => \number_of_words_reg[7]_LDC_i_2_n_0\
    );
\number_of_words_reg[7]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \number_of_words[7]_P_i_1_n_0\,
      D => minusOp(7),
      PRE => \number_of_words_reg[7]_LDC_i_1_n_0\,
      Q => \number_of_words_reg[7]_P_n_0\
    );
\o_data_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0600"
    )
        port map (
      I0 => \^u\,
      I1 => FF2_signal,
      I2 => i_rst_IBUF,
      I3 => i_start_IBUF,
      O => o_data_OBUF(0)
    );
o_en_OBUF_inst_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"030300C2"
    )
        port map (
      I0 => i_start_IBUF,
      I1 => current_state(1),
      I2 => current_state(0),
      I3 => current_state(2),
      I4 => current_state(3),
      O => o_en_OBUF
    );
o_we_OBUF_inst_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(1),
      I2 => current_state(0),
      O => o_we_OBUF
    );
output_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBF88888880"
    )
        port map (
      I0 => output_i_2_n_0,
      I1 => current_state(3),
      I2 => current_state(0),
      I3 => current_state(1),
      I4 => current_state(2),
      I5 => output_i_3_n_0,
      O => \^u\
    );
output_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => \mem_inout_reg_n_0_[3]\,
      I1 => \mem_inout_reg_n_0_[2]\,
      I2 => current_state(0),
      I3 => current_state(1),
      I4 => \mem_inout_reg_n_0_[1]\,
      I5 => \mem_inout_reg_n_0_[0]\,
      O => output_i_2_n_0
    );
output_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => \mem_inout_reg_n_0_[7]\,
      I1 => p_5_in,
      I2 => current_state(0),
      I3 => current_state(1),
      I4 => p_4_in,
      I5 => p_3_in,
      O => output_i_3_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity string_manager is
  port (
    o_data_OBUF : out STD_LOGIC_VECTOR ( 5 downto 0 );
    i_rst_IBUF : in STD_LOGIC;
    i_start_IBUF : in STD_LOGIC;
    \half_z_inout_shifter_reg[4]_0\ : in STD_LOGIC;
    component_enable : in STD_LOGIC;
    i_clk_IBUF_BUFG : in STD_LOGIC;
    u : in STD_LOGIC;
    FF2_signal : in STD_LOGIC;
    output : in STD_LOGIC;
    \half_z_inout_shifter_reg[2]_0\ : in STD_LOGIC
  );
end string_manager;

architecture STRUCTURE of string_manager is
  signal half_z_inout_shifter : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \half_z_inout_shifter[2]_i_1_n_0\ : STD_LOGIC;
  signal \half_z_inout_shifter[3]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \o_data_OBUF[2]_inst_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \o_data_OBUF[3]_inst_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \o_data_OBUF[4]_inst_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \o_data_OBUF[5]_inst_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \o_data_OBUF[6]_inst_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \o_data_OBUF[7]_inst_i_1\ : label is "soft_lutpair21";
begin
\half_z_inout_shifter[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9600FFFF96000000"
    )
        port map (
      I0 => FF2_signal,
      I1 => u,
      I2 => output,
      I3 => \half_z_inout_shifter_reg[2]_0\,
      I4 => component_enable,
      I5 => half_z_inout_shifter(2),
      O => \half_z_inout_shifter[2]_i_1_n_0\
    );
\half_z_inout_shifter[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0600FFFF06000000"
    )
        port map (
      I0 => u,
      I1 => FF2_signal,
      I2 => i_rst_IBUF,
      I3 => i_start_IBUF,
      I4 => component_enable,
      I5 => half_z_inout_shifter(3),
      O => \half_z_inout_shifter[3]_i_1_n_0\
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
      R => \half_z_inout_shifter_reg[4]_0\
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
      R => \half_z_inout_shifter_reg[4]_0\
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
      R => \half_z_inout_shifter_reg[4]_0\
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
      R => \half_z_inout_shifter_reg[4]_0\
    );
\o_data_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => half_z_inout_shifter(2),
      I1 => i_rst_IBUF,
      I2 => i_start_IBUF,
      O => o_data_OBUF(0)
    );
\o_data_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => half_z_inout_shifter(3),
      I1 => i_rst_IBUF,
      I2 => i_start_IBUF,
      O => o_data_OBUF(1)
    );
\o_data_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => half_z_inout_shifter(4),
      I1 => i_rst_IBUF,
      I2 => i_start_IBUF,
      O => o_data_OBUF(2)
    );
\o_data_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => half_z_inout_shifter(5),
      I1 => i_rst_IBUF,
      I2 => i_start_IBUF,
      O => o_data_OBUF(3)
    );
\o_data_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => half_z_inout_shifter(6),
      I1 => i_rst_IBUF,
      I2 => i_start_IBUF,
      O => o_data_OBUF(4)
    );
\o_data_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => half_z_inout_shifter(7),
      I1 => i_rst_IBUF,
      I2 => i_start_IBUF,
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
    o_data_OBUF : out STD_LOGIC_VECTOR ( 0 to 0 );
    component_enable : in STD_LOGIC;
    u : in STD_LOGIC;
    i_clk_IBUF_BUFG : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    i_rst_IBUF : in STD_LOGIC;
    i_start_IBUF : in STD_LOGIC
  );
end convolutional_encoder;

architecture STRUCTURE of convolutional_encoder is
  signal \^output\ : STD_LOGIC;
begin
  output <= \^output\;
FF1: entity work.FF_D
     port map (
      AR(0) => AR(0),
      component_enable => component_enable,
      i_clk_IBUF_BUFG => i_clk_IBUF_BUFG,
      output => \^output\,
      u => u
    );
FF2: entity work.FF_D_0
     port map (
      AR(0) => AR(0),
      FF2_signal => FF2_signal,
      component_enable => component_enable,
      i_clk_IBUF_BUFG => i_clk_IBUF_BUFG,
      i_rst_IBUF => i_rst_IBUF,
      i_start_IBUF => i_start_IBUF,
      o_data_OBUF(0) => o_data_OBUF(0),
      output => \^output\,
      u => u
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
  attribute ECO_CHECKSUM of project_reti_logiche : entity is "d5bd7c98";
end project_reti_logiche;

architecture STRUCTURE of project_reti_logiche is
  signal FF2_signal : STD_LOGIC;
  signal component_enable : STD_LOGIC;
  signal component_reset : STD_LOGIC;
  signal cont_n_3 : STD_LOGIC;
  signal cont_n_8 : STD_LOGIC;
  signal i_clk_IBUF : STD_LOGIC;
  signal i_clk_IBUF_BUFG : STD_LOGIC;
  signal i_data_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal i_rst_IBUF : STD_LOGIC;
  signal i_start_IBUF : STD_LOGIC;
  signal o_address_OBUF : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal o_data_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal o_done_OBUF : STD_LOGIC;
  signal o_en_OBUF : STD_LOGIC;
  signal o_we_OBUF : STD_LOGIC;
  signal output : STD_LOGIC;
  signal u : STD_LOGIC;
begin
cont: entity work.controller
     port map (
      AR(0) => component_reset,
      D(7 downto 0) => i_data_IBUF(7 downto 0),
      FF2_signal => FF2_signal,
      Q(10 downto 0) => o_address_OBUF(10 downto 0),
      component_enable => component_enable,
      i_clk_IBUF => i_clk_IBUF,
      i_clk_IBUF_BUFG => i_clk_IBUF_BUFG,
      i_rst => cont_n_8,
      i_rst_IBUF => i_rst_IBUF,
      i_start => cont_n_3,
      i_start_IBUF => i_start_IBUF,
      o_data_OBUF(0) => o_data_OBUF(1),
      o_done_OBUF => o_done_OBUF,
      o_en_OBUF => o_en_OBUF,
      o_we_OBUF => o_we_OBUF,
      u => u
    );
encoder: entity work.convolutional_encoder
     port map (
      AR(0) => component_reset,
      FF2_signal => FF2_signal,
      component_enable => component_enable,
      i_clk_IBUF_BUFG => i_clk_IBUF_BUFG,
      i_rst_IBUF => i_rst_IBUF,
      i_start_IBUF => i_start_IBUF,
      o_data_OBUF(0) => o_data_OBUF(0),
      output => output,
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
      I => '0',
      O => o_address(11)
    );
\o_address_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => o_address(12)
    );
\o_address_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => o_address(13)
    );
\o_address_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => o_address(14)
    );
\o_address_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
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
      \half_z_inout_shifter_reg[2]_0\ => cont_n_3,
      \half_z_inout_shifter_reg[4]_0\ => cont_n_8,
      i_clk_IBUF_BUFG => i_clk_IBUF_BUFG,
      i_rst_IBUF => i_rst_IBUF,
      i_start_IBUF => i_start_IBUF,
      o_data_OBUF(5 downto 0) => o_data_OBUF(7 downto 2),
      output => output,
      u => u
    );
end STRUCTURE;
