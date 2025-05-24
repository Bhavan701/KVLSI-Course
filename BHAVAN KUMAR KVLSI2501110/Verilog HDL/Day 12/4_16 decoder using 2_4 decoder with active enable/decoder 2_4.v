module decoder(i, en, d);
  input [1:0] i;
  input en;
  output reg [3:0] d;

  always @(i,en) begin
    if(en) begin
      case(i)
        2'b00: d = 4'b0001;
        2'b01: d = 4'b0010;
        2'b10: d = 4'b0100;
        2'b11: d = 4'b1000;
      endcase
    end else begin
      d = 4'b0000;
    end
  end
endmodule

