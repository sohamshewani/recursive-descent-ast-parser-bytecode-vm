CC=gcc
CFLAGS=-Wall -Wextra -g
SRC=src/parser.c src/interpreter.c src/bytecode.c src/stack.c src/error.c
OBJ=$(SRC:.c=.o)
INCLUDES=-Iinclude
TESTS=tests/test_parser.c tests/test_interpreter.c tests/test_bytecode.c tests/test_stack.c tests/test_error.c
TEST_OBJ=$(TESTS:.c=.o)

all: recursive-descent-ast-parser-bytecode-vm

recursive-descent-ast-parser-bytecode-vm: $(OBJ)
	$(CC) $(CFLAGS) -o $@ $^ $(INCLUDES)

tests: tests/test_runner
	./tests/test_runner

test_parser: $(TEST_OBJ)
	$(CC) $(CFLAGS) -o $@ $^ $(INCLUDES)

test_interpreter: $(TEST_OBJ)
	$(CC) $(CFLAGS) -o $@ $^ $(INCLUDES)

test_bytecode: $(TEST_OBJ)
	$(CC) $(CFLAGS) -o $@ $^ $(INCLUDES)

test_stack: $(TEST_OBJ)
	$(CC) $(CFLAGS) -o $@ $^ $(INCLUDES)

test_error: $(TEST_OBJ)
	$(CC) $(CFLAGS) -o $@ $^ $(INCLUDES)

clean:
	rm -f recursive-descent-ast-parser-bytecode-vm $(OBJ) $(TEST_OBJ)
	make -C tests clean

.PHONY: all tests test_parser test_interpreter test_bytecode test_stack test_error clean