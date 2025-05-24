// Code your testbench here
// or browse Examples
//1*********************************directed approach********************
/*module test;
  reg clk ;
  initial begin
    clk=0;
    #5 clk=1;
    #5 clk=0;
    #5 clk=1;
    #5 clk=0;
    #5 clk=1;
  end
  initial begin 
    $dumpfile("dump.vcd");
    $dumpvars(0,clk);
  end
endmodule */
//2***************************alwaysloop*********************************
/*module test;
  reg clk ;
  initial begin
    clk=0;
    #20 $finish;
  end
  always 
    #5 clk=~clk;
  initial begin 
    $dumpfile("dump.vcd");
    $dumpvars(0,clk);
  end
endmodule */
//3**************************forever loop********************************
/*module test;
  reg clk;
  initial begin
    clk=0;
    forever 
    #5 clk=~clk;
  end
  initial begin 
    $dumpfile("dump.vcd");
    $dumpvars(0,clk);
    #20 $finish;
  end
endmodule*/
//4****************************for loop***********************************
/*module test;
  reg clk;
  integer i;
  initial begin
    clk=0;
    for(i=0; ; i=i+1) 
      #5 clk=~clk; 
  end
  initial begin 
    $dumpfile("dump.vcd");
    $dumpvars(0,clk);
     #20 $finish;
  end
endmodule */
//5*******************************while loop*******************************
/*module test;
  reg clk;
  initial begin
    clk=0;
    while (1)
      #5 clk=~clk; 
  end
  initial begin 
    $dumpfile("dump.vcd");
    $dumpvars(0,clk);
     #20 $finish;
  end
endmodule */
//6********************************not gate test **************************
/*module test;
  reg a;
  wire y;
  not1 dut(a,y);
  initial begin
    a=0;
    #20 $finish;
  end
  always 
    #5 a=y;
  initial begin 
    $dumpfile("dump.vcd");
    $dumpvars(1,test);
  end
endmodule */
//7****************************xor gate test********************************
/*module test;
  reg a;
  wire y;
  xor1 dut(a,b,y);
  initial begin
    a=0;
    #20 $finish;
  end
  always 
    #5 a=y;
  initial begin 
    $dumpfile("dump.vcd");
    $dumpvars(1,test);
  end
endmodule*/
//8****************************xnor gate test********************************
/*module test;
  reg a;
  wire y;
  xnor1 dut(a,b,y);
  initial begin
    a=0;
    #20 $finish;
  end
  always 
    #5 a=y;
  initial begin 
    $dumpfile("dump.vcd");
    $dumpvars(1,test);
  end
endmodule*/
//9******************************or gate and not gate *********************
/*module test;
  reg a;
  wire y;
  or_not dut(a,b,y);
  initial begin
    a=0;
    #20 $finish;
  end
  always 
    #5 a=y;
  initial begin 
    $dumpfile("dump.vcd");
    $dumpvars(1,test);
  end
endmodule*/
//10******************************and gate and not gate *********************
module test;
  reg a;
  wire y;
  and_not dut(a,b,y);
  initial begin
    a=0;
    #20 $finish;
  end
  always 
    #5 a=y;
  initial begin 
    $dumpfile("dump.vcd");
    $dumpvars(1,test);
  end
endmodule