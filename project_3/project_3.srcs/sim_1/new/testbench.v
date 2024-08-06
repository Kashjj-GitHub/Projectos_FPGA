`timescale 1ns / 1ps
 
module testbench;

reg clk = 0; // 100MHz
wire divided_clk;

// wrapper     
clock_divider UUT(    
.clk(clk),
.divided_clk(divided_clk)
);

always #5 clk = ~clk; // every 5ns the signal flips => 10ns period => 100MHz    
    
endmodule

