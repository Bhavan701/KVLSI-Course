module test;
  parameter depth = 64;
  parameter width = 8;
  parameter ADDR_WIDTH = $clog2(depth);

  reg clk, wr_en;
  reg [ADDR_WIDTH-1:0] addr;
  reg [width-1:0] data_in;
  wire [width-1:0] data_out;


  singleport_ram #(64,8,"No_change") dut (.clk(clk),.wr_en(wr_en),.addr(addr),.data_in(data_in),.data_out(data_out));

 
  always #5 clk = ~clk;

  initial begin
    clk = 0;
    
    wr_en = 1;
    for (int i=0; i<depth; i++) begin
      addr = i;
      data_in = i;   // preload with address index i.e initialization 
      @(posedge clk);
    end
    
    wr_en = 0;
    #10 addr = $random % depth;
    
    wr_en = 1;
    #10 data_in = $random % 256; addr = $random % depth;
    #10 data_in = $random % 256; addr = $random % depth;
    #10 data_in = $random % 256; addr = $random % depth;

    #10 wr_en = 0;
    #10 addr = $random % depth;
    #10 addr = $random % depth;
    #10 addr = $random % depth;

    #20 $finish;
  end
  
  initial begin
    $monitor("Time=%0t  wr_en=%b  addr=%0d  data_in=%0d  data_out=%0d",$time, wr_en, addr, data_in, data_out);
  end
endmodule
