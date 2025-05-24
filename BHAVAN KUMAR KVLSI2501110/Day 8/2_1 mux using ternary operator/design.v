// Code your design here
module mux2_1ternary(y,i,s);
  input [1:0]i;
  input s;
  output y;
  assign y=(s)?i[1]:i[0];
endmodule 
