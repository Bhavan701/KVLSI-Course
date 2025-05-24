// Code your testbench here
// or browse Examples
module pattern;
  integer i,j,N=5;
  initial begin
    for (i=1;i<=N;i=i+1) 
      begin
        for (j=1;j<=i;j=j+1) 
        begin
          $write("%0d",i);
      end
    end
  end
endmodule