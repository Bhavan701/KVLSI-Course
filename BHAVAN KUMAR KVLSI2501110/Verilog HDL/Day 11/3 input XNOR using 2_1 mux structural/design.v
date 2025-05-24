// Code your design here
`include"mux.v"
module xnor3(a,b,c,y);
  input a,b,c;
  output y;
  wire [1:0]w;
  mux2_1 m1({(c),(~c)},b,w[0]);
  mux2_1 m2({(~c),(c)},b,w[1]);
  mux2_1 m3({w[1],w[0]},a,y);
endmodule 