// OutputFrequency.v
//Developed by: Rhyan Johnson
// Calculates Frequncy from period

module OutputFrequency(
    input [19:0]period,
    output [19:0]bnum
);


assign bnum = 1 / period;
endmodule 