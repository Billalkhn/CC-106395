# Project Phase 2

## PROJECT MEMBERS

StdID | Name
------------ | -------------
*62708* | *M Bilal Khan* 
62648 | Rohma Zahid


## **Rules of MiniJava for Lexical Analyzer**

%{

#include<stdio.h>

#define OP 0

#define ID 1

#define Number 2

#define Keyword 3

#define Spaces 4

#define Bracket 5

#define Comment 6

#define Punctuation 7

#define Specifier 8

#define String 9

#define Program 10

#define Print 11

%}

%%

"class" {printf("\n %d Start of the program:%s",Program,yytext);}

main {printf("\n %d Name of class:%s",Program,yytext);}

"+"|"-"|"*"|"/" {printf("\n %d Operators:%s",OP,yytext);}

"<"|">"|"=="|"!=" {printf("\n %d Comparision Operators:%s",OP,yytext);}

"=" {printf("\n %d Assignment:%s",OP,yytext);}

"&&"|"||" {printf("\n %d Logical Operators:%s",OP,yytext);}

[a-zA-Z] {printf("\n %d Letters:%s",String,yytext);}

[0-9]* {printf("\n %d Digits:%s",Number,yytext);}

"("|")"|"["|"]"|"{"|"}" {printf("\n %d Brackets:%s",Bracket,yytext);}

int|void|boolean|double|float {printf("\n %d Keywords:%s",Keyword,yytext);}

"."|";"|"," {printf("\n %d Punctuations:%s",Punctuation,yytext);}

private|static {printf("\n %d Specifiers:%s",Specifier,yytext);}

if|else {printf("\n %d Loops:%s",Keyword,yytext);}
