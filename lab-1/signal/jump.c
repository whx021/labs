#include <stdio.h>
#include <setjmp.h>
#include <signal.h>
#include <unistd.h>

// jmp_buf type : 存放程序运行时上下文信息
jmp_buf buf;

// 模拟error1异常未发生，error2异常发生
int error1 = 0;
int error2 = 1;

void func2(void) {
    if (error2) {
        longjmp(buf, 2);
    }
    printf("Ready to return to func1!\n");
}

void func1(void) {
    printf("We are in func1 now!\n");
    if (error1) {
        longjmp(buf, 1);
    }
    func2();
    printf("After return from func2!\n");
}

int main() {
    int rc;
    
    rc = setjmp(buf);
    if (rc == 0) {
        func1();
    } else if (rc == 1) {
        printf("detected an error1 condition in func1\n");
    } else if (rc == 2) {
        printf("Detected an error2 condition in func2\n");
    } else {
        printf("Unknown error condition\n");
    }

    return 0;
}
