#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// 基础操作
void pointer_basics() {
    int a = 10;
    int *p = &a;

    printf("变量 a 的值: %d\n", a);
    printf("指针 p 的值(地址): %p\n", p);
    printf("通过指针 p 访问 a 的值: %d\n", *p);

    *p = 20;
    printf("修改后的变量 a 的值: %d\n", a);
}

// 动态内存分配
void dynamic_memory() {
    int *p = (int *)malloc(sizeof(int));
    if (p == NULL) {
        printf("内存分配失败\n");
        return;
    }

    *p = 42;
    printf("动态分配的值: %d\n", *p);
    free(p);
}

// 数组与指针
void array_and_pointer() {
    int arr[] = {10, 20, 30, 40};
    int *p = arr;

    printf("数组的首元素: %d\n", *p);
    printf("数组的第二个元素: %d\n", *(p + 1));

    for (int i = 0; i < 4; i++) {
        printf("arr[%d] = %d\n", i, *(p + i));
    }
}

// 字符串与指针
void string_and_pointer() {
    char str[] = "Hello, Pointer!";
    char *p = str;

    printf("字符串内容: %s\n", p);

    while (*p != '\0') {
        printf("%c ", *p);
        p++;
    }
    printf("\n");
}

// 指针数组
void pointer_array() {
    const char *colors[] = {"Red", "Green", "Blue", "Yellow"};
    int n = sizeof(colors) / sizeof(colors[0]);

    for (int i = 0; i < n; i++) {
        printf("颜色 %d: %s\n", i, colors[i]);
    }
}

// 多级指针
void multi_level_pointer() {
    int a = 10;
    int *p = &a;
    int **pp = &p;

    printf("变量 a 的值: %d\n", a);
    printf("通过一级指针 p 访问 a: %d\n", *p);
    printf("通过二级指针 pp 访问 a: %d\n", **pp);
}

// 函数与指针
void swap(int *x, int *y) {
    int temp = *x;
    *x = *y;
    *y = temp;
}

void function_and_pointer() {
    int a = 5, b = 10;
    printf("交换前: a = %d, b = %d\n", a, b);
    swap(&a, &b);
    printf("交换后: a = %d, b = %d\n", a, b);
}

// 结构体与指针
void struct_and_pointer() {
    struct Point {
        int x;
        int y;
    };

    struct Point p1 = {10, 20};
    struct Point *p = &p1;

    printf("Point: (%d, %d)\n", p->x, p->y);
    p->x = 30;
    printf("Updated Point: (%d, %d)\n", p->x, p->y);
}
void dynamic_2d_array() {
    int rows = 3, cols = 4; // 定义行和列
    int **matrix;

    // 分配内存
    matrix = (int **)malloc(rows * sizeof(int *));
    if (matrix == NULL) {
        printf("内存分配失败\n");
        return;
    }
    for (int i = 0; i < rows; i++) {
        matrix[i] = (int *)malloc(cols * sizeof(int));
        if (matrix[i] == NULL) {
            printf("内存分配失败\n");
            // 如果某行分配失败，释放已经分配的内存
            for (int j = 0; j < i; j++) {
                free(matrix[j]);
            }
            free(matrix);
            return;
        }
    }

    // 初始化和赋值
    printf("动态二维数组初始化:\n");
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            matrix[i][j] = i * cols + j; // 填充值
            printf("%d ", matrix[i][j]);
        }
        printf("\n");
    }

    // 打印动态二维数组
    printf("\n动态二维数组内容:\n");
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            printf("matrix[%d][%d] = %d\n", i, j, matrix[i][j]);
        }
    }

    // 释放内存
    for (int i = 0; i < rows; i++) {
        free(matrix[i]); // 释放每一行
    }
    free(matrix); // 释放行指针数组
    printf("动态二维数组内存已释放。\n");
}

int main() {
    printf("\n1. 基础操作\n");
    pointer_basics();

    printf("\n2. 动态内存分配\n");
    dynamic_memory();

    printf("\n3. 数组与指针\n");
    array_and_pointer();

    printf("\n4. 字符串与指针\n");
    string_and_pointer();

    printf("\n5. 指针数组\n");
    pointer_array();

    printf("\n6. 多级指针\n");
    multi_level_pointer();

    printf("\n7. 函数与指针\n");
    function_and_pointer();

    printf("\n8. 结构体与指针\n");
    struct_and_pointer();

    printf("\n9. 动态二维数组\n");
    dynamic_2d_array();

    return 0;
}
