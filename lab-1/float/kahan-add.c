#include <stdio.h>

int main() {
    float sum = 0;
    float sum1 = 0;
    float c = 0;
    float y, t;
    int i;
    for (i = 0; i < 4000000; ++i) {
        sum1 += 0.1;
    }
    for (i = 0; i < 4000000; ++i) {
        // kahan algorithm
        y = 0.1 - c;
        t = sum + y;
        c = (t - sum) - y;
        sum = t;
    }
    printf("sum1 = %f\n", sum1);
    printf("sum = %f\n", sum);
}
