// Code your design here
module even_odd(a,even,odd);
  input [15:0]a;
  output even,odd;
  assign even = (!a[0])?1'b1:1'b0;
  assign odd = (a[0])?1'b1:1'b0;
endmodule 