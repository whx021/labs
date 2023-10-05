#include <stdio.h>

int main() {
    float tem[10];
    float a = 123456789;
    int *pTem;
    int i;

    pTem = (int*)tem;
    tem[0] = 61.419996;
    tem[1] = 61.419997;
    tem[2] = 61.419998;
    tem[3] = 61.419999;
    tem[4] = 61.420000;
    tem[5] = 61.420001;
    tem[6] = 61.420002;
    tem[7] = 61.420003;
    tem[8] = 61.420004;
    tem[9] = 61.420005;
    for (i = 0; i < 10; ++i) {
        printf("%.6f, 0x%X\n", tem[i], *(pTem + i));
    }
    printf("%f\n", a);
    return 0;
}
