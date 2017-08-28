
%{
#include <stdio.h>
%}


%%

[[:alnum:]][A-Za-z0-9_.-]*[^_. -]@[[:alnum:]]*[A-Za-z0-9_.-]*[[:alnum:]]+ {
	printf("%s\n", yytext);
}
[[:alnum:]]+*[^_. -]@[[:alnum:]]+- ;
. ;
[[:space:]] ;
%%

int main() {
  yylex();
  return 0;
}
