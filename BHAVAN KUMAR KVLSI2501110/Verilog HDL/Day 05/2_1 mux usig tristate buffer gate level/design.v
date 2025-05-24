// Code your design here
module mux_tristate(y,i0,i1,s);
  input i0,i1,s;
  output y;
  bufif0 b1(y,i0,s);
  bufif1 b2(y,i1,s);
endmodule