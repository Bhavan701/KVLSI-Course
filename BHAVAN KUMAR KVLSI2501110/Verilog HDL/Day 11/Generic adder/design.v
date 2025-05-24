// Code your design here
module generic_adder #(parameter N=4)(a,b,s);
  input [N-1:0]a,b;
  output [N:0]s;
  assign s=a+b;
endmodule 
  