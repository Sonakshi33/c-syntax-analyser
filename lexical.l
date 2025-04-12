%{
#include <stdio.h>
#include <stdlib.h>
%}

DIGIT       [0-9]*
LETTER      [a-zA-Z_]
KEYWORD     (auto|break|case|char|const|continue|default|do|double|else|enum|extern|float|for|goto|if|inline|int|long|register|restrict|return|short|signed|sizeof|static|struct|switch|typedef|union|unsigned|void|volatile|while)
OPERATOR    (\+|\-|\*|\/|\=|\%|\&|\||\^|\~|\<|\>|\=|\+=|\-=|\*=|\/=|\%=|\&=|\|=|\^=|\<<|\>>|\==|\!=|\<=|\>=|\&\&|\|\||\?\:|\++|\--|\!\=)
SPECIALSYM  (\{|\}|\(|\)|\[|\]|\;|\:|\,|\.)  
LITERAL     [0-9]+(\.[0-9]+)?|\"[^\"]*\"  
COMMENT     (\/\/[^\n]*|\/\*.*?\*\/)  
%%

{KEYWORD}        { printf("Keyword: %s\n", yytext); }
{LETTER}({LETTER}|{DIGIT})*    { printf("Identifier: %s\n", yytext); }
{LITERAL}        { printf("Literal: %s\n", yytext); }
{OPERATOR}       { printf("Operator: %s\n", yytext); }
{SPECIALSYM}     { printf("Special Symbol: %s\n", yytext); }
{COMMENT}        { /* Ignore comments */ }
{DIGIT}        {printf("Digit: %s\n",yytext);}
%%

int main() {
    yylex();
    return 0;
}
int yywrap(){
    return 1;
}
