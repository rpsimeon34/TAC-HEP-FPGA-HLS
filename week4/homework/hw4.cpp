#include "hw4.h"

void hw4 (
  int in_A[DSIZE],
  int in_B[DSIZE],
  int out
  ) {

   int sum = 0;

Loop_j:for(int j=0; j < DSIZE; j++){
     sum += in_A[j]*in_B[j];
   }
   out = sum;
}

ap_uint<8> squared(ap_uint<8> a)
{
#pragma HLS INLINE
  ap_uint<8> res = 0;
  res = a*a;
  return res;
}
