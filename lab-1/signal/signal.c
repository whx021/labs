#include <stdio.h>
#include <setjmp.h>
#include <signal.h>
#include <unistd.h>

sigjmp_buf buf;

// 自定义信号处理函数
void FLPhandler(int sig) {
    printf("I am in FLPhandler...\n");
    siglongjmp(buf, 1);
}

int main() {
    int a, t;
    
    // 将自定义信号处理函数注册为SIGFPE信号的响应函数
    signal(SIGFPE, FLPhandler);

    if (!sigsetjmp(buf, 1)) {
        printf("starting\n");
        a = 100;
        t = 0;
        a = a/t;
    }
    printf("I am still alive...\n");

    return 0;
}
