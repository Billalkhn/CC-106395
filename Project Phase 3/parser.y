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


%right '='
%left '{'
%left '['
%left And
%left '+' '-'
%left '*'
%left '.'
%left '!'
%nonassoc '<'

%start Goal

%%
Goal
    :   MainClass ClassDeclarationList      { printf("OK this is the valid expression\n"); YYACCEPT; }
    ;

MainClass
    :   Class Identifier '{' Public Static Void Main '(' String '[' ']' Identifier ')' '{' Statement '}' '}'
    ;

ClassDeclarationList
    :   ClassDeclaration ClassDeclarationList
    |   /* Empty */
    ;

ClassDeclaration
    :   Class Identifier '{' VarDeclarationList MethodDeclarationList '}'
    |   Class Identifier '{' MethodDeclarationList '}'
    |   Class Identifier Extends Identifier '{' VarDeclarationList MethodDeclarationList '}'
    |   Class Identifier Extends Identifier '{' MethodDeclarationList '}'
    ;

VarDeclarationList
    :   VarDeclaration
    |   VarDeclarationList VarDeclaration
    ;

VarDeclaration
    :   Type Identifier ';'
    ;

MethodDeclarationList
    :   MethodDeclaration MethodDeclarationList
    |   /* Empty */
    ;

MethodDeclaration
    :   Public Type Identifier '(' ParameterList ')' '{' VarDeclarationList StatementList Return Expression ';' '}'
    |   Public Type Identifier '(' ParameterList ')' '{' StatementList Return Expression ';' '}'
    ;