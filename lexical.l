%{
#include <stdio.h>
%}

%%

// Keywords
"int"               { printf("Keyword: int\n"); }
"float"             { printf("Keyword: float\n"); }
"main"              { printf("Function: main\n"); }
"return"            { printf("Keyword: return\n"); }
"if"                { printf("Keyword: if\n"); }
"else"              { printf("Keyword: else\n"); }

// Float before int
[0-9]+\.[0-9]+       { printf("Number: %s\n", yytext); }
[0-9]+               { printf("Number: %s\n", yytext); }

// Identifiers
[a-zA-Z_][a-zA-Z0-9_]*  { printf("Identifier: %s\n", yytext); }

// Operators
"=="|"="|"+"|"-"|"*"|"/" { printf("Operator: %s\n", yytext); }

// Punctuation/symbols
"("|")"|"{"|"}"|";"     { printf("Symbol: %s\n", yytext); }

// Whitespace
[ \t\r\n]+             { /* ignore */ }

// Unknown characters
.                      { printf("Unknown character: %s\n", yytext); }

%%

int main() {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
