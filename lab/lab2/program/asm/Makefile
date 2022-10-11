.PHONY: asm, link, exe, view. clean

# 汇编为目标文件
asm:
	arm-linux-gnueabihf-as main.s -o main.o

# 链接为可执行文件
link:
	arm-linux-gnueabihf-gcc-11 main.o -o main -nostdlib

# 执行
exe:
	qemu-arm -L /usr/arm-linux-gnueabihf/ ./main

# 查看二进制可执行文件
view:
	xxd main

# 清理
clean:
	rm -f *.o main