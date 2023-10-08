#include <stdio.h>

int main(int argc, char ** argv) {
    int a = 0x98765432, b = 0x87654321, c, d;
    unsigned int ua = 0x98765432, ub = 0x87654321, uc, ud;
    c = a + b;  uc = ua + ub;
    d = a - b;  ud = ua - ub;
    printf("%d + (%d) = %d\n", a, b, c);
    printf("%u + %u = %u\n", ua, ub, uc);
    printf("%d - (%d) = %d\n", a, b, d);
    printf("%u - %u = %u\n", ua, ub, ud);
    return 0;
}
