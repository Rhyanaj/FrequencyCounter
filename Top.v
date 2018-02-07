module Top(
    input IN,
    input CLK, 
    input reset,
 output reg SEG
    
);
wire on_count;
wire off_count;
wire sum;
wire period;
wire bnum;
wire [15:0]BCD;
wire value;
wire countout;
wire [3:0]LED_BCD;
wire [3:0]digits;

FrequencyCounter u1(
    .IN(IN),
    .CLK(CLK),
    .on_count(on_count),
    .off_count(off_count)
);
SumFrequency u2(
    .on_count(on_count),
    .off_count(off_count),
    .sum(sum)
);
CalculatePeriod u3(
    .sum(sum),
    .period(period)
);
OutputFrequency u4(
    .period(period),
    .bnum(bnum)

);
BinaryToBCD u5(
    .bnum(bnum),
    .BCD(BCD)
);
TwoBitCounter u6(
    .CLK(CLK),
    .reset(reset),
    .countout(countout)
);
Decoder u7(
    .countout(countout),
    .BCD(BCD),
    .LED_BCD(LED_BCD),
    .digits(digits)
);
always@(*)
begin
  case(LED_BCD)
               4'b0000: SEG = 7'b1000000; // "0"
               4'b0001: SEG = 7'b1111001; // "1"
               4'b0010: SEG = 7'b0100100; // "2"
               4'b0011: SEG = 7'b0110000; // "3"
               4'b0100: SEG = 7'b0011001; // "4"
               4'b0101: SEG = 7'b0010010; // "5"
               4'b0110: SEG = 7'b0000010; // "6"
               4'b0111: SEG = 7'b1111000; // "7"
               4'b1000: SEG = 7'b0000000; // "8"
               4'b1001: SEG = 7'b0011000; // "9"
               default: SEG = 7'b1000000; // "0"
  endcase
end
endmodule
