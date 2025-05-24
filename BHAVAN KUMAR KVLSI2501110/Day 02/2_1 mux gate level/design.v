// Code your design here
module mux_21(y,i0,i1,s);
  input i0,i1,s;
  output y;
  wire w1,w2,w3;
  not n1(w1,s);
  and a1(w2,i0,w1);
  and a2(w3,i1,s);
  or o1(y,w2,w3);
endmodule