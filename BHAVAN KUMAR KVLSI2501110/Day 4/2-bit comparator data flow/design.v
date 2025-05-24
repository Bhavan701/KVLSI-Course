// Code your design here
module comparator_2(a1,a0,b1,b0,e,g,l);
  input a1,a0,b1,b0;
  output e,g,l;
  assign e=(~(a1^b1))&(~(a0^b0));
  assign g=(a1&(~b1))|(a1&(~b1)&(~b0))|(a1&a0&(~b0));
  assign l=((~a1)&b1)|((~a0)&b1&b0)|((~a1)&(~a0)&b0);
endmodule 
