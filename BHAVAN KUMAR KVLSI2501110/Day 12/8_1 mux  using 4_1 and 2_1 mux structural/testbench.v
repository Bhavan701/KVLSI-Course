// Code your testbench here
// or browse Examples
module mux8_1_test;
  reg [7:0]i;
  reg [2:0]s;
  wire y;
  mux8_1 dut(i,s,y);
  initial begin
       {s,i}={3'd0,8'b1};
    #5 {s,i}={3'd1,8'b10};
    #5 {s,i}={3'd2,8'b100};
    #5 {s,i}={3'd3,8'b1000};
    #5 {s,i}={3'd4,8'b10000};
    #5 {s,i}={3'd5,8'b100000};
    #5 {s,i}={3'd6,8'b1000000};
    #5 {s,i}={3'd7,8'b10000000};
  end
  initial begin 
    $monitor("sim time=%0t,i=%b,s=%b,y=%b",$time,i,s,y);
    $dumpfile("dump.vcd");
    $dumpvars(1,mux8_1_test);
  end
endmodule