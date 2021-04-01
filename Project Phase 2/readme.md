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

void|int {printf("\n %d Return type:%s",Keyword,yytext);}

"System.out.println"|"System.out.print" {printf("\n %d Print statement:%s",Print,yytext);}

[a-zA-Z]+[_a-zA-Z0-9]* {printf("\n %d Variable:%s",ID,yytext);}

null|return|this|new|true|false {printf("\n %d Reserved Keywords:%s",Keyword,yytext);}

do|while|switch {printf("\n %d Loop Statements:%s",Keyword,yytext);}

[ |\n|\t|" "] {printf("\n %d Whitespaces:%s",Spaces,yytext);}

"*/"

"//"[a-zA-Z0-9!@#.,:$%^&*()_+]*|"/*"[a-zA-Z0-9!@#$%^&*()_+]*"*/" {printf("\n %d Comment:%s",Comment,yytext);}

%%

int main()

{

  yylex();

}

###  **Screenshots of Output**

![output2](https://user-images.githubusercontent.com/55507105/113283887-4b735780-9302-11eb-8927-33ceb46543db.JPG)

![Output1](https://user-images.githubusercontent.com/51243282/113284042-7e1d5000-9302-11eb-8a2c-06537026cbc4.JPG)


