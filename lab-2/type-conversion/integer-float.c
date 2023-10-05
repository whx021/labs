#include <stdio.h>

int main(int argc, char **argv) {
    int     i1 = 0x7fffffff, i2, itemp;
    float   f1 = 0x987654321, f2, ftemp;
    ftemp = i1;
    i2 = ftemp; // i2 = (int)(float)i1
    itemp = f1;
    f2 = itemp; // f2 = (float)(int)f1
    printf("i1 = %d, i2 = %d, f1 = %f, f2 = %f\n", i1, i2, f1, f2);
    return 0;
}
