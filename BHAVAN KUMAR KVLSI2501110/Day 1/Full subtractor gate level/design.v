// Code your design here
module full_subtractor(a,b,c,diff,bor);
  input a,b,c;
  output diff,bor;
  wire w1,w2,w3,w4;
  not n1(w1,a);
  xor x1(diff,a,b,c);
  and a1(w2,w1,b);
  and a2(w3,b,c);
  and a3(w4,c,w1);
  or o1(bor,w2,w3,w4);
endmodule
