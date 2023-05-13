#include "ex3apint.h"
#include <stdlib.h>
#include "ap_int.h"

int main () {
  ap_int<6> a = 4;
  ap_int<6> b = 2;
  ap_int<6> c; 

  // Execute the function with latest input
  ex3(a,b,&c);

printf ("Comparing against output data \n");
if (c != 6) {

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
