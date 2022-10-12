.PHONY: asm, link, exe, view. clean, all, anti-asm-obj, anti-asm-bin

# 汇编为目标文件
asm:
	arm-linux-gnueabihf-as main.s -o main.o

# 链接为可执行文件
# arm-linux-gnueabihf-ld main.o -o main.elf
link:
	arm-linux-gnueabihf-gcc main.o -o main

# 执行
exe:
	qemu-arm -L /usr/arm-linux-gnueabihf/ ./main

# 查看二进制可执行文件
view:
	xxd main

# 清理
clean:
	rm -f *.o main

# 新的调试指令，将main.s编译为main.o，然后链接为可执行文件main，并执行
all:
	arm-linux-gnueabihf-as main.s -o main.o
	arm-linux-gnueabihf-gcc main.o -o main
	qemu-arm -L /usr/arm-linux-gnueabihf/ ./main

# 从目标文件反汇编
anti-asm-obj:
	arm-linux-gnueabihf-objdump -d main.o > main.o.txt

# 从可执行文件反汇编
anti-asm-bin:
	arm-linux-gnueabihf-objdump -d main > main.txt
