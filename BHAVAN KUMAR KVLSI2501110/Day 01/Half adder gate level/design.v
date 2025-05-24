// Code your design here
module half_adder(a,b,s,cout);
  input a,b;
  output s,cout;
  wire w1,w2;
  xor x1(s,a,b);
  and a1(w1,a,b);
  and a2(w2,a,b);
  or o1(cout,w1,w2);
endmodule 