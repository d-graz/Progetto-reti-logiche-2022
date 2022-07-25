// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Mon Jul 25 13:17:49 2022
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
    output_reg_0,
    component_enable,
    u,
    i_clk_IBUF_BUFG,
    component_reset_BUFG,
    FF2_signal);
  output \output ;
  output output_reg_0;
  input component_enable;
  input u;
  input i_clk_IBUF_BUFG;
  input component_reset_BUFG;
  input FF2_signal;

  wire FF2_signal;
  wire component_enable;
  wire component_reset_BUFG;
  wire i_clk_IBUF_BUFG;
  wire \output ;
  wire output_reg_0;
  wire u;

  LUT2 #(
    .INIT(4'h9)) 
    \half_z_inout_shifter[2]_i_2 
       (.I0(\output ),
        .I1(FF2_signal),
        .O(output_reg_0));
  FDCE #(
    .INIT(1'b0)) 
    output_reg
       (.C(i_clk_IBUF_BUFG),
        .CE(component_enable),
        .CLR(component_reset_BUFG),
        .D(u),
        .Q(\output ));
endmodule

(* ORIG_REF_NAME = "FF_D" *) 
module FF_D_0
   (FF2_signal,
    component_enable,
    \output ,
    i_clk_IBUF_BUFG,
    component_reset_BUFG);
  output FF2_signal;
  input component_enable;
  input \output ;
  input i_clk_IBUF_BUFG;
  input component_reset_BUFG;

  wire FF2_signal;
  wire component_enable;
  wire component_reset_BUFG;
  wire i_clk_IBUF_BUFG;
  wire \output ;

  FDCE #(
    .INIT(1'b0)) 
    output_reg
       (.C(i_clk_IBUF_BUFG),
        .CE(component_enable),
        .CLR(component_reset_BUFG),
        .D(\output ),
        .Q(FF2_signal));
endmodule

module controller
   (o_done_OBUF,
    component_enable,
    o_data_OBUF,
    u,
    \current_state_reg[2]_0 ,
    o_en_OBUF,
    o_we_OBUF,
    Q,
    component_reset_BUFG,
    i_clk_IBUF_BUFG,
    FF2_signal,
    \output ,
    i_start_IBUF,
    i_rst_IBUF,
    D,
    i_clk_IBUF);
  output o_done_OBUF;
  output component_enable;
  output [1:0]o_data_OBUF;
  output u;
  output \current_state_reg[2]_0 ;
  output o_en_OBUF;
  output o_we_OBUF;
  output [15:0]Q;
  input component_reset_BUFG;
  input i_clk_IBUF_BUFG;
  input FF2_signal;
  input \output ;
  input i_start_IBUF;
  input i_rst_IBUF;
  input [7:0]D;
  input i_clk_IBUF;

  wire [7:0]D;
  wire FF2_signal;
  wire [15:0]Q;
  wire \base_read[0]_i_2_n_0 ;
  wire [15:0]base_read_reg;
  wire \base_read_reg[0]_i_1_n_0 ;
  wire \base_read_reg[0]_i_1_n_4 ;
  wire \base_read_reg[0]_i_1_n_5 ;
  wire \base_read_reg[0]_i_1_n_6 ;
  wire \base_read_reg[0]_i_1_n_7 ;
  wire \base_read_reg[12]_i_1_n_4 ;
  wire \base_read_reg[12]_i_1_n_5 ;
  wire \base_read_reg[12]_i_1_n_6 ;
  wire \base_read_reg[12]_i_1_n_7 ;
  wire \base_read_reg[4]_i_1_n_0 ;
  wire \base_read_reg[4]_i_1_n_4 ;
  wire \base_read_reg[4]_i_1_n_5 ;
  wire \base_read_reg[4]_i_1_n_6 ;
  wire \base_read_reg[4]_i_1_n_7 ;
  wire \base_read_reg[8]_i_1_n_0 ;
  wire \base_read_reg[8]_i_1_n_4 ;
  wire \base_read_reg[8]_i_1_n_5 ;
  wire \base_read_reg[8]_i_1_n_6 ;
  wire \base_read_reg[8]_i_1_n_7 ;
  wire \base_write[0]_i_3_n_0 ;
  wire [15:0]base_write_reg;
  wire \base_write_reg[0]_i_2_n_0 ;
  wire \base_write_reg[0]_i_2_n_4 ;
  wire \base_write_reg[0]_i_2_n_5 ;
  wire \base_write_reg[0]_i_2_n_6 ;
  wire \base_write_reg[0]_i_2_n_7 ;
  wire \base_write_reg[12]_i_1_n_4 ;
  wire \base_write_reg[12]_i_1_n_5 ;
  wire \base_write_reg[12]_i_1_n_6 ;
  wire \base_write_reg[12]_i_1_n_7 ;
  wire \base_write_reg[4]_i_1_n_0 ;
  wire \base_write_reg[4]_i_1_n_4 ;
  wire \base_write_reg[4]_i_1_n_5 ;
  wire \base_write_reg[4]_i_1_n_6 ;
  wire \base_write_reg[4]_i_1_n_7 ;
  wire \base_write_reg[8]_i_1_n_0 ;
  wire \base_write_reg[8]_i_1_n_4 ;
  wire \base_write_reg[8]_i_1_n_5 ;
  wire \base_write_reg[8]_i_1_n_6 ;
  wire \base_write_reg[8]_i_1_n_7 ;
  wire component_enable;
  wire component_enable0;
  wire component_enable01_out;
  wire component_reset_BUFG;
  wire [3:0]current_state;
  wire \current_state_reg[2]_0 ;
  wire done0;
  wire done_reg_i_12_n_0;
  wire done_reg_i_13_n_0;
  wire done_reg_i_18_n_0;
  wire done_reg_i_19_n_0;
  wire done_reg_i_2_n_0;
  wire done_reg_i_30_n_0;
  wire done_reg_i_31_n_0;
  wire done_reg_i_3_n_0;
  wire done_reg_i_4_n_0;
  wire done_reg_i_5_n_0;
  wire done_reg_i_6_n_0;
  wire done_reg_i_7_n_0;
  wire enable_down;
  wire enable_down0;
  wire enable_down_reg_i_2_n_0;
  wire enable_up;
  wire enable_up0;
  wire enable_up_reg_i_2_n_0;
  wire i_clk_IBUF;
  wire i_clk_IBUF_BUFG;
  wire i_rst_IBUF;
  wire i_start_IBUF;
  wire \mem_address_reg[0]_i_1_n_0 ;
  wire \mem_address_reg[10]_i_1_n_0 ;
  wire \mem_address_reg[11]_i_1_n_0 ;
  wire \mem_address_reg[12]_i_1_n_0 ;
  wire \mem_address_reg[13]_i_1_n_0 ;
  wire \mem_address_reg[14]_i_1_n_0 ;
  wire \mem_address_reg[15]_i_1_n_0 ;
  wire \mem_address_reg[15]_i_2_n_0 ;
  wire \mem_address_reg[15]_i_3_n_0 ;
  wire \mem_address_reg[15]_i_4_n_0 ;
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
  wire [3:0]next_state;
  wire \next_state_reg[0]_i_1_n_0 ;
  wire \next_state_reg[0]_i_2_n_0 ;
  wire \next_state_reg[0]_i_3_n_0 ;
  wire \next_state_reg[1]_i_1_n_0 ;
  wire \next_state_reg[2]_i_1_n_0 ;
  wire \next_state_reg[3]_i_1_n_0 ;
  wire \next_state_reg[3]_i_2_n_0 ;
  wire \next_state_reg[3]_i_3_n_0 ;
  wire \next_state_reg[3]_i_4_n_0 ;
  wire \next_state_reg[3]_i_5_n_0 ;
  wire \next_state_reg[3]_i_6_n_0 ;
  wire \next_state_reg[3]_i_7_n_0 ;
  wire \next_state_reg[3]_i_8_n_0 ;
  wire [30:0]number_of_words;
  wire number_of_words0;
  wire [31:0]number_of_words02_in;
  wire \number_of_words[0]_C_i_1_n_0 ;
  wire \number_of_words[12]_C_i_3_n_0 ;
  wire \number_of_words[12]_C_i_4_n_0 ;
  wire \number_of_words[12]_C_i_5_n_0 ;
  wire \number_of_words[12]_C_i_6_n_0 ;
  wire \number_of_words[12]_C_i_7_n_0 ;
  wire \number_of_words[12]_C_i_8_n_0 ;
  wire \number_of_words[12]_C_i_9_n_0 ;
  wire \number_of_words[16]_C_i_2_n_0 ;
  wire \number_of_words[16]_C_i_6_n_0 ;
  wire \number_of_words[16]_C_i_7_n_0 ;
  wire \number_of_words[16]_C_i_8_n_0 ;
  wire \number_of_words[16]_C_i_9_n_0 ;
  wire \number_of_words[20]_C_i_3_n_0 ;
  wire \number_of_words[20]_C_i_4_n_0 ;
  wire \number_of_words[20]_C_i_5_n_0 ;
  wire \number_of_words[20]_C_i_6_n_0 ;
  wire \number_of_words[20]_C_i_7_n_0 ;
  wire \number_of_words[20]_C_i_8_n_0 ;
  wire \number_of_words[20]_C_i_9_n_0 ;
  wire \number_of_words[24]_C_i_2_n_0 ;
  wire \number_of_words[24]_C_i_6_n_0 ;
  wire \number_of_words[24]_C_i_7_n_0 ;
  wire \number_of_words[24]_C_i_8_n_0 ;
  wire \number_of_words[24]_C_i_9_n_0 ;
  wire \number_of_words[28]_C_i_3_n_0 ;
  wire \number_of_words[28]_C_i_4_n_0 ;
  wire \number_of_words[28]_C_i_5_n_0 ;
  wire \number_of_words[28]_C_i_6_n_0 ;
  wire \number_of_words[28]_C_i_7_n_0 ;
  wire \number_of_words[28]_C_i_8_n_0 ;
  wire \number_of_words[28]_C_i_9_n_0 ;
  wire \number_of_words[31]_C_i_5_n_0 ;
  wire \number_of_words[31]_C_i_6_n_0 ;
  wire \number_of_words[31]_C_i_7_n_0 ;
  wire \number_of_words[4]_C_i_10_n_0 ;
  wire \number_of_words[4]_C_i_4_n_0 ;
  wire \number_of_words[4]_C_i_5_n_0 ;
  wire \number_of_words[4]_C_i_6_n_0 ;
  wire \number_of_words[4]_C_i_7_n_0 ;
  wire \number_of_words[4]_C_i_8_n_0 ;
  wire \number_of_words[4]_C_i_9_n_0 ;
  wire \number_of_words[8]_C_i_2_n_0 ;
  wire \number_of_words[8]_C_i_3_n_0 ;
  wire \number_of_words[8]_C_i_4_n_0 ;
  wire \number_of_words[8]_C_i_5_n_0 ;
  wire \number_of_words[8]_C_i_6_n_0 ;
  wire \number_of_words[8]_C_i_7_n_0 ;
  wire \number_of_words[8]_C_i_8_n_0 ;
  wire \number_of_words[8]_C_i_9_n_0 ;
  wire \number_of_words_reg[0]_C_n_0 ;
  wire \number_of_words_reg[0]_LDC_i_1_n_0 ;
  wire \number_of_words_reg[0]_LDC_i_2_n_0 ;
  wire \number_of_words_reg[0]_LDC_n_0 ;
  wire \number_of_words_reg[0]_P_n_0 ;
  wire \number_of_words_reg[10]_C_n_0 ;
  wire \number_of_words_reg[10]_P_n_0 ;
  wire \number_of_words_reg[11]_C_n_0 ;
  wire \number_of_words_reg[11]_P_n_0 ;
  wire \number_of_words_reg[12]_C_i_1_n_0 ;
  wire \number_of_words_reg[12]_C_n_0 ;
  wire \number_of_words_reg[12]_P_n_0 ;
  wire \number_of_words_reg[13]_C_n_0 ;
  wire \number_of_words_reg[13]_P_n_0 ;
  wire \number_of_words_reg[14]_C_n_0 ;
  wire \number_of_words_reg[14]_P_n_0 ;
  wire \number_of_words_reg[15]_C_n_0 ;
  wire \number_of_words_reg[15]_P_n_0 ;
  wire \number_of_words_reg[16]_C_i_1_n_0 ;
  wire \number_of_words_reg[16]_C_n_0 ;
  wire \number_of_words_reg[16]_P_n_0 ;
  wire \number_of_words_reg[17]_C_n_0 ;
  wire \number_of_words_reg[17]_P_n_0 ;
  wire \number_of_words_reg[18]_C_n_0 ;
  wire \number_of_words_reg[18]_P_n_0 ;
  wire \number_of_words_reg[19]_C_n_0 ;
  wire \number_of_words_reg[19]_P_n_0 ;
  wire \number_of_words_reg[1]_C_n_0 ;
  wire \number_of_words_reg[1]_LDC_i_1_n_0 ;
  wire \number_of_words_reg[1]_LDC_i_2_n_0 ;
  wire \number_of_words_reg[1]_LDC_n_0 ;
  wire \number_of_words_reg[1]_P_n_0 ;
  wire \number_of_words_reg[20]_C_i_1_n_0 ;
  wire \number_of_words_reg[20]_C_n_0 ;
  wire \number_of_words_reg[20]_P_n_0 ;
  wire \number_of_words_reg[21]_C_n_0 ;
  wire \number_of_words_reg[21]_P_n_0 ;
  wire \number_of_words_reg[22]_C_n_0 ;
  wire \number_of_words_reg[22]_P_n_0 ;
  wire \number_of_words_reg[23]_C_n_0 ;
  wire \number_of_words_reg[23]_P_n_0 ;
  wire \number_of_words_reg[24]_C_i_1_n_0 ;
  wire \number_of_words_reg[24]_C_n_0 ;
  wire \number_of_words_reg[24]_P_n_0 ;
  wire \number_of_words_reg[25]_C_n_0 ;
  wire \number_of_words_reg[25]_P_n_0 ;
  wire \number_of_words_reg[26]_C_n_0 ;
  wire \number_of_words_reg[26]_P_n_0 ;
  wire \number_of_words_reg[27]_C_n_0 ;
  wire \number_of_words_reg[27]_P_n_0 ;
  wire \number_of_words_reg[28]_C_i_1_n_0 ;
  wire \number_of_words_reg[28]_C_n_0 ;
  wire \number_of_words_reg[28]_P_n_0 ;
  wire \number_of_words_reg[29]_C_n_0 ;
  wire \number_of_words_reg[29]_P_n_0 ;
  wire \number_of_words_reg[2]_C_n_0 ;
  wire \number_of_words_reg[2]_LDC_i_1_n_0 ;
  wire \number_of_words_reg[2]_LDC_i_2_n_0 ;
  wire \number_of_words_reg[2]_LDC_n_0 ;
  wire \number_of_words_reg[2]_P_n_0 ;
  wire \number_of_words_reg[30]_C_n_0 ;
  wire \number_of_words_reg[30]_P_n_0 ;
  wire \number_of_words_reg[31]_C_n_0 ;
  wire \number_of_words_reg[31]_LDC_i_1_n_0 ;
  wire \number_of_words_reg[31]_LDC_n_0 ;
  wire \number_of_words_reg[31]_P_n_0 ;
  wire \number_of_words_reg[3]_C_n_0 ;
  wire \number_of_words_reg[3]_LDC_i_1_n_0 ;
  wire \number_of_words_reg[3]_LDC_i_2_n_0 ;
  wire \number_of_words_reg[3]_LDC_n_0 ;
  wire \number_of_words_reg[3]_P_n_0 ;
  wire \number_of_words_reg[4]_C_i_1_n_0 ;
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
  wire \number_of_words_reg[8]_C_i_1_n_0 ;
  wire \number_of_words_reg[8]_C_n_0 ;
  wire \number_of_words_reg[8]_P_n_0 ;
  wire \number_of_words_reg[9]_C_n_0 ;
  wire \number_of_words_reg[9]_P_n_0 ;
  wire [1:0]o_data_OBUF;
  wire \o_data_OBUF[1]_inst_i_3_n_0 ;
  wire \o_data_OBUF[1]_inst_i_4_n_0 ;
  wire \o_data_OBUF[1]_inst_i_5_n_0 ;
  wire \o_data_OBUF[1]_inst_i_6_n_0 ;
  wire o_done_OBUF;
  wire o_en_OBUF;
  wire o_en_OBUF_inst_i_2_n_0;
  wire o_we_OBUF;
  wire \output ;
  wire output_i_2_n_0;
  wire output_i_3_n_0;
  wire output_i_4_n_0;
  wire output_i_5_n_0;
  wire output_i_6_n_0;
  wire p_1_in2_in;
  wire p_3_in;
  wire p_4_in;
  wire p_5_in;
  wire sel;
  wire u;
  wire [2:0]\NLW_base_read_reg[0]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_base_read_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_base_read_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_base_read_reg[8]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_base_write_reg[0]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_base_write_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_base_write_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_base_write_reg[8]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_number_of_words_reg[12]_C_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_number_of_words_reg[16]_C_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_number_of_words_reg[20]_C_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_number_of_words_reg[24]_C_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_number_of_words_reg[28]_C_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_number_of_words_reg[31]_C_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_number_of_words_reg[31]_C_i_2_O_UNCONNECTED ;
  wire [2:0]\NLW_number_of_words_reg[4]_C_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_number_of_words_reg[8]_C_i_1_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \base_read[0]_i_2 
       (.I0(base_read_reg[0]),
        .O(\base_read[0]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \base_read_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .CLR(component_reset_BUFG),
        .D(\base_read_reg[0]_i_1_n_7 ),
        .Q(base_read_reg[0]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \base_read_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\base_read_reg[0]_i_1_n_0 ,\NLW_base_read_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\base_read_reg[0]_i_1_n_4 ,\base_read_reg[0]_i_1_n_5 ,\base_read_reg[0]_i_1_n_6 ,\base_read_reg[0]_i_1_n_7 }),
        .S({base_read_reg[3:1],\base_read[0]_i_2_n_0 }));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \base_read_reg[10] 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .CLR(component_reset_BUFG),
        .D(\base_read_reg[8]_i_1_n_5 ),
        .Q(base_read_reg[10]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \base_read_reg[11] 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .CLR(component_reset_BUFG),
        .D(\base_read_reg[8]_i_1_n_4 ),
        .Q(base_read_reg[11]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \base_read_reg[12] 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .CLR(component_reset_BUFG),
        .D(\base_read_reg[12]_i_1_n_7 ),
        .Q(base_read_reg[12]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \base_read_reg[12]_i_1 
       (.CI(\base_read_reg[8]_i_1_n_0 ),
        .CO(\NLW_base_read_reg[12]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\base_read_reg[12]_i_1_n_4 ,\base_read_reg[12]_i_1_n_5 ,\base_read_reg[12]_i_1_n_6 ,\base_read_reg[12]_i_1_n_7 }),
        .S(base_read_reg[15:12]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \base_read_reg[13] 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .CLR(component_reset_BUFG),
        .D(\base_read_reg[12]_i_1_n_6 ),
        .Q(base_read_reg[13]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \base_read_reg[14] 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .CLR(component_reset_BUFG),
        .D(\base_read_reg[12]_i_1_n_5 ),
        .Q(base_read_reg[14]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \base_read_reg[15] 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .CLR(component_reset_BUFG),
        .D(\base_read_reg[12]_i_1_n_4 ),
        .Q(base_read_reg[15]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \base_read_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .CLR(component_reset_BUFG),
        .D(\base_read_reg[0]_i_1_n_6 ),
        .Q(base_read_reg[1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \base_read_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .CLR(component_reset_BUFG),
        .D(\base_read_reg[0]_i_1_n_5 ),
        .Q(base_read_reg[2]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \base_read_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .CLR(component_reset_BUFG),
        .D(\base_read_reg[0]_i_1_n_4 ),
        .Q(base_read_reg[3]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \base_read_reg[4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .CLR(component_reset_BUFG),
        .D(\base_read_reg[4]_i_1_n_7 ),
        .Q(base_read_reg[4]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \base_read_reg[4]_i_1 
       (.CI(\base_read_reg[0]_i_1_n_0 ),
        .CO({\base_read_reg[4]_i_1_n_0 ,\NLW_base_read_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\base_read_reg[4]_i_1_n_4 ,\base_read_reg[4]_i_1_n_5 ,\base_read_reg[4]_i_1_n_6 ,\base_read_reg[4]_i_1_n_7 }),
        .S(base_read_reg[7:4]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \base_read_reg[5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .CLR(component_reset_BUFG),
        .D(\base_read_reg[4]_i_1_n_6 ),
        .Q(base_read_reg[5]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \base_read_reg[6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .CLR(component_reset_BUFG),
        .D(\base_read_reg[4]_i_1_n_5 ),
        .Q(base_read_reg[6]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \base_read_reg[7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .CLR(component_reset_BUFG),
        .D(\base_read_reg[4]_i_1_n_4 ),
        .Q(base_read_reg[7]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \base_read_reg[8] 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .CLR(component_reset_BUFG),
        .D(\base_read_reg[8]_i_1_n_7 ),
        .Q(base_read_reg[8]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \base_read_reg[8]_i_1 
       (.CI(\base_read_reg[4]_i_1_n_0 ),
        .CO({\base_read_reg[8]_i_1_n_0 ,\NLW_base_read_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\base_read_reg[8]_i_1_n_4 ,\base_read_reg[8]_i_1_n_5 ,\base_read_reg[8]_i_1_n_6 ,\base_read_reg[8]_i_1_n_7 }),
        .S(base_read_reg[11:8]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \base_read_reg[9] 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .CLR(component_reset_BUFG),
        .D(\base_read_reg[8]_i_1_n_6 ),
        .Q(base_read_reg[9]));
  LUT4 #(
    .INIT(16'h6000)) 
    \base_write[0]_i_1 
       (.I0(current_state[3]),
        .I1(current_state[2]),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .O(sel));
  LUT1 #(
    .INIT(2'h1)) 
    \base_write[0]_i_3 
       (.I0(base_write_reg[0]),
        .O(\base_write[0]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \base_write_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(sel),
        .CLR(component_reset_BUFG),
        .D(\base_write_reg[0]_i_2_n_7 ),
        .Q(base_write_reg[0]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \base_write_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\base_write_reg[0]_i_2_n_0 ,\NLW_base_write_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\base_write_reg[0]_i_2_n_4 ,\base_write_reg[0]_i_2_n_5 ,\base_write_reg[0]_i_2_n_6 ,\base_write_reg[0]_i_2_n_7 }),
        .S({base_write_reg[3:1],\base_write[0]_i_3_n_0 }));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \base_write_reg[10] 
       (.C(i_clk_IBUF_BUFG),
        .CE(sel),
        .CLR(component_reset_BUFG),
        .D(\base_write_reg[8]_i_1_n_5 ),
        .Q(base_write_reg[10]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \base_write_reg[11] 
       (.C(i_clk_IBUF_BUFG),
        .CE(sel),
        .CLR(component_reset_BUFG),
        .D(\base_write_reg[8]_i_1_n_4 ),
        .Q(base_write_reg[11]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \base_write_reg[12] 
       (.C(i_clk_IBUF_BUFG),
        .CE(sel),
        .CLR(component_reset_BUFG),
        .D(\base_write_reg[12]_i_1_n_7 ),
        .Q(base_write_reg[12]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \base_write_reg[12]_i_1 
       (.CI(\base_write_reg[8]_i_1_n_0 ),
        .CO(\NLW_base_write_reg[12]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\base_write_reg[12]_i_1_n_4 ,\base_write_reg[12]_i_1_n_5 ,\base_write_reg[12]_i_1_n_6 ,\base_write_reg[12]_i_1_n_7 }),
        .S(base_write_reg[15:12]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \base_write_reg[13] 
       (.C(i_clk_IBUF_BUFG),
        .CE(sel),
        .CLR(component_reset_BUFG),
        .D(\base_write_reg[12]_i_1_n_6 ),
        .Q(base_write_reg[13]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \base_write_reg[14] 
       (.C(i_clk_IBUF_BUFG),
        .CE(sel),
        .CLR(component_reset_BUFG),
        .D(\base_write_reg[12]_i_1_n_5 ),
        .Q(base_write_reg[14]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \base_write_reg[15] 
       (.C(i_clk_IBUF_BUFG),
        .CE(sel),
        .CLR(component_reset_BUFG),
        .D(\base_write_reg[12]_i_1_n_4 ),
        .Q(base_write_reg[15]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \base_write_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(sel),
        .CLR(component_reset_BUFG),
        .D(\base_write_reg[0]_i_2_n_6 ),
        .Q(base_write_reg[1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \base_write_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(sel),
        .CLR(component_reset_BUFG),
        .D(\base_write_reg[0]_i_2_n_5 ),
        .Q(base_write_reg[2]));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \base_write_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(sel),
        .D(\base_write_reg[0]_i_2_n_4 ),
        .PRE(component_reset_BUFG),
        .Q(base_write_reg[3]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \base_write_reg[4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(sel),
        .CLR(component_reset_BUFG),
        .D(\base_write_reg[4]_i_1_n_7 ),
        .Q(base_write_reg[4]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \base_write_reg[4]_i_1 
       (.CI(\base_write_reg[0]_i_2_n_0 ),
        .CO({\base_write_reg[4]_i_1_n_0 ,\NLW_base_write_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\base_write_reg[4]_i_1_n_4 ,\base_write_reg[4]_i_1_n_5 ,\base_write_reg[4]_i_1_n_6 ,\base_write_reg[4]_i_1_n_7 }),
        .S(base_write_reg[7:4]));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \base_write_reg[5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(sel),
        .D(\base_write_reg[4]_i_1_n_6 ),
        .PRE(component_reset_BUFG),
        .Q(base_write_reg[5]));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \base_write_reg[6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(sel),
        .D(\base_write_reg[4]_i_1_n_5 ),
        .PRE(component_reset_BUFG),
        .Q(base_write_reg[6]));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \base_write_reg[7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(sel),
        .D(\base_write_reg[4]_i_1_n_4 ),
        .PRE(component_reset_BUFG),
        .Q(base_write_reg[7]));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \base_write_reg[8] 
       (.C(i_clk_IBUF_BUFG),
        .CE(sel),
        .D(\base_write_reg[8]_i_1_n_7 ),
        .PRE(component_reset_BUFG),
        .Q(base_write_reg[8]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \base_write_reg[8]_i_1 
       (.CI(\base_write_reg[4]_i_1_n_0 ),
        .CO({\base_write_reg[8]_i_1_n_0 ,\NLW_base_write_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\base_write_reg[8]_i_1_n_4 ,\base_write_reg[8]_i_1_n_5 ,\base_write_reg[8]_i_1_n_6 ,\base_write_reg[8]_i_1_n_7 }),
        .S(base_write_reg[11:8]));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \base_write_reg[9] 
       (.C(i_clk_IBUF_BUFG),
        .CE(sel),
        .D(\base_write_reg[8]_i_1_n_6 ),
        .PRE(component_reset_BUFG),
        .Q(base_write_reg[9]));
  (* XILINX_LEGACY_PRIM = "LDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDPE #(
    .INIT(1'b0)) 
    component_enable_reg
       (.D(1'b0),
        .G(component_enable01_out),
        .GE(1'b1),
        .PRE(component_enable0),
        .Q(component_enable));
  LUT2 #(
    .INIT(4'h1)) 
    component_enable_reg_i_1
       (.I0(enable_up),
        .I1(enable_down),
        .O(component_enable01_out));
  LUT2 #(
    .INIT(4'h8)) 
    component_enable_reg_i_2
       (.I0(enable_up),
        .I1(enable_down),
        .O(component_enable0));
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
        .G(component_reset_BUFG),
        .GE(1'b1),
        .PRE(done0),
        .Q(o_done_OBUF));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    done_reg_i_1
       (.I0(done_reg_i_2_n_0),
        .I1(done_reg_i_3_n_0),
        .I2(done_reg_i_4_n_0),
        .I3(done_reg_i_5_n_0),
        .I4(done_reg_i_6_n_0),
        .I5(done_reg_i_7_n_0),
        .O(done0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    done_reg_i_10
       (.I0(\number_of_words_reg[16]_P_n_0 ),
        .I1(\number_of_words_reg[31]_LDC_n_0 ),
        .I2(\number_of_words_reg[16]_C_n_0 ),
        .O(number_of_words[16]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    done_reg_i_11
       (.I0(\number_of_words_reg[17]_P_n_0 ),
        .I1(\number_of_words_reg[31]_LDC_n_0 ),
        .I2(\number_of_words_reg[17]_C_n_0 ),
        .O(number_of_words[17]));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    done_reg_i_12
       (.I0(\number_of_words_reg[22]_C_n_0 ),
        .I1(\number_of_words_reg[22]_P_n_0 ),
        .I2(\number_of_words_reg[23]_C_n_0 ),
        .I3(\number_of_words_reg[31]_LDC_n_0 ),
        .I4(\number_of_words_reg[23]_P_n_0 ),
        .O(done_reg_i_12_n_0));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    done_reg_i_13
       (.I0(\number_of_words_reg[20]_C_n_0 ),
        .I1(\number_of_words_reg[20]_P_n_0 ),
        .I2(\number_of_words_reg[21]_C_n_0 ),
        .I3(\number_of_words_reg[31]_LDC_n_0 ),
        .I4(\number_of_words_reg[21]_P_n_0 ),
        .O(done_reg_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    done_reg_i_14
       (.I0(\number_of_words_reg[26]_P_n_0 ),
        .I1(\number_of_words_reg[31]_LDC_n_0 ),
        .I2(\number_of_words_reg[26]_C_n_0 ),
        .O(number_of_words[26]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    done_reg_i_15
       (.I0(\number_of_words_reg[27]_P_n_0 ),
        .I1(\number_of_words_reg[31]_LDC_n_0 ),
        .I2(\number_of_words_reg[27]_C_n_0 ),
        .O(number_of_words[27]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    done_reg_i_16
       (.I0(\number_of_words_reg[24]_P_n_0 ),
        .I1(\number_of_words_reg[31]_LDC_n_0 ),
        .I2(\number_of_words_reg[24]_C_n_0 ),
        .O(number_of_words[24]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    done_reg_i_17
       (.I0(\number_of_words_reg[25]_P_n_0 ),
        .I1(\number_of_words_reg[31]_LDC_n_0 ),
        .I2(\number_of_words_reg[25]_C_n_0 ),
        .O(number_of_words[25]));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    done_reg_i_18
       (.I0(\number_of_words_reg[30]_C_n_0 ),
        .I1(\number_of_words_reg[30]_P_n_0 ),
        .I2(\number_of_words_reg[31]_C_n_0 ),
        .I3(\number_of_words_reg[31]_LDC_n_0 ),
        .I4(\number_of_words_reg[31]_P_n_0 ),
        .O(done_reg_i_18_n_0));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    done_reg_i_19
       (.I0(\number_of_words_reg[28]_C_n_0 ),
        .I1(\number_of_words_reg[28]_P_n_0 ),
        .I2(\number_of_words_reg[29]_C_n_0 ),
        .I3(\number_of_words_reg[31]_LDC_n_0 ),
        .I4(\number_of_words_reg[29]_P_n_0 ),
        .O(done_reg_i_19_n_0));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    done_reg_i_2
       (.I0(i_rst_IBUF),
        .I1(i_start_IBUF),
        .I2(current_state[3]),
        .I3(current_state[2]),
        .I4(current_state[1]),
        .I5(current_state[0]),
        .O(done_reg_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    done_reg_i_20
       (.I0(\number_of_words_reg[5]_P_n_0 ),
        .I1(\number_of_words_reg[5]_LDC_n_0 ),
        .I2(\number_of_words_reg[5]_C_n_0 ),
        .O(number_of_words[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    done_reg_i_21
       (.I0(\number_of_words_reg[7]_P_n_0 ),
        .I1(\number_of_words_reg[7]_LDC_n_0 ),
        .I2(\number_of_words_reg[7]_C_n_0 ),
        .O(number_of_words[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    done_reg_i_22
       (.I0(\number_of_words_reg[6]_P_n_0 ),
        .I1(\number_of_words_reg[6]_LDC_n_0 ),
        .I2(\number_of_words_reg[6]_C_n_0 ),
        .O(number_of_words[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    done_reg_i_23
       (.I0(\number_of_words_reg[1]_P_n_0 ),
        .I1(\number_of_words_reg[1]_LDC_n_0 ),
        .I2(\number_of_words_reg[1]_C_n_0 ),
        .O(number_of_words[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    done_reg_i_24
       (.I0(\number_of_words_reg[3]_P_n_0 ),
        .I1(\number_of_words_reg[3]_LDC_n_0 ),
        .I2(\number_of_words_reg[3]_C_n_0 ),
        .O(number_of_words[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    done_reg_i_25
       (.I0(\number_of_words_reg[2]_P_n_0 ),
        .I1(\number_of_words_reg[2]_LDC_n_0 ),
        .I2(\number_of_words_reg[2]_C_n_0 ),
        .O(number_of_words[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    done_reg_i_26
       (.I0(\number_of_words_reg[10]_P_n_0 ),
        .I1(\number_of_words_reg[31]_LDC_n_0 ),
        .I2(\number_of_words_reg[10]_C_n_0 ),
        .O(number_of_words[10]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    done_reg_i_27
       (.I0(\number_of_words_reg[11]_P_n_0 ),
        .I1(\number_of_words_reg[31]_LDC_n_0 ),
        .I2(\number_of_words_reg[11]_C_n_0 ),
        .O(number_of_words[11]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    done_reg_i_28
       (.I0(\number_of_words_reg[8]_P_n_0 ),
        .I1(\number_of_words_reg[31]_LDC_n_0 ),
        .I2(\number_of_words_reg[8]_C_n_0 ),
        .O(number_of_words[8]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    done_reg_i_29
       (.I0(\number_of_words_reg[9]_P_n_0 ),
        .I1(\number_of_words_reg[31]_LDC_n_0 ),
        .I2(\number_of_words_reg[9]_C_n_0 ),
        .O(number_of_words[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    done_reg_i_3
       (.I0(number_of_words[18]),
        .I1(number_of_words[19]),
        .I2(number_of_words[16]),
        .I3(number_of_words[17]),
        .I4(done_reg_i_12_n_0),
        .I5(done_reg_i_13_n_0),
        .O(done_reg_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    done_reg_i_30
       (.I0(\number_of_words_reg[14]_C_n_0 ),
        .I1(\number_of_words_reg[14]_P_n_0 ),
        .I2(\number_of_words_reg[15]_C_n_0 ),
        .I3(\number_of_words_reg[31]_LDC_n_0 ),
        .I4(\number_of_words_reg[15]_P_n_0 ),
        .O(done_reg_i_30_n_0));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    done_reg_i_31
       (.I0(\number_of_words_reg[12]_C_n_0 ),
        .I1(\number_of_words_reg[12]_P_n_0 ),
        .I2(\number_of_words_reg[13]_C_n_0 ),
        .I3(\number_of_words_reg[31]_LDC_n_0 ),
        .I4(\number_of_words_reg[13]_P_n_0 ),
        .O(done_reg_i_31_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    done_reg_i_4
       (.I0(number_of_words[26]),
        .I1(number_of_words[27]),
        .I2(number_of_words[24]),
        .I3(number_of_words[25]),
        .I4(done_reg_i_18_n_0),
        .I5(done_reg_i_19_n_0),
        .O(done_reg_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFEA)) 
    done_reg_i_5
       (.I0(number_of_words[5]),
        .I1(\number_of_words_reg[4]_P_n_0 ),
        .I2(\number_of_words_reg[4]_LDC_n_0 ),
        .I3(\number_of_words_reg[4]_C_n_0 ),
        .I4(number_of_words[7]),
        .I5(number_of_words[6]),
        .O(done_reg_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFEA)) 
    done_reg_i_6
       (.I0(number_of_words[1]),
        .I1(\number_of_words_reg[0]_P_n_0 ),
        .I2(\number_of_words_reg[0]_LDC_n_0 ),
        .I3(\number_of_words_reg[0]_C_n_0 ),
        .I4(number_of_words[3]),
        .I5(number_of_words[2]),
        .O(done_reg_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    done_reg_i_7
       (.I0(number_of_words[10]),
        .I1(number_of_words[11]),
        .I2(number_of_words[8]),
        .I3(number_of_words[9]),
        .I4(done_reg_i_30_n_0),
        .I5(done_reg_i_31_n_0),
        .O(done_reg_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    done_reg_i_8
       (.I0(\number_of_words_reg[18]_P_n_0 ),
        .I1(\number_of_words_reg[31]_LDC_n_0 ),
        .I2(\number_of_words_reg[18]_C_n_0 ),
        .O(number_of_words[18]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    done_reg_i_9
       (.I0(\number_of_words_reg[19]_P_n_0 ),
        .I1(\number_of_words_reg[31]_LDC_n_0 ),
        .I2(\number_of_words_reg[19]_C_n_0 ),
        .O(number_of_words[19]));
  (* XILINX_LEGACY_PRIM = "LDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDPE #(
    .INIT(1'b0)) 
    enable_down_reg
       (.D(1'b0),
        .G(enable_down0),
        .GE(1'b1),
        .PRE(enable_down_reg_i_2_n_0),
        .Q(enable_down));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000800)) 
    enable_down_reg_i_1
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(i_clk_IBUF),
        .I3(current_state[3]),
        .I4(current_state[2]),
        .I5(i_rst_IBUF),
        .O(enable_down0));
  LUT4 #(
    .INIT(16'h0008)) 
    enable_down_reg_i_2
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(current_state[3]),
        .I3(current_state[2]),
        .O(enable_down_reg_i_2_n_0));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    enable_up_reg
       (.CLR(enable_up_reg_i_2_n_0),
        .D(enable_up0),
        .G(enable_up0),
        .GE(1'b1),
        .Q(enable_up));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    enable_up_reg_i_1
       (.I0(current_state[2]),
        .I1(current_state[3]),
        .I2(current_state[0]),
        .I3(current_state[1]),
        .I4(i_clk_IBUF),
        .O(enable_up0));
  LUT5 #(
    .INIT(32'hFFFF0080)) 
    enable_up_reg_i_2
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(current_state[3]),
        .I3(current_state[2]),
        .I4(i_rst_IBUF),
        .O(enable_up_reg_i_2_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_address_reg[0] 
       (.CLR(1'b0),
        .D(\mem_address_reg[0]_i_1_n_0 ),
        .G(\mem_address_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Q[0]));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_address_reg[0]_i_1 
       (.I0(base_read_reg[0]),
        .I1(\mem_address_reg[15]_i_3_n_0 ),
        .I2(base_write_reg[0]),
        .I3(\mem_address_reg[15]_i_4_n_0 ),
        .O(\mem_address_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_address_reg[10] 
       (.CLR(1'b0),
        .D(\mem_address_reg[10]_i_1_n_0 ),
        .G(\mem_address_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Q[10]));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_address_reg[10]_i_1 
       (.I0(base_read_reg[10]),
        .I1(\mem_address_reg[15]_i_3_n_0 ),
        .I2(base_write_reg[10]),
        .I3(\mem_address_reg[15]_i_4_n_0 ),
        .O(\mem_address_reg[10]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_address_reg[11] 
       (.CLR(1'b0),
        .D(\mem_address_reg[11]_i_1_n_0 ),
        .G(\mem_address_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Q[11]));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_address_reg[11]_i_1 
       (.I0(base_read_reg[11]),
        .I1(\mem_address_reg[15]_i_3_n_0 ),
        .I2(base_write_reg[11]),
        .I3(\mem_address_reg[15]_i_4_n_0 ),
        .O(\mem_address_reg[11]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_address_reg[12] 
       (.CLR(1'b0),
        .D(\mem_address_reg[12]_i_1_n_0 ),
        .G(\mem_address_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Q[12]));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_address_reg[12]_i_1 
       (.I0(base_read_reg[12]),
        .I1(\mem_address_reg[15]_i_3_n_0 ),
        .I2(base_write_reg[12]),
        .I3(\mem_address_reg[15]_i_4_n_0 ),
        .O(\mem_address_reg[12]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_address_reg[13] 
       (.CLR(1'b0),
        .D(\mem_address_reg[13]_i_1_n_0 ),
        .G(\mem_address_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Q[13]));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_address_reg[13]_i_1 
       (.I0(base_read_reg[13]),
        .I1(\mem_address_reg[15]_i_3_n_0 ),
        .I2(base_write_reg[13]),
        .I3(\mem_address_reg[15]_i_4_n_0 ),
        .O(\mem_address_reg[13]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_address_reg[14] 
       (.CLR(1'b0),
        .D(\mem_address_reg[14]_i_1_n_0 ),
        .G(\mem_address_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Q[14]));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_address_reg[14]_i_1 
       (.I0(base_read_reg[14]),
        .I1(\mem_address_reg[15]_i_3_n_0 ),
        .I2(base_write_reg[14]),
        .I3(\mem_address_reg[15]_i_4_n_0 ),
        .O(\mem_address_reg[14]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_address_reg[15] 
       (.CLR(1'b0),
        .D(\mem_address_reg[15]_i_1_n_0 ),
        .G(\mem_address_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Q[15]));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_address_reg[15]_i_1 
       (.I0(base_read_reg[15]),
        .I1(\mem_address_reg[15]_i_3_n_0 ),
        .I2(base_write_reg[15]),
        .I3(\mem_address_reg[15]_i_4_n_0 ),
        .O(\mem_address_reg[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0444FFFF)) 
    \mem_address_reg[15]_i_2 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(current_state[2]),
        .I3(current_state[3]),
        .I4(o_en_OBUF_inst_i_2_n_0),
        .O(\mem_address_reg[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h55575555)) 
    \mem_address_reg[15]_i_3 
       (.I0(o_en_OBUF_inst_i_2_n_0),
        .I1(current_state[2]),
        .I2(current_state[3]),
        .I3(current_state[0]),
        .I4(current_state[1]),
        .O(\mem_address_reg[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hAAA8AAAA)) 
    \mem_address_reg[15]_i_4 
       (.I0(o_en_OBUF_inst_i_2_n_0),
        .I1(current_state[2]),
        .I2(current_state[3]),
        .I3(current_state[0]),
        .I4(current_state[1]),
        .O(\mem_address_reg[15]_i_4_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_address_reg[1] 
       (.CLR(1'b0),
        .D(\mem_address_reg[1]_i_1_n_0 ),
        .G(\mem_address_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Q[1]));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_address_reg[1]_i_1 
       (.I0(base_read_reg[1]),
        .I1(\mem_address_reg[15]_i_3_n_0 ),
        .I2(base_write_reg[1]),
        .I3(\mem_address_reg[15]_i_4_n_0 ),
        .O(\mem_address_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_address_reg[2] 
       (.CLR(1'b0),
        .D(\mem_address_reg[2]_i_1_n_0 ),
        .G(\mem_address_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Q[2]));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_address_reg[2]_i_1 
       (.I0(base_read_reg[2]),
        .I1(\mem_address_reg[15]_i_3_n_0 ),
        .I2(base_write_reg[2]),
        .I3(\mem_address_reg[15]_i_4_n_0 ),
        .O(\mem_address_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_address_reg[3] 
       (.CLR(1'b0),
        .D(\mem_address_reg[3]_i_1_n_0 ),
        .G(\mem_address_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Q[3]));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_address_reg[3]_i_1 
       (.I0(base_read_reg[3]),
        .I1(\mem_address_reg[15]_i_3_n_0 ),
        .I2(base_write_reg[3]),
        .I3(\mem_address_reg[15]_i_4_n_0 ),
        .O(\mem_address_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_address_reg[4] 
       (.CLR(1'b0),
        .D(\mem_address_reg[4]_i_1_n_0 ),
        .G(\mem_address_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Q[4]));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_address_reg[4]_i_1 
       (.I0(base_read_reg[4]),
        .I1(\mem_address_reg[15]_i_3_n_0 ),
        .I2(base_write_reg[4]),
        .I3(\mem_address_reg[15]_i_4_n_0 ),
        .O(\mem_address_reg[4]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_address_reg[5] 
       (.CLR(1'b0),
        .D(\mem_address_reg[5]_i_1_n_0 ),
        .G(\mem_address_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Q[5]));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_address_reg[5]_i_1 
       (.I0(base_read_reg[5]),
        .I1(\mem_address_reg[15]_i_3_n_0 ),
        .I2(base_write_reg[5]),
        .I3(\mem_address_reg[15]_i_4_n_0 ),
        .O(\mem_address_reg[5]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_address_reg[6] 
       (.CLR(1'b0),
        .D(\mem_address_reg[6]_i_1_n_0 ),
        .G(\mem_address_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Q[6]));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_address_reg[6]_i_1 
       (.I0(base_read_reg[6]),
        .I1(\mem_address_reg[15]_i_3_n_0 ),
        .I2(base_write_reg[6]),
        .I3(\mem_address_reg[15]_i_4_n_0 ),
        .O(\mem_address_reg[6]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_address_reg[7] 
       (.CLR(1'b0),
        .D(\mem_address_reg[7]_i_1_n_0 ),
        .G(\mem_address_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Q[7]));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_address_reg[7]_i_1 
       (.I0(base_read_reg[7]),
        .I1(\mem_address_reg[15]_i_3_n_0 ),
        .I2(base_write_reg[7]),
        .I3(\mem_address_reg[15]_i_4_n_0 ),
        .O(\mem_address_reg[7]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_address_reg[8] 
       (.CLR(1'b0),
        .D(\mem_address_reg[8]_i_1_n_0 ),
        .G(\mem_address_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Q[8]));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_address_reg[8]_i_1 
       (.I0(base_read_reg[8]),
        .I1(\mem_address_reg[15]_i_3_n_0 ),
        .I2(base_write_reg[8]),
        .I3(\mem_address_reg[15]_i_4_n_0 ),
        .O(\mem_address_reg[8]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_address_reg[9] 
       (.CLR(1'b0),
        .D(\mem_address_reg[9]_i_1_n_0 ),
        .G(\mem_address_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Q[9]));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_address_reg[9]_i_1 
       (.I0(base_read_reg[9]),
        .I1(\mem_address_reg[15]_i_3_n_0 ),
        .I2(base_write_reg[9]),
        .I3(\mem_address_reg[15]_i_4_n_0 ),
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
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \mem_inout_reg[7]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[3]),
        .I2(current_state[0]),
        .I3(current_state[1]),
        .I4(i_clk_IBUF),
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
    .INIT(64'hAAAAAAABAAAAAAAA)) 
    \next_state_reg[0]_i_1 
       (.I0(\next_state_reg[0]_i_2_n_0 ),
        .I1(done_reg_i_7_n_0),
        .I2(\next_state_reg[3]_i_4_n_0 ),
        .I3(done_reg_i_4_n_0),
        .I4(done_reg_i_3_n_0),
        .I5(\next_state_reg[0]_i_3_n_0 ),
        .O(\next_state_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hD500)) 
    \next_state_reg[0]_i_2 
       (.I0(current_state[0]),
        .I1(current_state[2]),
        .I2(current_state[3]),
        .I3(i_start_IBUF),
        .O(\next_state_reg[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hC100)) 
    \next_state_reg[0]_i_3 
       (.I0(current_state[2]),
        .I1(current_state[3]),
        .I2(current_state[1]),
        .I3(i_start_IBUF),
        .O(\next_state_reg[0]_i_3_n_0 ));
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
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hC4C4C888)) 
    \next_state_reg[1]_i_1 
       (.I0(current_state[1]),
        .I1(i_start_IBUF),
        .I2(current_state[3]),
        .I3(current_state[2]),
        .I4(current_state[0]),
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
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h002A0080)) 
    \next_state_reg[2]_i_1 
       (.I0(i_start_IBUF),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(current_state[3]),
        .I4(current_state[2]),
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
    .INIT(64'hAAAAAAABAAAAAAAA)) 
    \next_state_reg[3]_i_1 
       (.I0(\next_state_reg[3]_i_3_n_0 ),
        .I1(done_reg_i_7_n_0),
        .I2(\next_state_reg[3]_i_4_n_0 ),
        .I3(done_reg_i_4_n_0),
        .I4(done_reg_i_3_n_0),
        .I5(\next_state_reg[3]_i_5_n_0 ),
        .O(\next_state_reg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBBBBBA)) 
    \next_state_reg[3]_i_2 
       (.I0(\next_state_reg[3]_i_6_n_0 ),
        .I1(current_state[2]),
        .I2(done_reg_i_7_n_0),
        .I3(\next_state_reg[3]_i_4_n_0 ),
        .I4(done_reg_i_4_n_0),
        .I5(done_reg_i_3_n_0),
        .O(\next_state_reg[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hA0C0C0C0)) 
    \next_state_reg[3]_i_3 
       (.I0(current_state[2]),
        .I1(current_state[3]),
        .I2(i_start_IBUF),
        .I3(current_state[0]),
        .I4(current_state[1]),
        .O(\next_state_reg[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \next_state_reg[3]_i_4 
       (.I0(number_of_words[2]),
        .I1(number_of_words[3]),
        .I2(number_of_words[0]),
        .I3(number_of_words[1]),
        .I4(\next_state_reg[3]_i_7_n_0 ),
        .I5(\next_state_reg[3]_i_8_n_0 ),
        .O(\next_state_reg[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hAAAE0000)) 
    \next_state_reg[3]_i_5 
       (.I0(current_state[3]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(current_state[2]),
        .I4(i_start_IBUF),
        .O(\next_state_reg[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h77777FFF)) 
    \next_state_reg[3]_i_6 
       (.I0(i_start_IBUF),
        .I1(current_state[3]),
        .I2(current_state[0]),
        .I3(current_state[1]),
        .I4(current_state[2]),
        .O(\next_state_reg[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFE2E2E2FFE2)) 
    \next_state_reg[3]_i_7 
       (.I0(\number_of_words_reg[6]_C_n_0 ),
        .I1(\number_of_words_reg[6]_LDC_n_0 ),
        .I2(\number_of_words_reg[6]_P_n_0 ),
        .I3(\number_of_words_reg[7]_C_n_0 ),
        .I4(\number_of_words_reg[7]_LDC_n_0 ),
        .I5(\number_of_words_reg[7]_P_n_0 ),
        .O(\next_state_reg[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFE2E2E2FFE2)) 
    \next_state_reg[3]_i_8 
       (.I0(\number_of_words_reg[4]_C_n_0 ),
        .I1(\number_of_words_reg[4]_LDC_n_0 ),
        .I2(\number_of_words_reg[4]_P_n_0 ),
        .I3(\number_of_words_reg[5]_C_n_0 ),
        .I4(\number_of_words_reg[5]_LDC_n_0 ),
        .I5(\number_of_words_reg[5]_P_n_0 ),
        .O(\next_state_reg[3]_i_8_n_0 ));
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
        .O(number_of_words02_in[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \number_of_words[12]_C_i_2 
       (.I0(\number_of_words_reg[12]_P_n_0 ),
        .I1(\number_of_words_reg[31]_LDC_n_0 ),
        .I2(\number_of_words_reg[12]_C_n_0 ),
        .O(number_of_words[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \number_of_words[12]_C_i_3 
       (.I0(\number_of_words_reg[11]_P_n_0 ),
        .I1(\number_of_words_reg[31]_LDC_n_0 ),
        .I2(\number_of_words_reg[11]_C_n_0 ),
        .O(\number_of_words[12]_C_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \number_of_words[12]_C_i_4 
       (.I0(\number_of_words_reg[10]_P_n_0 ),
        .I1(\number_of_words_reg[31]_LDC_n_0 ),
        .I2(\number_of_words_reg[10]_C_n_0 ),
        .O(\number_of_words[12]_C_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \number_of_words[12]_C_i_5 
       (.I0(\number_of_words_reg[9]_P_n_0 ),
        .I1(\number_of_words_reg[31]_LDC_n_0 ),
        .I2(\number_of_words_reg[9]_C_n_0 ),
        .O(\number_of_words[12]_C_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \number_of_words[12]_C_i_6 
       (.I0(\number_of_words_reg[12]_C_n_0 ),
        .I1(\number_of_words_reg[31]_LDC_n_0 ),
        .I2(\number_of_words_reg[12]_P_n_0 ),
        .O(\number_of_words[12]_C_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \number_of_words[12]_C_i_7 
       (.I0(\number_of_words_reg[11]_C_n_0 ),
        .I1(\number_of_words_reg[31]_LDC_n_0 ),
        .I2(\number_of_words_reg[11]_P_n_0 ),
        .O(\number_of_words[12]_C_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \number_of_words[12]_C_i_8 
       (.I0(\number_of_words_reg[10]_C_n_0 ),
        .I1(\number_of_words_reg[31]_LDC_n_0 ),
        .I2(\number_of_words_reg[10]_P_n_0 ),
        .O(\number_of_words[12]_C_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \number_of_words[12]_C_i_9 
       (.I0(\number_of_words_reg[9]_C_n_0 ),
        .I1(\number_of_words_reg[31]_LDC_n_0 ),
        .I2(\number_of_words_reg[9]_P_n_0 ),
        .O(\number_of_words[12]_C_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \number_of_words[16]_C_i_2 
       (.I0(\number_of_words_reg[16]_P_n_0 ),
        .I1(\number_of_words_reg[31]_LDC_n_0 ),
        .I2(\number_of_words_reg[16]_C_n_0 ),
        .O(\number_of_words[16]_C_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \number_of_words[16]_C_i_3 
       (.I0(\number_of_words_reg[15]_P_n_0 ),
        .I1(\number_of_words_reg[31]_LDC_n_0 ),
        .I2(\number_of_words_reg[15]_C_n_0 ),
        .O(number_of_words[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    \number_of_words[16]_C_i_4 
       (.I0(\number_of_words_reg[14]_P_n_0 ),
        .I1(\number_of_words_reg[31]_LDC_n_0 ),
        .I2(\number_of_words_reg[14]_C_n_0 ),
        .O(number_of_words[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    \number_of_words[16]_C_i_5 
       (.I0(\number_of_words_reg[13]_P_n_0 ),
        .I1(\number_of_words_reg[31]_LDC_n_0 ),
        .I2(\number_of_words_reg[13]_C_n_0 ),
        .O(number_of_words[13]));
  LUT3 #(
    .INIT(8'h1D)) 
    \number_of_words[16]_C_i_6 
       (.I0(\number_of_words_reg[16]_C_n_0 ),
        .I1(\number_of_words_reg[31]_LDC_n_0 ),
        .I2(\number_of_words_reg[16]_P_n_0 ),
        .O(\number_of_words[16]_C_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \number_of_words[16]_C_i_7 
       (.I0(\number_of_words_reg[15]_C_n_0 ),
        .I1(\number_of_words_reg[31]_LDC_n_0 ),
        .I2(\number_of_words_reg[15]_P_n_0 ),
        .O(\number_of_words[16]_C_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \number_of_words[16]_C_i_8 
       (.I0(\number_of_words_reg[14]_C_n_0 ),
        .I1(\number_of_words_reg[31]_LDC_n_0 ),
        .I2(\number_of_words_reg[14]_P_n_0 ),
        .O(\number_of_words[16]_C_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \number_of_words[16]_C_i_9 
       (.I0(\number_of_words_reg[13]_C_n_0 ),
        .I1(\number_of_words_reg[31]_LDC_n_0 ),
        .I2(\number_of_words_reg[13]_P_n_0 ),
        .O(\number_of_words[16]_C_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \number_of_words[20]_C_i_2 
       (.I0(\number_of_words_reg[20]_P_n_0 ),
        .I1(\number_of_words_reg[31]_LDC_n_0 ),
        .I2(\number_of_words_reg[20]_C_n_0 ),
        .O(number_of_words[20]));
  LUT3 #(
    .INIT(8'hB8)) 
    \number_of_words[20]_C_i_3 
       (.I0(\number_of_words_reg[19]_P_n_0 ),
        .I1(\number_of_words_reg[31]_LDC_n_0 ),
        .I2(\number_of_words_reg[19]_C_n_0 ),
        .O(\number_of_words[20]_C_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \number_of_words[20]_C_i_4 
       (.I0(\number_of_words_reg[18]_P_n_0 ),
        .I1(\number_of_words_reg[31]_LDC_n_0 ),
        .I2(\number_of_words_reg[18]_C_n_0 ),
        .O(\number_of_words[20]_C_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \number_of_words[20]_C_i_5 
       (.I0(\number_of_words_reg[17]_P_n_0 ),
        .I1(\number_of_words_reg[31]_LDC_n_0 ),
        .I2(\number_of_words_reg[17]_C_n_0 ),
        .O(\number_of_words[20]_C_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \number_of_words[20]_C_i_6 
       (.I0(\number_of_words_reg[20]_C_n_0 ),
        .I1(\number_of_words_reg[31]_LDC_n_0 ),
        .I2(\number_of_words_reg[20]_P_n_0 ),
        .O(\number_of_words[20]_C_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \number_of_words[20]_C_i_7 
       (.I0(\number_of_words_reg[19]_C_n_0 ),
        .I1(\number_of_words_reg[31]_LDC_n_0 ),
        .I2(\number_of_words_reg[19]_P_n_0 ),
        .O(\number_of_words[20]_C_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \number_of_words[20]_C_i_8 
       (.I0(\number_of_words_reg[18]_C_n_0 ),
        .I1(\number_of_words_reg[31]_LDC_n_0 ),
        .I2(\number_of_words_reg[18]_P_n_0 ),
        .O(\number_of_words[20]_C_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \number_of_words[20]_C_i_9 
       (.I0(\number_of_words_reg[17]_C_n_0 ),
        .I1(\number_of_words_reg[31]_LDC_n_0 ),
        .I2(\number_of_words_reg[17]_P_n_0 ),
        .O(\number_of_words[20]_C_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \number_of_words[24]_C_i_2 
       (.I0(\number_of_words_reg[24]_P_n_0 ),
        .I1(\number_of_words_reg[31]_LDC_n_0 ),
        .I2(\number_of_words_reg[24]_C_n_0 ),
        .O(\number_of_words[24]_C_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \number_of_words[24]_C_i_3 
       (.I0(\number_of_words_reg[23]_P_n_0 ),
        .I1(\number_of_words_reg[31]_LDC_n_0 ),
        .I2(\number_of_words_reg[23]_C_n_0 ),
        .O(number_of_words[23]));
  LUT3 #(
    .INIT(8'hB8)) 
    \number_of_words[24]_C_i_4 
       (.I0(\number_of_words_reg[22]_P_n_0 ),
        .I1(\number_of_words_reg[31]_LDC_n_0 ),
        .I2(\number_of_words_reg[22]_C_n_0 ),
        .O(number_of_words[22]));
  LUT3 #(
    .INIT(8'hB8)) 
    \number_of_words[24]_C_i_5 
       (.I0(\number_of_words_reg[21]_P_n_0 ),
        .I1(\number_of_words_reg[31]_LDC_n_0 ),
        .I2(\number_of_words_reg[21]_C_n_0 ),
        .O(number_of_words[21]));
  LUT3 #(
    .INIT(8'h1D)) 
    \number_of_words[24]_C_i_6 
       (.I0(\number_of_words_reg[24]_C_n_0 ),
        .I1(\number_of_words_reg[31]_LDC_n_0 ),
        .I2(\number_of_words_reg[24]_P_n_0 ),
        .O(\number_of_words[24]_C_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \number_of_words[24]_C_i_7 
       (.I0(\number_of_words_reg[23]_C_n_0 ),
        .I1(\number_of_words_reg[31]_LDC_n_0 ),
        .I2(\number_of_words_reg[23]_P_n_0 ),
        .O(\number_of_words[24]_C_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \number_of_words[24]_C_i_8 
       (.I0(\number_of_words_reg[22]_C_n_0 ),
        .I1(\number_of_words_reg[31]_LDC_n_0 ),
        .I2(\number_of_words_reg[22]_P_n_0 ),
        .O(\number_of_words[24]_C_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \number_of_words[24]_C_i_9 
       (.I0(\number_of_words_reg[21]_C_n_0 ),
        .I1(\number_of_words_reg[31]_LDC_n_0 ),
        .I2(\number_of_words_reg[21]_P_n_0 ),
        .O(\number_of_words[24]_C_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \number_of_words[28]_C_i_2 
       (.I0(\number_of_words_reg[28]_P_n_0 ),
        .I1(\number_of_words_reg[31]_LDC_n_0 ),
        .I2(\number_of_words_reg[28]_C_n_0 ),
        .O(number_of_words[28]));
  LUT3 #(
    .INIT(8'hB8)) 
    \number_of_words[28]_C_i_3 
       (.I0(\number_of_words_reg[27]_P_n_0 ),
        .I1(\number_of_words_reg[31]_LDC_n_0 ),
        .I2(\number_of_words_reg[27]_C_n_0 ),
        .O(\number_of_words[28]_C_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \number_of_words[28]_C_i_4 
       (.I0(\number_of_words_reg[26]_P_n_0 ),
        .I1(\number_of_words_reg[31]_LDC_n_0 ),
        .I2(\number_of_words_reg[26]_C_n_0 ),
        .O(\number_of_words[28]_C_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \number_of_words[28]_C_i_5 
       (.I0(\number_of_words_reg[25]_P_n_0 ),
        .I1(\number_of_words_reg[31]_LDC_n_0 ),
        .I2(\number_of_words_reg[25]_C_n_0 ),
        .O(\number_of_words[28]_C_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \number_of_words[28]_C_i_6 
       (.I0(\number_of_words_reg[28]_C_n_0 ),
        .I1(\number_of_words_reg[31]_LDC_n_0 ),
        .I2(\number_of_words_reg[28]_P_n_0 ),
        .O(\number_of_words[28]_C_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \number_of_words[28]_C_i_7 
       (.I0(\number_of_words_reg[27]_C_n_0 ),
        .I1(\number_of_words_reg[31]_LDC_n_0 ),
        .I2(\number_of_words_reg[27]_P_n_0 ),
        .O(\number_of_words[28]_C_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \number_of_words[28]_C_i_8 
       (.I0(\number_of_words_reg[26]_C_n_0 ),
        .I1(\number_of_words_reg[31]_LDC_n_0 ),
        .I2(\number_of_words_reg[26]_P_n_0 ),
        .O(\number_of_words[28]_C_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \number_of_words[28]_C_i_9 
       (.I0(\number_of_words_reg[25]_C_n_0 ),
        .I1(\number_of_words_reg[31]_LDC_n_0 ),
        .I2(\number_of_words_reg[25]_P_n_0 ),
        .O(\number_of_words[28]_C_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \number_of_words[31]_C_i_1 
       (.I0(current_state[2]),
        .I1(current_state[3]),
        .I2(current_state[0]),
        .I3(current_state[1]),
        .O(number_of_words0));
  LUT3 #(
    .INIT(8'hB8)) 
    \number_of_words[31]_C_i_3 
       (.I0(\number_of_words_reg[30]_P_n_0 ),
        .I1(\number_of_words_reg[31]_LDC_n_0 ),
        .I2(\number_of_words_reg[30]_C_n_0 ),
        .O(number_of_words[30]));
  LUT3 #(
    .INIT(8'hB8)) 
    \number_of_words[31]_C_i_4 
       (.I0(\number_of_words_reg[29]_P_n_0 ),
        .I1(\number_of_words_reg[31]_LDC_n_0 ),
        .I2(\number_of_words_reg[29]_C_n_0 ),
        .O(number_of_words[29]));
  LUT3 #(
    .INIT(8'h1D)) 
    \number_of_words[31]_C_i_5 
       (.I0(\number_of_words_reg[31]_C_n_0 ),
        .I1(\number_of_words_reg[31]_LDC_n_0 ),
        .I2(\number_of_words_reg[31]_P_n_0 ),
        .O(\number_of_words[31]_C_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \number_of_words[31]_C_i_6 
       (.I0(\number_of_words_reg[30]_C_n_0 ),
        .I1(\number_of_words_reg[31]_LDC_n_0 ),
        .I2(\number_of_words_reg[30]_P_n_0 ),
        .O(\number_of_words[31]_C_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \number_of_words[31]_C_i_7 
       (.I0(\number_of_words_reg[29]_C_n_0 ),
        .I1(\number_of_words_reg[31]_LDC_n_0 ),
        .I2(\number_of_words_reg[29]_P_n_0 ),
        .O(\number_of_words[31]_C_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \number_of_words[4]_C_i_10 
       (.I0(\number_of_words_reg[1]_C_n_0 ),
        .I1(\number_of_words_reg[1]_LDC_n_0 ),
        .I2(\number_of_words_reg[1]_P_n_0 ),
        .O(\number_of_words[4]_C_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \number_of_words[4]_C_i_2 
       (.I0(\number_of_words_reg[0]_P_n_0 ),
        .I1(\number_of_words_reg[0]_LDC_n_0 ),
        .I2(\number_of_words_reg[0]_C_n_0 ),
        .O(number_of_words[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \number_of_words[4]_C_i_3 
       (.I0(\number_of_words_reg[4]_P_n_0 ),
        .I1(\number_of_words_reg[4]_LDC_n_0 ),
        .I2(\number_of_words_reg[4]_C_n_0 ),
        .O(number_of_words[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \number_of_words[4]_C_i_4 
       (.I0(\number_of_words_reg[3]_P_n_0 ),
        .I1(\number_of_words_reg[3]_LDC_n_0 ),
        .I2(\number_of_words_reg[3]_C_n_0 ),
        .O(\number_of_words[4]_C_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \number_of_words[4]_C_i_5 
       (.I0(\number_of_words_reg[2]_P_n_0 ),
        .I1(\number_of_words_reg[2]_LDC_n_0 ),
        .I2(\number_of_words_reg[2]_C_n_0 ),
        .O(\number_of_words[4]_C_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \number_of_words[4]_C_i_6 
       (.I0(\number_of_words_reg[1]_P_n_0 ),
        .I1(\number_of_words_reg[1]_LDC_n_0 ),
        .I2(\number_of_words_reg[1]_C_n_0 ),
        .O(\number_of_words[4]_C_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \number_of_words[4]_C_i_7 
       (.I0(\number_of_words_reg[4]_C_n_0 ),
        .I1(\number_of_words_reg[4]_LDC_n_0 ),
        .I2(\number_of_words_reg[4]_P_n_0 ),
        .O(\number_of_words[4]_C_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \number_of_words[4]_C_i_8 
       (.I0(\number_of_words_reg[3]_C_n_0 ),
        .I1(\number_of_words_reg[3]_LDC_n_0 ),
        .I2(\number_of_words_reg[3]_P_n_0 ),
        .O(\number_of_words[4]_C_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \number_of_words[4]_C_i_9 
       (.I0(\number_of_words_reg[2]_C_n_0 ),
        .I1(\number_of_words_reg[2]_LDC_n_0 ),
        .I2(\number_of_words_reg[2]_P_n_0 ),
        .O(\number_of_words[4]_C_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \number_of_words[8]_C_i_2 
       (.I0(\number_of_words_reg[8]_P_n_0 ),
        .I1(\number_of_words_reg[31]_LDC_n_0 ),
        .I2(\number_of_words_reg[8]_C_n_0 ),
        .O(\number_of_words[8]_C_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \number_of_words[8]_C_i_3 
       (.I0(\number_of_words_reg[7]_P_n_0 ),
        .I1(\number_of_words_reg[7]_LDC_n_0 ),
        .I2(\number_of_words_reg[7]_C_n_0 ),
        .O(\number_of_words[8]_C_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \number_of_words[8]_C_i_4 
       (.I0(\number_of_words_reg[6]_P_n_0 ),
        .I1(\number_of_words_reg[6]_LDC_n_0 ),
        .I2(\number_of_words_reg[6]_C_n_0 ),
        .O(\number_of_words[8]_C_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \number_of_words[8]_C_i_5 
       (.I0(\number_of_words_reg[5]_P_n_0 ),
        .I1(\number_of_words_reg[5]_LDC_n_0 ),
        .I2(\number_of_words_reg[5]_C_n_0 ),
        .O(\number_of_words[8]_C_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \number_of_words[8]_C_i_6 
       (.I0(\number_of_words_reg[8]_C_n_0 ),
        .I1(\number_of_words_reg[31]_LDC_n_0 ),
        .I2(\number_of_words_reg[8]_P_n_0 ),
        .O(\number_of_words[8]_C_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \number_of_words[8]_C_i_7 
       (.I0(\number_of_words_reg[7]_C_n_0 ),
        .I1(\number_of_words_reg[7]_LDC_n_0 ),
        .I2(\number_of_words_reg[7]_P_n_0 ),
        .O(\number_of_words[8]_C_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \number_of_words[8]_C_i_8 
       (.I0(\number_of_words_reg[6]_C_n_0 ),
        .I1(\number_of_words_reg[6]_LDC_n_0 ),
        .I2(\number_of_words_reg[6]_P_n_0 ),
        .O(\number_of_words[8]_C_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \number_of_words[8]_C_i_9 
       (.I0(\number_of_words_reg[5]_C_n_0 ),
        .I1(\number_of_words_reg[5]_LDC_n_0 ),
        .I2(\number_of_words_reg[5]_P_n_0 ),
        .O(\number_of_words[8]_C_i_9_n_0 ));
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
    .INIT(1'b1)) 
    \number_of_words_reg[0]_LDC 
       (.CLR(\number_of_words_reg[0]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\number_of_words_reg[0]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\number_of_words_reg[0]_LDC_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCCCCAC)) 
    \number_of_words_reg[0]_LDC_i_1 
       (.I0(D[0]),
        .I1(i_rst_IBUF),
        .I2(current_state[0]),
        .I3(current_state[1]),
        .I4(current_state[3]),
        .I5(current_state[2]),
        .O(\number_of_words_reg[0]_LDC_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000100)) 
    \number_of_words_reg[0]_LDC_i_2 
       (.I0(current_state[2]),
        .I1(current_state[3]),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .I4(D[0]),
        .O(\number_of_words_reg[0]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[0]_P 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .D(number_of_words02_in[0]),
        .PRE(\number_of_words_reg[0]_LDC_i_1_n_0 ),
        .Q(\number_of_words_reg[0]_P_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[10]_C 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .CLR(p_1_in2_in),
        .D(number_of_words02_in[10]),
        .Q(\number_of_words_reg[10]_C_n_0 ));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[10]_P 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .D(number_of_words02_in[10]),
        .PRE(\number_of_words_reg[31]_LDC_i_1_n_0 ),
        .Q(\number_of_words_reg[10]_P_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[11]_C 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .CLR(p_1_in2_in),
        .D(number_of_words02_in[11]),
        .Q(\number_of_words_reg[11]_C_n_0 ));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[11]_P 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .D(number_of_words02_in[11]),
        .PRE(\number_of_words_reg[31]_LDC_i_1_n_0 ),
        .Q(\number_of_words_reg[11]_P_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[12]_C 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .CLR(p_1_in2_in),
        .D(number_of_words02_in[12]),
        .Q(\number_of_words_reg[12]_C_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \number_of_words_reg[12]_C_i_1 
       (.CI(\number_of_words_reg[8]_C_i_1_n_0 ),
        .CO({\number_of_words_reg[12]_C_i_1_n_0 ,\NLW_number_of_words_reg[12]_C_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({number_of_words[12],\number_of_words[12]_C_i_3_n_0 ,\number_of_words[12]_C_i_4_n_0 ,\number_of_words[12]_C_i_5_n_0 }),
        .O(number_of_words02_in[12:9]),
        .S({\number_of_words[12]_C_i_6_n_0 ,\number_of_words[12]_C_i_7_n_0 ,\number_of_words[12]_C_i_8_n_0 ,\number_of_words[12]_C_i_9_n_0 }));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[12]_P 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .D(number_of_words02_in[12]),
        .PRE(\number_of_words_reg[31]_LDC_i_1_n_0 ),
        .Q(\number_of_words_reg[12]_P_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[13]_C 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .CLR(p_1_in2_in),
        .D(number_of_words02_in[13]),
        .Q(\number_of_words_reg[13]_C_n_0 ));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[13]_P 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .D(number_of_words02_in[13]),
        .PRE(\number_of_words_reg[31]_LDC_i_1_n_0 ),
        .Q(\number_of_words_reg[13]_P_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[14]_C 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .CLR(p_1_in2_in),
        .D(number_of_words02_in[14]),
        .Q(\number_of_words_reg[14]_C_n_0 ));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[14]_P 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .D(number_of_words02_in[14]),
        .PRE(\number_of_words_reg[31]_LDC_i_1_n_0 ),
        .Q(\number_of_words_reg[14]_P_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[15]_C 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .CLR(p_1_in2_in),
        .D(number_of_words02_in[15]),
        .Q(\number_of_words_reg[15]_C_n_0 ));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[15]_P 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .D(number_of_words02_in[15]),
        .PRE(\number_of_words_reg[31]_LDC_i_1_n_0 ),
        .Q(\number_of_words_reg[15]_P_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[16]_C 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .CLR(p_1_in2_in),
        .D(number_of_words02_in[16]),
        .Q(\number_of_words_reg[16]_C_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \number_of_words_reg[16]_C_i_1 
       (.CI(\number_of_words_reg[12]_C_i_1_n_0 ),
        .CO({\number_of_words_reg[16]_C_i_1_n_0 ,\NLW_number_of_words_reg[16]_C_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\number_of_words[16]_C_i_2_n_0 ,number_of_words[15:13]}),
        .O(number_of_words02_in[16:13]),
        .S({\number_of_words[16]_C_i_6_n_0 ,\number_of_words[16]_C_i_7_n_0 ,\number_of_words[16]_C_i_8_n_0 ,\number_of_words[16]_C_i_9_n_0 }));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[16]_P 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .D(number_of_words02_in[16]),
        .PRE(\number_of_words_reg[31]_LDC_i_1_n_0 ),
        .Q(\number_of_words_reg[16]_P_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[17]_C 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .CLR(p_1_in2_in),
        .D(number_of_words02_in[17]),
        .Q(\number_of_words_reg[17]_C_n_0 ));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[17]_P 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .D(number_of_words02_in[17]),
        .PRE(\number_of_words_reg[31]_LDC_i_1_n_0 ),
        .Q(\number_of_words_reg[17]_P_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[18]_C 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .CLR(p_1_in2_in),
        .D(number_of_words02_in[18]),
        .Q(\number_of_words_reg[18]_C_n_0 ));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[18]_P 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .D(number_of_words02_in[18]),
        .PRE(\number_of_words_reg[31]_LDC_i_1_n_0 ),
        .Q(\number_of_words_reg[18]_P_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[19]_C 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .CLR(p_1_in2_in),
        .D(number_of_words02_in[19]),
        .Q(\number_of_words_reg[19]_C_n_0 ));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[19]_P 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .D(number_of_words02_in[19]),
        .PRE(\number_of_words_reg[31]_LDC_i_1_n_0 ),
        .Q(\number_of_words_reg[19]_P_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[1]_C 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .CLR(\number_of_words_reg[1]_LDC_i_2_n_0 ),
        .D(number_of_words02_in[1]),
        .Q(\number_of_words_reg[1]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b1)) 
    \number_of_words_reg[1]_LDC 
       (.CLR(\number_of_words_reg[1]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\number_of_words_reg[1]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\number_of_words_reg[1]_LDC_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCCCCAC)) 
    \number_of_words_reg[1]_LDC_i_1 
       (.I0(D[1]),
        .I1(i_rst_IBUF),
        .I2(current_state[0]),
        .I3(current_state[1]),
        .I4(current_state[3]),
        .I5(current_state[2]),
        .O(\number_of_words_reg[1]_LDC_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000100)) 
    \number_of_words_reg[1]_LDC_i_2 
       (.I0(current_state[2]),
        .I1(current_state[3]),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .I4(D[1]),
        .O(\number_of_words_reg[1]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[1]_P 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .D(number_of_words02_in[1]),
        .PRE(\number_of_words_reg[1]_LDC_i_1_n_0 ),
        .Q(\number_of_words_reg[1]_P_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[20]_C 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .CLR(p_1_in2_in),
        .D(number_of_words02_in[20]),
        .Q(\number_of_words_reg[20]_C_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \number_of_words_reg[20]_C_i_1 
       (.CI(\number_of_words_reg[16]_C_i_1_n_0 ),
        .CO({\number_of_words_reg[20]_C_i_1_n_0 ,\NLW_number_of_words_reg[20]_C_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({number_of_words[20],\number_of_words[20]_C_i_3_n_0 ,\number_of_words[20]_C_i_4_n_0 ,\number_of_words[20]_C_i_5_n_0 }),
        .O(number_of_words02_in[20:17]),
        .S({\number_of_words[20]_C_i_6_n_0 ,\number_of_words[20]_C_i_7_n_0 ,\number_of_words[20]_C_i_8_n_0 ,\number_of_words[20]_C_i_9_n_0 }));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[20]_P 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .D(number_of_words02_in[20]),
        .PRE(\number_of_words_reg[31]_LDC_i_1_n_0 ),
        .Q(\number_of_words_reg[20]_P_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[21]_C 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .CLR(p_1_in2_in),
        .D(number_of_words02_in[21]),
        .Q(\number_of_words_reg[21]_C_n_0 ));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[21]_P 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .D(number_of_words02_in[21]),
        .PRE(\number_of_words_reg[31]_LDC_i_1_n_0 ),
        .Q(\number_of_words_reg[21]_P_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[22]_C 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .CLR(p_1_in2_in),
        .D(number_of_words02_in[22]),
        .Q(\number_of_words_reg[22]_C_n_0 ));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[22]_P 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .D(number_of_words02_in[22]),
        .PRE(\number_of_words_reg[31]_LDC_i_1_n_0 ),
        .Q(\number_of_words_reg[22]_P_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[23]_C 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .CLR(p_1_in2_in),
        .D(number_of_words02_in[23]),
        .Q(\number_of_words_reg[23]_C_n_0 ));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[23]_P 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .D(number_of_words02_in[23]),
        .PRE(\number_of_words_reg[31]_LDC_i_1_n_0 ),
        .Q(\number_of_words_reg[23]_P_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[24]_C 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .CLR(p_1_in2_in),
        .D(number_of_words02_in[24]),
        .Q(\number_of_words_reg[24]_C_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \number_of_words_reg[24]_C_i_1 
       (.CI(\number_of_words_reg[20]_C_i_1_n_0 ),
        .CO({\number_of_words_reg[24]_C_i_1_n_0 ,\NLW_number_of_words_reg[24]_C_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\number_of_words[24]_C_i_2_n_0 ,number_of_words[23:21]}),
        .O(number_of_words02_in[24:21]),
        .S({\number_of_words[24]_C_i_6_n_0 ,\number_of_words[24]_C_i_7_n_0 ,\number_of_words[24]_C_i_8_n_0 ,\number_of_words[24]_C_i_9_n_0 }));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[24]_P 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .D(number_of_words02_in[24]),
        .PRE(\number_of_words_reg[31]_LDC_i_1_n_0 ),
        .Q(\number_of_words_reg[24]_P_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[25]_C 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .CLR(p_1_in2_in),
        .D(number_of_words02_in[25]),
        .Q(\number_of_words_reg[25]_C_n_0 ));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[25]_P 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .D(number_of_words02_in[25]),
        .PRE(\number_of_words_reg[31]_LDC_i_1_n_0 ),
        .Q(\number_of_words_reg[25]_P_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[26]_C 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .CLR(p_1_in2_in),
        .D(number_of_words02_in[26]),
        .Q(\number_of_words_reg[26]_C_n_0 ));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[26]_P 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .D(number_of_words02_in[26]),
        .PRE(\number_of_words_reg[31]_LDC_i_1_n_0 ),
        .Q(\number_of_words_reg[26]_P_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[27]_C 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .CLR(p_1_in2_in),
        .D(number_of_words02_in[27]),
        .Q(\number_of_words_reg[27]_C_n_0 ));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[27]_P 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .D(number_of_words02_in[27]),
        .PRE(\number_of_words_reg[31]_LDC_i_1_n_0 ),
        .Q(\number_of_words_reg[27]_P_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[28]_C 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .CLR(p_1_in2_in),
        .D(number_of_words02_in[28]),
        .Q(\number_of_words_reg[28]_C_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \number_of_words_reg[28]_C_i_1 
       (.CI(\number_of_words_reg[24]_C_i_1_n_0 ),
        .CO({\number_of_words_reg[28]_C_i_1_n_0 ,\NLW_number_of_words_reg[28]_C_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({number_of_words[28],\number_of_words[28]_C_i_3_n_0 ,\number_of_words[28]_C_i_4_n_0 ,\number_of_words[28]_C_i_5_n_0 }),
        .O(number_of_words02_in[28:25]),
        .S({\number_of_words[28]_C_i_6_n_0 ,\number_of_words[28]_C_i_7_n_0 ,\number_of_words[28]_C_i_8_n_0 ,\number_of_words[28]_C_i_9_n_0 }));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[28]_P 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .D(number_of_words02_in[28]),
        .PRE(\number_of_words_reg[31]_LDC_i_1_n_0 ),
        .Q(\number_of_words_reg[28]_P_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[29]_C 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .CLR(p_1_in2_in),
        .D(number_of_words02_in[29]),
        .Q(\number_of_words_reg[29]_C_n_0 ));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[29]_P 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .D(number_of_words02_in[29]),
        .PRE(\number_of_words_reg[31]_LDC_i_1_n_0 ),
        .Q(\number_of_words_reg[29]_P_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[2]_C 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .CLR(\number_of_words_reg[2]_LDC_i_2_n_0 ),
        .D(number_of_words02_in[2]),
        .Q(\number_of_words_reg[2]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b1)) 
    \number_of_words_reg[2]_LDC 
       (.CLR(\number_of_words_reg[2]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\number_of_words_reg[2]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\number_of_words_reg[2]_LDC_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCCCCAC)) 
    \number_of_words_reg[2]_LDC_i_1 
       (.I0(D[2]),
        .I1(i_rst_IBUF),
        .I2(current_state[0]),
        .I3(current_state[1]),
        .I4(current_state[3]),
        .I5(current_state[2]),
        .O(\number_of_words_reg[2]_LDC_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000100)) 
    \number_of_words_reg[2]_LDC_i_2 
       (.I0(current_state[2]),
        .I1(current_state[3]),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .I4(D[2]),
        .O(\number_of_words_reg[2]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[2]_P 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .D(number_of_words02_in[2]),
        .PRE(\number_of_words_reg[2]_LDC_i_1_n_0 ),
        .Q(\number_of_words_reg[2]_P_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[30]_C 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .CLR(p_1_in2_in),
        .D(number_of_words02_in[30]),
        .Q(\number_of_words_reg[30]_C_n_0 ));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[30]_P 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .D(number_of_words02_in[30]),
        .PRE(\number_of_words_reg[31]_LDC_i_1_n_0 ),
        .Q(\number_of_words_reg[30]_P_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[31]_C 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .CLR(p_1_in2_in),
        .D(number_of_words02_in[31]),
        .Q(\number_of_words_reg[31]_C_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \number_of_words_reg[31]_C_i_2 
       (.CI(\number_of_words_reg[28]_C_i_1_n_0 ),
        .CO(\NLW_number_of_words_reg[31]_C_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,number_of_words[30:29]}),
        .O({\NLW_number_of_words_reg[31]_C_i_2_O_UNCONNECTED [3],number_of_words02_in[31:29]}),
        .S({1'b0,\number_of_words[31]_C_i_5_n_0 ,\number_of_words[31]_C_i_6_n_0 ,\number_of_words[31]_C_i_7_n_0 }));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b1)) 
    \number_of_words_reg[31]_LDC 
       (.CLR(p_1_in2_in),
        .D(1'b1),
        .G(\number_of_words_reg[31]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\number_of_words_reg[31]_LDC_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF0000)) 
    \number_of_words_reg[31]_LDC_i_1 
       (.I0(current_state[2]),
        .I1(current_state[3]),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .I4(i_rst_IBUF),
        .O(\number_of_words_reg[31]_LDC_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \number_of_words_reg[31]_LDC_i_2 
       (.I0(current_state[2]),
        .I1(current_state[3]),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .O(p_1_in2_in));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[31]_P 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .D(number_of_words02_in[31]),
        .PRE(\number_of_words_reg[31]_LDC_i_1_n_0 ),
        .Q(\number_of_words_reg[31]_P_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[3]_C 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .CLR(\number_of_words_reg[3]_LDC_i_2_n_0 ),
        .D(number_of_words02_in[3]),
        .Q(\number_of_words_reg[3]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b1)) 
    \number_of_words_reg[3]_LDC 
       (.CLR(\number_of_words_reg[3]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\number_of_words_reg[3]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\number_of_words_reg[3]_LDC_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCCCCAC)) 
    \number_of_words_reg[3]_LDC_i_1 
       (.I0(D[3]),
        .I1(i_rst_IBUF),
        .I2(current_state[0]),
        .I3(current_state[1]),
        .I4(current_state[3]),
        .I5(current_state[2]),
        .O(\number_of_words_reg[3]_LDC_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000100)) 
    \number_of_words_reg[3]_LDC_i_2 
       (.I0(current_state[2]),
        .I1(current_state[3]),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .I4(D[3]),
        .O(\number_of_words_reg[3]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[3]_P 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .D(number_of_words02_in[3]),
        .PRE(\number_of_words_reg[3]_LDC_i_1_n_0 ),
        .Q(\number_of_words_reg[3]_P_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[4]_C 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .CLR(\number_of_words_reg[4]_LDC_i_2_n_0 ),
        .D(number_of_words02_in[4]),
        .Q(\number_of_words_reg[4]_C_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \number_of_words_reg[4]_C_i_1 
       (.CI(1'b0),
        .CO({\number_of_words_reg[4]_C_i_1_n_0 ,\NLW_number_of_words_reg[4]_C_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(number_of_words[0]),
        .DI({number_of_words[4],\number_of_words[4]_C_i_4_n_0 ,\number_of_words[4]_C_i_5_n_0 ,\number_of_words[4]_C_i_6_n_0 }),
        .O(number_of_words02_in[4:1]),
        .S({\number_of_words[4]_C_i_7_n_0 ,\number_of_words[4]_C_i_8_n_0 ,\number_of_words[4]_C_i_9_n_0 ,\number_of_words[4]_C_i_10_n_0 }));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b1)) 
    \number_of_words_reg[4]_LDC 
       (.CLR(\number_of_words_reg[4]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\number_of_words_reg[4]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\number_of_words_reg[4]_LDC_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCCCCAC)) 
    \number_of_words_reg[4]_LDC_i_1 
       (.I0(D[4]),
        .I1(i_rst_IBUF),
        .I2(current_state[0]),
        .I3(current_state[1]),
        .I4(current_state[3]),
        .I5(current_state[2]),
        .O(\number_of_words_reg[4]_LDC_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000100)) 
    \number_of_words_reg[4]_LDC_i_2 
       (.I0(current_state[2]),
        .I1(current_state[3]),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .I4(D[4]),
        .O(\number_of_words_reg[4]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[4]_P 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .D(number_of_words02_in[4]),
        .PRE(\number_of_words_reg[4]_LDC_i_1_n_0 ),
        .Q(\number_of_words_reg[4]_P_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[5]_C 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .CLR(\number_of_words_reg[5]_LDC_i_2_n_0 ),
        .D(number_of_words02_in[5]),
        .Q(\number_of_words_reg[5]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b1)) 
    \number_of_words_reg[5]_LDC 
       (.CLR(\number_of_words_reg[5]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\number_of_words_reg[5]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\number_of_words_reg[5]_LDC_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCCCCAC)) 
    \number_of_words_reg[5]_LDC_i_1 
       (.I0(D[5]),
        .I1(i_rst_IBUF),
        .I2(current_state[0]),
        .I3(current_state[1]),
        .I4(current_state[3]),
        .I5(current_state[2]),
        .O(\number_of_words_reg[5]_LDC_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000100)) 
    \number_of_words_reg[5]_LDC_i_2 
       (.I0(current_state[2]),
        .I1(current_state[3]),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .I4(D[5]),
        .O(\number_of_words_reg[5]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[5]_P 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .D(number_of_words02_in[5]),
        .PRE(\number_of_words_reg[5]_LDC_i_1_n_0 ),
        .Q(\number_of_words_reg[5]_P_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[6]_C 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .CLR(\number_of_words_reg[6]_LDC_i_2_n_0 ),
        .D(number_of_words02_in[6]),
        .Q(\number_of_words_reg[6]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b1)) 
    \number_of_words_reg[6]_LDC 
       (.CLR(\number_of_words_reg[6]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\number_of_words_reg[6]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\number_of_words_reg[6]_LDC_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCCCCAC)) 
    \number_of_words_reg[6]_LDC_i_1 
       (.I0(D[6]),
        .I1(i_rst_IBUF),
        .I2(current_state[0]),
        .I3(current_state[1]),
        .I4(current_state[3]),
        .I5(current_state[2]),
        .O(\number_of_words_reg[6]_LDC_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000100)) 
    \number_of_words_reg[6]_LDC_i_2 
       (.I0(current_state[2]),
        .I1(current_state[3]),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .I4(D[6]),
        .O(\number_of_words_reg[6]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[6]_P 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .D(number_of_words02_in[6]),
        .PRE(\number_of_words_reg[6]_LDC_i_1_n_0 ),
        .Q(\number_of_words_reg[6]_P_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[7]_C 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .CLR(\number_of_words_reg[7]_LDC_i_2_n_0 ),
        .D(number_of_words02_in[7]),
        .Q(\number_of_words_reg[7]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b1)) 
    \number_of_words_reg[7]_LDC 
       (.CLR(\number_of_words_reg[7]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\number_of_words_reg[7]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\number_of_words_reg[7]_LDC_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCCCCAC)) 
    \number_of_words_reg[7]_LDC_i_1 
       (.I0(D[7]),
        .I1(i_rst_IBUF),
        .I2(current_state[0]),
        .I3(current_state[1]),
        .I4(current_state[3]),
        .I5(current_state[2]),
        .O(\number_of_words_reg[7]_LDC_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000100)) 
    \number_of_words_reg[7]_LDC_i_2 
       (.I0(current_state[2]),
        .I1(current_state[3]),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .I4(D[7]),
        .O(\number_of_words_reg[7]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[7]_P 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .D(number_of_words02_in[7]),
        .PRE(\number_of_words_reg[7]_LDC_i_1_n_0 ),
        .Q(\number_of_words_reg[7]_P_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[8]_C 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .CLR(p_1_in2_in),
        .D(number_of_words02_in[8]),
        .Q(\number_of_words_reg[8]_C_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \number_of_words_reg[8]_C_i_1 
       (.CI(\number_of_words_reg[4]_C_i_1_n_0 ),
        .CO({\number_of_words_reg[8]_C_i_1_n_0 ,\NLW_number_of_words_reg[8]_C_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\number_of_words[8]_C_i_2_n_0 ,\number_of_words[8]_C_i_3_n_0 ,\number_of_words[8]_C_i_4_n_0 ,\number_of_words[8]_C_i_5_n_0 }),
        .O(number_of_words02_in[8:5]),
        .S({\number_of_words[8]_C_i_6_n_0 ,\number_of_words[8]_C_i_7_n_0 ,\number_of_words[8]_C_i_8_n_0 ,\number_of_words[8]_C_i_9_n_0 }));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[8]_P 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .D(number_of_words02_in[8]),
        .PRE(\number_of_words_reg[31]_LDC_i_1_n_0 ),
        .Q(\number_of_words_reg[8]_P_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[9]_C 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .CLR(p_1_in2_in),
        .D(number_of_words02_in[9]),
        .Q(\number_of_words_reg[9]_C_n_0 ));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \number_of_words_reg[9]_P 
       (.C(i_clk_IBUF_BUFG),
        .CE(number_of_words0),
        .D(number_of_words02_in[9]),
        .PRE(\number_of_words_reg[31]_LDC_i_1_n_0 ),
        .Q(\number_of_words_reg[9]_P_n_0 ));
  LUT6 #(
    .INIT(64'h00000000ACCA0000)) 
    \o_data_OBUF[0]_inst_i_1 
       (.I0(u),
        .I1(\current_state_reg[2]_0 ),
        .I2(FF2_signal),
        .I3(\output ),
        .I4(i_start_IBUF),
        .I5(i_rst_IBUF),
        .O(o_data_OBUF[0]));
  LUT5 #(
    .INIT(32'h00A000C0)) 
    \o_data_OBUF[1]_inst_i_1 
       (.I0(\current_state_reg[2]_0 ),
        .I1(u),
        .I2(i_start_IBUF),
        .I3(i_rst_IBUF),
        .I4(FF2_signal),
        .O(o_data_OBUF[1]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \o_data_OBUF[1]_inst_i_2 
       (.I0(\o_data_OBUF[1]_inst_i_3_n_0 ),
        .I1(\o_data_OBUF[1]_inst_i_4_n_0 ),
        .I2(\o_data_OBUF[1]_inst_i_5_n_0 ),
        .I3(\o_data_OBUF[1]_inst_i_6_n_0 ),
        .O(\current_state_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h0000000F000F535F)) 
    \o_data_OBUF[1]_inst_i_3 
       (.I0(p_5_in),
        .I1(\mem_inout_reg_n_0_[2] ),
        .I2(current_state[2]),
        .I3(current_state[3]),
        .I4(current_state[0]),
        .I5(current_state[1]),
        .O(\o_data_OBUF[1]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00001D00)) 
    \o_data_OBUF[1]_inst_i_4 
       (.I0(\mem_inout_reg_n_0_[1] ),
        .I1(current_state[2]),
        .I2(p_4_in),
        .I3(current_state[0]),
        .I4(current_state[1]),
        .O(\o_data_OBUF[1]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00001D00)) 
    \o_data_OBUF[1]_inst_i_5 
       (.I0(\mem_inout_reg_n_0_[0] ),
        .I1(current_state[2]),
        .I2(p_3_in),
        .I3(current_state[1]),
        .I4(current_state[0]),
        .O(\o_data_OBUF[1]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF5F3F000F000F000)) 
    \o_data_OBUF[1]_inst_i_6 
       (.I0(\mem_inout_reg_n_0_[3] ),
        .I1(\mem_inout_reg_n_0_[7] ),
        .I2(current_state[3]),
        .I3(current_state[2]),
        .I4(current_state[1]),
        .I5(current_state[0]),
        .O(\o_data_OBUF[1]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00050AAB)) 
    o_en_OBUF_inst_i_1
       (.I0(current_state[1]),
        .I1(o_en_OBUF_inst_i_2_n_0),
        .I2(current_state[3]),
        .I3(current_state[2]),
        .I4(current_state[0]),
        .O(o_en_OBUF));
  LUT4 #(
    .INIT(16'hFFFD)) 
    o_en_OBUF_inst_i_2
       (.I0(next_state[0]),
        .I1(next_state[1]),
        .I2(next_state[3]),
        .I3(next_state[2]),
        .O(o_en_OBUF_inst_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    o_we_OBUF_inst_i_1
       (.I0(current_state[3]),
        .I1(current_state[2]),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .O(o_we_OBUF));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    output_i_1
       (.I0(output_i_2_n_0),
        .I1(output_i_3_n_0),
        .I2(output_i_4_n_0),
        .I3(output_i_5_n_0),
        .I4(output_i_6_n_0),
        .O(u));
  LUT6 #(
    .INIT(64'h0030000008000800)) 
    output_i_2
       (.I0(\mem_inout_reg_n_0_[1] ),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(current_state[3]),
        .I4(p_3_in),
        .I5(current_state[2]),
        .O(output_i_2_n_0));
  LUT5 #(
    .INIT(32'h08000000)) 
    output_i_3
       (.I0(\mem_inout_reg_n_0_[3] ),
        .I1(current_state[2]),
        .I2(current_state[3]),
        .I3(current_state[1]),
        .I4(current_state[0]),
        .O(output_i_3_n_0));
  LUT6 #(
    .INIT(64'h0100101001000000)) 
    output_i_4
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(current_state[3]),
        .I3(p_5_in),
        .I4(current_state[2]),
        .I5(\mem_inout_reg_n_0_[2] ),
        .O(output_i_4_n_0));
  LUT6 #(
    .INIT(64'h0030000008000800)) 
    output_i_5
       (.I0(\mem_inout_reg_n_0_[0] ),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(current_state[3]),
        .I4(p_4_in),
        .I5(current_state[2]),
        .O(output_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    output_i_6
       (.I0(current_state[2]),
        .I1(current_state[3]),
        .I2(\mem_inout_reg_n_0_[7] ),
        .I3(current_state[1]),
        .I4(current_state[0]),
        .O(output_i_6_n_0));
endmodule

module convolutional_encoder
   (\output ,
    FF2_signal,
    output_reg,
    component_enable,
    u,
    i_clk_IBUF_BUFG,
    component_reset_BUFG);
  output \output ;
  output FF2_signal;
  output output_reg;
  input component_enable;
  input u;
  input i_clk_IBUF_BUFG;
  input component_reset_BUFG;

  wire FF2_signal;
  wire component_enable;
  wire component_reset_BUFG;
  wire i_clk_IBUF_BUFG;
  wire \output ;
  wire output_reg;
  wire u;

  FF_D FF1
       (.FF2_signal(FF2_signal),
        .component_enable(component_enable),
        .component_reset_BUFG(component_reset_BUFG),
        .i_clk_IBUF_BUFG(i_clk_IBUF_BUFG),
        .\output (\output ),
        .output_reg_0(output_reg),
        .u(u));
  FF_D_0 FF2
       (.FF2_signal(FF2_signal),
        .component_enable(component_enable),
        .component_reset_BUFG(component_reset_BUFG),
        .i_clk_IBUF_BUFG(i_clk_IBUF_BUFG),
        .\output (\output ));
endmodule

(* ECO_CHECKSUM = "2908cd79" *) 
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
  wire component_reset_BUFG;
  wire cont_n_5;
  wire encoder_n_2;
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
  wire [15:0]o_address_OBUF;
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
  BUFG component_reset_BUFG_inst
       (.I(component_reset),
        .O(component_reset_BUFG));
  controller cont
       (.D(i_data_IBUF),
        .FF2_signal(FF2_signal),
        .Q(o_address_OBUF),
        .component_enable(component_enable),
        .component_reset_BUFG(component_reset_BUFG),
        .\current_state_reg[2]_0 (cont_n_5),
        .i_clk_IBUF(i_clk_IBUF),
        .i_clk_IBUF_BUFG(i_clk_IBUF_BUFG),
        .i_rst_IBUF(i_rst_IBUF),
        .i_start_IBUF(i_start_IBUF),
        .o_data_OBUF(o_data_OBUF[1:0]),
        .o_done_OBUF(o_done_OBUF),
        .o_en_OBUF(o_en_OBUF),
        .o_we_OBUF(o_we_OBUF),
        .\output (\output ),
        .u(u));
  convolutional_encoder encoder
       (.FF2_signal(FF2_signal),
        .component_enable(component_enable),
        .component_reset_BUFG(component_reset_BUFG),
        .i_clk_IBUF_BUFG(i_clk_IBUF_BUFG),
        .\output (\output ),
        .output_reg(encoder_n_2),
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
       (.I(o_address_OBUF[11]),
        .O(o_address[11]));
  OBUF \o_address_OBUF[12]_inst 
       (.I(o_address_OBUF[12]),
        .O(o_address[12]));
  OBUF \o_address_OBUF[13]_inst 
       (.I(o_address_OBUF[13]),
        .O(o_address[13]));
  OBUF \o_address_OBUF[14]_inst 
       (.I(o_address_OBUF[14]),
        .O(o_address[14]));
  OBUF \o_address_OBUF[15]_inst 
       (.I(o_address_OBUF[15]),
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
       (.FF2_signal(FF2_signal),
        .component_enable(component_enable),
        .component_reset(component_reset),
        .\half_z_inout_shifter_reg[2]_0 (encoder_n_2),
        .\half_z_inout_shifter_reg[3]_0 (cont_n_5),
        .i_clk_IBUF_BUFG(i_clk_IBUF_BUFG),
        .i_rst_IBUF(i_rst_IBUF),
        .i_start_IBUF(i_start_IBUF),
        .o_data_OBUF(o_data_OBUF[7:2]),
        .u(u));
endmodule

module string_manager
   (o_data_OBUF,
    component_reset,
    i_start_IBUF,
    i_rst_IBUF,
    component_enable,
    i_clk_IBUF_BUFG,
    \half_z_inout_shifter_reg[3]_0 ,
    u,
    FF2_signal,
    \half_z_inout_shifter_reg[2]_0 );
  output [5:0]o_data_OBUF;
  output component_reset;
  input i_start_IBUF;
  input i_rst_IBUF;
  input component_enable;
  input i_clk_IBUF_BUFG;
  input \half_z_inout_shifter_reg[3]_0 ;
  input u;
  input FF2_signal;
  input \half_z_inout_shifter_reg[2]_0 ;

  wire FF2_signal;
  wire component_enable;
  wire component_reset;
  wire [7:2]half_z_inout_shifter;
  wire \half_z_inout_shifter[2]_i_1_n_0 ;
  wire \half_z_inout_shifter[3]_i_1_n_0 ;
  wire \half_z_inout_shifter[7]_i_1_n_0 ;
  wire \half_z_inout_shifter_reg[2]_0 ;
  wire \half_z_inout_shifter_reg[3]_0 ;
  wire i_clk_IBUF_BUFG;
  wire i_rst_IBUF;
  wire i_start_IBUF;
  wire [5:0]o_data_OBUF;
  wire u;

  LUT2 #(
    .INIT(4'hB)) 
    component_reset_BUFG_inst_i_1
       (.I0(i_rst_IBUF),
        .I1(i_start_IBUF),
        .O(component_reset));
  LUT6 #(
    .INIT(64'h00ACFFFF00AC0000)) 
    \half_z_inout_shifter[2]_i_1 
       (.I0(u),
        .I1(\half_z_inout_shifter_reg[3]_0 ),
        .I2(\half_z_inout_shifter_reg[2]_0 ),
        .I3(component_reset),
        .I4(component_enable),
        .I5(half_z_inout_shifter[2]),
        .O(\half_z_inout_shifter[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0A0CFFFF0A0C0000)) 
    \half_z_inout_shifter[3]_i_1 
       (.I0(\half_z_inout_shifter_reg[3]_0 ),
        .I1(u),
        .I2(component_reset),
        .I3(FF2_signal),
        .I4(component_enable),
        .I5(half_z_inout_shifter[3]),
        .O(\half_z_inout_shifter[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \half_z_inout_shifter[7]_i_1 
       (.I0(i_start_IBUF),
        .I1(i_rst_IBUF),
        .I2(component_enable),
        .O(\half_z_inout_shifter[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \half_z_inout_shifter_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\half_z_inout_shifter[2]_i_1_n_0 ),
        .Q(half_z_inout_shifter[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_z_inout_shifter_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\half_z_inout_shifter[3]_i_1_n_0 ),
        .Q(half_z_inout_shifter[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \half_z_inout_shifter_reg[4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(component_enable),
        .D(half_z_inout_shifter[2]),
        .Q(half_z_inout_shifter[4]),
        .R(\half_z_inout_shifter[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \half_z_inout_shifter_reg[5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(component_enable),
        .D(half_z_inout_shifter[3]),
        .Q(half_z_inout_shifter[5]),
        .R(\half_z_inout_shifter[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \half_z_inout_shifter_reg[6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(component_enable),
        .D(half_z_inout_shifter[4]),
        .Q(half_z_inout_shifter[6]),
        .R(\half_z_inout_shifter[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \half_z_inout_shifter_reg[7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(component_enable),
        .D(half_z_inout_shifter[5]),
        .Q(half_z_inout_shifter[7]),
        .R(\half_z_inout_shifter[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_data_OBUF[2]_inst_i_1 
       (.I0(half_z_inout_shifter[2]),
        .I1(i_start_IBUF),
        .I2(i_rst_IBUF),
        .O(o_data_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_data_OBUF[3]_inst_i_1 
       (.I0(half_z_inout_shifter[3]),
        .I1(i_start_IBUF),
        .I2(i_rst_IBUF),
        .O(o_data_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_data_OBUF[4]_inst_i_1 
       (.I0(half_z_inout_shifter[4]),
        .I1(i_start_IBUF),
        .I2(i_rst_IBUF),
        .O(o_data_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_data_OBUF[5]_inst_i_1 
       (.I0(half_z_inout_shifter[5]),
        .I1(i_start_IBUF),
        .I2(i_rst_IBUF),
        .O(o_data_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_data_OBUF[6]_inst_i_1 
       (.I0(half_z_inout_shifter[6]),
        .I1(i_start_IBUF),
        .I2(i_rst_IBUF),
        .O(o_data_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_data_OBUF[7]_inst_i_1 
       (.I0(half_z_inout_shifter[7]),
        .I1(i_start_IBUF),
        .I2(i_rst_IBUF),
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
