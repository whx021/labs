#include <stdio.h>

int fn(unsigned int n) {
    int sum = 1, power = 1;
    int i;
    for (i = 0; i <= n - 1; ++i) {
        power *= 2;
        sum += power;
    }
    return sum;
}

int main(int argc, char **argv) {
    int sum;
    sum = fn(0);
    printf("sum = %d\n", sum);
    return 0;
}
