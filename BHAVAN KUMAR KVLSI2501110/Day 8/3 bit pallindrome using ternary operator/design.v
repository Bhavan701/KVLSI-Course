// Code your design here
module palindrome_3bit(a,y);
  input [2:0]a;
  output y;
  assign y=(a[2]===a[0])?1'b1:1'b0;/*=== is used because if x and z is given then it should compare and give as input 1 and 0 but if we give == it will give x value */
endmodule 
  