#include "hw4.h"

void hw4 (
  int in_A[DSIZE],
  int in_B[DSIZE],
  int *out
  ) {
   #pragma HLS resource variable=in_A core=RAM_1P
   #pragma HLS latency min=1 max=8
   #pragma HLS ARRAY_PARTITION variable=in_B block factor=2 dim=1
   int sum = 0;

Loop_j:for(int j=0; j < DSIZE; j++){
     #pragma HLS allocation instances=mul limit=2 operation
     sum += in_A[j]*in_B[j];
     }
   *out = sum;
}
