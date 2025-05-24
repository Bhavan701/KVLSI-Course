// Code your design here
`include"MUX2_1"
`include"MUX4_1"
module mux8_1(i,s,y);
  input [7:0]i;
  input [2:0]s;
  output y;
  wire [1:0]w;
  mux4_1 m1(i[3:0],s[1:0],w[0]);
  mux4_1 m2(i[7:4],s[1:0],w[1]);
  mux2_1 m3(w,s[2],y);
endmodule 