############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project Week3b_HW
set_top lec6Ex2a
add_files lec6Ex2a.cpp
add_files -tb lec6Ex2a_test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb lec6Ex2a_out_ref.dat -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7k160t-fbg484-2}
create_clock -period 10 -name default
#source "./Week3b_HW/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
