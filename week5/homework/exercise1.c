#include "lec9Ex2.h"
#include <stdlib.h>

dout_t lec9Ex2(din_t din[N], dsel_t width) {  

	long long *out_accum = malloc (sizeof(long long));
	int* array_local = malloc (64 * sizeof(int));
	int i,j;
  
  LOOP_SHIFT:for (i=0;i<N-1; i++) {
    if (i<width) 
			*(array_local+i)=din[i];
		else 
			*(array_local+i)=din[i]>>2;
  }

	*out_accum=0;
  LOOP_ACCUM:for (j=0;j<N-1; j++) {
      *out_accum += *(array_local+j);
  }

  return *out_accum;
}

