// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
# 1 "/afs/hep.wisc.edu/user/rsimeon/tac_hep_fpga/TAC-HEP-FPGA-HLS/week3/lec5Ex1.c"
# 1 "/afs/hep.wisc.edu/user/rsimeon/tac_hep_fpga/TAC-HEP-FPGA-HLS/week3/lec5Ex1.c" 1
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 149 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/afs/hep.wisc.edu/user/rsimeon/tac_hep_fpga/TAC-HEP-FPGA-HLS/week3/lec5Ex1.c" 2
# 1 "/afs/hep.wisc.edu/user/rsimeon/tac_hep_fpga/TAC-HEP-FPGA-HLS/week3/lec5Ex1.h" 1




void lec5Ex1 (
  int *y,
  int c[11 +1],
  int x
  );
# 1 "/afs/hep.wisc.edu/user/rsimeon/tac_hep_fpga/TAC-HEP-FPGA-HLS/week3/lec5Ex1.c" 2


void lec5Ex1 (
  int *y,
  int c[11],
  int x
  ) {

   static int arr[11];
   int sum;
   int data;
   int i;

   sum=0;
Loop: for (i=11 -1;i>=0;i--) {
  if (i==0) {
     arr[0]=x;
     data = x;
  } else {
     arr[i]=arr[i-1];
     data = arr[i];
  }
  sum+=data*c[i];;
      }
      *y=sum;
}
