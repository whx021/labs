#include <stdio.h>

int main(int argc, char **argv) {
    unsigned char ua = 140, ub = 130, uc, ud;
    char a = 100, b = 110, c = -100, d, e;

    uc = ua + ub;   // 140 + 130
    ud = ub - ua;   // 130 - 140
    d = a + b;      // 100 + 110
    e = c - b;      // -100 - 110

    printf("%u + %u = %u\n", ua, ub, uc);
    printf("%u - %u = %u\n", ub, ua, ud);
    printf("%d + %d = %d\n", a, b, d);
    printf("%d - %d = %d\n", c, b, e);
        
    return 0;
}
