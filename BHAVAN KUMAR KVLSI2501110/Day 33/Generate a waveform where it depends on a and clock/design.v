// Code your design here
module clk_gen(clk,rst,a,q);
  input clk,rst,a;
  output reg q;
  always @(posedge clk,posedge a,negedge a)
    begin
      if (rst)
        q<=0;
      else if(a)
        begin
          if (clk)
          q<=1;
        end
      else if (!a)
        q<=0;
      else 
        q<=q;
    end
endmodule 