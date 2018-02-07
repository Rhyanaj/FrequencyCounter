//SumFrequency.v
//Developed by: Rhyan Johnson
//Sums on and off counts


module SumFrequency(
    input on_count, off_count,
    output sum
);

 assign sum = on_count + off_count;
 endmodule