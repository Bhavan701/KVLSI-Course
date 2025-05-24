// Code your design here
module mux4_1ternary(y,i,s);
  input [3:0]i;
  input [1:0]s;
  output y;
  assign y=(s[1])?((s[0])?i[3]:i[2]):((s[0])?i[1]:i[0]);
endmodule 