#include <stdio.h>
#include <string.h>
char code[] =
"0123456789abcdef"; // buffer不越界的字节内容

int main(int argc, char **argv) {
    char *arg[3];
    arg[0] = "./b";
    arg[1] = code;
    arg[2] = NULL;
    execve(arg[0], arg, NULL);
    return 0;
}
