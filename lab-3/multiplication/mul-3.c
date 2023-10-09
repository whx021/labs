#include <stdio.h>

unsigned umul(unsigned x, unsigned y) {
    int overflow = 0;   // -0x4(%ebp)
    int z = 0;          // -0x8(%ebp)
    int temp = 0;       // -0xc(%ebp)
    asm (
        "mov    %eax, -0xc(%ebp)\n\t"   // save system argument
        "mov    8(%ebp), %eax\n\t"      // multiplication
        "mov    0xc(%ebp), %ecx\n\t"
        "mul    %ecx\n\t"
        "mov    %edx, -0x4(%ebp)\n\t"   // set overflow
        "mov    %eax, -0x8(%ebp)\n\t"   // set return value    
        "mov    -0xc(%ebp), %eax\n\t"   // recovery system argument
    );
    if (overflow != 0) {
        printf("%d * %d is overflow based on high 32 bits\n", x, y);
    }
    return z;
}

int imul(int x, int y) {
    int overflow = 0;   // -0x4(%ebp)
    int z = 0;          // -0x8(%ebp)
    int temp = 0;       // -0xc(%ebp)
    asm (
        "mov    %eax, -0xc(%ebp)\n\t"   // save system argument
        "mov    0x8(%ebp), %eax\n\t"    // multiplication
        "mov    0xc(%ebp), %ecx\n\t"
        "imul   %ecx\n\t"
        "mov    %edx, %ebx\n\t" // R[edx] -> ebx
        "cdq\n\t"               // set R[edx] the R[eax] highest bit 
        "sub    %ebx, %edx\n\t" // R[edx] - R[ebx] -> edx
        "mov    %edx, -0x4(%ebp)\n\t"   // set overflow
        "mov    %eax, -0x8(%ebp)\n\t"   // set return value
        "mov    -0xc(%ebp), %eax\n\t"   // recovery system argument
    );
    if (overflow != 0) {
        printf("%u * %u is overflow based on high 33 bits\n", x, y);
    }
    return z;
}

int main(int argc, char ** argv) {
    int x, y;
    unsigned ux, uy;
    int z;
    printf("enter intx and int y: ");
    scanf("%d %d", &x, &y);
    printf("enter unsigned ux and unsigned uy: ");
    scanf("%u, %u", &ux, &uy);
    z = imul(x, y);
    if (z / y == x) {
        printf("%d * %d = %xH = %d\n", x, y, z, z);
    } else {
        printf("%d * %d is overflow based on C\n", x, y);
    }
    z = umul(ux, uy);
    if (z / uy == ux) {
        printf("%u * %u = %xH = %d\n", ux, uy, z, z);
    } else {
        printf("%u * %u is overflow based on C\n", ux, uy);
    }
    return 0;
}
