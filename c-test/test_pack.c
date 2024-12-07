#include <stdio.h>

#pragma pack(1) // 指定对齐单位为 1 字节
struct Example {
    char a;   // 1字节
    int b;    // 4字节
    short c;  // 2字节
};
#pragma pack()

int main() {
    printf("Size of Example: %zu\n", sizeof(struct Example));
    return 0;
}
