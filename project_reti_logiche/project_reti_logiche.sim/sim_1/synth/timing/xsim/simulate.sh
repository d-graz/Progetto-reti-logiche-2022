#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2021.2 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Mon Jul 25 13:11:04 CEST 2022
# SW Build 3367213 on Tue Oct 19 02:47:39 MDT 2021
#
# IP Build 3369179 on Thu Oct 21 08:25:16 MDT 2021
#
# usage: simulate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# simulate design
echo "xsim project_tb_time_synth -key {Post-Synthesis:sim_1:Timing:project_tb} -tclbatch project_tb.tcl -view /home/davide/git/Progetto-reti-logiche-2022/project_reti_logiche/project_tb1_behav.wcfg -view /home/davide/git/Progetto-reti-logiche-2022/project_reti_logiche/convolutore_striga.wcfg -log simulate.log"
xsim project_tb_time_synth -key {Post-Synthesis:sim_1:Timing:project_tb} -tclbatch project_tb.tcl -view /home/davide/git/Progetto-reti-logiche-2022/project_reti_logiche/project_tb1_behav.wcfg -view /home/davide/git/Progetto-reti-logiche-2022/project_reti_logiche/convolutore_striga.wcfg -log simulate.log

