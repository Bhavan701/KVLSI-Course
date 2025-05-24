// Code your design here
module piso(clk,rst,cnt,pi,so);
  input clk,rst,cnt;
  input [3:0]pi;
  output reg so;
  reg [3:0]temp;
  always @ (posedge clk)
    begin
      if (rst)
        temp<=0;
      else 
        begin
          if(cnt)
            temp<=pi;
          else 
            temp<={1'b0,temp[3:1]};
        end
      so<=temp[0];
    end
endmodule  