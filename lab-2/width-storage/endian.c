#include <stdio.h>

int main(int argc, char **argv) {
    char a = 100;
    short b = 100;
    int c = 100;
    int d = 0x12345678;
    printf("a = %0xH, b = %0xH, c = %0xH, d = %0xH", a, b, c, d);
    return 0;
}
