#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2021.2 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Fri Jul 22 23:48:58 CEST 2022
# SW Build 3367213 on Tue Oct 19 02:47:39 MDT 2021
#
# IP Build 3369179 on Thu Oct 21 08:25:16 MDT 2021
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# elaborate design
echo "xelab --incr --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot project_tb_func_synth xil_defaultlib.project_tb -log elaborate.log"
xelab --incr --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot project_tb_func_synth xil_defaultlib.project_tb -log elaborate.log

