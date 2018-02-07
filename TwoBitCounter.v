//2 Bit Counter
//Developed by: Rhyan Johnson
//Counts for the multiplexer

module TwoBitCounter(
  input CLK,
  input reset,
  output reg countout
);
reg coutout = 2'b0;
always @(posedge CLK) 
begin
  if(reset)
  countout <= 0;
  else
  countout <= countout + 1;
end
endmodule