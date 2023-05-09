############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project hw4_lat
set_top lec8Ex1
add_files lat_lec8Ex1.c
add_files -tb lec8Ex1_out_ref.dat
add_files -tb lec8Ex1_tb.c
open_solution "solution1"
set_part {xc7k160tfbg484-2}
create_clock -period 10 -name default
#source "./hw4_lat/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
