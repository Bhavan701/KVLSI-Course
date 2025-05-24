// Code your design here
module mux4_1(y,i,s);
  input [3:0]i;
  input [1:0]s;
  output y;
  assign y=(~(s[1])&(~(s[0]))&i[0])|(~(s[1])&s[0]&i[1])|(s[1]&(~(s[0]))&i[2])|(s[1]&s[0]&i[3]);
endmodule 