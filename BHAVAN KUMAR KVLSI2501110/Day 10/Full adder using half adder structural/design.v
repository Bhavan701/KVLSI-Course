// Code your design here
`include "HA.v"
module Full_adder(a,b,cin,sum,cout);
  input a,b,cin;
  output sum,cout;
  wire w1,w2,w3;
  Half_adder h1(a,b,w1,w2);
  Half_adder h2(w1,cin,sum,w3);
  assign cout=w2|w3;
endmodule 