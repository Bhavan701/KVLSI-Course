// Code your testbench here
// or browse Examples
module mux_tristate_test;
  reg i0,i1,s;
  wire y;
  mux_tristate dut(y,i0,i1,s);
  initial begin
   /*s=1'b0;i0=1'b0;i1=1'b0;*/{s,i0,i1}=0;
#5 /*s=1'b0;i0=1'b0;i1=1'b1;*/{s,i0,i1}=1;
#5 /*s=1'b0;i0=1'b1;i1=1'b0;*/{s,i0,i1}=2;
#5 /*s=1'b0;i0=1'b1;i1=1'b1;*/{s,i0,i1}=3;
#5 /*s=1'b1;i0=1'b0;i1=1'b0;*/{s,i0,i1}=4;
#5 /*s=1'b1;i0=1'b0;i1=1'b1;*/{s,i0,i1}=5;
#5 /*s=1'b1;i0=1'b1;i1=1'b0;*/{s,i0,i1}=6;
#5 /*s=1'b1;i0=1'b1;i1=1'b1;*/{s,i0,i1}=7;
  end
    initial begin 
    $monitor("sim time=%0t,i0=%b,i1=%b,s=%b,y=%b",$time,i0,i1,s,y);
    $dumpfile("dump.vcd");
      $dumpvars(1,mux_tristate_test);
  end 
endmodule

