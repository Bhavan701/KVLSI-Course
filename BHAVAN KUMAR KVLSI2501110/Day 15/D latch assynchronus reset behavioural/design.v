// Code your design here
module d_latch(clk,rst,d,q);
  input clk,rst,d;
  output reg q;
  always @(clk,rst,d)
    begin
      if (rst)
        q<=0;
      else if (clk)
        q<=d;
      else 
        q<=q;
    end
endmodule 
        