%{
#include <stdio.h>
#include <stdlib.h>
%}

%token INT FLOAT ID NUMBER

%%

program:
    declaration_list
    ;

declaration_list:
    declaration_list declaration
    | declaration
    ;

declaration:
    type_specifier ID ';'
    | type_specifier ID '=' NUMBER ';'
    ;

type_specifier:
    INT
    | FLOAT
    ;

%%

int yyerror(const char *s) {
    printf("Syntax Error: %s\n", s);
    return 0;
}

int main() {
    return yyparse();
}
