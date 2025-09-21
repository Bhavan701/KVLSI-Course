module singleport_ram#(parameter depth=64,width=8,mode="No_change")(clk,wr_en,addr,data_in,data_out);
  input clk,wr_en;
  input [$clog2(depth)-1:0]addr;
  input [width-1:0]data_in;
  output reg[width-1:0]data_out;
  reg [width-1:0]mem[0:depth-1];
  always @(posedge clk)
    begin
      case(mode)
        "Read_first":begin
          if(wr_en)
            begin
              data_out<=mem[addr];//reads old value 
              mem[addr]<=data_in;//then write 
            end 
          else 
            data_out<=mem[addr];//normall read 
        end
        
        "Write_first":begin
          if(wr_en)
            begin
              mem[addr]<=data_in;//write  new value 
              data_out<=data_in;// output new value 
            end 
          else 
            data_out<=mem[addr];//normal read 
        end
        
        default : begin
          if (wr_en)
            mem[addr]<= data_in;//write only, no read data
          else 
            data_out <= mem[addr];//read
        end 
      endcase
    end 
endmodule 