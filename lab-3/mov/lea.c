#include <stdio.h>

int main(int argc, char **argv) {
    int i = 3, j = 4;
    asm (
        "mov    -0xc(%ebp), %edx\n\t" // i -> edx
        "mov    -0x10(%ebp), %eax\n\t"
        "lea    (%edx, %eax, 1), %eax\n\t"
    );
    printf("Understanding lea instruction");
    return 0;
}
