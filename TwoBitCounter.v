//2 Bit Counter
//Developed by: Rhyan Johnson
//Counts for the multiplexer

module TwoBitCounter(
  input TwoBitCLK,
  output reg [1:0]countout = 2'b0
);
always @(posedge TwoBitCLK) 
begin
  if(countout == 2'b11)
  begin
  countout = 0;
  end
  else
  begin
  countout = countout + 1;
  end
end
endmodule