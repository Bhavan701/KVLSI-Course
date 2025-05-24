// Code your design here
module melay10110(clk,rst,a,y);
  input clk,rst,a;
  output reg y;
  reg[2:0] ps,ns;
  parameter idle = 3'b000;
  parameter s1= 3'b001;
  parameter s10= 3'b010;
  parameter s101= 3'b011;
  parameter s1011= 3'b100;
  always@(posedge clk)
	begin
	if(!rst)
	ps<= idle;
	else 
	ps<= ns;
	end
  always@(a,ps)
	begin
    case(ps)
      idle: if(a) begin
		ns= s1;
		y= 0;
		end
	     else begin
		ns= idle;
		y= 0;
		end
      s1: if(a) begin
		ns= s1;
		y= 0;
		end
	     else begin
		ns= s10;
		y= 0;
		end
      s10: if(a) begin
		ns= s101;
		y= 0;
		end
	     else begin
		ns= s10;
		y= 0;
		end
      s101: if(a) begin
		ns= s1011;
		y= 0;
		end
	     else begin
		ns= s10;
		y= 0;
		end
      s1011: if(a) begin
		ns= s1;
		y= 0;
		end
	     else begin
		ns= s10;
		y= 1;
		end

	default: begin
		ns= idle;
		y= 0;
		end
	endcase
	end
endmodule