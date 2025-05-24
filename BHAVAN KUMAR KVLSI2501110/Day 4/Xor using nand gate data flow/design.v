// Code your design here
module XOR_nand_2(y,a,b);
  input a,b;
  output y;
  assign y=((~a)&b)|(a&(~b));
endmodule