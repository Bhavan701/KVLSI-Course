module decoder1_2(y,i);
  input i;
  output [1:0]y;
  assign y[0]=(~i);
  assign y[1]=i;
endmodule