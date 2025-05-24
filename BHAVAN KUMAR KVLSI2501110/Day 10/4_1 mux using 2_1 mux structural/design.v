// Code your design here
`include "MUX.v"
module mux4_1(i,s,y);
  input [3:0]i;
  input [1:0]s;
  output y;
  wire [1:0]w;
  mux2_1 M1(i[1:0],s[0],w[0]);
  mux2_1 M2(i[3:2],s[0],w[1]);
  mux2_1 M3(w,s[1],y);
endmodule 
