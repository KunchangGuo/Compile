fb3-1:fb3-1.y fb3-1.l
	bison -d fb3-1.y
	flex -o fb3-1.lex.c fb3-1.l
	gcc-9 fb3-1.tab.c fb3-1.lex.c fb3-1.c -o $@ -lm

clean:
	rm -f fb3-1 fb3-1.tab.c fb3-1.tab.h fb3-1.lex.c