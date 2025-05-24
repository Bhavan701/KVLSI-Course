// Code your testbench here
// or browse Examples
module comparator_2_test;
  reg a1,a0,b1,b0;
  wire e,g,l;
  comparator_2 dut(a1,a0,b1,b0,e,g,l);
  initial begin
    a1=1'b0;a0=1'b0;b1=1'b0;b0=1'b0;
#5  a1=1'b0;a0=1'b0;b1=1'b0;b0=1'b1;
#5  a1=1'b0;a0=1'b0;b1=1'b1;b0=1'b0;
#5  a1=1'b0;a0=1'b0;b1=1'b1;b0=1'b1;
#5  a1=1'b0;a0=1'b1;b1=1'b0;b0=1'b0;
#5  a1=1'b0;a0=1'b1;b1=1'b0;b0=1'b1;
#5  a1=1'b0;a0=1'b1;b1=1'b1;b0=1'b0;
#5  a1=1'b0;a0=1'b1;b1=1'b1;b0=1'b1;
#5  a1=1'b1;a0=1'b0;b1=1'b0;b0=1'b0;
#5  a1=1'b1;a0=1'b0;b1=1'b0;b0=1'b1;
#5  a1=1'b1;a0=1'b0;b1=1'b1;b0=1'b0;
#5  a1=1'b1;a0=1'b0;b1=1'b1;b0=1'b1;
#5  a1=1'b1;a0=1'b1;b1=1'b0;b0=1'b0;
#5  a1=1'b1;a0=1'b1;b1=1'b0;b0=1'b1;
#5  a1=1'b1;a0=1'b1;b1=1'b1;b0=1'b0;  
#5  a1=1'b1;a0=1'b1;b1=1'b1;b0=1'b1;
  end
  initial begin
    $monitor("sim time=%0t,a1=%b,a0=%b,b1=%b,b0=%b,e=%b,g=%b,l=%b",$time,a1,a0,b1,b0,e,g,l);
    $dumpfile("dump.vcd");
    $dumpvars(0,comparator_2_test);
  end 
endmodule