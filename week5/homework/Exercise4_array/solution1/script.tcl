############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project Exercise4_array
set_top ex4
add_files ex4arr.c
add_files -tb ex4arr_tb.c
open_solution "solution1"
set_part {xc7k160t-fbg484-2}
create_clock -period 10 -name default
#source "./Exercise4_array/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
