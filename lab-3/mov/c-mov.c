#include <stdio.h>

int main(int argc, char ** argv) {
    int ix = -0x25432, iy, iz;
    short sx;
    unsigned uix, uiy, uiz;
    unsigned short usx;
    uix = ix;   // n = m, direct mov 
    sx = ix;    // n > m, truncation
    usx = ix;   // n > m, truncation
    iy = usx;   // n < m, zero extend
    uiy = usx;  // n < m, zero extend
    iz = sx;    // n < m, sign extend
    uiz = sx;   // n < m, sign extend
    
    printf("Understanding machine level representations of integer assignment operations");
    printf("ix = %d\n", ix);
    printf("uix = %u\n", uix);
    printf("sx = %d\n", sx);
    printf("usx = %u\n", usx);
    printf("iy = %d\n", iy);
    printf("uiy = %u\n", uiy);
    printf("iz = %d\n", iz);
    printf("uiz = %u\n", uiz);
    return 0;
}
