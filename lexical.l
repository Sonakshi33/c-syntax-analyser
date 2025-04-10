%{
#include <stdio.h>
%}

%%
"int"           { printf("Keyword: int\n"); }
"float"         { printf("Keyword: float\n"); }
"main"          { printf("Function: main\n"); }
"return"        { printf("Keyword: return\n"); }
"if"            { printf("Keyword: if\n"); }
"else"          { printf("Keyword: else\n"); }
[0-9]+          { printf("Number: %s\n", yytext); }
[a-zA-Z_][a-zA-Z0-9_]*   { printf("Identifier: %s\n", yytext); }
"=="|"="|"+"|"-"|"*"|"/" { printf("Operator: %s\n", yytext); }
[ \t\n]         { /* ignore whitespace */ }
.               { printf("Unknown character: %s\n", yytext); }
%%

int main() {
    yylex();
    return 0;
}
