// Code your design here
module counter(clk,rst,count);
  input clk,rst;
  output [3:0]count;
  reg [3:0]temp;
  always @(posedge clk)
    begin 
      if (rst)
        temp<=0;
      else if (temp==4'd9)
        temp<=0;
      else 
        temp<=temp+1;
    end 
  assign count=temp;
endmodule 