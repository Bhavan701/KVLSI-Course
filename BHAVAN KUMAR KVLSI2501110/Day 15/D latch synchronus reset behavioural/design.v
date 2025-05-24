// Code your design here
module d_latch (rst,clk,d,q);
  input rst,clk,d;
  output reg q;
  always @(rst,clk,d)
    begin
      if(clk)
        if(rst)
          q<=1'b0;
      else
        q<=d;
      else
        q<=q;
    end
endmodule  