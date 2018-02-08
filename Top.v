module Top(
    input IN,
    input CLK, 
    input reset,
    output [3:0]digits,
    output [6:0] SEG 
);

wire [19:0]bnum;
wire [1:0]countout;
wire [15:0] BCD;
wire [3:0] LED_BCD;



CounterTop u1(
    .IN(IN),
    .CLK(CLK),
    .bnum(bnum)
);

BinaryToBCD u5(
    .bnum(bnum),
    .BCD(BCD)
);



    
Decoder u8(
    .CLK(CLK),
    .reset(reset),
    .BCD(BCD),
    .digits(digits),
    .LED_BCD(LED_BCD)
    );
    
BCDtoSevenSeg u9(
    .LED_BCD(LED_BCD),
    .SEG(SEG)
    );
       
endmodule