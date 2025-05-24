// Code your testbench here
// or browse Examples
module  melay10110_test;
	reg a,clk,rst;
	wire y;

melay10110 dut(clk,rst,a,y);
	initial begin

	clk= 0;
	rst= 0;
	#12 rst= 1;
	a= 1;
	#10 a= 0;
	#10 a= 1;
	#10 a= 1;
	#10 a= 0;
	#20 $finish;
	end

	always #5 clk= ~clk;
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,clk,rst,a,y);
  end

endmodule