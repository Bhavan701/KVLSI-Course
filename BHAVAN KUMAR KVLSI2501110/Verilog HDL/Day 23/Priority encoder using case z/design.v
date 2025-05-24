// Code your design here
module priority_encoder(y,i);
  input [7:0]i;
  output reg [2:0]y;
  always @(i)
    begin
    casez(i)
      8'b0000_0001:y=3'd0;
      8'b0000_001z:y=3'd1;
      8'b0000_01zz:y=3'd2;
      8'b0000_1zzz:y=3'd3;
      8'b0001_zzzz:y=3'd4;
      8'b001z_zzzz:y=3'd5;
      8'b01zz_zzzz:y=3'd6;
      8'b1zzz_zzzz:y=3'd7;
      default:y=3'dx;
    endcase
    end
endmodule 