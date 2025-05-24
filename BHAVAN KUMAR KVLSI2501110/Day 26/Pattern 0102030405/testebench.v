// Code your testbench here
// or browse Examples
/*module pattern;
  integer i,N=5;
  initial begin
    for (i=0;i<=9;i=i+1) 
      if (i%2==0)
        $write("%0d",0);
        else 
          $write("%0d",(i+1)/2);
      end
endmodule*/
module pattern();
  initial
    begin
      for (integer i = 1; i<=5; i++)
        begin
        $write("0%0d",i);
      end
    end
endmodule