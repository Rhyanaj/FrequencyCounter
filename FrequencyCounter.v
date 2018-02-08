
//Frequency Counter
//Developed by: Rhyan Johnson
//Counts frequncy of an input signal

module FrequencyCounter(
    input IN, 
    input CLK,
    output reg [11:0]on_count,
    output reg [11:0]off_count
);

reg onflag =0;
reg offflag =0;
reg [11:0]CounterOn = 0;
reg [11:0]CounterOff = 0;



always@(posedge CLK) 
begin
    if(IN)
        begin
            CounterOn = CounterOn + 1;
            onflag = 1;
            if(offflag)
            begin
                off_count = CounterOff;
                CounterOff = 0;
                offflag = 0;
            end
        end
    else 
    begin
        if(onflag)
                begin
                 on_count = CounterOn;
                 CounterOn = 0;
                 onflag = 0;
                 end 
        CounterOff = CounterOff + 1;
        offflag = 1;
    end
end
endmodule
