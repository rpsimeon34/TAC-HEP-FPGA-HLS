#include "ex4arr.h"
#include <stdlib.h>

int main () {
  int A[N] = {1,2,3,4,5,6,7,8,9,10};
  int output;

  // Execute the function with latest input
  ex4(A,&output);

  printf("Output is %i \n",output);

printf ("Comparing against output data \n");
if (output != 55) {

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
