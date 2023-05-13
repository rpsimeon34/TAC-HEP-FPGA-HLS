############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project Exercise3_int
set_top ex3
add_files ex3int.c
add_files -tb ex3int_tb.c
open_solution "solution1"
set_part {xc7k160t-fbg484-2}
create_clock -period 10 -name default
#source "./Exercise3_int/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
