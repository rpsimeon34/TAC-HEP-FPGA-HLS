#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /afs/hep.wisc.edu/user/rsimeon/tac_hep_fpga/TAC-HEP-FPGA-HLS/week5/homework/Exercise2_unroll/solution1/.autopilot/db/a.g.bc ${1+"$@"}
