# C-code
The Basic code.
```c
#include <stdio.h>
int main()
{
    int age=25;
    printf("Hi i am Bhavan kumar and my age is %d",age);
    //declaring multiple variables
    int age1,age2;
    age1 =31;
    printf("\nMy sisters age is %d\n",age1);
    age2=age1;
    printf("Age of my friend is %d",age2);
   return 0;
}
//Output is
Hi i am Bhavan kumar and my age is 25
My sisters age is 31
Age of my friend is 31
```
There are certain rules in creating the variables 
- Cannot create a variable names with space in between.
- Cannot start a variable with a numbers.
- Cannot use a reserved keyword.
---
## Data types
1. int
2. double
3. float
4. char
---
### int
- It can store only integer values.
- 4 bytes. 
```c
#include <stdio.h>
int main()
{
    int a=25;
    printf("a=%d",a);
    return 0;
}
//Outputr is
a=25
```
---
### double
- It can store decimal and exponential values.
- 8 bytes.
---
### float
- It can store decimal and exponential values.
- 4 bytes
```c
#include <stdio.h>
int main()
{
    //double data type
    double a=25.12;
    printf("a=%lf\n",a);
    printf("a=%.1lf\n",a);
    printf("a=%.2lf\n",a);
    printf("a=%.3lf\n",a);
    //float data type 
    float b=21.12f;
    printf("b=%f\n",b);
    printf("b=%.1f\n",b);
    printf("b=%.2f\n",b);
    //Exponential values 
    double c=5.5e6;
    printf("c=%1f",c);
    return 0;
//Output is
a=25.120000
a=25.1
a=25.12
a=25.120
b=21.120001
b=21.1
b=21.12
c=5500000.000000
}
```
---
### char
- It will store the character.
- 1 byte.
```c
#include <stdio.h>
int main()
{
    char a='z';
    printf("a=%c\n",a);
    printf("a=%d",a);//it will store a equivalent decimal value of the z 
    return 0;
}
//Output is
a=z
a=122
```
## sizeof() operator
- This will return tyhe size of a data type.
```c
#include <stdio.h>
int main()
{
    int a;
    char b;
    double c;
    float d;
    printf ("size of int is %zu\nsize of char is %zu\nsize of double is %zu\nsize of float is %zu",sizeof(a),sizeof(b),sizeof(c),sizeof(d));
    return 0;
}
//Output is
size of int is 4
size of char is 1
size of double is 8
size of float is 4
```
Printing user defined value
```c
#include<stdio.h>
int main(){
    int a;
    double b;
    char c;
    printf("Enter a int value :");
    scanf("%d",&a);
    printf("Enter a double value :");
     scanf("\n%lf",&b);
    printf("Enter a char value :");
    scanf("\n%c",&c);
    
    printf("a=%0d",a);
    printf("\nb=%lf",b);
    printf("\nc=%c",c);
    return 0;
}
//Output is
Enter a int value :2
Enter a double value :3
Enter a char value :c
a=2
b=3.000000
c=c

```
+ Here "scanf" if used to teke input from user and store to a variable.
+ "%d" is a format specifer that the data is which type.
+ "&" represents memory addres and "&a" represents the memory addres of the a variable.
---
