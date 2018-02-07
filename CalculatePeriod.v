// CalculatePeriod.v
// Developed by: Rhyan Johnson
// Calculates Period 

module CalculatePeriod(
    input sum,
    output period
);


assign period = sum / 100000000;
endmodule