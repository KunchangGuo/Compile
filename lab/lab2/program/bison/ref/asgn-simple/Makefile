cal: cal.c cal.tab.c
	gcc-9 cal.tab.c cal.c -o $@

cal.tab.c: cal.y
	bison cal.y -o cal.tab.c

clean:
	rm -f cal.tab.c cal.tab.h cal