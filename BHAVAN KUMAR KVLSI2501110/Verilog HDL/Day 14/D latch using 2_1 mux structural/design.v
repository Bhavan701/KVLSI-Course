// Code your design here
`include "mux2_1"
module dlatch(d,clk,q);
  input d,clk;
  output q;
  wire w;
  mux2_1 m1({d,w},clk,w);
  assign q=w;
endmodule   