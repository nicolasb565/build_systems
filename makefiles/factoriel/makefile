

vpath %.c src
vpath %.h include

CPPFLAGS = -I include

.PHONY: all

all: main

.PHONY: clean
clean: 
	rm *.o

main: main.o factoriel.o

main.o: main.c include/factoriel.h

factoriel.o: factoriel.c include/factoriel.h
