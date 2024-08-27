`timescale 1ns / 1ps


module top(
input wire clk,
input [1:0] buttons, // 01 = Left, 10 = Right. 00/11 = do nothing
output reg [15:0] Leds = 16'b0000000000000000

    );

wire clk_10Hz;
    
clock_divider wrapper (
.clk(clk),
.divided_clk(clk_10Hz)
); 


    
reg Position_Value = 0;    

always @(posedge clk_10Hz) begin
    if (buttons == 2'b01 && Position_Value > 0) begin
        Position_Value <= Position_Value - 1;
        
    end else if (buttons == 2'b10 && Position_Value < 15) begin
        Position_Value <= Position_Value + 1;
        
    end else if (buttons == 2'b00 || buttons == 2'b11) begin
        Position_Value <= Position_Value;

    end
end
 
 always @(Position_Value) 
    begin 
        case (Position_Value)
          0 : Leds <= 16'b0000000000000001;     
          1 : Leds <= 16'b0000000000000010;     
          2 : Leds <= 16'b0000000000000100;     
          3 : Leds <= 16'b0000000000001000;     
          4 : Leds <= 16'b0000000000010000;     
          5 : Leds <= 16'b0000000000100000;     
          6 : Leds <= 16'b0000000001000000;     
          7 : Leds <= 16'b0000000010000000;     
          8 : Leds <= 16'b0000000100000000;     
          9 : Leds <= 16'b0000001000000000;     
          10 : Leds <= 16'b0000010000000000;    
          11 : Leds <= 16'b0000100000000000;    
          12 : Leds <= 16'b0001000000000000;    
          13 : Leds <= 16'b0010000000000000;    
          14 : Leds <= 16'b0100000000000000;    
          15 : Leds <= 16'b1000000000000000;    
          default: Leds <= 16'b0000000000000001;
 
         endcase
    end
    
endmodule
