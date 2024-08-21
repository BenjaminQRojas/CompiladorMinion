%{
#include <stdio.h>
#include <stdlib.h>
%}

%token NUMBER IDENTIFIER ASSIGN PLUS MINUS MULT DIV LBRACE RBRACE SEMICOLON

%%
program:
    statements
    ;

statements:
    statement
    | statements statement
    ;

statement:
    IDENTIFIER ASSIGN expr SEMICOLON
    ;

expr:
    expr PLUS term
    | expr MINUS term
    | term
    ;

term:
    term MULT factor
    | term DIV factor
    | factor
    ;

factor:
    NUMBER
    | IDENTIFIER
    | LBRACE expr RBRACE
    ;

%%

int main(void) {
    yyparse();
    return 0;
}

void yyerror(const char *s) {
    fprintf(stderr, "Error: %s\n", s);
    exit(1);
}
