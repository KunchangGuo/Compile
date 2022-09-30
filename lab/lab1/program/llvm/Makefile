.PHONY: pre, ir-llvm, exe, clean-all

pre:
	clang++ -E main.cpp -o main.i

ir_ll:
	clang++ -S -emit-llvm main.cpp -o main.ll

ir_bc:
	clang++ -c -emit-llvm main.cpp -o main.bc

exe_ll:
	lli main.ll
	
exe:
	clang++ main.o -o main
	
asm:
	llc main.ll -o main.S
		
mac:
	llc main.bc -filetype=obj -o main.o
	
anti-obj:
	objdump -d main.o > main-anti-obj.S
	nm main.o > main-nm-obj.txt
	
anti-exe:
	objdump -d main > main-anti-exe.S
	nm main > main-nm-exe.txt

clean-all:
	rm -rf *.c.* *.o *.S *.dot *.out *.txt *.ll *.i main
