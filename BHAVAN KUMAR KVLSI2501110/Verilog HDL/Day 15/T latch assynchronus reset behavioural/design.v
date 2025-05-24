// Code your design here
module t_latch(t,clk,rst,q);
  input t,clk,rst;
  output q;
  reg temp;
  assign q=temp;
  always @(t,clk,rst)
    begin 
      if (rst)
        temp<=0;
      else if(clk)
        temp<=temp;
      else if (t)
        temp<=(~temp);
      else
        temp<=temp;
    end 
endmodule 