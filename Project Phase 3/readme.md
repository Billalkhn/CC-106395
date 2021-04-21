#CC 106395: MINIJAVA LEXICAL ANALYZER & PARSER#
<!-- Replace XX with your course ID-->
###PROJECT MEMBERS###
StdID | Name
------------ | -------------
**62708** | **BILAL KHAN** 
62648 | ROHMA ZAHID

## Project Description ##

The main aim of this project was to understand the importance of compiler. Being a computer science student it is important to how to use a compiler and what is going on inside the tool that we are using. It enables us to design and implement our own domain-specific language. The compiler design allows use of formal methods that are rarely seen anywhere. The analysis of compilers is a good way to get started with formal methods. So by studying compiler we can learn alot of things. And that's the aim of our project also we learned how to use a subset of large language, its specifications and CFG. Also learned how with the help of lexicial specifications we can make a lexical analyzer and design a parser. 

##Sample Language Used ##

The language that we have used to design our parser is MINIJAVA. Basically the minijava language is a subset of java which is more simplified and modified. It is a teaching-oriented programming language predicated on Sun Microsystems' Java language. The MiniJava environment's core is a condensed version of the standard Java release, designed to alleviate the fear that beginners feel when confronted with a framework as complex as the Java environment.A MiniJava programs purpose is determined by its meaning as a Java program. Every MiniJava program is a fully functional Java program that follows Java semantics. It supports classes and limited inheritance, simple data types and a few structured control constructors. The MiniJava software is a single file that does not have a package declaration (and therefore does not correspond to the default package) or imports. It is made up of one or more Java classes. The classes are simple and easy there are no interface classes, subclasses, or nested classes in it.

##BubbleSort Implementation in MiniJava Language##

```MiniJava
class BubbleSort{
    public static void main(String[] a){
	System.out.println(new BBS().Start(10));
    }
}

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
