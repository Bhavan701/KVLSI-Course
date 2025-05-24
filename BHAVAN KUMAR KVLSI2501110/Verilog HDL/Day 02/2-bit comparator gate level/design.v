// Code your design here
module comparator_2(a1,a0,b1,b0,e,g,l);
  input a1,a0,b1,b0;
  output e,g,l;
  wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12;
  not n1(w1,a1);
  not n2(w2,a0);
  not n3(w3,b1);
  not n4(w4,b0);
  xnor x1(w5,a1,b1);
  xnor x2(w6,a0,b0);
  and A1(e,w5,w6);
  and A2(w7,a1,w3);
  and A3(w8,a0,w3,w4);
  and A4(w9,a1,a0,w4);
  or o1(g,w7,w8,w9);
  and A5(w10,w1,b1);
  and A6(w11,w2,b1,b0);
  and A7(w12,w1,w2,b0);
  or o2(l,w10,w11,w12);
endmodule