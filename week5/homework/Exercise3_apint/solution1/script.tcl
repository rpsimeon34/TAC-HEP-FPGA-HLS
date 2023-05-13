############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project Exercise3_apint
set_top ex3
add_files ex3apint.cpp
add_files -tb ex3apint_tb.cpp
open_solution "solution1"
set_part {xc7k160t-fbg484-2}
create_clock -period 10 -name default
#source "./Exercise3_apint/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
