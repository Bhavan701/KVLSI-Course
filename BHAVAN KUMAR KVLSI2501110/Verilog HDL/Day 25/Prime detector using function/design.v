// Code your design here
module prime_detector(input [31:0] a);
 reg prime;

  function  prime_fun (input [31:0] a);
    integer i;
    begin
      if (a<2)
        prime_fun = 0;
      else begin
        prime_fun = 1;
        for (i = 2; i <= a/2; i = i + 1) begin
          if (a % i == 0)
            prime_fun = 0;
        end
      end
    end
  endfunction

  always @(a) begin
    prime = prime_fun(a);
     if (prime)
      $display("%0d is a prime", a);
    else
      $display("%0d is not a prime", a);
  end
endmodule