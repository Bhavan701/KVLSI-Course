module sr_fsm(clk,rst,s,r,y);
  input clk,rst,s,r;
  output reg y;
  reg [2:0] ps,ns;
  parameter s0=1'b0;
  parameter s1=1'b1;
  parameter s2=1'bx;
  always @(posedge clk)
    begin
      if (rst)
        ps<=s0;
      else 
        ps<=ns;
    end
  always @(ps,s,r)
    begin
      case(ps)
        s0:begin
          case({s,r})
            2'b00:ns<=s0;
            2'b01:ns<=s0;
            2'b10:ns<=s1;
            2'b11:ns<=s2;
          endcase
          y<=1'b0;
        end
        s1:begin
          case({s,r})
            2'b00:ns<=s1;
            2'b01:ns<=s0;
            2'b10:ns<=s1;
            2'b11:ns<=s2;
          endcase
          y<=1'b1;
        end
         s2:begin
           case({s,r})
            2'b00:ns<=s2;
            2'b01:ns<=s0;
            2'b10:ns<=s1;
            2'b11:ns<=s2;
          endcase
          y<=1'bx;
        end
        default:begin
          ns<=s0;
          y<=0;
        end
      endcase
    end
endmodule 
         