#include "hw4.h"
#include <stdlib.h>

int main () {
  FILE         *oFile;

  int in_A[DSIZE] = {5,7,22,19,7,4};
  int in_B[DSIZE] = {2,14,4,6,11,3};
  int output;

  printf("--------------\n");
  for(int irnd=0; irnd<DSIZE; irnd++){
    printf("%i, input: %i\n", irnd, input[irnd]);
  }
  for(int p=0; p<KK; p++){
    output[p] = 0;
  }
  printf("--------------\n");

  oFile=fopen("lec6Ex2_out.dat","w");

  lec6Ex2(input, a, b, c, output);

  for(int i=0; i<MM; i++){
    for(int j=0; j<NN; j++){
      int k = j+i*NN;
      fprintf(oFile,"%i %u %u\n",k,input[j],output[k]);
    }  
  }
  fclose(oFile);

printf ("Comparing against output data \n");
if (system("diff -w lec6Ex2_out.dat lec6Ex2_out_ref.dat")) {

  fprintf(stdout, "*******************************************\n");
  fprintf(stdout, "FAIL: Output DOES NOT match the reference output\n");
  fprintf(stdout, "*******************************************\n");
  return 1;
} else {
  fprintf(stdout, "*******************************************\n");
  fprintf(stdout, "PASS: The output matches the reference output!\n");
  fprintf(stdout, "*******************************************\n");
  return 0;
}
}
