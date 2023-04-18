############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project hw4_nopragmas
set_top hw4
add_files hw4.cpp
add_files -tb hw4_test.cpp
open_solution "solution1"
set_part {xc7k160tfbg484-2}
create_clock -period 10 -name default
#source "./hw4_nopragmas/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
