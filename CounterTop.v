module CounterTop(
    input CLK,
    input IN,
    output [11:0]bnum
);

wire [11:0]on_count;
wire [11:0]off_count;
wire [11:0] sum;
wire [11:0] period;


FrequencyCounter u1(
    .CLK(CLK),
    .IN(IN),
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


endmodule