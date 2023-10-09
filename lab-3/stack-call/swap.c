#include <stdio.h>

int swap(int *x, int *y) {
    int t = *x;
    *x = *y;
    *y = t;
}

int main(int argc, char **argv) {
    int a = 15, b = 22;
    swap(&a, &b);
    return 0;
}
