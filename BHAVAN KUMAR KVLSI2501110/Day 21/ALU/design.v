// Code your design here
module alu(cntr,a,b,y);
  input  [3:0]cntr;     
  input  [3:0]a;
  input  [3:0]b;        
  output reg [7:0]y;      

  always @(cntr,a,b) 
  begin
    if (cntr == 4'b0000)
        y = a + b;
    else if (cntr == 4'b0001)
        y = a - b;
    else if (cntr == 4'b0010)
        y = a * b;
    else if (cntr == 4'b0011)
        y = a / b;
    else if (cntr == 4'b0100)
        y = a & b;
    else if (cntr == 4'b0101)
        y = a | b;
    else if (cntr == 4'b0110)
        y = a ^ b;
    else if (cntr == 4'b0111)
        y = ~a;
    else if (cntr == 4'b1000)
        y = a << 1;
    else if (cntr == 4'b1001)
        y = a >> 1;
    else if (cntr == 4'b1010)
        y = (a > b);
    else if (cntr == 4'b1011)
        y = (a < b);
    else if (cntr == 4'b1100)
        y = (a === b);
    else
        y = 8'b0;
end

endmodule
