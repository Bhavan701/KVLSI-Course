// Code your design here
module frequency_devider#(parameter n=5)(clk,rst,clk_out);//50%duty cycle  i.e f/5
  input clk,rst;
  output clk_out;
  reg int_clk;
  integer count;
  assign clk_out=int_clk;
  always @(posedge clk or negedge clk)//always@(clk)
    begin
      if(rst)
        begin  
        count=0;
        int_clk=0;
        end
      else 
        begin
          count=count+1;
          if(count%n==0)
            begin
              int_clk=~int_clk;
              count=0;
            end     
        end 
    end     
endmodule 