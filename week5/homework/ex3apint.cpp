#include "ex3apint.h"
#include "ap_int.h"

void ex3(
  ap_int<6> a,
  ap_int<6> b,
  ap_int<6> *c
  ) {

    ap_int<6> x = a/b;
    ap_int<6> y = x*a;
    ap_int<6> z = y+b;
    *c = z-a;
}
