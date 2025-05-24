// Code your design here
module full_adder(a,b,c,s,cout);
  input a,b,c;
  output s,cout;
  wire w1,w2,w3;
  xor x1(s,a,b,c);
  and a1(w1,a,b);
  and a2(w2,b,c);
  and a3(w3,c,a);
  or o1(cout,w1,w2,w3);
endmodule