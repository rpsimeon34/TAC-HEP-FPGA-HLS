############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project Exercise2_prelim
set_top ex2
add_files ex2.c
add_files -tb ex2_out_ref.dat
add_files -tb ex2_tb.c
open_solution "solution1"
set_part {xc7k160tfbg484-2}
create_clock -period 10 -name default
#source "./Exercise2_prelim/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
