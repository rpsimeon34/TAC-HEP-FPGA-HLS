#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /afs/hep.wisc.edu/user/rsimeon/tac_hep_fpga/TAC-HEP-FPGA-HLS/week3/Week3b_HW/solution1/.autopilot/db/a.g.bc ${1+"$@"}
