// Code your design here
`include"decoder2_4.v"
module decoder4_16(i,en,d);
  input [3:0] i;
  output [15:0] d;
  input en;
  wire [3:0] w;

  decoder d1(i[3:2],1'b1,w);  
  decoder d2(i[1:0],w[0],d[3:0]);
  decoder d3(i[1:0],w[1],d[7:4]);
  decoder d4(i[1:0],w[2],d[11:8]);
  decoder d5(i[1:0],w[3],d[15:12]);
endmodule