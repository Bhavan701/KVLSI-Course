// Code your testbench here
// or browse Examples
module mux_21_test;
  reg i0,i1,s;
  wire y;
  mux_21 dut(y,i0,i1,s);
  initial begin
    s=1'b0;i0=1'b0;i1=1'b0;
 #5 s=1'b0;i0=1'b0;i1=1'b1;
 #5 s=1'b0;i0=1'b1;i1=1'b0;
 #5 s=1'b0;i0=1'b1;i1=1'b1;
 #5 s=1'b1;i0=1'b0;i1=1'b0;
 #5 s=1'b1;i0=1'b0;i1=1'b1;
 #5 s=1'b1;i0=1'b1;i1=1'b0;
 #5 s=1'b1;i0=1'b1;i1=1'b1;
  end
    initial begin 
    $monitor("sim time=%0t,i0=%b,i1=%b,s=%b,y=%b",$time,i0,i1,s,y);
    $dumpfile("dump.vcd");
      $dumpvars(1,mux_21_test);
  end 
endmodule