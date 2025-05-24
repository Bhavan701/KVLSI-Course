// Code your testbench here
// or browse Examples
`timescale 1ns/1ps;
//****************************************3ns time period*******************************************
/*module test;
  reg clk;
  initial begin
    clk=0;
    #20 $finish;
  end
  always
    #1.5 clk=~clk;
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,clk);
  end
endmodule*/
//****************************************5ns time period*****************************************
/*module test;
  reg clk;
  initial begin
    clk=0;
    #20 $finish;
  end
  always
    #2.5 clk=~clk;
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,clk);
  end
endmodule */
//*******************************************0.5ns or 500ps time period*********************************
module test;
  reg clk;
  initial begin
    clk=0;
    #20 $finish;
  end
  always
    #0.25 clk=~clk;
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,clk);
  end
endmodule 