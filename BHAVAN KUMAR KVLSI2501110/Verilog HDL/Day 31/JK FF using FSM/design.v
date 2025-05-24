module JK_fsm(clk,rst,j,k,y);
  input clk,rst,j,k;
  output reg y;
  reg ps,ns;
  parameter s0=1'b0;
  parameter s1=1'b1;
  always @(posedge clk)
    begin
      if (rst)
        ps<=s0;
      else 
        ps<=ns;
    end
  always @(ps,j,k)
    begin
      case(ps)
        s0:if((j==1&&k==0)||(j==1&&k==1))
          begin
            ns<=s1;
            y<=1;
          end
        else 
          begin
            ns<=s0;
            y<=0;
          end
        s1:if((j==0&&k==1)||(j==1&&k==1))
         begin
            ns<=s0;
            y<=0;
          end
        else
          begin
            ns<=s1;
            y<=1;
          end
        default:begin
          ns<=s0;
          y<=0;
        end
      endcase
    end
endmodule 