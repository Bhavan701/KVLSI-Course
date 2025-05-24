// Code your design here
`include"mux2_1"
module dff(d,clk,q);
  input d,clk;
  output q;
  wire [1:0]w;
  mux2_1 m1({d,w[1]},clk,w[1]);
  mux2_1 m2({w[1],w[0]},clk,w[0]);
  assign q=w[0];
endmodule 
  