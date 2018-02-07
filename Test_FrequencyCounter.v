// Test Frequency Counter
//Developed by: Rhyan Johnson
//test frequency counter module

module Test_FrequencyCounter();

//Inputs
reg CLK, IN;

//Outputs
wire on_count, off_count;

initial begin
  CLK = 0;
  IN = 0;

  forever IN = !IN;

end

always
#100000000 CLK = !CLK;

//Instantiate
FrequencyCounter uut(
    .CLK(CLK),
    .IN(IN),
    .on_count(on_count),
    .off_count(off_count)
);
endmodule
