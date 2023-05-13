#include "ex2.h"

void ex2(din_t A[N][N], din_t B[N], dout_t C[N]) {
  int i,j;
  dint_t acc;

acc = 0;
LOOP_I:for(i=0; i < N; i++){
    LOOP_J: for(j=0; j < N; j++){
        #pragma HLS loop_flatten
        acc += A[i][j]*B[j];
        if (j==N-1) {
            C[i] = acc;
            acc = 0;
        }
	}
}
}


