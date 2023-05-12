%{
#include <stdio.h>
%}

%%
[6-9][0-9]{9}   printf("'%s' is a valid mobile number\n", yytext);
.                        printf("'%s' is not a valid mobile number\n", yytext);
%%

int main() {
    yylex();
    return 0;
}
