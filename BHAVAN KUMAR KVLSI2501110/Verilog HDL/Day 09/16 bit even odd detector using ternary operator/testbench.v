// Code your testbench here
// or browse Examples
module even_odd_test;
  reg [15:0]a;
  wire even,odd;
  even_odd dut(a,even,odd);
  initial begin 
   a=15'b0;
#5 a=15'b1;
#5 a=15'hff;
#5 a=15'b1101;
#5 a=15'd24;
#5 a=15'd11;  
  end 
  initial begin 
    $monitor("sim tim=%0t,a=%b,even=%b,odd=%b",$time,a,even,odd);
    $dumpfile("dump.vcd");
    $dumpvars(1,even_odd_test);
  end 
endmodule 