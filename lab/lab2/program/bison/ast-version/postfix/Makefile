basic: ast.c basic.tab.c
	gcc-9 -o $@ basic.tab.c ast.c

basic.tab.c: basic.y
	bison basic.y -o basic.tab.c

clean:
	rm -f basic.tab.c basic