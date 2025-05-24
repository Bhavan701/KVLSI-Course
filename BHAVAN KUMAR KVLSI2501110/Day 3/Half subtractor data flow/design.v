// Code your design here
module half_subtractor(a,b,diff,bor);
  input a,b;
  output diff,bor;
  assign diff=a^b;
  assign bor=(~a)&b;
endmodule