// Code your design here
module mux2_1nand(y,i0,i1,s);
  input i0,i1,s;
  output y;
  wire w1,w2,w3;
  nand n1(w1,s);
  nand n2(w2,i0,i1);
  nand n3(w3,i1,s);
  nand n4(y,w2,w3);
endmodule 
