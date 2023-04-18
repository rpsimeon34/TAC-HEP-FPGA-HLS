#include "hw4.h"
#include <stdlib.h>

int main () {
  int input1[DSIZE] = {3,6,9,12,4,7};
  int input2[DSIZE] = {8,12,15,1,2,9};
  int output;


  printf("--------------\n");
  printf("Input 1: [");
  for(int i=0; i<DSIZE; i++){
    printf("%i, ",input1[i]);
  }
  printf("]\n");
  printf("Input 2: [");
  for(int j=0; j<DSIZE; j++){
    printf("%i, ",input2[j]);
  }
  printf("]\n");
  printf("--------------\n");

  // Execute the function with latest input
  hw4(input1,input2,&output);

printf ("Comparing against output data \n");
if (output != 314) {

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
