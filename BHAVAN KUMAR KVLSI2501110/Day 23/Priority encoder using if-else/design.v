// Code your design here
module priority_encoder(y,i);
  input [7:0]i;
  output reg [2:0]y;
  always @(i)
    begin
      if (i[7])
        y=3'd7;
      else if (i[6])
        y=3'd6;
      else if (i[5])
        y=3'd5;
      else if (i[4])
        y=3'd4;
      else if (i[3])
        y=3'd3;
      else if (i[2])
        y=3'd2;
      else if (i[1])
        y=3'd1;
      else if (i[0])
        y=3'd0;
      else
      y=3'dx;
    end
endmodule 