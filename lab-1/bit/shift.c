int main() {
    int a = 0x80000000;
    unsigned int b = 0x80000000;

    short c = 0x8000;
    unsigned short d = 0x8000;

    // 查看有符号数和无符号数的移位操作区别
    a = a >> 4;
    b = b >> 4;

    // 查看零扩展和符号扩展的判断条件（由等号右边的符号类型确定）
    a = c;
    a = d;
    b = c;
    b = d;

    return 0;
}
