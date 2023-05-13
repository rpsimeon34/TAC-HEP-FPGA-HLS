#ifndef _EX4STRUCT_H_
#define _EX4STRUCT_H_
#define N 10

#include <stdio.h>
#include "ap_cint.h"

typedef struct {
    int A1; int A2; int A3; int A4; int A5;
    int A6; int A7; int A8; int A9; int A10;
    } data_t;

void ex4arr(data_t A, int B);

#endif

