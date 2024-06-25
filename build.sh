# 编译 C 代码，不包含标准库
arm-none-eabi-gcc -c -o main.o main.c -nostdlib -ffreestanding

# 编译启动代码
arm-none-eabi-as -o startup.o startup.s

# 链接生成裸机可执行文件
arm-none-eabi-ld -T linker.ld -o main.elf main.o startup.o

# 将 ELF 文件转换为二进制文件
arm-none-eabi-objcopy -O binary main.elf main.bin

arm-none-eabi-objdump -d main.elf > main.asm
