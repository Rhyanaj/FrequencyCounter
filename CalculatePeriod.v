// CalculatePeriod.v
// Developed by: Rhyan Johnson
// Calculates Period 

module CalculatePeriod(
    input [19:0] sum,
    output [19:0] period
);
assign period = sum / 100000000 ;
endmodule