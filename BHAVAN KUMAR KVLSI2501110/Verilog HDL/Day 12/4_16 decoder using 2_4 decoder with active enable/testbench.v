// Code your testbench here
// or browse Examples
module decoder_test;
  reg [3:0]i;
  wire [15:0]d;
  decoder4_16 dut(i,w,d);
  initial begin
    for( integer c=0;c<16;c++)
      begin
        {i[3],i[2],i[1],i[0]}=c;
        #2;
      end
    end
    initial begin
      $monitor("simtime=%0t,i=%b,d=%b",$time,i,d);
    end
    initial begin
      $dumpfile("dump.vcd");
      $dumpvars(0,i,d);
    end
    endmodule