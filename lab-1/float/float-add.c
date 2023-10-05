#include <stdio.h>

int main() {
    float sum = 0;
    float a = 10.2, b = 9;
    int i;

    printf("10.2 - 9 = %.10f\n", a - b);    // 1.2

    a = 100000.2;
    printf("100000.2 - 9 = %.10f\n", a - b);    // 99991.2
    
    for (i = 0; i < 4000000; ++i) {
        sum += 0.1; // 400000
    }
    printf("sum = %f\n", sum);

    return 0;
}
