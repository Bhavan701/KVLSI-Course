// Code your testbench here
// or browse Examples
module priority4_2encoder_test;
  reg  [3:0]i;
  wire [1:0]y;
  priority4_2encoder dut(y,i);
  initial begin 
   i=4'h0;
#5 i=4'h1;
#5 i=4'h2;
#5 i=4'h3;
#5 i=4'h4;
#5 i=4'h5;
#5 i=4'h6;
#5 i=4'h7;
#5 i=4'h8;
#5 i=4'h9;
#5 i=4'ha;
#5 i=4'hb;
#5 i=4'hc;
#5 i=4'hd;
#5 i=4'he;
#5 i=4'hf;
  end 
  initial begin 
    $monitor("sim time=%0t,i=%b,y=%b",$time,i,y);
    $dumpfile("dump.vcd");
    $dumpvars(1,priority4_2encoder_test);
  end
endmodule 