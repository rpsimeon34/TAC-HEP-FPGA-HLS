
/opt/Xilinx/Vivado/2020.1/bin/xelab xil_defaultlib.apatb_lec5Ex1_top glbl -prj lec5Ex1.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims_ver -L xpm --initfile "/opt/Xilinx/Vivado/2020.1/data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s lec5Ex1 
/opt/Xilinx/Vivado/2020.1/bin/xsim --noieeewarnings lec5Ex1 -tclbatch lec5Ex1.tcl

