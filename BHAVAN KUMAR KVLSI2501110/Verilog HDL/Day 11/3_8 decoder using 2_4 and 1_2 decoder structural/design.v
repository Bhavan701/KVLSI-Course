// Code your design here
`include"DEC1_2.v"
`include"DEC2_4.v"
module decoder3_8(y,i);
  input [2:0]i;
  output [7:0]y;
  wire [1:0]w;
  decoder1_2 d1(w,i[2]);
  decoder2_4 d2(y[3:0],i[1:0],w[0]);
  decoder2_4 d3(y[7:4],i[1:0],w[1]);
endmodule  

