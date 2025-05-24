// Code your design here
module  fsm0257(clk,rst,y);
  input clk,rst;
  output reg [2:0]y;
  reg [1:0]ps,ns;
  parameter s0=3'd0;
  parameter s2=3'd1;
  parameter s5=3'd2;
  parameter s7=3'd3;
  always @(posedge clk)
    begin
      if(rst)
        ps<=0;
      else 
        ps<=ns;
    end
  always @(ps)
    begin
      case(ps)
        s0:begin
          ns<=s2;
          y<=3'd0;
        end
        s2:begin
          ns<=s5;
          y<=3'd2;
        end
        s5:begin
          ns<=s7;
          y<=3'd5;
        end
        s7:begin
          ns<=s0;
          y<=3'd7;
        end
        default:begin
          ns<=s0;
          y<=3'd0;
        end
      endcase
    end
endmodule 
        