#include <stdio.h>

int main(int argc, char **argv) {
    short           si = -100;
    unsigned short  usi = si;
    int             i = usi;
    unsigned        ui = usi;
    int             i1 = si;
    unsigned        ui1 = si;
    int             i2 = 0x12345678;
    short           si2 = i2;
    unsigned short  usi2 = i2;
    int             i3 = si2;
    int             i4 = 4294967296;
    printf("si = %d, usi = %u, i = %d, ui = %u, i1 = %d, ui1 = %u\n", si, usi, i, ui, i1, ui1);
    printf("i2 = %d, si2 = %d, usi2 = %u, i3 = %d, i4 = %d\n", i2, si2, usi2, i3, i4);
    return 0;
}
