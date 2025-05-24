// Code your design here
module XOR_nand_2(y,a,b);
  input a,b;
  output y;
  wire w1,w2,w3;
  nand N1(w1,a,b);
  nand N2(w2,w1,a);
  nand N3(w3,w1,b);
  nand N4(y,w2,w3);
endmodule