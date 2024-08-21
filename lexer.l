%{
#include "y.tab.h"
%}

%%
[0-9]+          { return NUMBER; }
[a-zA-Z][a-zA-Z0-9]* { return IDENTIFIER; }
"="             { return ASSIGN; }
"+"             { return PLUS; }
"-"             { return MINUS; }
"*"             { return MULT; }
"/"             { return DIV; }
"{"             { return LBRACE; }
"}"             { return RBRACE; }
";"             { return SEMICOLON; }
[ \t\n]+        { /* ignorar espacios en blanco */ }
%%
