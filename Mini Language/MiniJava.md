# CC-106395

CC 106395 Spring 2021: Course Repository

## Project Members

| StdID | Name        |
| ----- | ----------- |
| 62708 | Bilal Khan  |
| 62648 | Rohma Zahid |

# MiniJava Language Specifications

## Introduction:

MiniJava is a small segment of the Java language for programming. It is, therefore, possible to compile. MiniJava programs with a standard Java compiler for byte code. There are various MiniJava features for compiler design, concepts that are useful. The language includes only a few statements and phrases and only requires a simple run-time method. This refrains from many Java features that just excessively complicate the run-time framework and translation, such as exceptions and multi-threading.

### Run-Time System :

Without big standard libraries, MiniJava only has a limited run-time setup. Program execution begins with the key process, which must always be present. Automatic memory control does not work, i.e. only memory can be allocated by MiniJava programs. Unable to release memory for reuse.

### Type system

MiniJava knows int for integers and Boolean for logical values as the base types. Groups and method types are user defined types. Groups contain methods and attributes. Methods have a method type, which specifies the type and number of variables of the method as well as the return values of the function.

### Lexical Elements

## Comments:

The string /_ followed by any characters until the terminating _/ is a comment.

## White space:

These are space, new line, carriage return and tabs.

## Keywords and operators:

Keywords or operators are all the tokens that are printed in bold format in the grammar specification. String, Methods, out, main and println are exceptions. These are identifiers, not keywords.

## Integer Literals:

A literal decimal integer is a series of digits beginning with either of the digits 1 to 9, followed by any number of digits 0 to 9. A single 0 is also a literal integer.

## Ident:

An object begins with a letter or an underscore and is followed by any number of numbers, underscores and characters. Only letters A to Z and a to z are permitted, and the case is significant. Keywords do not include IDENTs.

### Semantics:

The semantics of MiniJava are compatible with the semantics of Java, apart from a few exceptions. Those exceptions are,

1. There must be exactly one main method in MiniJava program.
2. It is not possible to call the main (String [] args) method in MiniJava program.
3. It is not necessary to verify the definite assignment rules of Java.



### Syntax
There are few syntax that are important in MiniJava language are, 
1.	() is intended to group several syntactic components.
2.	Terminals are written in bold format. E.g.: the public or static.
3.	Non-terminals are written in italic format. For example: expressions.
4.	| demonstrates alternatives.
5.	Y? It means no or precisely one Y occurrence. 
6.	Y* means there can be none or multiple of Y occurrences. 

### Keywords/Token Table 

## Literals/identifiers/operators 

NUMBER ="<num>", IDENTIFIER = "<identifier>", PLUS ="+", MINUS ="-", BECOMES = "=", INTO = "*", DIVISION ="/", AND ="&&", OR ="||", GTHAN = ">", LTHAN = "<", EQUALS = "==", NEQUALS = "!=" 

## Punctuations
DOT =".", COMMA = ",", SEMICOLON = ";"
## Reserved Words 
BOOLEAN=”boolean”, CLASS ="class", IF ="if", ELSE ="else", INT =”int”, NEW ="new", NULL ="null", VOID ="void", WHILE ="while", TRUE ="true", RETURN ="return", PUBLIC ="public", THIS ="this", STATIC ="static", PRIVATE ="private"
## Brackets 
LPAREN = "(", RPAREN = ")", LBRACKET = "[", RBRACKET = "]", LCURLY = "{", RCURLY =    "}",
## Special Tokens
EOT = "$", ERRORS = "<error>", ERROR COMMENTS = "<unclosed_comments>", WHITESPEACES = " "

### MiniJava Grammar

Program → ClassDeclaration*
ClassDeclaration → class IDENT(extends IDENT)? { ClassMember * }
ClassMember → Field | Method | MainMethod
Field → public Type IDENT ;
MainMethod → public static void main ( String [ ] IDENT ) Block
Method → public Type IDENT ( Parameters? ) Block
Parameters → Parameter | Parameter , Parameters
Parameter → Type IDENT
Type → int | boolean | void | IDENT
Statement → Block
| EmptyStatement
| IfStatement
| PrintStatement
| ExpressionStatement
| WhileStatement
| ReturnStatement
Block → { BlockStatement* }
BlockStatement → Statement | LocalVariableDeclarationStatement
LocalVariableDeclarationStatement → Type IDENT(= Expression)? ;
EmptyStatement → ;
WhileStatement → while ( Expression ) Statement
IfStatement → if ( Expression ) Statement(else Statement)?
PrintStatement → PrintStatementHead . println ( Expression ) ;
PrintStatementHead → ( PrintStatementHead ) | System . out
ExpressionStatement → Expression ;
ReturnStatement → return Expression? ;
Expression → AssignmentExpression
AssignmentExpression → LogicalOrExpression(= AssignmentExpression)?
LogicalOrExpression → (LogicalOrExpression ||)? LogicalAndExpression
LogicalAndExpression → (LogicalAndExpression &&)? EqualityExpression
EqualityExpression → (EqualityExpression(== | !=))? RelationalExpression
RelationalExpression → (RelationalExpression(< | <= | > | >=))? AdditiveExpression
AdditiveExpression → (AdditiveExpression(+ | -))? MultiplicativeExpression
MultiplicativeExpression → (MultiplicativeExpression(* | / | %))? UnaryExpression
UnaryExpression → PrimaryExpression | (! | -) UnaryExpression
PrimaryExpression → null
| false
| true
| INTEGER_LITERAL
| MethodInvocationExpression
| FieldAccessExpression
| LocalVariableReferenceExpression
| this
| ( Expression )
| NewObjectExpression
MethodInvocationExpression → (PrimaryExpression .)? IDENT ( ExpressionList? )
ExpressionList → Expression(, Expression)\*
FieldAccessExpression → (PrimaryExpression .)? IDENT
LocalVariableReferenceExpression → IDENT
NewObjectExpression → new IDENT ( )

