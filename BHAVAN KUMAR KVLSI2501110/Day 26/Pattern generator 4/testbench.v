// Code your testbench here
// or browse Examples
module pattern;
  integer i, j,row=4;
  initial begin
    for (i=1;i<=row;i=i+1) 
      begin
        for (j=1;j<=row-i;j=j+1) 
        begin
        $write(" ");
      end
        for (j =1;j<=i;j=j+1)
        begin
          $write("%0d",j);
      end
      $display("");
    end
  end
endmodule