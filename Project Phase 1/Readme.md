###PROJECT MEMBERS###
StdID | Name
------------ | -------------
*62708* | *M Bilal Khan* <!--this is the group leader in bold-->
62648 | Rohma Zahid

The language that we have selected for our compiler is **“Mini Java”**. 

**What Is MiniJava? **
Mini-Java is a subset of Java which has been simplified (and modified). A MiniJava programs purpose is determined by its meaning as a Java program. Every MiniJava program is a fully functional Java program that follows Java semantics. It supports classes and limited inheritance, simple data types and a few structured control constructors. The MiniJava software is a single file that does not have a package declaration (and therefore does not correspond to the default package) or imports. It is made up of one or more Java classes. The classes are simple and easy there are no interface classes, subclasses, or nested classes in it.  
In MiniJava fields and methods are the members of a class. Public or private access may be defined in member declarations, as well as static instantiation. An initializing expression cannot be used in the declaration of a field. A parameter list and a body are also present in methods. There aren't any constructor methods available. 
MiniJava has three types: primitive types, class types, and array types. The primitive types are void, int, and Boolean, and the array types are the integer array int [] and the class [] array, where class can be any class type.


**Constructs of the MiniJava Language**

**- Example 1 (Simple program)**
class Abc {
    public static void main(String[] a) {
            System.out.println(“hello I am studying Compiler Construction”);
    }
}


**-Example 2 (If/else loop)**
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
