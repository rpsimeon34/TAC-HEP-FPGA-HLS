#include "ex3int.h"

void ex3(
  int a,
  int b,
  int *c
  ) {

    int x = a/b;
    int y = x*a;
    int z = y+b;
    *c = z-a;
}
