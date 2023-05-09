############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project hw4_alloc
set_top lec8Ex1
add_files alloc_lec8Ex1.c
add_files -tb lec8Ex1_tb.c -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb lec8Ex1_out_ref.dat -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7k160t-fbg484-2}
create_clock -period 10 -name default
#source "./hw4_alloc/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
