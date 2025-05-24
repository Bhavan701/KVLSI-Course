// Code your design here
module sr_latch(clk,rst,s,r,q);
  input clk,rst,s,r;
  output q;
  reg temp;
  assign q=temp;
  always @(clk,rst,s,r)
    begin
      if (clk)
        begin
          if(rst)
            temp<=0;
          else 
            begin
              if(s==0&&r==0)
                temp<=temp;
              else if (s==0&&r==1)
                temp<=0;
              else if (s==1&&r==0)
                temp<=1;
              else 
                temp<=1'bx;
            end
        end
      else 
        temp<=temp;
    end
endmodule 