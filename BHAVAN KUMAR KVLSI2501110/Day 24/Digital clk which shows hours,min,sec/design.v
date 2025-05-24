// Code your design here
module digital_clk (
    input clk,
    input rst,
    output reg [3:0] hour,
    output reg [5:0] minute,
    output reg [5:0] second
);

    always @(posedge clk)
      begin
        if (rst)
          begin
            hour   <= 0;
            minute <= 0;
            second <= 0;
        end
      else
        begin
            if (second == 6'd59)
              begin
                second <= 0;
                if (minute == 6'd59)
                  begin
                    minute <= 0;
                    if (hour == 4'd11)
                        hour <= 0;
                  else
                        hour <= hour + 1;
                end
                else
                    minute <= minute + 1;
            end
          else
                second <= second + 1;
        end
    end
endmodule
