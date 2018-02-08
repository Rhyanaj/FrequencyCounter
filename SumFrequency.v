//SumFrequency.v
//Developed by: Rhyan Johnson
//Sums on and off counts


module SumFrequency(
    input [19:0] on_count,
    input [19:0] off_count,
    output [19:0]sum
);
 assign sum = on_count + off_count;
 endmodule