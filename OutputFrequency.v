// OutputFrequency.v
//Developed by: Rhyan Johnson
// Calculates Frequncy from period

module OutputFrequency(
    input period,
    output bnum
);


assign bnum = 1 / period;
endmodule 