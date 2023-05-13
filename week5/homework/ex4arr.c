#include "ex4arr.h"

void ex4(int A[N], int *B) {
  int i;
  int acc = 0;

LOOP_I:for(i=0; i < N; i++){
    acc += A[i];
	}
*B = acc;
}



