---
# <ins>**FEATURES OF SYSTEMVERILOG**</ins>
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
  
