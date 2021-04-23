%{
#include <stdio.h>
#include <stdlib.h>

extern char yytext[];
extern int column;
extern int yylineno;

int yylex(void);
void yyerror(char *s);
%}

%token If Else While Class Extends Public Static Void
%token Boolean Integer String True False
%token This New Println Return ArrayLength Main
%token Id Number And
