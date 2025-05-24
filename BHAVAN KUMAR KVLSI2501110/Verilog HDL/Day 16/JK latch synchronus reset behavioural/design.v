// Code your design here
module jk_latch(clk,rst,j,k,q);
  input clk,rst,j,k;
  output q;
  reg temp;
  assign q=temp;
  always @(clk,rst,j,k)
    begin
      if (clk)
        begin
          if(rst)
            temp<=0;
          else 
            begin
              if (j==0&&k==0)
                temp<=temp;
              else if (j==0&&k==1)
                temp<=0;
              else if (j==1&&k==0)
                temp<=1;
              else
                temp<=(~temp);
            end
        end
      else
        temp<=temp;
    end 
endmodule