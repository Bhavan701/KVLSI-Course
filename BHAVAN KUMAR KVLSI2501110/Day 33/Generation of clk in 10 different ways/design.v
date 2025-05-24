// Code your design here
//************************not gate ***************************
/*module not1(a,y);
  input a;
  output y;
  not n1(y,a);
endmodule */
//*************************xor gate**************************
/*module xor1(a,b,y);
  input a,b;
  output y;
  assign b=1'b1;
  assign y=a^b;
endmodule */
//*************************xnor gate**************************
/*module xnor1(a,b,y);
  input a,b;
  output y;
  assign b=1'b0;
  assign y=~(a^b);
endmodule*/ 
//***********************or gate and not gate ****************
/*module or_not(a,b,y);
  input a,b;
  output y;
  wire w1;
  assign b=1'b0;
  assign w1=a|b;
  assign y=~(w1);
endmodule */
//***********************and gate and not gate ****************
module and_not(a,b,y);
  input a,b;
  output y;
  wire w1;
  assign b=1'b1;
  assign w1=a&b;
  assign y=~(w1);
endmodule 