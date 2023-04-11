#include <stdio.h>
#include <math.h>
#include "lec5Ex1.h"

int lec5Ex1 (int c[N], int x) {
    static int arr[N];
    int sum;
    int data;
    int i;

    sum = 0;
    for (i=N-1;i>=0;i--) {
        if (i==0) {
            arr[0] = x;
            data = x;
        } else {
            arr[i] = arr[i-1];
            data = arr[i];
        }
        sum += data*c[i];
    }
    return sum;
}

int main () {
  // const int samples=6000;
  const int    samples=600;
  FILE         *oFile;

  int inp, output;
  // int coef[N] = {0,-10,-9,23,56,63,56,23,-9,-10,0,};
  intcoef[N] = {0,-10,-9,23,12,48,-48,11,-48,-29,10,-9,8,-2,7,56,63,56,23,-9,-10,0,};

  int i, rmp;
  inp = 0;
  rmp = 1;
  
  // oFile=fopen("lec5Ex1_out_vhighsamples.dat","w");
  oFile = fopen("lec5Ex1_out_vhighN.dat","w");
  // oFile = fopen("lec5Ex1_out_vhighboth.dat","w");
  for (i=0;i<=samples;i++) {
    if (rmp == 1) {
        inp = inp + 1;
    } else {
        inp = inp - 1;
    }
    // Execute the function with latest input
    output = lec5Ex1(coef,inp);

    if ((rmp == 1) && (inp >= 75)) {
        rmp = 0;
    } else if ((rmp == 0) && (inp <= -75)) {
        rmp = 1;
    }

    // Save the results.
    fprintf(oFile,"%i %d %d\n",i,inp,output);
  }
  fclose(oFile);
  return 0;
}
