`timescale 1 ns / 1 ps
//Frequency Counter
//Developed by: Rhyan Johnson
//Counts frequncy of an input signal

module FrequencyCounter(
    input IN, 
    input CLK,
    output reg on_count,
    output reg off_count
);

reg onflag;
reg offflag;
reg CounterOn;
reg CounterOff;


always@(posedge CLK) 
begin
    if(IN)
        begin
        CounterOn = CounterOn + 1;
        onflag = 1;
        end
    else 
        CounterOff = CounterOff + 1;
        offflag = 1;
    
    if(onflag)
        begin
         on_count = CounterOn;
         CounterOn = 0;
         onflag = 0;
         end 
    if(offflag)
    begin
        off_count = CounterOff;
        CounterOff = 0;
        offflag = 0;
    end
end
endmodule
