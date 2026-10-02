// interpreter.h - Header file for the interpreter module of the recursive-descent-AST-parser-bytecode-VM system.

#ifndef INTERPRETER_H
#define INTERPRETER_H

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "include/bytecode.h"
#include "include/parser.h"

// Interpreter function
int interpret(ast_node* ast);

#endif // INTERPRETER_H
