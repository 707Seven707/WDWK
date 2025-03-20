
OUTPUT = zad1

SRC = zad1.asm
OBJ = $(SRC:.asm=.o)

NASM = nasm
GCC = gcc


NASM_FLAGS = -f elf64

GCC_FLAGS = -no-pie


all: $(OUTPUT)


$(OBJ): $(SRC)
	$(NASM) $(NASM_FLAGS) $< -o $@


$(OUTPUT): $(OBJ)
	$(GCC) $(OBJ) -o $(OUTPUT) $(GCC_FLAGS)


run: $(OUTPUT)
	./$(OUTPUT)

clean:
	rm -f $(OBJ) $(OUTPUT)
