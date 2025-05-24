// Code your design here
module frequency_devider#(parameter N=5)(clk,rst,clk_out);
  input clk,rst;
  output clk_out;
  reg int_clk;
  integer count;
  assign clk_out = int_clk;
  task freq_devi();
    begin
      count=count+1;
      if (count%N==0)
        begin
          int_clk=~int_clk;
          count=0;
        end
    end
  endtask
  always @(posedge clk or negedge clk)
    begin 
      if (rst)
        begin
          int_clk=0;
          count=0;
        end
      else 
        begin
          freq_devi();
        end
      end
endmodule 
    
    
  
  
      