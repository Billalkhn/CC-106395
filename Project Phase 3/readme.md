## CC 106395: MINIJAVA LEXICAL ANALYZER & PARSER
<!-- Replace XX with your course ID-->
## PROJECT MEMBERS 
StdID | Name
------------ | -------------
**62708** | **BILAL KHAN** 
62648 | ROHMA ZAHID

## Project Description 

The main aim of this project was to understand the importance of compiler. Being a computer science student it is important to how to use a compiler and what is going on inside the tool that we are using. It enables us to design and implement our own domain-specific language. The compiler design allows use of formal methods that are rarely seen anywhere. The analysis of compilers is a good way to get started with formal methods. So by studying compiler we can learn alot of things. And that's the aim of our project also we learned how to use a subset of large language, its specifications and CFG. Also learned how with the help of lexicial specifications we can make a lexical analyzer and design a parser. 

## Sample Language Used 

The language that we have used to design our parser is MINIJAVA. Basically the minijava language is a subset of java which is more simplified and modified. It is a teaching-oriented programming language predicated on Sun Microsystems' Java language. The MiniJava environment's core is a condensed version of the standard Java release, designed to alleviate the fear that beginners feel when confronted with a framework as complex as the Java environment.A MiniJava programs purpose is determined by its meaning as a Java program. Every MiniJava program is a fully functional Java program that follows Java semantics. It supports classes and limited inheritance, simple data types and a few structured control constructors. The MiniJava software is a single file that does not have a package declaration (and therefore does not correspond to the default package) or imports. It is made up of one or more Java classes. The classes are simple and easy there are no interface classes, subclasses, or nested classes in it.

## BubbleSort Implementation in MiniJava Language
```java
`
```MiniJava
class BubbleSort{
    public static void main(String[] a){
	System.out.println(new BBS().Start(10));
    }
}


// This class contains the array of integers and methods to initialize, print and sort the array using Bublesort
class BS{
    
    int[] number ;
    int size ;

    // Invoke the Initialization, Sort and Printing Methods
    public int Start(int b){
	int aux01 ;
	aux01 = this.Init(b);
	aux01 = this.Print();
	System.out.println(99999);
	aux01 = this.Sort();
	aux01 = this.Print();
	return 0 ;
    }

 
    // Sort array of integers using Bublesort method
    public int Sort(){
	int nt ;
	int i ;
	int aux02 ;
	int aux04 ;
	int aux05 ;
	int aux06 ;
	int aux07 ;
	int j ;
	int t ;
	i = size - 1 ;
	aux02 = 0 - 1 ;
	while (aux02 < i) {
	    j = 1 ;
	    //aux03 = i+1 ;
	    while (j < (i+1)){
		aux07 = j - 1 ;
		aux04 = number[aux07] ;
		aux05 = number[j] ;
		if (aux05 < aux04) {
		    aux06 = j - 1 ;
		    t = number[aux06] ;
		    number[aux06] = number[j] ;
		    number[j] = t;
		}
		else nt = 0 ;
		j = j + 1 ;
	    }
	    i = i - 1 ;
	}
	return 0 ;
    }

    // Printing
    public int Print(){
	int j ;
	j = 0 ;
	while (j < (size)) {
	    System.out.println(number[j]);
	    j = j + 1 ;
	}
	return 0 ;
    }
    
    // Initializing array of integers
    public int Init(int b){
	size = b ;
	number = new int[b] ;
	
	number[0] = 4 ;
	number[1] = 20  ; 
	number[2] = 12 ;
	number[3] = 16 ;
	number[4] = 10 ; 
	number[5] = 1 ;
	number[6] = 6  ; 
	number[7] = 9  ; 
	number[8] = 2 ; 
	number[9] = 5  ;
	
	return 0 ;	
    }

}
````

## Lexical Specification

The following are the lexical specifications found in MiniJava Language:

##### • White Spaces:
Space, new line, carriage return, and tabulator are examples of white space.

##### • Comments:
A comment is described as the string /* followed by any characters until the terminating /. Comments cannot be nested, and any subsequent / inside a comment would be ignored; a comment will always end when the first */ is detected.

##### • Keywords: and operators:
In the grammar classification, all tokens in bold are keywords or operators. Main, String, System, Out, and Println are all exceptions. They are not keywords, but rather identifiers.

##### • Integer Literals:
A numeric integer literal is a digit sequence that starts with any digit from 1 to 9 and ends with any number of digits from 0 to 9. A single 0 can be used as an integer literal as well.

##### • Identifier:
An identifier is a string of letters, underscores, and digits that begins with an underscore or a letter and continues with any number of letters, underscores, or digits. Only the letters A to Z and a to z are permitted, with case being crucial. IDENTs are not keywords.

# LEXICAL TOKENS

### Literals/identifiers/operators

NUMBER =""

IDENTIFIER = ""

PLUS ="+"

MINUS ="-"

BECOMES = "="

INTO = "*"

DIVISION ="/"

AND ="&&"

OR ="||"

GTHAN = ">"

LTHAN = "<"

EQUALS = "=="

NEQUALS = "! ="

### Punctuations

DOT ="."

COMMA = ","

SEMICOLON = ";"

### Reserved Words

BOOLEAN=”boolean”

CLASS ="class"

IF ="if"

ELSE ="else"

INT =”int”

NEW ="new"

NULL ="null"

VOID ="void"

WHILE ="while"

TRUE ="true"

RETURN ="return"

PUBLIC ="public"

THIS ="this"

STATIC ="static"

PRIVATE ="private"

### Brackets

LPAREN = "("

RPAREN = ")"

LBRACKET = "["

RBRACKET = "]"

LCURLY = "{"

RCURLY = "}"

### Special Tokens

EOT = "$"

ERRORS = ""

ERROR COMMENTS = "<unclosed_comments>"

WHITESPEACES = " "

### Grammar

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

PrintStatement

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

RelationalExpression → (RelationalExpression(< | <= | > | >=))?

AdditiveExpression → (AdditiveExpression(+ | -))?

MultiplicativeExpression → (MultiplicativeExpression(* | / | %))?

UnaryExpression → PrimaryExpression | (! | -)

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

MethodInvocationExpression → (PrimaryExpression .)?    IDENT(ExpressionList?)

ExpressionList → Expression(, Expression)\*

FieldAccessExpression → (PrimaryExpression .)? IDENT

LocalVariableReferenceExpression → IDENT

NewObjectExpression → new IDENT ( )

# Problems Faced

These are the following problems that we have faced in our project.

## Problem 1: No Background of Java
So before this project both of us had zero knowledge about java. Our domain area is react native (javaScript) but we though that why not give it a shot and do something that we haven't done before. So we decided to take up on MiniJava as it's a smaller component of Java language. Initially we had many difficulties like we didn't knew how it works, how can we declare variable and methods, its syntax and so many things like this. But once we learned and got basic knowledge about it then we had no such difficulty. 

## Problem 2: Github
So I (Rohma) didn't knew how to use this platform Github as none of our teacher asked to submit projects on Github so it was my first time using it. Initially i didn't knew how to make repositiories and such things. I had very difficulties in formatting the content in Files and making repository etc. but my other group member had hands on it so he helped in using this platform. And now i have learned how to use Github.  

## Problem 3: Installation of Flex in Linux
When we created our lexical analyzer we had many issues in its compilation. Our lex file wasn't created because of installation issues in linux, so after trying so many times finally we got succeed.

## Problem 4: YACC Compilation
When we merged our lex and yacc file means (.l & .y extension file). We had so many errors in it's compilations like (undefined reference or function in y file, redeifintions, declaration and so on). We had no idea about them because we never worked on such environment. It's our first time when we designed parser so most of the errors were new to us so we researched, took guide from videos and book and then finally after spending several hours on it we resolved them.

## References

- [Github] (https://github.com/starbops/MJP)
- [Website] (https://courses.engr.illinois.edu/cs421/sp2012/mps/MP3/mp3.pdf)
- [Webiste] (https://www.mrcoder.org/en/compiler/minijava/introduction/)
- [Tutorial] (https://www.youtube.com/watch?v=246sQu7ty00&t=581s) 
