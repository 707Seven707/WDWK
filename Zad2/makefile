ASSEMBLER = nasm
CC = gcc
CFLAGS = -no-pie -O2

all: program

main.o: main.asm
	$(ASSEMBLER) -f elf64 main.asm -o main.o

quicksort.o: quicksort.c
	$(CC) -c quicksort.c -o quicksort.o

program: main.o quicksort.o
	$(CC) $(CFLAGS) -o program main.o quicksort.o

clean:
	rm -f *.o program

