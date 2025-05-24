// Code your design here
module t_latch(clk,rst,t,q);
  input clk,rst,t;
  output q;
  reg temp;
  assign q=temp;
  always @(clk,rst,t)
    begin
      if (clk)
        if (rst)
          temp<=0;
      else if (t)
        temp=~temp;
      else 
        temp<=temp;
    end
endmodule 