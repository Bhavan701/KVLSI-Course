// Code your design here
`include "mux.v"
module Full_adder(a,b,sum,cin,cout);
  input a,b,cin;
  output sum,cout;
  mux4_1 m1({cin,(~cin),(~cin),cin},{a,b},sum);
  mux4_1 m2({1'b1,cin,cin,1'b0},{a,b},cout);
endmodule 
  