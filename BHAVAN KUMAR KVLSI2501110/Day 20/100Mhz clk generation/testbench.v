// Code your testbench here
// or browse Examples
module test;
  reg clk;
  real freq = 100;//100 Mhz
  real time_period;
  initial begin 
    clk=0;
    time_period=(1000/freq);//converted 100 Mhz to ns
    #50 $finish;
  end 
  always
    begin
    // #(time_period/2) clk=~clk;//time period of 10ns with 50% duty cycle
   #8 clk=1;//20% duty cycle
   #2 clk=0;
    end
  initial begin 
    $dumpfile ("dump.vcd");
    $dumpvars (1,clk);
  end 
endmodule 