// Code your testbench here
// or browse Examples
module priority_encoder_test;
  reg [7:0]i;
  wire [2:0]y;
  integer a;
  priority_encoder dut(y,i);
  initial begin 
    i=8'b00z1_x000;
    #5   i=8'b000?_000x;
    #5   i=8'b000x_0?00;
    #5;
    for(integer a=0;a<256;a=a+1)
      begin 
        i=a;
        #5;
      end 
  end 
  initial begin 
    $monitor("sim time=%0t,i=%b,y=%d",$time,i,y);
  end 
endmodule 

