// Code your design here
module half_subtractor(a,b,diff,bor);
  input a,b;
  output diff,bor;
  wire w1;
  not n1(w1,a);
  xor x1(diff,a,b);
  and a1(bor,w1,b);
endmodule

