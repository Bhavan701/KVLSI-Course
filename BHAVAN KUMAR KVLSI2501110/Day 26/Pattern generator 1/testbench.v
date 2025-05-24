// Code your testbench here
// or browse Examples
module pattern;
  integer row,i,j;
  initial begin 
    row=4;
    for(i=1;i<row+1;i++)
      begin
      for(j=1;j<=i;j++)
        begin
        $write("*");
        end
        $display ("");
      end
  end
endmodule 
    
        