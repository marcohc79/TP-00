VALGRIND_FLAGS=--leak-check=full --track-origins=yes --show-reachable=yes --error-exitcode=2 --show-leak-kinds=all --trace-children=yes
CFLAGS =-std=c99 -Wall -Wconversion -Wtype-limits -pedantic -Werror -O2 -g
CC = gcc

all: clean valgrind-tp0

valgrind-tp0: tp0 
	valgrind $(VALGRIND_FLAGS) ./tp0

tp0: src/*.o pruebas_chanutron.c
	$(CC) $(CFLAGS) src/*.o pruebas_chanutron.c -o tp0 

clean:
	rm -f tp0 
