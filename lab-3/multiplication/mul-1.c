#include <stdio.h>

int main(int argc, char ** argv) {
    int x = 3, y = 4, z1, z2, z3, z4;
    unsigned ux = 3, uy = 4, uz;
    z1 = x * y;
    uz = ux * uy;
    z2 = x * 3;
    z3 = x * 1024;
    z4 = x * x + 4 * x + 8;
    printf("z1 = %d, %z2 = %d, %z3 = %d, %z4 = %d\n", z1, z2, z3, z4);
    return 0;
}
