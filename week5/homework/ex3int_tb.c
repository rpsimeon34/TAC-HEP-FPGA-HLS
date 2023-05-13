#include "ex3int.h"
#include <stdlib.h>

int main () {
  int a = 4;
  int b = 2;
  int c; 

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
