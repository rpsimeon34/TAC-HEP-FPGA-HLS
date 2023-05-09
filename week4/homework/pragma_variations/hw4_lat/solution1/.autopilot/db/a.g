#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /afs/hep.wisc.edu/user/rsimeon/tac_hep_fpga/TAC-HEP-FPGA-HLS/week4/homework/pragma_variations/hw4_lat/solution1/.autopilot/db/a.g.bc ${1+"$@"}
