#include "ex4struct.h"
#include <stdlib.h>

int main () {
  data_t A;
  int output;

  A.A1 = 1;
  A.A2 = 2;
  A.A3 = 3;
  A.A4 = 4;
  A.A5 = 5;
  A.A6 = 6;
  A.A7 = 7;
  A.A8 = 8;
  A.A9 = 9;
  A.A10 = 10;

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
