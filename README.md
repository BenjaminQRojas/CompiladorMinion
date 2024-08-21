# CompiladorMinion
bison -d parser.y
flex lexer.l
gcc -o compilador lex.yy.c parser.tab.c -lfl