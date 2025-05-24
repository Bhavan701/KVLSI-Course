// Code your design here
module mux2_1(s,i,y);
  input s;
  input [1:0]i;
  output reg y;
  always @(s,i)
    begin 
      y=(s)?i[1]:i[0];
    end 
endmodule