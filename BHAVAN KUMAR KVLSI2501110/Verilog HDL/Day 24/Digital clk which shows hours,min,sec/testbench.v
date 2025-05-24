// Code your testbench here
// or browse Examples
module digital_clk_test;
  reg clk,rst;
  wire [3:0]hour;
  wire [5:0]minute;
  wire [5:0]second;
  digital_clk dut(clk,rst,hour,minute,second);
  initial begin
    clk=0;rst=1;
    #10 rst=0;
    #432000 $finish;
  end
  always 
    #5 clk=~clk;
  initial begin
    $display("Time H:M:S");
    $monitor("%0t %0d:%0d:%0d", $time, hour, minute, second);
   
  end
endmodule 