%{
#include "y.tab.h"
%}

%%
"int"           { return INT; }
"float"         { return FLOAT; }
[0-9]+\.[0-9]+  { return NUMBER; }
[0-9]+          { return NUMBER; }
[a-zA-Z_][a-zA-Z0-9_]*  { return ID; }
"="             { return '='; }
";"             { return ';'; }
[ \t\n]         { /* ignore whitespace */ }
.               { return yytext[0]; }
%%

int yywrap() { return 1; }
