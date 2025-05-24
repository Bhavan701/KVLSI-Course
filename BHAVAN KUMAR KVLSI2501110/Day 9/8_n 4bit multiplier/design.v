// Code your design here
/*write a verilog code which accepts a 4bit number and implement 8*n*/

module bit4_8mulN(n,y);
  input [3:0]n;
  output [6:0]y;
  assign y={n,3'b000};
endmodule 
/*
module bit4_8mulN(n,y);
  input [3:0]n;
  output [6:0]y;
  assign y=n<<3;
endmodule

module bit4_8mulN(n,y);
  input [3:0]n;
  output [6:0]y;
  assign y=8*n;
endmodule 
*/
