%{
#include <stdio.h>
%}

%%

// Keywords
"int"           { printf("Keyword: int\n"); }
"float"         { printf("Keyword: float\n"); }
"main"          { printf("Function: main\n"); }
"return"        { printf("Keyword: return\n"); }
"if"            { printf("Keyword: if\n"); }
"else"          { printf("Keyword: else\n"); }

// Numbers: must match decimal first
[0-9]+\.[0-9]+  { printf("Number: %s\n", yytext); }
[0-9]+          { printf("Number: %s\n", yytext); }

// Identifiers
[a-zA-Z_][a-zA-Z0-9_]*   { printf("Identifier: %s\n", yytext); }

// Operators
"=="|"="|"+"|"-"|"*"|"/" { printf("Operator: %s\n", yytext); }

// Symbols: escape properly
"("|")"|"{"|"}"|";"      { printf("Symbol: %s\n", yytext); }

// Whitespace
[ \t\n]+        { /* skip whitespace */ }

// Catch anything else
.               { printf("Unknown character: %s\n", yytext); }

%%

int main() {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
