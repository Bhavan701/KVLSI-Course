// Code your design here
module counterup_down #(parameter n=4)(clk,rst,cnt,count);
  input clk,rst,cnt;
  output [n-1:0]count;
  reg [n-1:0]temp;
  always @(posedge clk)
    begin
      if(rst)
        temp<=0;
      else if (cnt==1) 
        temp= temp+1;
      else 
        temp= temp-1;
    end
  assign count=temp;
endmodule 