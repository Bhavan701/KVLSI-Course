// Code your design here
module up3counter(count,clk,rst);
  input clk,rst;
  output [2:0]count;
  reg [2:0]temp;
  always @(posedge clk or posedge rst)
    begin
      if (!rst)
        temp<=0;
      else 
        temp<=temp+1;
    end 
  assign count=temp;
endmodule 

        