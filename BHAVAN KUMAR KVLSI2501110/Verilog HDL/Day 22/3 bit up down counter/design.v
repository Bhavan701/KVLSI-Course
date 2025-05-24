// Code your design here
module up_down(count,clk,rst,cnt);
  input clk,rst,cnt;
  output [2:0]count;
  reg [2:0]temp;
  always @(posedge clk)
    begin 
      if (rst)
        temp<=0;
      else if (cnt)
        temp<=temp+1;
      else 
         temp<=temp-1;
    end 
  assign count=temp;
endmodule 