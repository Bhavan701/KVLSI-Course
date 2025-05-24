// Code your design here
module priority4_2encoder(y,i);
  input  [3:0]i;
  output [1:0]y;
  assign y[1]=((i[3])?1'b1:((i[2])?1'b1:((i[1])?1'b0:((i[0])?1'b0:1'bx))));
  assign y[0]=((i[3])?1'b1:((i[2])?1'b0:((i[1])?1'b1:((i[0])?1'b0:1'bx))));
endmodule 