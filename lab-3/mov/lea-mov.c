#include <stdio.h>

int main(int argc, char **argv) {
    int p[2] = {0x12345678, 0x11223344};
    asm(
        "lea    -0x10(%ebp), %eax\n\t"
        "mov    -0x10(%ebp), %ebx\n\t"
        "mov    $1, %ecx\n\t"
        "lea    -0x10(%ebp, %ecx, 4), %eax\n\t"
        "mov    -0x10(%ebp, %ecx, 4), %ebx\n\t"
    ); 
    printf("Uderstanding the differences between mov and lea instructions");
    return 0;
}
