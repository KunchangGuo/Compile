.PHONY: pre-gcc, pre-llvm, ast-gcc, ast-llvm, ir-gcc, ir-llvm, ir2asm, asm2obj, obj2bin, obj2asm, bin2asm, clean

# 预处理
pre-gcc:
	gcc -E main.c -o main.i

pre-llvm:
	clang -E main.c -o main.i

# 词法分析
tokens:
	clang -S -Xclang -dump-tokens main.c

# 语法分析
ast-gcc:
	gcc -fdump-tree-original-raw main.c

ast-llvm:
	clang -E -Xclang -ast-dump main.c -o main.ast

# 中间代码各阶段输出，可通过指定其他参数来控制中间优化过程
ir-gcc:
	mkdir ir-gcc && cd ir-gcc && gcc -dump-tree-all-graph -fdump-rtl-all-graph ../main.c && cd ..

# 中间代码
ir-llvm:
	clang -S -emit-llvm main.c -o main.ll

# 中间代码生成汇编代码
ir2asm:
	llc main.ll -o main.S

# 汇编和链接得到可重定位机器码
ir2obj:
	llvm-as main.ll -o main.bc
	llc main.bc -filetype=obj -o main.o

# 可执行文件
obj2bin:
	clang -no-pie main.o -o main

# 从重定位机器码反汇编
obj2asm:
	llvm-objdump -d main.o > main-anti-obj.S
	nm main.o > main-anti-obj.txt

# 从可执行文件反汇编
bin2asm:
	llvm-objdump -d main > main-anti-bin.S
	nm main > main-anti-bin.txt

# 清理
clean:
	rm -rf *.i *.ast *.ll *.S *.o *.original main *.out *.bc ir-g++
