#include "hw4.h"

void hw4(
  int in_A[DSIZE],
  int in_B[DSIZE],
  int *out
  ) {

   int sum = 0;

Loop_j:for(int j=0; j < DSIZE; j++){
     sum += in_A[j]*in_B[j];
   }
   *out = sum;
}
