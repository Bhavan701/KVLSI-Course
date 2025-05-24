// Code your design here
module full_subtractor(a,b,c,diff,bor);
  input a,b,c;
  output diff,bor;
  wire w1,w2,w3,w4;
  assign diff=a^b^c;
  assign bor=((~a)&b)|(b&c)|(c&(~a));
endmodule
