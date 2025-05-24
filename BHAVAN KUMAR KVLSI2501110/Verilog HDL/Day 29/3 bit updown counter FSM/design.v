// Code your design here
module up_down3bit(clk,rst,cnt,y);
  input clk,rst,cnt;
  output reg [2:0] y;
  reg [2:0]ps,ns;
  parameter s0=3'd0;
  parameter s1=3'd1;
  parameter s2=3'd2;
  parameter s3=3'd3;
  parameter s4=3'd4;
  parameter s5=3'd5;
  parameter s6=3'd6;
  parameter s7=3'd7;
  always @(posedge clk)
    begin
      if(!rst)
        ps<=s0;
      else 
        ps<=ns;
    end
  always @(ps,cnt)
    begin
      case(ps)
        s0:if(cnt)
          begin
            ns<=s1;
            y<=3'd0;
          end
        else
          begin
            ns<=s7;
            y<=3'd0;
          end 
         s1:if(cnt)
          begin
            ns<=s2;
            y<=3'd1;
          end
        else
          begin
            ns<=s0;
            y<=3'd1;
          end 
         s2:if(cnt)
          begin
            ns<=s3;
            y<=3'd2;
          end
        else
          begin
            ns<=s1;
            y<=3'd2;
          end 
         s3:if(cnt)
          begin
            ns<=s4;
            y<=3'd3;
          end
        else
          begin
            ns<=s2;
            y<=3'd3;
          end 
         s4:if(cnt)
          begin
            ns<=s5;
            y<=3'd4;
          end
        else
          begin
            ns<=s3;
            y<=3'd4;
          end 
         s5:if(cnt)
          begin
            ns<=s6;
            y<=3'd5;
          end
        else
          begin
            ns<=s4;
            y<=3'd5;
          end 
         s6:if(cnt)
          begin
            ns<=s7;
            y<=3'd6;
          end
        else
          begin
            ns<=s5;
            y<=3'd6;
          end 
         s7:if(cnt)
          begin
            ns<=s0;
            y<=3'd7;
          end
        else
          begin
            ns<=s6;
            y<=3'd7;
          end 
        default: begin
          ns<=s0;
          y<=3'd0;
        end
      endcase
    end
endmodule 