// Code your design here
module siso(clk,rst,sin,sout);
  input clk,rst,sin;
  output sout;
  reg [3:0] temp;
  assign sout=temp[0];
  always @(posedge clk)
    begin
      if (rst)
        temp<=0;
      else 
        temp<={sin,temp[3:1]};
    end
endmodule