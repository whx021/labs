#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>
#include <time.h>

void multMatBlock (int n, float *A, float* B, float *C, int blocksize) {
    int i, j, k, b_i, b_j, b_k;
    register float tem = 0;
    int block_num = n / blocksize;
    printf("block_num = %d\n", block_num);
    /* This is ijk loop order  */
    for (b_i = 0; b_i < block_num; ++b_i) {
        for (b_j = 0; b_j < block_num; ++b_j) {
            for (b_k = 0; b_k < block_num; ++b_k) {
                for (i = 0; i < blocksize; ++i) {
                    for (j = 0; j < blocksize; ++j) {
                        tem = 0;
                        for (k = 0; k < blocksize; ++k) {
                            tem += A[(b_i * blocksize + i) * n + b_k * blocksize + k] * B[(b_k * blocksize + k) * n + b_j * blocksize + j];
                        }
                        C[(b_i * blocksize + i) * n + b_j * blocksize + j] += tem;
                    }
                }
            }
        }
    }
}

void multMat3(int n, float *A, float *B, float *C) {
    int i, j, k;
    register float tem = 0;
    for (i = 0; i < n; ++i) {
        for (j = 0; j < n; ++j) {
            tem = 0;
            for (k = 0; k < n; ++k) {
                tem += A[i * n + k] * B[k * n + j];
            }
            C[i * n + j] = tem;
        }
    } 
}

int main(int argc, char **argv) {
    int nmax = 2048, i, j;
    int blocksize = 16;
    float tem = 0;
    double seconds;

    float *A = (float *)malloc(nmax * nmax * sizeof(float));
    float *B = (float *)malloc(nmax * nmax * sizeof(float));
    float *C = (float *)malloc(nmax * nmax * sizeof(float));
    float *D = (float *)malloc(nmax * nmax * sizeof(float));
    
    struct timeval start, end;

    for (i = 0; i < nmax * nmax; ++i) {
        A[i] = drand48() * 2 - 1;
    }
    for (i = 0; i < nmax * nmax; ++i) {
        B[i] = drand48() * 2 - 1;
    }
    for (i = 0; i < nmax * nmax; ++i) {
        C[i] = 0;
    }
    for (i = 0; i < nmax * nmax; ++i) {
        D[i] = 0;
    }

    gettimeofday(&start, NULL);
    multMat3(nmax, A, B, D);
    gettimeofday(&start, NULL);

    seconds = (end.tv_sec - start.tv_sec) + 1.0e-6 * (end.tv_usec - start.tv_usec);
    printf("n = %d, time = %.3f s\n", nmax, seconds);

    gettimeofday(&start, NULL);
    multMatBlock(nmax, A, B, C, blocksize);
    gettimeofday(&start, NULL);

    seconds = (end.tv_sec - start.tv_sec) + 1.0e-6 * (end.tv_usec - start.tv_usec);
    printf("n = %d, blocksize = %d, time = %.3f s\n", nmax, blocksize,  seconds);

    for (i = 0; i < nmax; ++i) {
        for (j = 0; j < nmax; ++j) {
            tem += (C[i * nmax + j] - D[i * nmax + j]) * (C[i * nmax + j] - D[i * nmax + j]);
        }
    }
    printf("error = %.4f\n", tem);

    free(A);
    free(B);
    free(C);
    free(D);

    return 0;
}
