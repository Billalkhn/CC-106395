## PROJECT MEMBERS

StdID | Name
------------ | -------------
*62708* | *M Bilal Khan* <!--this is the group leader in bold-->
62648 | Rohma Zahid

The language that we have selected for our compiler is _**“Mini Java”**_. 

##     What Is Mini Java?    

Mini-Java is a subset of Java which has been simplified (and modified). A MiniJava programs purpose is determined by its meaning as a Java program. Every MiniJava program is a fully functional Java program that follows Java semantics. It supports classes and limited inheritance, simple data types and a few structured control constructors. The MiniJava software is a single file that does not have a package declaration (and therefore does not correspond to the default package) or imports. It is made up of one or more Java classes. The classes are simple and easy there are no interface classes, subclasses, or nested classes in it.  

In MiniJava fields and methods are the members of a class. Public or private access may be defined in member declarations, as well as static instantiation. An initializing expression cannot be used in the declaration of a field. A parameter list and a body are also present in methods. There aren't any constructor methods available. 
MiniJava has three types: primitive types, class types, and array types. The primitive types are void, int, and Boolean, and the array types are the integer array int [] and the class [] array, where class can be any class type.


## Constructs of the MiniJava Language

###   Example 1 (Simple program)

 ```java
   class Abc {
        public static void main(String[] a) {
                System.out.println(“hello I am studying Compiler Construction);
        }
    }

```
### Example 2 (If/else loop)  

```java
    class Factorial {
        public static void main(String[] a) {
             System.out.println(new Fac().cal_Fac(5));
        }
    }
    class Fac {
        public int cal_Fac(int num) {
            int num1;
            if (num < 1) num1= 1;
            else num1 = num * (this.cal_Fac(num-1));
            return num1;
        }
    }
```

### Example 3 (Arrays Declaration)

```java
    class Arrays {
        public static void main(String[] a){
            System.out.println(new MyClass().calculation());
        }
    }
    class MyClass {
        int [] b;    //member variable
        public int calculation() {
            int [] a;   //local variable 
            b = new int [20];
            a = new int [76];
            a[0] = 7;
            a[2] = 77;
            b[45] = 42;
            return a[0] + b[a[2]-5];
        }
    }
```


##   Lexical Specifications of MiniJava Language     

The following lexical elements are found in MiniJava:

####  • White Spaces: 

Space, new line, carriage return, and tabulator are examples of white space.

####  • Comments:   

A comment is described as the string /* followed by any characters until the terminating */. Comments cannot be nested, and any subsequent /* inside a comment would be ignored; a comment will always end when the first */ is detected.

#### • Keywords: and operators: 

In the grammar classification, all tokens in bold are keywords or operators. Main, String, System, Out, and Println are all exceptions. They are not keywords, but rather identifiers.

####  • Integer Literals:

A numeric integer literal is a digit sequence that starts with any digit from 1 to 9 and ends with any number of digits from 0 to 9. A single 0 can be used as an integer literal as well.

####    • Identifier:

An identifier is a string of letters, underscores, and digits that begins with an underscore or a letter and continues with any number of letters, underscores, or digits. Only the letters A to Z and a to z are permitted, with case being crucial. IDENTs are not keywords.


## LEXICAL TOKENS

**Literals/identifiers/operators**
    
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

#### Punctuations

    DOT ="."
    
    COMMA = ","
    
    SEMICOLON = ";"

#### Reserved Words

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

#### Brackets

    LPAREN = "("
    
    RPAREN = ")"
    
    LBRACKET = "["
    
    RBRACKET = "]"
    
    LCURLY = "{"
    
    RCURLY = "}"

#### Special Tokens

    EOT = "$"
    
    ERRORS = ""
    
    ERROR COMMENTS = "<unclosed_comments>"
    
    WHITESPEACES = " "

## **Grammar Notations in MiniJava:**

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
