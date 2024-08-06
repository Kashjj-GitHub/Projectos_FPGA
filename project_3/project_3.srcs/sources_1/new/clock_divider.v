`timescale 1ns / 1ps


// counter based
module clock_divider(
input  wire clk, // 100MHz
output reg divided_clk = 0// 1Hz => 0.5s ON and 0.5s OFF
);

localparam div_value = 49999999; // 1Hz?

//division_value = 100MHz/(2*desired Frecuency) - 1 => 1Hz = 49999999
//counter    
integer counter_value = 0;
always@ (posedge clk) //sensitivity list     //rising edge 0-1
begin 
    // keep counting until div_value
    if ( counter_value == div_value)
        counter_value <=0; // reset value
    
    else
        counter_value <= counter_value + 1 ;
end 
    
//divide clock

always@ (posedge clk)
begin
    if ( counter_value == div_value)
        divided_clk <= ~divided_clk; //flip the signal
    else 
        divided_clk <= divided_clk; //store the value
end


endmodule