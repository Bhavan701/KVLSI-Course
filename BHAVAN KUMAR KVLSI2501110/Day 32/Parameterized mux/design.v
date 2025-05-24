// Code your design here
module parameterized_mux#(parameter n=8)(i,s,y);
  input [n-1:0]i;
  input [$clog2(n)-1:0]s;
  output reg y;
  integer x,j;
  always @(s,i)
    begin
      y=i[s];
    end
endmodule 