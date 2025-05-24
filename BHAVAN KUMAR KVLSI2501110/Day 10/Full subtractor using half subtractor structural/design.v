// Code your design here
`include"half_sub.v"
module full_subtractor(a,b,c,diff,bor);
  input a,b,c;
  output diff,bor;
  wire w1,w2,w3;
  half_subtractor h1(a,b,w1,w2);
  half_subtractor h2(w1,c,diff,w3);
  assign bor=w2|w3;
endmodule