// Code your design here
module clock_generator (rst,clk);
  input rst;
  output reg clk;
  reg int_clk;
  assign clk=int_clk;
  task cg();
    begin 
      if (rst)
        int_clk=0;
      else 
        int_clk=~int_clk;
      #2;
    end
    endtask
  always
    begin
    cg();
    end
endmodule 