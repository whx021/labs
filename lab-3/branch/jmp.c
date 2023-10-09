#include <stdio.h>

int sum(int a[], int n) {
    int i, sum = 0;
    for (i = 0; i < n; ++i) {
        sum += a[i];
    }
    return sum;
}

int main(int argc, char **argv) {
    int a[4] = {1, 2, 3, 4}, n = 3, x;
    x = sum(a, n);
    printf("sum = %d\n", x);
    return 0;
}
