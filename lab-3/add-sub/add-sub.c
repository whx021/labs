#include <stdio.h>

int addition(int x, int y) {
    asm (
        "mov 8(%ebp), %eax\n\t"
        "add 0xc(%ebp), %eax\n\t"
    );   
}

int subtraction(int x, int y) {
    asm (
        "mov 8(%ebp), %eax\n\t"
        "sub 0xc(%ebp), %eax\n\t"
    );
}

int main(int argc, char **argv) {
    int ix = 10, iy = 4, az, sz, z;
    unsigned ux = 10, uy = 4, auz, suz, uz;
    az = addition(ix, iy);
    auz = addition(ux, uy);
    printf("%d + %d = %d, %u + %u = %u\n", ix, iy, az, ux, uy, auz);
    sz = subtraction(ix, iy);
    suz = subtraction(ux, uy);
    printf("%d - %d = %d, %u - %u = %u\n", ix, iy, sz, ux, uy, suz);
    z = addition(2147483647, 1);
    printf("2147483647 + 1 : %d, %u\n", z, z);
    uz = subtraction(3, 4);
    printf("3 - 4 : %d, %u\n", uz, uz);
    return 0;
}
