module CounterTop(
    input CLK,
    input IN,
    output [19:0]bnum
);

wire [19:0]on_count;
wire [19:0]off_count;
wire [19:0] sum;
wire [19:0] period;


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