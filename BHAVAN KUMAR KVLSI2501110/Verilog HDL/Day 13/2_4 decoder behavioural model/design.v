// Code your design here
module decoder2_4(y,i);
  input [1:0]i;
  output reg [3:0]y;
  always @(i)
    begin
    y[0]=(~i[1])&(~i[0]);
    y[1]=(~i[1])&(i[0]);
    y[2]=(i[1])&(~i[0]);
    y[3]=(i[1])&(i[0]);
    end 
endmodule 