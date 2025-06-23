---
# <ins>**FEATURES OF SYSTEM VERILOG**</ins>
1. Improved data type.
2. OOPs concept.
3. constraint randomization.
4. Synchronization.
5. Assertion.
6. Functional coverage.
---
## <ins>**Data types in System verilog**</ins> 
1. 4-state data types.
2. 2-state data types.
3. Real.
4. Arrays.
5. Structures.
6. Unions.
7. Strings.
8. Enumerated data types.
9. User defined data types.
10. Class
---
###  4-state data types.
There are 4 types.
1. reg -> default value is x.
2. wire -> default value is z.
3. logic -> default value is x.
4. integer -> default value is x.

+ logic is called as improved reg type data.  
---
### 2-state data types.
+ In this all data type has a default value of 0 .
+ Except bit by default all data types are signed and bit is unsigned. 
+ If we drive x and z value to this data type it will give default value i.e it aloows either 0 or 1.
There are 8 types.
1. bit -> default size is 1-bit.
2. byte -> default size is 8-bit.
3. int -> default size is 32-bit.
4. long int -> default size is 64-bit.
5. short int -> default size is 32-bit.
6. real -> default size is 64-bit.
7. short real -> default size is 32-bit.
8. real time -> default size is 64-bit.
---
### Real & void. 
+ real is same as double in c.
+ short real is same as float in c.
+ void does not return any value.
+ $bits(variable_name) is a Keyword used to find the default size of that variable.
---
Question No.1
Write a verilog code to print the defult value and the size of the variable.
<pre>module test;
  logic a;
  byte b;
  bit c;
  longint d;
  shortint e;
  initial begin
    $display ("the default size of logic=%0d, default value =%0d ",$bits(a),a);
    $display ("the default size of byte=%0d, default value =%0d ",$bits(b),b);
    $display ("the default size of bit=%0d, default value =%0d ",$bits(c),c);
    $display ("the default size of longint=%0d, default value =%0d ",$bits(d),d);
    $display ("the default size of shortint=%0d, default value =%0d ",$bits(e),e);
    #2 b=1'bx;
    #2 a=1'bz;
    #2 b=1'bz;
  end
  initial begin
    $monitor ("sim time=%0t,a=%b,b=%b",$time,a,b);
  end
endmodule</pre>
Output is 
<pre>the default size of logic=1, default value =x 
the default size of byte=8, default value =0 
the default size of bit=1, default value =0 
the default size of longint=64, default value =0 
the default size of shortint=16, default value =0 
sim time=0,a=x,b=00000000
sim time=4,a=z,b=00000000</pre> 
---
### Arrays
There are the 2 types.
1. Packed array.
2. Unpacked array.
+ To print packed array we us %b,%h,%d.
+ To print unpacked array we use %p. 
#### 1. Packed array.
- Subtype of packed array is only one i.e Fixed array.
- Syntax is:<br>
  data_type [size] array_name;
- Supported data types are :<br>
  reg,wire,logic,bit  which is by default 1 bit in size.
#### 2. Unpacked array.
- Syntax is:<br>
   data_type array_name [size];
- It supports any type of data. 
- Subtype of unpacked array are<br>
 1. Fixed.
 2. Dynamic.
 3. Queues.
 4. Associative.
---
##### 1. Fixed.<br>
<pre>module test;
integer a[0:9];
  int i;
  initial begin
    for (i=0;i<10;i=i+1)//foreach (a[i]) 
      begin
      a[i]=i+1;
      $display ("the a[%0d]=%0d",i,a[i]);
      end
  end
endmodule
    
module test;
integer a[0:9];
  initial begin
    a='{1,2,3,4,5,6,7,8,9,0};
    display ("a=%p",a);
  end   
endmodule </pre>
+ Two dimensional.
<pre>module test;
  integer a[0:4][0:4];//a[5][5] compact declaration
  initial begin
    foreach(a[i,j])
      a[i][j]=j+1;
    $display ("array=%p",a);
  end
endmodule</pre>
+ Output is
<pre>array='{'{1, 2, 3, 4, 5}, '{1, 2, 3, 4, 5}, '{1, 2, 3, 4, 5}, '{1, 2, 3, 4, 5}, '{1, 2, 3, 4, 5}}</pre>
+ Fixed-size arrays can be either packed or unpacked.
+ They do not offer flexibility.
+ Their size cannot be changed at runtime.
+ Deletion of the array is not possible in this case.
---
##### 2. Dynamic.<br>
+ In a dynamic array, we can increase or decrease the size, but direct insertion and deletion are not possible.
+ Size is allocated at run time.
+ We can change the size. 
<pre>module test;
  int a[];
  initial begin
    $display("array=%p",a);//'{}
    a=new[5];
    $display("array=%p",a);//'{0,0,0,0,0}
    a='{15,10,25,30,4};
    $display("array=%p",a);//'{15,10,25,30,4}
    a=new[7](a);
    $display("array=%p",a);//'{15,10,25,30,4,0,0}
    a=new[10];
    $display("array=%p",a);//'{0,0,0,0,0,0,0,0,0,0}
    a='{1,2,3,4,5};
    $display("array=%p",a);//'{1,2,3,4,5}
    a={a[0:1],a[3:4]};//deleted a element
    $display("array=%p",a);//'{1,2,4,5}  
    a={a[0:1],3,a[2:3]};//inserted a element
    $display("array=%p",a);//'{1,2,3,4,5} 
    a.delete();
    $display("array=%p",a);//'{}
  end
endmodule </pre>
+ Two dimensional array.<br>
Question No.1
<pre>module test;
  int a[][];
  initial begin
    a=new[5];
    foreach(a[i])
      a[i]=new[2];
    $display ("array=%p",a);
    foreach(a[i,j])
      $display ("array[%0d][%0d]=[%0d]",i,j,a[i][j]);
  end
endmodule</pre>
Output is
<pre>array='{'{0, 0} , '{0, 0} , '{0, 0} , '{0, 0} , '{0, 0} }
array[0][0]=[0]
array[0][1]=[0]
array[1][0]=[0]
array[1][1]=[0]
array[2][0]=[0]
array[2][1]=[0]
array[3][0]=[0]
array[3][1]=[0]
array[4][0]=[0]
array[4][1]=[0]</pre>
Question No.2
<pre>module test;
  int a[][];
  initial begin
    a=new[3];
    a[0]=new[3];
    a[1]=new[2];
    a[2]=new[4];
    $display ("array=%p",a);//'{'{0, 0, 0} , '{0, 0} , '{0, 0, 0, 0} }
    foreach(a[i,j])
    $display ("array[%0d][%0d]=[%0d]",i,j,a[i][j]);
  end
endmodule</pre>
output is 
<pre>array='{'{0, 0, 0} , '{0, 0} , '{0, 0, 0, 0} }
array[0][0]=[0]
array[0][1]=[0]
array[0][2]=[0]
array[1][0]=[0]
array[1][1]=[0]
array[2][0]=[0]
array[2][1]=[0]
array[2][2]=[0]
array[2][3]=[0]</pre>
---
##### 3. Queues
+ Queues are 1-D array.
+ Queues can grow and shrink dynamically, means we can push or pop.
+ They don't require any memory allocation.
+ Queues are more flexible than the dynamic arrays.
+ There are 2 types
  1. Bounded queue.<br>
     Syntax :<br>
     int q[$:N]; // where N=100 it can have maximum 101 elements.
  3. Unbounded queue.<br>
     Syntax :<br>
     int q[$];
+ We can't use foreach to initialize an empty queue directly, but we can use it after allocating space.
+ We can directly insert or delete elements using built-in methods such as insert and delete.
Example No.1
<pre>module test;
  int q1[$];
  int q2[$:5];//6 elements
  initial begin
    $display("q1=%p,q2=%p",q1,q2);
    q1='{1,2,3};// it has not limit 
    q2='{1,2,3,4,5,6,7,8};// 7,8 will be thrown bcz it can store 6 elements only
    $display("q1=%p,q2=%p",q1,q2);
    $display("size of q1=%0d,size of q2=%0d",q1.size(),q2.size());// to print the size 
    q1.insert (0,50);// insert 50 on 0th index
    $display("q1=%p",q1);
    $display("the last index of q1=%0d",q1[$]);
    q1.delete();
    $display("q1=%p,q2=%p",q1,q2); 
    q2.delete (0);
    $display("q1=%p,q2=%p",q1,q2);
  end
endmodule</pre>  
Output is 
<pre>q1='{},q2='{}
q1='{1, 2, 3} ,q2='{1, 2, 3, 4, 5, 6} 
size of q1=3,size of q2=6
q1='{50, 1, 2, 3} 
the last index of q1=3
q1='{},q2='{1, 2, 3, 4, 5, 6} 
q1='{},q2='{2, 3, 4, 5, 6} </pre>
Question No.1<br>
Write a code to declare a unbounded queue of int type.Initialize this queue with 10  values. Delete 4th and 6th index values without using delete method. Insert 100 on last position and 50 on first position without using insert method.  
<pre>module test;
  int q[$];// declared unbounded queue int type
  initial begin
    q='{2,3,4,5,6,7,8,9,10,11};// initialized the value
    $display ("q=%p",q);
    q={q[0:3],q[5],q[7:9]};// deleted the 4th and 6th index elements 
    $display ("q=%p",q);
    q={50,q,100};// inserted 50 at first and 100 at last
    $display ("q=%p",q);
  end 
endmodule </pre>
Output is 
<pre>q='{2, 3, 4, 5, 6, 7, 8, 9, 10, 11}
q='{2, 3, 4, 5, 7, 9, 10, 11}
q='{50, 2, 3, 4, 5, 7, 9, 10, 11, 100}</pre>
