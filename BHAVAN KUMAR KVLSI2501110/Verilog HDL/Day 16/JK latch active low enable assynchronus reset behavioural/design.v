// Code your design here
module jk_latch(j,k,clk,rst,q);
  input clk,rst,j,k;
  output q;
  reg temp;
  assign q=temp;
  always @ (clk,rst,j,k)
    begin
      if (!rst)
        temp<=0;
      else if (clk)
        begin 
          if (j==0 && k==0)
            temp<=temp;
          else if (j==0 && k==0)
            temp<=0;
          else if (j==1 && k==0)
            temp<=1;
          else
            temp<=~temp;
        end
      else 
        temp<=temp;
    end 
endmodule 