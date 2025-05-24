// Code your design here
module mux2_1(y,i0,i1,s);
  input i0,i1,s;
  output y;
  assign y=((~s)&i0)|(s&i1);
endmodule