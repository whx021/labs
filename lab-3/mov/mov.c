#include <stdio.h>

int main(int argc, char **argv) {
    short   x = 0x8543, y = 1, z = 2;
    int     p = 0x12345678, q = 3;
    // y = x;
    // q = x;
    // z = p;
    asm(
        "movzwl -0xa(%ebp), %eax\n\t"
        "mov    %ax, -0xc(%ebp)\n\t"
        "movswl -0xa(%ebp), %eax\n\t"
        "mov    %eax, -0x18(%ebp)\n\t"
        "mov    -0x14(%ebp), %eax\n\t"
        "mov    %ax, -0xe(%ebp)\n\t"
    );  
    printf("x = %d, y = %d, z = %d\n", x, y, z);
    printf("p = %d, q = %d\n", p, q);
    return 0;
}
