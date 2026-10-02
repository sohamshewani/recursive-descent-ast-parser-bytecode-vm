// parser.h - Header file for the parser module of the recursive-descent-AST-parser-bytecode-VM system.

#ifndef PARSER_H
#define PARSER_H

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// AST node structure
typedef struct ast_node ast_node;
struct ast_node {
    char* value;
    int type;
    ast_node* left;
    ast_node* right;
};

// Parser function
ast_node* parse_expression(char* input);

#endif // PARSER_H
