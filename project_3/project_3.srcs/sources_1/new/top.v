`timescale 1ns / 1ps

module top(

input wire clk, // 100 MHz
output wire led
);

clock_divider wrapper (
.clk(clk),
.divided_clk(led)
);    
   
    
    
endmodule
