module Top(
    input IN,
    input CLK, 
    output [3:0]digits,
    output [6:0] SEG 
);

wire [11:0]bnum;
wire [1:0]countout;
wire [15:0] BCD;
wire [3:0] LED_BCD;
wire TwoBitCLK;


CounterTop u1(
    .IN(IN),
    .CLK(CLK),
    .bnum(bnum)
);

BinaryToBCD u5(
    .bnum(bnum),
    .BCD(BCD)
);

LowerFrequency u6(
    .CLK(CLK),
    .TwoBitCLK(TwoBitCLK)
);
TwoBitCounter u7(
    .TwoBitCLK(TwoBitCLK),
    .countout(countout)
    );
    
Decoder u8(
    .countout(countout),
    .BCD(BCD),
    .digits(digits),
    .LED_BCD(LED_BCD)
    );
    
BCDtoSevenSeg u9(
    .LED_BCD(LED_BCD),
    .SEG(SEG)
    );
       
endmodule