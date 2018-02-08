// OutputFrequency.v
//Developed by: Rhyan Johnson
// Calculates Frequncy from period

module OutputFrequency(
    input [11:0]period,
    output [11:0]bnum
);


assign bnum = 1 / period;
endmodule 