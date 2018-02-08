//Lower Frequency
//Developed by: Rhyan Johnson
// Lowers the frequency of the clock for the 2 bit counter

module LowerFrequency(
    input CLK,
    output reg TwoBitCLK = 0
 );
reg [16:0]counter = 0;

always@(posedge CLK)
begin
    counter = counter+1;
    if(counter >= 3333333) begin
    TwoBitCLK = !TwoBitCLK;
    counter = 0;
    end
    end
endmodule