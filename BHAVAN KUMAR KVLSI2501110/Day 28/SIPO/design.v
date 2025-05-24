// Code your design here
module sipo(clk,rst,si,po);
  input clk,rst,si;
  output reg [3:0] po;
  reg [3:0] temp;
  always @(posedge clk or posedge rst)            
    begin
      if(rst)
        temp<=0;
      else
          temp<={si,temp[3:1]};
      po<=temp;
    end
endmodule 