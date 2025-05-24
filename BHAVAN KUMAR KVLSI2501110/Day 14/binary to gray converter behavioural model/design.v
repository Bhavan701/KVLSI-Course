// Code your design here
module binary4_gray(g,b);
  input [2:0]b;
  output reg [2:0]g;
  always @(b)
    begin
   g[2]=b[2];
   g[1]=b[2]^b[1];
   g[0]=b[1]^b[0];
    end 
endmodule