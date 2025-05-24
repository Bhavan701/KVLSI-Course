// Code your testbench here
// or browse Examples
module decoder3_8_test;
  reg [2:0]i;
  wire [7:0]y;
  decoder3_8 dut(y,i);
  initial begin
       i=3'd0;
    #5 i=3'd1;
    #5 i=3'd2;
    #5 i=3'd3;
    #5 i=3'd4;
    #5 i=3'd5;
    #5 i=3'd6;
    #5 i=3'd7;
  end
  initial begin 
    $monitor("sim time=%0t,i=%b,y=%b",$time,i,y);
    $dumpfile("dump.vcd");
    $dumpvars(1,decoder3_8_test);
  end
endmodule