module decoder2_4(y,i,w);
  input [1:0]i;
  output [3:0]y;
  input w;
  assign y[0]=((~i[1])&(~i[0])&(w));
  assign y[1]=((~i[1])&(i[0])&(w));
  assign y[2]=((i[1])&(~i[0])&(w));
  assign y[3]=((i[1])&(i[0])&(w));
endmodule