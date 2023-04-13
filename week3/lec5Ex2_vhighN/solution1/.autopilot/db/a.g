#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /afs/hep.wisc.edu/user/rsimeon/tac_hep_fpga/TAC-HEP-FPGA-HLS/week3/lec5Ex2_vhighN/solution1/.autopilot/db/a.g.bc ${1+"$@"}
