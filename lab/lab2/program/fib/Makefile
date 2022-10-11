.PHONY: asm_x86, asm_arm, obj_x86, obj_arm, bin_x86, bin_arm, clean, run_x86, run_arm

asm_x86:
	gcc -S main.c -o main.s

asm_arm:
	arm-linux-gnueabihf-gcc -S main.c -o main.s

obj_x86:
	gcc -c main.s -o main.o

obj_arm:
	arm-linux-gnueabihf-gcc -c main.s -o main.o

bin_x86:
	gcc main.o -o main

bin_arm:
	arm-linux-gnueabihf-gcc main.o -o main

clean:
	rm -f *.o *.s main

run_x86:
	./main

# 需要指定运行lib，使用交叉编译器
run_arm:
	qemu-arm -L /usr/arm-linux-gnueabihf/ ./main
	

