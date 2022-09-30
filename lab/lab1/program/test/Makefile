.PHONY: pre, ir-llvm, exe, clean-all

pre:
	clang++ -E main.cpp -o main.i

ir-llvm:
	clang++ -S -g -emit-llvm main.cpp -o main.ll

exe:
	lli main.ll

clean-all:
	rm -rf *.c.* *.o *.S *.dot *.out *.txt *.ll *.i main
