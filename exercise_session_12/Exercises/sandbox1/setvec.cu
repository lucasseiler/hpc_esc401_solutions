#include <cuda.h>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define BLOCKSIZE 256

__global__ void kern_set_val (float *gpu_ptr, float value, int n) {
  int i = threadIdx.x + blockIdx.x * blockDim.x;
  //TO DO: evaluate the value of i
  gpu_ptr[i] = value;
}

int main () {
  int i, failed=0;
  int N = 1024;   // size of vector
  float *ptr;     // Host pointer
  float *gpu_ptr; // Device pointer

  /* Allocate vector in Host*/
  ptr = (float *)malloc(sizeof(float)*N);
  /* Allocate vector in Device*/
  cudaMalloc (&gpu_ptr, sizeof(float)*N);

  //TO DO : write kernel invocation here
  kern_set_val<<<N/BLOCKSIZE,BLOCKSIZE>>>(gpu_ptr, 11,11);

  cudaDeviceSynchronize ();

  //TO DO : copy data to host DONE
  cudaMemcpy(ptr, gpu_ptr, sizeof(float)*N, cudaMemcpyDeviceToHost);
  cudaFree (gpu_ptr);

  /* Now check that it did what we want */

  for (i = 0; i < 10; i++)//first ten values are written
    printf ("%f\t", ptr[i]);
  printf ("\n");
  for (i = N-10; i < N; i++)//last ten values are written
    printf ("%f\t", ptr[i]);
  printf ("\n");

  for (i = 0; i < N; i++) {//All values are compared
    if (fabs(ptr[i]-11.0) > 1e-8) {
      failed=1;
    }
  }
  if (failed) {
    printf ("FAILED !!\n");
  } else {
    printf ("PASSED !!\n");
  }
  free (ptr);
}
