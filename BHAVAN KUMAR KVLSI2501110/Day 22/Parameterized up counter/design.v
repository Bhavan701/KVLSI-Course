// Code your design here
module counter_nbit#(parameter n=4)(clk,rst,count);
  input clk,rst;
  output reg [n-1:0]count;
  reg [n-1:0]temp;
  always @(posedge clk)
    begin
      if(rst)
        temp<=0;
      else 
        temp<=temp+1;
    end
    assign count=temp; 
endmodule 