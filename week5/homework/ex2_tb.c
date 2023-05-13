#include "ex2.h"

int main() {
  din_t A[N][N];
  din_t B[N];
  dout_t C[N];

  int i;
  int j;
  int retval=0;
  FILE *fp;

  for (i = 0; i < N; i++) {
    B[i] = i;
    for (j = 0; j < N; j++) {
      A[i][j] = 1;
    }
  }
  // Save the results to a file
  fp = fopen("ex2_out.dat", "w");

  // Call the function
  ex2(A, B, C);
  for (i = 0; i < N; i++) {
    fprintf(fp, "%d\n", C[i]);
  }
  fclose(fp);

  // Compare the results file with the golden results
  retval = system("diff --brief -w ex2_out.dat ex2_out_ref.dat");
  if (retval != 0) {
    printf("Test failed  !!!\n");
    retval = 1;
  } else {
    printf("Test passed !\n");
  }

  // Return 0 if the test passed
  return retval;
}

