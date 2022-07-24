#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2021.2 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Sun Jul 24 11:38:53 CEST 2022
# SW Build 3367213 on Tue Oct 19 02:47:39 MDT 2021
#
# IP Build 3369179 on Thu Oct 21 08:25:16 MDT 2021
#
# usage: simulate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# simulate design
echo "xsim project_tb_behav -key {Behavioral:sim_1:Functional:project_tb} -tclbatch project_tb.tcl -view /home/davide/git/Progetto-reti-logiche-2022/project_reti_logiche/project_tb1_behav.wcfg -view /home/davide/git/Progetto-reti-logiche-2022/project_reti_logiche/convolutore_striga.wcfg -log simulate.log"
xsim project_tb_behav -key {Behavioral:sim_1:Functional:project_tb} -tclbatch project_tb.tcl -view /home/davide/git/Progetto-reti-logiche-2022/project_reti_logiche/project_tb1_behav.wcfg -view /home/davide/git/Progetto-reti-logiche-2022/project_reti_logiche/convolutore_striga.wcfg -log simulate.log

