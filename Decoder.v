//Decoder
//Developed by Rhyan Johnson
//Decoder to set the placement of the 7 segment display

module Decoder(
    input CLK,
    input [15:0]BCD,
    input reset,
    output reg [3:0]digits,
    output reg [3:0]LED_BCD
);
reg [20:0] refresh_counter;
wire [1:0]countout;
    always @(posedge CLK)
         begin
            case(reset)
            1'b1: refresh_counter <= 0;
            default: refresh_counter <= refresh_counter + 1;
            endcase
         end

    assign countout = refresh_counter[20:19];
 always @(*)
 
     begin
          case(countout)
               2'b00: begin
                    digits = 4'b0111;
                    LED_BCD = BCD[15:12];
               end
               2'b01: begin
                    digits = 4'b1011;
                    LED_BCD = BCD[11:8];
               end
               2'b10: begin
                    digits = 4'b1101;                 
                    LED_BCD = BCD[7:4];
               end
               2'b11: begin
                    digits = 4'b1110;
                    LED_BCD = BCD[3:0];
               end
          endcase
     end
endmodule