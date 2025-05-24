// Code your design here
module comparator_2(a,b,y);
  input [1:0]a;
  input  [1:0]b;
  output [2:0]y;//y[2]=equal,y[1]=greater,y[0]=less
  assign y[2]=(a==b)?1'b1:1'b0;
  assign y[1]=(a>b)?1'b1:1'b0;
  assign y[0]=(a<b)?1'b1:1'b0;
endmodule 
  
  
  
  