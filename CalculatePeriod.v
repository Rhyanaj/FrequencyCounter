// CalculatePeriod.v
// Developed by: Rhyan Johnson
// Calculates Period 

module CalculatePeriod(
    input [11:0] sum,
    output [11:0] period
);
assign period = sum / 100000000 ;
endmodule