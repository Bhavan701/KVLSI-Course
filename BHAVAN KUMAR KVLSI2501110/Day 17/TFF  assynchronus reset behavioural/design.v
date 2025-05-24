// Code your design here
module t_ff (t,clk,rst,q);
  input t,clk,rst;
  output q;
  reg temp;
  assign q=temp;
  always @(posedge clk or posedge rst)
    begin 
      if(rst)
        temp<=0;
      else if(t)
        temp<=(~temp);
      else 
        temp<=temp;
    end
endmodule 