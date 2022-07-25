// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Mon Jul 25 18:00:35 2022
// Host        : dgraz running 64-bit Manjaro Linux
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/davide/git/Progetto-reti-logiche-2022/project_reti_logiche/project_reti_logiche.sim/sim_1/impl/timing/xsim/project_tb_time_impl.v
// Design      : project_reti_logiche
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a200tfbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module FF_D
   (\output ,
    component_enable,
    u,
    i_clk_IBUF_BUFG,
    AR);
  output \output ;
  input component_enable;
  input u;
  input i_clk_IBUF_BUFG;
  input [0:0]AR;

  wire [0:0]AR;
  wire component_enable;
  wire i_clk_IBUF_BUFG;
  wire \output ;
  wire u;

  FDCE #(
    .INIT(1'b0)) 
    output_reg
       (.C(i_clk_IBUF_BUFG),
        .CE(component_enable),
        .CLR(AR),
        .D(u),
        .Q(\output ));
endmodule

(* ORIG_REF_NAME = "FF_D" *) 
module FF_D_0
   (FF2_signal,
    component_enable,
    \output ,
    i_clk_IBUF_BUFG,
    AR);
  output FF2_signal;
  input component_enable;
  input \output ;
  input i_clk_IBUF_BUFG;
  input [0:0]AR;

  wire [0:0]AR;
  wire FF2_signal;
  wire component_enable;
  wire i_clk_IBUF_BUFG;
  wire \output ;

  FDCE #(
    .INIT(1'b0)) 
    output_reg
       (.C(i_clk_IBUF_BUFG),
        .CE(component_enable),
        .CLR(AR),
        .D(\output ),
        .Q(FF2_signal));
endmodule

module controller
   (o_done_OBUF,
    AR,
    component_enable,
    o_en_OBUF,
    o_we_OBUF,
    o_data_OBUF,
    i_rst,
    u,
    i_rst_0,
    output_reg,
    Q,
    i_clk_IBUF_BUFG,
    i_start_IBUF,
    i_rst_IBUF,
    \output ,
    FF2_signal,
    i_clk_IBUF,
    D);
  output o_done_OBUF;
  output [0:0]AR;
  output component_enable;
  output o_en_OBUF;
  output o_we_OBUF;
  output [1:0]o_data_OBUF;
  output i_rst;
  output u;
  output i_rst_0;
  output output_reg;
  output [10:0]Q;
  input i_clk_IBUF_BUFG;
  input i_start_IBUF;
  input i_rst_IBUF;
  input \output ;
  input FF2_signal;
  input i_clk_IBUF;
  input [7:0]D;

  wire [0:0]AR;
  wire [7:0]D;
  wire FF2_signal;
  wire [10:0]Q;
  wire \base_read[7]_i_2_n_0 ;
  wire [7:0]base_read_reg;
  wire \base_write[10]_i_3_n_0 ;
  wire [10:0]base_write_reg;
  wire component_enable;
  wire component_enable_reg_i_1_n_0;
  wire component_enable_reg_i_2_n_0;
  wire [3:0]current_state;
  wire done0;
  wire done_reg_i_3_n_0;
  wire done_reg_i_4_n_0;
  wire done_reg_i_5_n_0;
  wire done_reg_i_6_n_0;
  wire done_reg_i_7_n_0;
  wire done_reg_i_8_n_0;
  wire i_clk_IBUF;
  wire i_clk_IBUF_BUFG;
  wire i_rst;
  wire i_rst_0;
  wire i_rst_IBUF;
  wire i_start_IBUF;
  wire mem_address1;
  wire \mem_address_reg[0]_i_1_n_0 ;
  wire \mem_address_reg[10]_i_1_n_0 ;
  wire \mem_address_reg[10]_i_2_n_0 ;
  wire \mem_address_reg[10]_i_4_n_0 ;
  wire \mem_address_reg[1]_i_1_n_0 ;
  wire \mem_address_reg[2]_i_1_n_0 ;
  wire \mem_address_reg[3]_i_1_n_0 ;
  wire \mem_address_reg[4]_i_1_n_0 ;
  wire \mem_address_reg[5]_i_1_n_0 ;
  wire \mem_address_reg[6]_i_1_n_0 ;
  wire \mem_address_reg[7]_i_1_n_0 ;
  wire \mem_address_reg[8]_i_1_n_0 ;
  wire \mem_address_reg[9]_i_1_n_0 ;
  wire mem_inout0;
  wire \mem_inout_reg_n_0_[0] ;
  wire \mem_inout_reg_n_0_[1] ;
  wire \mem_inout_reg_n_0_[2] ;
  wire \mem_inout_reg_n_0_[3] ;
  wire \mem_inout_reg_n_0_[7] ;
  wire [7:0]minusOp;
  wire [3:0]next_state;
  wire \next_state_reg[0]_i_1_n_0 ;
  wire \next_state_reg[0]_i_2_n_0 ;
  wire \next_state_reg[0]_i_3_n_0 ;
  wire \next_state_reg[0]_i_4_n_0 ;
  wire \next_state_reg[1]_i_1_n_0 ;
  wire \next_state_reg[2]_i_1_n_0 ;
  wire \next_state_reg[3]_i_1_n_0 ;
  wire \next_state_reg[3]_i_2_n_0 ;
  wire \next_state_reg[3]_i_3_n_0 ;
  wire \next_state_reg[3]_i_4_n_0 ;
  wire \next_state_reg[3]_i_5_n_0 ;
  wire \next_state_reg[3]_i_6_n_0 ;
  wire \next_state_reg[3]_i_7_n_0 ;
  wire number_of_words0;
  wire \number_of_words[0]_C_i_1_n_0 ;
  wire \number_of_words[1]_C_i_1_n_0 ;
  wire \number_of_words[1]_C_i_2_n_0 ;
  wire \number_of_words[1]_P_i_1_n_0 ;
  wire \number_of_words[2]_C_i_1_n_0 ;
  wire \number_of_words[2]_P_i_2_n_0 ;
  wire \number_of_words[3]_C_i_1_n_0 ;
  wire \number_of_words[3]_P_i_2_n_0 ;
  wire \number_of_words[4]_C_i_1_n_0 ;
  wire \number_of_words[4]_P_i_1_n_0 ;
  wire \number_of_words[5]_C_i_1_n_0 ;
  wire \number_of_words[5]_P_i_2_n_0 ;
  wire \number_of_words[5]_P_i_3_n_0 ;
  wire \number_of_words[6]_C_i_1_n_0 ;
  wire \number_of_words[7]_C_i_1_n_0 ;
  wire \number_of_words_reg[0]_C_n_0 ;
  wire \number_of_words_reg[0]_LDC_i_1_n_0 ;
  wire \number_of_words_reg[0]_LDC_i_2_n_0 ;
  wire \number_of_words_reg[0]_LDC_n_0 ;
  wire \number_of_words_reg[0]_P_n_0 ;
  wire \number_of_words_reg[1]_C_n_0 ;
  wire \number_of_words_reg[1]_LDC_i_1_n_0 ;
  wire \number_of_words_reg[1]_LDC_i_2_n_0 ;
  wire \number_of_words_reg[1]_LDC_n_0 ;
  wire \number_of_words_reg[1]_P_n_0 ;
  wire \number_of_words_reg[2]_C_n_0 ;
  wire \number_of_words_reg[2]_LDC_i_1_n_0 ;
  wire \number_of_words_reg[2]_LDC_i_2_n_0 ;
  wire \number_of_words_reg[2]_LDC_n_0 ;
  wire \number_of_words_reg[2]_P_n_0 ;
  wire \number_of_words_reg[3]_C_n_0 ;
  wire \number_of_words_reg[3]_LDC_i_1_n_0 ;
  wire \number_of_words_reg[3]_LDC_i_2_n_0 ;
  wire \number_of_words_reg[3]_LDC_n_0 ;
  wire \number_of_words_reg[3]_P_n_0 ;
  wire \number_of_words_reg[4]_C_n_0 ;
  wire \number_of_words_reg[4]_LDC_i_1_n_0 ;
  wire \number_of_words_reg[4]_LDC_i_2_n_0 ;
  wire \number_of_words_reg[4]_LDC_n_0 ;
  wire \number_of_words_reg[4]_P_n_0 ;
  wire \number_of_words_reg[5]_C_n_0 ;
  wire \number_of_words_reg[5]_LDC_i_1_n_0 ;
  wire \number_of_words_reg[5]_LDC_i_2_n_0 ;
  wire \number_of_words_reg[5]_LDC_n_0 ;
  wire \number_of_words_reg[5]_P_n_0 ;
  wire \number_of_words_reg[6]_C_n_0 ;
  wire \number_of_words_reg[6]_LDC_i_1_n_0 ;
  wire \number_of_words_reg[6]_LDC_i_2_n_0 ;
  wire \number_of_words_reg[6]_LDC_n_0 ;
  wire \number_of_words_reg[6]_P_n_0 ;
  wire \number_of_words_reg[7]_C_n_0 ;
  wire \number_of_words_reg[7]_LDC_i_1_n_0 ;
  wire \number_of_words_reg[7]_LDC_i_2_n_0 ;
  wire \number_of_words_reg[7]_LDC_n_0 ;
  wire \number_of_words_reg[7]_P_n_0 ;
  wire [1:0]o_data_OBUF;
  wire \o_data_OBUF[1]_inst_i_2_n_0 ;
  wire \o_data_OBUF[1]_inst_i_3_n_0 ;
  wire o_done_OBUF;
  wire o_en_OBUF;
  wire o_en_OBUF_inst_i_2_n_0;
  wire o_we_OBUF;
  wire \output ;
  wire output_i_2_n_0;
  wire output_i_3_n_0;
  wire output_i_4_n_0;
  wire output_reg;
  wire p_3_in;
  wire p_4_in;
  wire p_5_in;
  wire [10:0]plusOp;
  wire [7:0]plusOp__0;
  wire sel;
  wire u;

  LUT1 #(
    .INIT(2'h1)) 
    \base_read[0]_i_1 
       (.I0(base_read_reg[0]),
        .O(plusOp__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \base_read[1]_i_1 
       (.I0(base_read_reg[0]),
        .I1(base_read_reg[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \base_read[2]_i_1 
       (.I0(base_read_reg[2]),
        .I1(base_read_reg[0]),
        .I2(base_read_reg[1]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \base_read[3]_i_1 
       (.I0(base_read_reg[3]),
        .I1(base_read_reg[1]),
        .I2(base_read_reg[0]),
        .I3(base_read_reg[2]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \base_read[4]_i_1 
       (.I0(base_read_reg[4]),
        .I1(base_read_reg[2]),
        .I2(base_read_reg[0]),
        .I3(base_read_reg[1]),
        .I4(base_read_reg[3]),
        .O(plusOp__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \base_read[5]_i_1 
       (.I0(base_read_reg[3]),
        .I1(base_read_reg[1]),
        .I2(base_read_reg[0]),
        .I3(base_read_reg[2]),
        .I4(base_read_reg[4]),
        .I5(base_read_reg[5]),
        .O(plusOp__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \base_read[6]_i_1 
       (.I0(base_read_reg[6]),
        .I1(\base_read[7]_i_2_n_0 ),
        .O(plusOp__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \base_read[7]_i_1 
       (.I0(base_read_reg[7]),
        .I1(\base_read[7]_i_2_n_0 ),
        .I2(base_read_reg[6]),
        .O(plusOp__0[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \base_read[7]_i_2 
       (.I0(base_read_reg[5]),
        .I1(base_read_reg[4]),
        .I2(base_read_reg[2]),
        .I3(base_read_reg[0]),
        .I4(base_read_reg[1]),
        .I5(base_read_reg[3]),
        .O(\base_read[7]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \base_read_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .CLR(AR),
        .D(plusOp__0[0]),
        .Q(base_read_reg[0]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \base_read_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .CLR(AR),
        .D(plusOp__0[1]),
        .Q(base_read_reg[1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \base_read_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .CLR(AR),
        .D(plusOp__0[2]),
        .Q(base_read_reg[2]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \base_read_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .CLR(AR),
        .D(plusOp__0[3]),
        .Q(base_read_reg[3]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \base_read_reg[4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .CLR(AR),
        .D(plusOp__0[4]),
        .Q(base_read_reg[4]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \base_read_reg[5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .CLR(AR),
        .D(plusOp__0[5]),
        .Q(base_read_reg[5]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \base_read_reg[6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .CLR(AR),
        .D(plusOp__0[6]),
        .Q(base_read_reg[6]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \base_read_reg[7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .CLR(AR),
        .D(plusOp__0[7]),
        .Q(base_read_reg[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \base_write[0]_i_1 
       (.I0(base_write_reg[0]),
        .O(plusOp[0]));
  LUT4 #(
    .INIT(16'h6000)) 
    \base_write[10]_i_1 
       (.I0(current_state[3]),
        .I1(current_state[2]),
        .I2(current_state[0]),
        .I3(current_state[1]),
        .O(sel));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \base_write[10]_i_2 
       (.I0(base_write_reg[10]),
        .I1(base_write_reg[8]),
        .I2(base_write_reg[6]),
        .I3(\base_write[10]_i_3_n_0 ),
        .I4(base_write_reg[7]),
        .I5(base_write_reg[9]),
        .O(plusOp[10]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \base_write[10]_i_3 
       (.I0(base_write_reg[5]),
        .I1(base_write_reg[4]),
        .I2(base_write_reg[2]),
        .I3(base_write_reg[0]),
        .I4(base_write_reg[1]),
        .I5(base_write_reg[3]),
        .O(\base_write[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \base_write[1]_i_1 
       (.I0(base_write_reg[0]),
        .I1(base_write_reg[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \base_write[2]_i_1 
       (.I0(base_write_reg[2]),
        .I1(base_write_reg[0]),
        .I2(base_write_reg[1]),
        .O(plusOp[2]));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \base_write[3]_i_1 
       (.I0(base_write_reg[3]),
        .I1(base_write_reg[1]),
        .I2(base_write_reg[0]),
        .I3(base_write_reg[2]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \base_write[4]_i_1 
       (.I0(base_write_reg[4]),
        .I1(base_write_reg[2]),
        .I2(base_write_reg[0]),
        .I3(base_write_reg[1]),
        .I4(base_write_reg[3]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \base_write[5]_i_1 
       (.I0(base_write_reg[3]),
        .I1(base_write_reg[1]),
        .I2(base_write_reg[0]),
        .I3(base_write_reg[2]),
        .I4(base_write_reg[4]),
        .I5(base_write_reg[5]),
        .O(plusOp[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \base_write[6]_i_1 
       (.I0(base_write_reg[6]),
        .I1(\base_write[10]_i_3_n_0 ),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \base_write[7]_i_1 
       (.I0(base_write_reg[7]),
        .I1(\base_write[10]_i_3_n_0 ),
        .I2(base_write_reg[6]),
        .O(plusOp[7]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \base_write[8]_i_1 
       (.I0(base_write_reg[8]),
        .I1(base_write_reg[6]),
        .I2(\base_write[10]_i_3_n_0 ),
        .I3(base_write_reg[7]),
        .O(plusOp[8]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \base_write[9]_i_1 
       (.I0(base_write_reg[9]),
        .I1(base_write_reg[7]),
        .I2(\base_write[10]_i_3_n_0 ),
        .I3(base_write_reg[6]),
        .I4(base_write_reg[8]),
        .O(plusOp[9]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \base_write_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(sel),
        .CLR(AR),
        .D(plusOp[0]),
        .Q(base_write_reg[0]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \base_write_reg[10] 
       (.C(i_clk_IBUF_BUFG),
        .CE(sel),
        .CLR(AR),
        .D(plusOp[10]),
        .Q(base_write_reg[10]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \base_write_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(sel),
        .CLR(AR),
        .D(plusOp[1]),
        .Q(base_write_reg[1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \base_write_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(sel),
        .CLR(AR),
        .D(plusOp[2]),
        .Q(base_write_reg[2]));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \base_write_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(sel),
        .D(plusOp[3]),
        .PRE(AR),
        .Q(base_write_reg[3]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \base_write_reg[4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(sel),
        .CLR(AR),
        .D(plusOp[4]),
        .Q(base_write_reg[4]));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \base_write_reg[5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(sel),
        .D(plusOp[5]),
        .PRE(AR),
        .Q(base_write_reg[5]));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \base_write_reg[6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(sel),
        .D(plusOp[6]),
        .PRE(AR),
        .Q(base_write_reg[6]));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \base_write_reg[7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(sel),
        .D(plusOp[7]),
        .PRE(AR),
        .Q(base_write_reg[7]));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \base_write_reg[8] 
       (.C(i_clk_IBUF_BUFG),
        .CE(sel),
        .D(plusOp[8]),
        .PRE(AR),
        .Q(base_write_reg[8]));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \base_write_reg[9] 
       (.C(i_clk_IBUF_BUFG),
        .CE(sel),
        .D(plusOp[9]),
        .PRE(AR),
        .Q(base_write_reg[9]));
  (* XILINX_LEGACY_PRIM = "LDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDPE #(
    .INIT(1'b0)) 
    component_enable_reg
       (.D(1'b0),
        .G(component_enable_reg_i_1_n_0),
        .GE(1'b1),
        .PRE(component_enable_reg_i_2_n_0),
        .Q(component_enable));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    component_enable_reg_i_1
       (.I0(i_clk_IBUF),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(current_state[2]),
        .I4(current_state[3]),
        .O(component_enable_reg_i_1_n_0));
  LUT5 #(
    .INIT(32'h01000000)) 
    component_enable_reg_i_2
       (.I0(i_clk_IBUF),
        .I1(current_state[2]),
        .I2(current_state[3]),
        .I3(current_state[1]),
        .I4(current_state[0]),
        .O(component_enable_reg_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    \current_state_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(next_state[0]),
        .Q(current_state[0]));
  FDCE #(
    .INIT(1'b0)) 
    \current_state_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(next_state[1]),
        .Q(current_state[1]));
  FDCE #(
    .INIT(1'b0)) 
    \current_state_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(next_state[2]),
        .Q(current_state[2]));
  FDCE #(
    .INIT(1'b0)) 
    \current_state_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(next_state[3]),
        .Q(current_state[3]));
  (* XILINX_LEGACY_PRIM = "LDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDPE #(
    .INIT(1'b1)) 
    done_reg
       (.D(1'b0),
        .G(AR),
        .GE(1'b1),
        .PRE(done0),
        .Q(o_done_OBUF));
  LUT2 #(
    .INIT(4'hB)) 
    done_reg_i_1
       (.I0(i_rst_IBUF),
        .I1(i_start_IBUF),
        .O(AR));
  LUT6 #(
    .INIT(64'h0000000047000000)) 
    done_reg_i_2
       (.I0(\number_of_words_reg[7]_P_n_0 ),
        .I1(\number_of_words_reg[7]_LDC_n_0 ),
        .I2(\number_of_words_reg[7]_C_n_0 ),
        .I3(done_reg_i_3_n_0),
        .I4(done_reg_i_4_n_0),
        .I5(done_reg_i_5_n_0),
        .O(done0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    done_reg_i_3
       (.I0(\number_of_words[5]_P_i_2_n_0 ),
        .I1(done_reg_i_6_n_0),
        .I2(\number_of_words[2]_P_i_2_n_0 ),
        .I3(done_reg_i_7_n_0),
        .I4(done_reg_i_8_n_0),
        .I5(\next_state_reg[0]_i_2_n_0 ),
        .O(done_reg_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    done_reg_i_4
       (.I0(i_start_IBUF),
        .I1(i_rst_IBUF),
        .O(done_reg_i_4_n_0));
  LUT4 #(
    .INIT(16'hDFFF)) 
    done_reg_i_5
       (.I0(current_state[3]),
        .I1(current_state[2]),
        .I2(current_state[0]),
        .I3(current_state[1]),
        .O(done_reg_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    done_reg_i_6
       (.I0(\number_of_words_reg[2]_P_n_0 ),
        .I1(\number_of_words_reg[2]_LDC_n_0 ),
        .I2(\number_of_words_reg[2]_C_n_0 ),
        .O(done_reg_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    done_reg_i_7
       (.I0(\number_of_words_reg[3]_P_n_0 ),
        .I1(\number_of_words_reg[3]_LDC_n_0 ),
        .I2(\number_of_words_reg[3]_C_n_0 ),
        .O(done_reg_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    done_reg_i_8
       (.I0(\number_of_words_reg[5]_P_n_0 ),
        .I1(\number_of_words_reg[5]_LDC_n_0 ),
        .I2(\number_of_words_reg[5]_C_n_0 ),
        .O(done_reg_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h4004)) 
    \half_z_inout_shifter[2]_i_1 
       (.I0(i_rst_IBUF),
        .I1(i_start_IBUF),
        .I2(\o_data_OBUF[1]_inst_i_2_n_0 ),
        .I3(\output ),
        .O(output_reg));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \half_z_inout_shifter[3]_i_1 
       (.I0(i_rst_IBUF),
        .I1(i_start_IBUF),
        .I2(\o_data_OBUF[1]_inst_i_2_n_0 ),
        .O(i_rst_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \half_z_inout_shifter[7]_i_1 
       (.I0(component_enable),
        .I1(i_rst_IBUF),
        .I2(i_start_IBUF),
        .O(i_rst));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_address_reg[0] 
       (.CLR(1'b0),
        .D(\mem_address_reg[0]_i_1_n_0 ),
        .G(\mem_address_reg[10]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Q[0]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_address_reg[0]_i_1 
       (.I0(base_write_reg[0]),
        .I1(\mem_address_reg[10]_i_4_n_0 ),
        .I2(base_read_reg[0]),
        .O(\mem_address_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_address_reg[10] 
       (.CLR(mem_address1),
        .D(\mem_address_reg[10]_i_1_n_0 ),
        .G(\mem_address_reg[10]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Q[10]));
  LUT6 #(
    .INIT(64'h2222222222222022)) 
    \mem_address_reg[10]_i_1 
       (.I0(base_write_reg[10]),
        .I1(number_of_words0),
        .I2(next_state[2]),
        .I3(next_state[0]),
        .I4(next_state[3]),
        .I5(next_state[1]),
        .O(\mem_address_reg[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h0060FFFF)) 
    \mem_address_reg[10]_i_2 
       (.I0(current_state[2]),
        .I1(current_state[3]),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .I4(\mem_address_reg[10]_i_4_n_0 ),
        .O(\mem_address_reg[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAABA)) 
    \mem_address_reg[10]_i_3 
       (.I0(number_of_words0),
        .I1(next_state[2]),
        .I2(next_state[0]),
        .I3(next_state[3]),
        .I4(next_state[1]),
        .O(mem_address1));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h0000FFEF)) 
    \mem_address_reg[10]_i_4 
       (.I0(next_state[1]),
        .I1(next_state[3]),
        .I2(next_state[0]),
        .I3(next_state[2]),
        .I4(number_of_words0),
        .O(\mem_address_reg[10]_i_4_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_address_reg[1] 
       (.CLR(1'b0),
        .D(\mem_address_reg[1]_i_1_n_0 ),
        .G(\mem_address_reg[10]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Q[1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_address_reg[1]_i_1 
       (.I0(base_write_reg[1]),
        .I1(\mem_address_reg[10]_i_4_n_0 ),
        .I2(base_read_reg[1]),
        .O(\mem_address_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_address_reg[2] 
       (.CLR(1'b0),
        .D(\mem_address_reg[2]_i_1_n_0 ),
        .G(\mem_address_reg[10]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Q[2]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_address_reg[2]_i_1 
       (.I0(base_write_reg[2]),
        .I1(\mem_address_reg[10]_i_4_n_0 ),
        .I2(base_read_reg[2]),
        .O(\mem_address_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_address_reg[3] 
       (.CLR(1'b0),
        .D(\mem_address_reg[3]_i_1_n_0 ),
        .G(\mem_address_reg[10]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Q[3]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_address_reg[3]_i_1 
       (.I0(base_write_reg[3]),
        .I1(\mem_address_reg[10]_i_4_n_0 ),
        .I2(base_read_reg[3]),
        .O(\mem_address_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_address_reg[4] 
       (.CLR(1'b0),
        .D(\mem_address_reg[4]_i_1_n_0 ),
        .G(\mem_address_reg[10]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Q[4]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_address_reg[4]_i_1 
       (.I0(base_write_reg[4]),
        .I1(\mem_address_reg[10]_i_4_n_0 ),
        .I2(base_read_reg[4]),
        .O(\mem_address_reg[4]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_address_reg[5] 
       (.CLR(1'b0),
        .D(\mem_address_reg[5]_i_1_n_0 ),
        .G(\mem_address_reg[10]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Q[5]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_address_reg[5]_i_1 
       (.I0(base_write_reg[5]),
        .I1(\mem_address_reg[10]_i_4_n_0 ),
        .I2(base_read_reg[5]),
        .O(\mem_address_reg[5]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_address_reg[6] 
       (.CLR(1'b0),
        .D(\mem_address_reg[6]_i_1_n_0 ),
        .G(\mem_address_reg[10]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Q[6]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_address_reg[6]_i_1 
       (.I0(base_write_reg[6]),
        .I1(\mem_address_reg[10]_i_4_n_0 ),
        .I2(base_read_reg[6]),
        .O(\mem_address_reg[6]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_address_reg[7] 
       (.CLR(1'b0),
        .D(\mem_address_reg[7]_i_1_n_0 ),
        .G(\mem_address_reg[10]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Q[7]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_address_reg[7]_i_1 
       (.I0(base_write_reg[7]),
        .I1(\mem_address_reg[10]_i_4_n_0 ),
        .I2(base_read_reg[7]),
        .O(\mem_address_reg[7]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_address_reg[8] 
       (.CLR(mem_address1),
        .D(\mem_address_reg[8]_i_1_n_0 ),
        .G(\mem_address_reg[10]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Q[8]));
  LUT6 #(
    .INIT(64'h2222222222222022)) 
    \mem_address_reg[8]_i_1 
       (.I0(base_write_reg[8]),
        .I1(number_of_words0),
        .I2(next_state[2]),
        .I3(next_state[0]),
        .I4(next_state[3]),
        .I5(next_state[1]),
        .O(\mem_address_reg[8]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_address_reg[9] 
       (.CLR(mem_address1),
        .D(\mem_address_reg[9]_i_1_n_0 ),
        .G(\mem_address_reg[10]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Q[9]));
  LUT6 #(
    .INIT(64'h2222222222222022)) 
    \mem_address_reg[9]_i_1 
       (.I0(base_write_reg[9]),
        .I1(number_of_words0),
        .I2(next_state[2]),
        .I3(next_state[0]),
        .I4(next_state[3]),
        .I5(next_state[1]),
        .O(\mem_address_reg[9]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_inout_reg[0] 
       (.CLR(1'b0),
        .D(D[0]),
        .G(mem_inout0),
        .GE(1'b1),
        .Q(\mem_inout_reg_n_0_[0] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_inout_reg[1] 
       (.CLR(1'b0),
        .D(D[1]),
        .G(mem_inout0),
        .GE(1'b1),
        .Q(\mem_inout_reg_n_0_[1] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_inout_reg[2] 
       (.CLR(1'b0),
        .D(D[2]),
        .G(mem_inout0),
        .GE(1'b1),
        .Q(\mem_inout_reg_n_0_[2] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_inout_reg[3] 
       (.CLR(1'b0),
        .D(D[3]),
        .G(mem_inout0),
        .GE(1'b1),
        .Q(\mem_inout_reg_n_0_[3] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_inout_reg[4] 
       (.CLR(1'b0),
        .D(D[4]),
        .G(mem_inout0),
        .GE(1'b1),
        .Q(p_3_in));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_inout_reg[5] 
       (.CLR(1'b0),
        .D(D[5]),
        .G(mem_inout0),
        .GE(1'b1),
        .Q(p_4_in));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_inout_reg[6] 
       (.CLR(1'b0),
        .D(D[6]),
        .G(mem_inout0),
        .GE(1'b1),
        .Q(p_5_in));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_inout_reg[7] 
       (.CLR(1'b0),
        .D(D[7]),
        .G(mem_inout0),
        .GE(1'b1),
        .Q(\mem_inout_reg_n_0_[7] ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h02000000)) 
    \mem_inout_reg[7]_i_1 
       (.I0(i_clk_IBUF),
        .I1(current_state[2]),
        .I2(current_state[3]),
        .I3(current_state[1]),
        .I4(current_state[0]),
        .O(mem_inout0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_state_reg[0] 
       (.CLR(1'b0),
        .D(\next_state_reg[0]_i_1_n_0 ),
        .G(\next_state_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(next_state[0]));
  LUT6 #(
    .INIT(64'h0000000022222F22)) 
    \next_state_reg[0]_i_1 
       (.I0(done_reg_i_5_n_0),
        .I1(\next_state_reg[3]_i_6_n_0 ),
        .I2(\next_state_reg[0]_i_2_n_0 ),
        .I3(\next_state_reg[0]_i_3_n_0 ),
        .I4(\next_state_reg[3]_i_5_n_0 ),
        .I5(\next_state_reg[0]_i_4_n_0 ),
        .O(\next_state_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \next_state_reg[0]_i_2 
       (.I0(\number_of_words_reg[6]_P_n_0 ),
        .I1(\number_of_words_reg[6]_LDC_n_0 ),
        .I2(\number_of_words_reg[6]_C_n_0 ),
        .O(\next_state_reg[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \next_state_reg[0]_i_3 
       (.I0(done_reg_i_8_n_0),
        .I1(done_reg_i_7_n_0),
        .I2(\number_of_words[2]_P_i_2_n_0 ),
        .I3(done_reg_i_6_n_0),
        .I4(\number_of_words[5]_P_i_2_n_0 ),
        .O(\next_state_reg[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h5F7D5555)) 
    \next_state_reg[0]_i_4 
       (.I0(i_start_IBUF),
        .I1(current_state[2]),
        .I2(current_state[3]),
        .I3(current_state[1]),
        .I4(current_state[0]),
        .O(\next_state_reg[0]_i_4_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_state_reg[1] 
       (.CLR(1'b0),
        .D(\next_state_reg[1]_i_1_n_0 ),
        .G(\next_state_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(next_state[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hAAA82828)) 
    \next_state_reg[1]_i_1 
       (.I0(i_start_IBUF),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(current_state[2]),
        .I4(current_state[3]),
        .O(\next_state_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_state_reg[2] 
       (.CLR(1'b0),
        .D(\next_state_reg[2]_i_1_n_0 ),
        .G(\next_state_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(next_state[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h02202020)) 
    \next_state_reg[2]_i_1 
       (.I0(i_start_IBUF),
        .I1(current_state[3]),
        .I2(current_state[2]),
        .I3(current_state[0]),
        .I4(current_state[1]),
        .O(\next_state_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_state_reg[3] 
       (.CLR(1'b0),
        .D(\next_state_reg[3]_i_1_n_0 ),
        .G(\next_state_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(next_state[3]));
  LUT6 #(
    .INIT(64'h0800888808000800)) 
    \next_state_reg[3]_i_1 
       (.I0(\next_state_reg[3]_i_3_n_0 ),
        .I1(\next_state_reg[3]_i_4_n_0 ),
        .I2(\next_state_reg[3]_i_5_n_0 ),
        .I3(done_reg_i_3_n_0),
        .I4(\next_state_reg[3]_i_6_n_0 ),
        .I5(done_reg_i_5_n_0),
        .O(\next_state_reg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF7FFF5FFF7FFF7)) 
    \next_state_reg[3]_i_2 
       (.I0(\next_state_reg[3]_i_4_n_0 ),
        .I1(done_reg_i_5_n_0),
        .I2(\next_state_reg[3]_i_7_n_0 ),
        .I3(\next_state_reg[3]_i_6_n_0 ),
        .I4(\next_state_reg[3]_i_5_n_0 ),
        .I5(done_reg_i_3_n_0),
        .O(\next_state_reg[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFF85)) 
    \next_state_reg[3]_i_3 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(current_state[2]),
        .I3(current_state[3]),
        .O(\next_state_reg[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \next_state_reg[3]_i_4 
       (.I0(i_start_IBUF),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(current_state[2]),
        .I4(current_state[3]),
        .O(\next_state_reg[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \next_state_reg[3]_i_5 
       (.I0(\number_of_words_reg[7]_P_n_0 ),
        .I1(\number_of_words_reg[7]_LDC_n_0 ),
        .I2(\number_of_words_reg[7]_C_n_0 ),
        .O(\next_state_reg[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \next_state_reg[3]_i_6 
       (.I0(current_state[3]),
        .I1(current_state[2]),
        .I2(current_state[0]),
        .I3(current_state[1]),
        .O(\next_state_reg[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0F7C)) 
    \next_state_reg[3]_i_7 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(current_state[3]),
        .I3(current_state[2]),
        .O(\next_state_reg[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h2F70)) 
    \number_of_words[0]_C_i_1 
       (.I0(\number_of_words_reg[0]_LDC_n_0 ),
        .I1(\number_of_words_reg[0]_P_n_0 ),
        .I2(number_of_words0),
        .I3(\number_of_words_reg[0]_C_n_0 ),
        .O(\number_of_words[0]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \number_of_words[0]_P_i_1 
       (.I0(\number_of_words_reg[0]_C_n_0 ),
        .I1(\number_of_words_reg[0]_LDC_n_0 ),
        .I2(\number_of_words_reg[0]_P_n_0 ),
        .O(minusOp[0]));
  LUT5 #(
    .INIT(32'hA6FF9500)) 
    \number_of_words[1]_C_i_1 
       (.I0(\number_of_words[1]_C_i_2_n_0 ),
        .I1(\number_of_words_reg[1]_LDC_n_0 ),
        .I2(\number_of_words_reg[1]_P_n_0 ),
        .I3(number_of_words0),
        .I4(\number_of_words_reg[1]_C_n_0 ),
        .O(\number_of_words[1]_C_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \number_of_words[1]_C_i_2 
       (.I0(\number_of_words_reg[0]_P_n_0 ),
        .I1(\number_of_words_reg[0]_LDC_n_0 ),
        .I2(\number_of_words_reg[0]_C_n_0 ),
        .O(\number_of_words[1]_C_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E21D1D1DE21D)) 
    \number_of_words[1]_P_i_1 
       (.I0(\number_of_words_reg[0]_C_n_0 ),
        .I1(\number_of_words_reg[0]_LDC_n_0 ),
        .I2(\number_of_words_reg[0]_P_n_0 ),
        .I3(\number_of_words_reg[1]_C_n_0 ),
        .I4(\number_of_words_reg[1]_LDC_n_0 ),
        .I5(\number_of_words_reg[1]_P_n_0 ),
        .O(\number_of_words[1]_P_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h9AFF9500)) 
    \number_of_words[2]_C_i_1 
       (.I0(\number_of_words[2]_P_i_2_n_0 ),
        .I1(\number_of_words_reg[2]_P_n_0 ),
        .I2(\number_of_words_reg[2]_LDC_n_0 ),
        .I3(number_of_words0),
        .I4(\number_of_words_reg[2]_C_n_0 ),
        .O(\number_of_words[2]_C_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h9A95)) 
    \number_of_words[2]_P_i_1 
       (.I0(\number_of_words[2]_P_i_2_n_0 ),
        .I1(\number_of_words_reg[2]_P_n_0 ),
        .I2(\number_of_words_reg[2]_LDC_n_0 ),
        .I3(\number_of_words_reg[2]_C_n_0 ),
        .O(minusOp[2]));
  LUT6 #(
    .INIT(64'hFFFFFFE2E2E2FFE2)) 
    \number_of_words[2]_P_i_2 
       (.I0(\number_of_words_reg[0]_C_n_0 ),
        .I1(\number_of_words_reg[0]_LDC_n_0 ),
        .I2(\number_of_words_reg[0]_P_n_0 ),
        .I3(\number_of_words_reg[1]_C_n_0 ),
        .I4(\number_of_words_reg[1]_LDC_n_0 ),
        .I5(\number_of_words_reg[1]_P_n_0 ),
        .O(\number_of_words[2]_P_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h9AFF9500)) 
    \number_of_words[3]_C_i_1 
       (.I0(\number_of_words[3]_P_i_2_n_0 ),
        .I1(\number_of_words_reg[3]_P_n_0 ),
        .I2(\number_of_words_reg[3]_LDC_n_0 ),
        .I3(number_of_words0),
        .I4(\number_of_words_reg[3]_C_n_0 ),
        .O(\number_of_words[3]_C_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h9A95)) 
    \number_of_words[3]_P_i_1 
       (.I0(\number_of_words[3]_P_i_2_n_0 ),
        .I1(\number_of_words_reg[3]_P_n_0 ),
        .I2(\number_of_words_reg[3]_LDC_n_0 ),
        .I3(\number_of_words_reg[3]_C_n_0 ),
        .O(minusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFFE2)) 
    \number_of_words[3]_P_i_2 
       (.I0(\number_of_words_reg[2]_C_n_0 ),
        .I1(\number_of_words_reg[2]_LDC_n_0 ),
        .I2(\number_of_words_reg[2]_P_n_0 ),
        .I3(\number_of_words[2]_P_i_2_n_0 ),
        .O(\number_of_words[3]_P_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hD2FF8700)) 
    \number_of_words[4]_C_i_1 
       (.I0(\number_of_words_reg[4]_LDC_n_0 ),
        .I1(\number_of_words_reg[4]_P_n_0 ),
        .I2(\number_of_words[5]_P_i_3_n_0 ),
        .I3(number_of_words0),
        .I4(\number_of_words_reg[4]_C_n_0 ),
        .O(\number_of_words[4]_C_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE21D)) 
    \number_of_words[4]_P_i_1 
       (.I0(\number_of_words_reg[4]_C_n_0 ),
        .I1(\number_of_words_reg[4]_LDC_n_0 ),
        .I2(\number_of_words_reg[4]_P_n_0 ),
        .I3(\number_of_words[5]_P_i_3_n_0 ),
        .O(\number_of_words[4]_P_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE1EEFFFFE1110000)) 
    \number_of_words[5]_C_i_1 
       (.I0(\number_of_words[5]_P_i_2_n_0 ),
        .I1(\number_of_words[5]_P_i_3_n_0 ),
        .I2(\number_of_words_reg[5]_P_n_0 ),
        .I3(\number_of_words_reg[5]_LDC_n_0 ),
        .I4(number_of_words0),
        .I5(\number_of_words_reg[5]_C_n_0 ),
        .O(\number_of_words[5]_C_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hE1EEE111)) 
    \number_of_words[5]_P_i_1 
       (.I0(\number_of_words[5]_P_i_2_n_0 ),
        .I1(\number_of_words[5]_P_i_3_n_0 ),
        .I2(\number_of_words_reg[5]_P_n_0 ),
        .I3(\number_of_words_reg[5]_LDC_n_0 ),
        .I4(\number_of_words_reg[5]_C_n_0 ),
        .O(minusOp[5]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \number_of_words[5]_P_i_2 
       (.I0(\number_of_words_reg[4]_P_n_0 ),
        .I1(\number_of_words_reg[4]_LDC_n_0 ),
        .I2(\number_of_words_reg[4]_C_n_0 ),
        .O(\number_of_words[5]_P_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFFFE2)) 
    \number_of_words[5]_P_i_3 
       (.I0(\number_of_words_reg[3]_C_n_0 ),
        .I1(\number_of_words_reg[3]_LDC_n_0 ),
        .I2(\number_of_words_reg[3]_P_n_0 ),
        .I3(\number_of_words[2]_P_i_2_n_0 ),
        .I4(done_reg_i_6_n_0),
        .O(\number_of_words[5]_P_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h2DFF7800)) 
    \number_of_words[6]_C_i_1 
       (.I0(\number_of_words_reg[6]_LDC_n_0 ),
        .I1(\number_of_words_reg[6]_P_n_0 ),
        .I2(\next_state_reg[0]_i_3_n_0 ),
        .I3(number_of_words0),
        .I4(\number_of_words_reg[6]_C_n_0 ),
        .O(\number_of_words[6]_C_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \number_of_words[6]_P_i_1 
       (.I0(\number_of_words_reg[6]_C_n_0 ),
        .I1(\number_of_words_reg[6]_LDC_n_0 ),
        .I2(\number_of_words_reg[6]_P_n_0 ),
        .I3(\next_state_reg[0]_i_3_n_0 ),
        .O(minusOp[6]));
  LUT6 #(
    .INIT(64'hD2DDFFFF87880000)) 
    \number_of_words[7]_C_i_1 
       (.I0(\number_of_words_reg[7]_LDC_n_0 ),
        .I1(\number_of_words_reg[7]_P_n_0 ),
        .I2(\next_state_reg[0]_i_2_n_0 ),
        .I3(\next_state_reg[0]_i_3_n_0 ),
        .I4(number_of_words0),
        .I5(\number_of_words_reg[7]_C_n_0 ),
        .O(\number_of_words[7]_C_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \number_of_words[7]_P_i_1 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(current_state[3]),
        .I3(current_state[2]),
        .O(number_of_words0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hE21DE2E2)) 
    \number_of_words[7]_P_i_2 
       (.I0(\number_of_words_reg[7]_C_n_0 ),
        .I1(\number_of_words_reg[7]_LDC_n_0 ),
        .I2(\number_of_words_reg[7]_P_n_0 ),
        .I3(\next_state_reg[0]_i_2_n_0 ),
        .I4(\next_state_reg[0]_i_3_n_0 ),
        .O(minusOp[7]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[0]_C 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\number_of_words_reg[0]_LDC_i_2_n_0 ),
        .D(\number_of_words[0]_C_i_1_n_0 ),
        .Q(\number_of_words_reg[0]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \number_of_words_reg[0]_LDC 
       (.CLR(\number_of_words_reg[0]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\number_of_words_reg[0]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\number_of_words_reg[0]_LDC_n_0 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \number_of_words_reg[0]_LDC_i_1 
       (.I0(D[0]),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(current_state[2]),
        .I4(current_state[3]),
        .O(\number_of_words_reg[0]_LDC_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAA8AAAAAAABA)) 
    \number_of_words_reg[0]_LDC_i_2 
       (.I0(i_rst_IBUF),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(current_state[2]),
        .I4(current_state[3]),
        .I5(D[0]),
        .O(\number_of_words_reg[0]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[0]_P 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .D(minusOp[0]),
        .PRE(\number_of_words_reg[0]_LDC_i_1_n_0 ),
        .Q(\number_of_words_reg[0]_P_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[1]_C 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\number_of_words_reg[1]_LDC_i_2_n_0 ),
        .D(\number_of_words[1]_C_i_1_n_0 ),
        .Q(\number_of_words_reg[1]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \number_of_words_reg[1]_LDC 
       (.CLR(\number_of_words_reg[1]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\number_of_words_reg[1]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\number_of_words_reg[1]_LDC_n_0 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \number_of_words_reg[1]_LDC_i_1 
       (.I0(D[1]),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(current_state[2]),
        .I4(current_state[3]),
        .O(\number_of_words_reg[1]_LDC_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAA8AAAAAAABA)) 
    \number_of_words_reg[1]_LDC_i_2 
       (.I0(i_rst_IBUF),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(current_state[2]),
        .I4(current_state[3]),
        .I5(D[1]),
        .O(\number_of_words_reg[1]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[1]_P 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .D(\number_of_words[1]_P_i_1_n_0 ),
        .PRE(\number_of_words_reg[1]_LDC_i_1_n_0 ),
        .Q(\number_of_words_reg[1]_P_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[2]_C 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\number_of_words_reg[2]_LDC_i_2_n_0 ),
        .D(\number_of_words[2]_C_i_1_n_0 ),
        .Q(\number_of_words_reg[2]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \number_of_words_reg[2]_LDC 
       (.CLR(\number_of_words_reg[2]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\number_of_words_reg[2]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\number_of_words_reg[2]_LDC_n_0 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \number_of_words_reg[2]_LDC_i_1 
       (.I0(D[2]),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(current_state[2]),
        .I4(current_state[3]),
        .O(\number_of_words_reg[2]_LDC_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAA8AAAAAAABA)) 
    \number_of_words_reg[2]_LDC_i_2 
       (.I0(i_rst_IBUF),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(current_state[2]),
        .I4(current_state[3]),
        .I5(D[2]),
        .O(\number_of_words_reg[2]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[2]_P 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .D(minusOp[2]),
        .PRE(\number_of_words_reg[2]_LDC_i_1_n_0 ),
        .Q(\number_of_words_reg[2]_P_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[3]_C 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\number_of_words_reg[3]_LDC_i_2_n_0 ),
        .D(\number_of_words[3]_C_i_1_n_0 ),
        .Q(\number_of_words_reg[3]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \number_of_words_reg[3]_LDC 
       (.CLR(\number_of_words_reg[3]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\number_of_words_reg[3]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\number_of_words_reg[3]_LDC_n_0 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \number_of_words_reg[3]_LDC_i_1 
       (.I0(D[3]),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(current_state[2]),
        .I4(current_state[3]),
        .O(\number_of_words_reg[3]_LDC_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAA8AAAAAAABA)) 
    \number_of_words_reg[3]_LDC_i_2 
       (.I0(i_rst_IBUF),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(current_state[2]),
        .I4(current_state[3]),
        .I5(D[3]),
        .O(\number_of_words_reg[3]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[3]_P 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .D(minusOp[3]),
        .PRE(\number_of_words_reg[3]_LDC_i_1_n_0 ),
        .Q(\number_of_words_reg[3]_P_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[4]_C 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\number_of_words_reg[4]_LDC_i_2_n_0 ),
        .D(\number_of_words[4]_C_i_1_n_0 ),
        .Q(\number_of_words_reg[4]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \number_of_words_reg[4]_LDC 
       (.CLR(\number_of_words_reg[4]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\number_of_words_reg[4]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\number_of_words_reg[4]_LDC_n_0 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \number_of_words_reg[4]_LDC_i_1 
       (.I0(D[4]),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(current_state[2]),
        .I4(current_state[3]),
        .O(\number_of_words_reg[4]_LDC_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAA8AAAAAAABA)) 
    \number_of_words_reg[4]_LDC_i_2 
       (.I0(i_rst_IBUF),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(current_state[2]),
        .I4(current_state[3]),
        .I5(D[4]),
        .O(\number_of_words_reg[4]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[4]_P 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .D(\number_of_words[4]_P_i_1_n_0 ),
        .PRE(\number_of_words_reg[4]_LDC_i_1_n_0 ),
        .Q(\number_of_words_reg[4]_P_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[5]_C 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\number_of_words_reg[5]_LDC_i_2_n_0 ),
        .D(\number_of_words[5]_C_i_1_n_0 ),
        .Q(\number_of_words_reg[5]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \number_of_words_reg[5]_LDC 
       (.CLR(\number_of_words_reg[5]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\number_of_words_reg[5]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\number_of_words_reg[5]_LDC_n_0 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \number_of_words_reg[5]_LDC_i_1 
       (.I0(D[5]),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(current_state[2]),
        .I4(current_state[3]),
        .O(\number_of_words_reg[5]_LDC_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAA8AAAAAAABA)) 
    \number_of_words_reg[5]_LDC_i_2 
       (.I0(i_rst_IBUF),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(current_state[2]),
        .I4(current_state[3]),
        .I5(D[5]),
        .O(\number_of_words_reg[5]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[5]_P 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .D(minusOp[5]),
        .PRE(\number_of_words_reg[5]_LDC_i_1_n_0 ),
        .Q(\number_of_words_reg[5]_P_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[6]_C 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\number_of_words_reg[6]_LDC_i_2_n_0 ),
        .D(\number_of_words[6]_C_i_1_n_0 ),
        .Q(\number_of_words_reg[6]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \number_of_words_reg[6]_LDC 
       (.CLR(\number_of_words_reg[6]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\number_of_words_reg[6]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\number_of_words_reg[6]_LDC_n_0 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \number_of_words_reg[6]_LDC_i_1 
       (.I0(D[6]),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(current_state[2]),
        .I4(current_state[3]),
        .O(\number_of_words_reg[6]_LDC_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAA8AAAAAAABA)) 
    \number_of_words_reg[6]_LDC_i_2 
       (.I0(i_rst_IBUF),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(current_state[2]),
        .I4(current_state[3]),
        .I5(D[6]),
        .O(\number_of_words_reg[6]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[6]_P 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .D(minusOp[6]),
        .PRE(\number_of_words_reg[6]_LDC_i_1_n_0 ),
        .Q(\number_of_words_reg[6]_P_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[7]_C 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\number_of_words_reg[7]_LDC_i_2_n_0 ),
        .D(\number_of_words[7]_C_i_1_n_0 ),
        .Q(\number_of_words_reg[7]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \number_of_words_reg[7]_LDC 
       (.CLR(\number_of_words_reg[7]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\number_of_words_reg[7]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\number_of_words_reg[7]_LDC_n_0 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \number_of_words_reg[7]_LDC_i_1 
       (.I0(D[7]),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(current_state[2]),
        .I4(current_state[3]),
        .O(\number_of_words_reg[7]_LDC_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAA8AAAAAAABA)) 
    \number_of_words_reg[7]_LDC_i_2 
       (.I0(i_rst_IBUF),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(current_state[2]),
        .I4(current_state[3]),
        .I5(D[7]),
        .O(\number_of_words_reg[7]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[7]_P 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .D(minusOp[7]),
        .PRE(\number_of_words_reg[7]_LDC_i_1_n_0 ),
        .Q(\number_of_words_reg[7]_P_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h4004)) 
    \o_data_OBUF[0]_inst_i_1 
       (.I0(i_rst_IBUF),
        .I1(i_start_IBUF),
        .I2(\o_data_OBUF[1]_inst_i_2_n_0 ),
        .I3(\output ),
        .O(o_data_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_data_OBUF[1]_inst_i_1 
       (.I0(i_rst_IBUF),
        .I1(i_start_IBUF),
        .I2(\o_data_OBUF[1]_inst_i_2_n_0 ),
        .O(o_data_OBUF[1]));
  LUT6 #(
    .INIT(64'h9AA999A99A999999)) 
    \o_data_OBUF[1]_inst_i_2 
       (.I0(FF2_signal),
        .I1(\o_data_OBUF[1]_inst_i_3_n_0 ),
        .I2(current_state[2]),
        .I3(current_state[3]),
        .I4(output_i_3_n_0),
        .I5(output_i_2_n_0),
        .O(\o_data_OBUF[1]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h02000000)) 
    \o_data_OBUF[1]_inst_i_3 
       (.I0(\mem_inout_reg_n_0_[7] ),
        .I1(current_state[2]),
        .I2(current_state[3]),
        .I3(current_state[1]),
        .I4(current_state[0]),
        .O(\o_data_OBUF[1]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h003F0302)) 
    o_en_OBUF_inst_i_1
       (.I0(o_en_OBUF_inst_i_2_n_0),
        .I1(current_state[3]),
        .I2(current_state[2]),
        .I3(current_state[0]),
        .I4(current_state[1]),
        .O(o_en_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    o_en_OBUF_inst_i_2
       (.I0(next_state[2]),
        .I1(next_state[0]),
        .I2(next_state[3]),
        .I3(next_state[1]),
        .O(o_en_OBUF_inst_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0440)) 
    o_we_OBUF_inst_i_1
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(current_state[3]),
        .I3(current_state[2]),
        .O(o_we_OBUF));
  LUT6 #(
    .INIT(64'h0AC00AC0FFFF0AC0)) 
    output_i_1
       (.I0(output_i_2_n_0),
        .I1(output_i_3_n_0),
        .I2(current_state[3]),
        .I3(current_state[2]),
        .I4(\mem_inout_reg_n_0_[7] ),
        .I5(output_i_4_n_0),
        .O(u));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    output_i_2
       (.I0(\mem_inout_reg_n_0_[3] ),
        .I1(p_3_in),
        .I2(current_state[1]),
        .I3(p_4_in),
        .I4(current_state[0]),
        .I5(p_5_in),
        .O(output_i_2_n_0));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    output_i_3
       (.I0(\mem_inout_reg_n_0_[0] ),
        .I1(current_state[1]),
        .I2(\mem_inout_reg_n_0_[1] ),
        .I3(current_state[0]),
        .I4(\mem_inout_reg_n_0_[2] ),
        .O(output_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    output_i_4
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(current_state[3]),
        .I3(current_state[2]),
        .O(output_i_4_n_0));
endmodule

module convolutional_encoder
   (\output ,
    FF2_signal,
    component_enable,
    u,
    i_clk_IBUF_BUFG,
    AR);
  output \output ;
  output FF2_signal;
  input component_enable;
  input u;
  input i_clk_IBUF_BUFG;
  input [0:0]AR;

  wire [0:0]AR;
  wire FF2_signal;
  wire component_enable;
  wire i_clk_IBUF_BUFG;
  wire \output ;
  wire u;

  FF_D FF1
       (.AR(AR),
        .component_enable(component_enable),
        .i_clk_IBUF_BUFG(i_clk_IBUF_BUFG),
        .\output (\output ),
        .u(u));
  FF_D_0 FF2
       (.AR(AR),
        .FF2_signal(FF2_signal),
        .component_enable(component_enable),
        .i_clk_IBUF_BUFG(i_clk_IBUF_BUFG),
        .\output (\output ));
endmodule

(* ECO_CHECKSUM = "447fbcc4" *) 
(* NotValidForBitStream *)
module project_reti_logiche
   (i_clk,
    i_rst,
    i_start,
    i_data,
    o_address,
    o_done,
    o_en,
    o_we,
    o_data);
  input i_clk;
  input i_rst;
  input i_start;
  input [7:0]i_data;
  output [15:0]o_address;
  output o_done;
  output o_en;
  output o_we;
  output [7:0]o_data;

  wire FF2_signal;
  wire component_enable;
  wire component_reset;
  wire cont_n_10;
  wire cont_n_7;
  wire cont_n_9;
  wire i_clk;
  wire i_clk_IBUF;
  wire i_clk_IBUF_BUFG;
  wire [7:0]i_data;
  wire [7:0]i_data_IBUF;
  wire i_rst;
  wire i_rst_IBUF;
  wire i_start;
  wire i_start_IBUF;
  wire [15:0]o_address;
  wire [10:0]o_address_OBUF;
  wire [7:0]o_data;
  wire [7:0]o_data_OBUF;
  wire o_done;
  wire o_done_OBUF;
  wire o_en;
  wire o_en_OBUF;
  wire o_we;
  wire o_we_OBUF;
  wire \output ;
  wire u;

initial begin
 $sdf_annotate("project_tb_time_impl.sdf",,,,"tool_control");
end
  controller cont
       (.AR(component_reset),
        .D(i_data_IBUF),
        .FF2_signal(FF2_signal),
        .Q(o_address_OBUF),
        .component_enable(component_enable),
        .i_clk_IBUF(i_clk_IBUF),
        .i_clk_IBUF_BUFG(i_clk_IBUF_BUFG),
        .i_rst(cont_n_7),
        .i_rst_0(cont_n_9),
        .i_rst_IBUF(i_rst_IBUF),
        .i_start_IBUF(i_start_IBUF),
        .o_data_OBUF(o_data_OBUF[1:0]),
        .o_done_OBUF(o_done_OBUF),
        .o_en_OBUF(o_en_OBUF),
        .o_we_OBUF(o_we_OBUF),
        .\output (\output ),
        .output_reg(cont_n_10),
        .u(u));
  convolutional_encoder encoder
       (.AR(component_reset),
        .FF2_signal(FF2_signal),
        .component_enable(component_enable),
        .i_clk_IBUF_BUFG(i_clk_IBUF_BUFG),
        .\output (\output ),
        .u(u));
  BUFG i_clk_IBUF_BUFG_inst
       (.I(i_clk_IBUF),
        .O(i_clk_IBUF_BUFG));
  IBUF i_clk_IBUF_inst
       (.I(i_clk),
        .O(i_clk_IBUF));
  IBUF \i_data_IBUF[0]_inst 
       (.I(i_data[0]),
        .O(i_data_IBUF[0]));
  IBUF \i_data_IBUF[1]_inst 
       (.I(i_data[1]),
        .O(i_data_IBUF[1]));
  IBUF \i_data_IBUF[2]_inst 
       (.I(i_data[2]),
        .O(i_data_IBUF[2]));
  IBUF \i_data_IBUF[3]_inst 
       (.I(i_data[3]),
        .O(i_data_IBUF[3]));
  IBUF \i_data_IBUF[4]_inst 
       (.I(i_data[4]),
        .O(i_data_IBUF[4]));
  IBUF \i_data_IBUF[5]_inst 
       (.I(i_data[5]),
        .O(i_data_IBUF[5]));
  IBUF \i_data_IBUF[6]_inst 
       (.I(i_data[6]),
        .O(i_data_IBUF[6]));
  IBUF \i_data_IBUF[7]_inst 
       (.I(i_data[7]),
        .O(i_data_IBUF[7]));
  IBUF i_rst_IBUF_inst
       (.I(i_rst),
        .O(i_rst_IBUF));
  IBUF i_start_IBUF_inst
       (.I(i_start),
        .O(i_start_IBUF));
  OBUF \o_address_OBUF[0]_inst 
       (.I(o_address_OBUF[0]),
        .O(o_address[0]));
  OBUF \o_address_OBUF[10]_inst 
       (.I(o_address_OBUF[10]),
        .O(o_address[10]));
  OBUF \o_address_OBUF[11]_inst 
       (.I(1'b0),
        .O(o_address[11]));
  OBUF \o_address_OBUF[12]_inst 
       (.I(1'b0),
        .O(o_address[12]));
  OBUF \o_address_OBUF[13]_inst 
       (.I(1'b0),
        .O(o_address[13]));
  OBUF \o_address_OBUF[14]_inst 
       (.I(1'b0),
        .O(o_address[14]));
  OBUF \o_address_OBUF[15]_inst 
       (.I(1'b0),
        .O(o_address[15]));
  OBUF \o_address_OBUF[1]_inst 
       (.I(o_address_OBUF[1]),
        .O(o_address[1]));
  OBUF \o_address_OBUF[2]_inst 
       (.I(o_address_OBUF[2]),
        .O(o_address[2]));
  OBUF \o_address_OBUF[3]_inst 
       (.I(o_address_OBUF[3]),
        .O(o_address[3]));
  OBUF \o_address_OBUF[4]_inst 
       (.I(o_address_OBUF[4]),
        .O(o_address[4]));
  OBUF \o_address_OBUF[5]_inst 
       (.I(o_address_OBUF[5]),
        .O(o_address[5]));
  OBUF \o_address_OBUF[6]_inst 
       (.I(o_address_OBUF[6]),
        .O(o_address[6]));
  OBUF \o_address_OBUF[7]_inst 
       (.I(o_address_OBUF[7]),
        .O(o_address[7]));
  OBUF \o_address_OBUF[8]_inst 
       (.I(o_address_OBUF[8]),
        .O(o_address[8]));
  OBUF \o_address_OBUF[9]_inst 
       (.I(o_address_OBUF[9]),
        .O(o_address[9]));
  OBUF \o_data_OBUF[0]_inst 
       (.I(o_data_OBUF[0]),
        .O(o_data[0]));
  OBUF \o_data_OBUF[1]_inst 
       (.I(o_data_OBUF[1]),
        .O(o_data[1]));
  OBUF \o_data_OBUF[2]_inst 
       (.I(o_data_OBUF[2]),
        .O(o_data[2]));
  OBUF \o_data_OBUF[3]_inst 
       (.I(o_data_OBUF[3]),
        .O(o_data[3]));
  OBUF \o_data_OBUF[4]_inst 
       (.I(o_data_OBUF[4]),
        .O(o_data[4]));
  OBUF \o_data_OBUF[5]_inst 
       (.I(o_data_OBUF[5]),
        .O(o_data[5]));
  OBUF \o_data_OBUF[6]_inst 
       (.I(o_data_OBUF[6]),
        .O(o_data[6]));
  OBUF \o_data_OBUF[7]_inst 
       (.I(o_data_OBUF[7]),
        .O(o_data[7]));
  OBUF o_done_OBUF_inst
       (.I(o_done_OBUF),
        .O(o_done));
  OBUF o_en_OBUF_inst
       (.I(o_en_OBUF),
        .O(o_en));
  OBUF o_we_OBUF_inst
       (.I(o_we_OBUF),
        .O(o_we));
  string_manager str_mng
       (.component_enable(component_enable),
        .\half_z_inout_shifter_reg[2]_0 (cont_n_10),
        .\half_z_inout_shifter_reg[3]_0 (cont_n_9),
        .\half_z_inout_shifter_reg[4]_0 (cont_n_7),
        .i_clk_IBUF_BUFG(i_clk_IBUF_BUFG),
        .i_rst_IBUF(i_rst_IBUF),
        .i_start_IBUF(i_start_IBUF),
        .o_data_OBUF(o_data_OBUF[7:2]));
endmodule

module string_manager
   (o_data_OBUF,
    i_rst_IBUF,
    i_start_IBUF,
    \half_z_inout_shifter_reg[4]_0 ,
    component_enable,
    i_clk_IBUF_BUFG,
    \half_z_inout_shifter_reg[3]_0 ,
    \half_z_inout_shifter_reg[2]_0 );
  output [5:0]o_data_OBUF;
  input i_rst_IBUF;
  input i_start_IBUF;
  input \half_z_inout_shifter_reg[4]_0 ;
  input component_enable;
  input i_clk_IBUF_BUFG;
  input \half_z_inout_shifter_reg[3]_0 ;
  input \half_z_inout_shifter_reg[2]_0 ;

  wire component_enable;
  wire [7:2]half_z_inout_shifter;
  wire \half_z_inout_shifter_reg[2]_0 ;
  wire \half_z_inout_shifter_reg[3]_0 ;
  wire \half_z_inout_shifter_reg[4]_0 ;
  wire i_clk_IBUF_BUFG;
  wire i_rst_IBUF;
  wire i_start_IBUF;
  wire [5:0]o_data_OBUF;

  FDRE #(
    .INIT(1'b0)) 
    \half_z_inout_shifter_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(component_enable),
        .D(\half_z_inout_shifter_reg[2]_0 ),
        .Q(half_z_inout_shifter[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_z_inout_shifter_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(component_enable),
        .D(\half_z_inout_shifter_reg[3]_0 ),
        .Q(half_z_inout_shifter[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_z_inout_shifter_reg[4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(component_enable),
        .D(half_z_inout_shifter[2]),
        .Q(half_z_inout_shifter[4]),
        .R(\half_z_inout_shifter_reg[4]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \half_z_inout_shifter_reg[5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(component_enable),
        .D(half_z_inout_shifter[3]),
        .Q(half_z_inout_shifter[5]),
        .R(\half_z_inout_shifter_reg[4]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \half_z_inout_shifter_reg[6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(component_enable),
        .D(half_z_inout_shifter[4]),
        .Q(half_z_inout_shifter[6]),
        .R(\half_z_inout_shifter_reg[4]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \half_z_inout_shifter_reg[7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(component_enable),
        .D(half_z_inout_shifter[5]),
        .Q(half_z_inout_shifter[7]),
        .R(\half_z_inout_shifter_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \o_data_OBUF[2]_inst_i_1 
       (.I0(half_z_inout_shifter[2]),
        .I1(i_rst_IBUF),
        .I2(i_start_IBUF),
        .O(o_data_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \o_data_OBUF[3]_inst_i_1 
       (.I0(half_z_inout_shifter[3]),
        .I1(i_rst_IBUF),
        .I2(i_start_IBUF),
        .O(o_data_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \o_data_OBUF[4]_inst_i_1 
       (.I0(half_z_inout_shifter[4]),
        .I1(i_rst_IBUF),
        .I2(i_start_IBUF),
        .O(o_data_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \o_data_OBUF[5]_inst_i_1 
       (.I0(half_z_inout_shifter[5]),
        .I1(i_rst_IBUF),
        .I2(i_start_IBUF),
        .O(o_data_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \o_data_OBUF[6]_inst_i_1 
       (.I0(half_z_inout_shifter[6]),
        .I1(i_rst_IBUF),
        .I2(i_start_IBUF),
        .O(o_data_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \o_data_OBUF[7]_inst_i_1 
       (.I0(half_z_inout_shifter[7]),
        .I1(i_rst_IBUF),
        .I2(i_start_IBUF),
        .O(o_data_OBUF[5]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
