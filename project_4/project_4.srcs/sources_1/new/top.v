`timescale 1ns / 1ps


module top(
input wire ButtonLeft,
input wire ButtonRight,
output reg [15:0] Leds 

    );
    
reg [3:0] Position_Value = 0;    
    
 always @(posedge ButtonLeft) begin
        if (Position_Value > 0) 
            Position_Value <= Position_Value - 1;
    end

 always @(posedge ButtonRight) begin
        if (Position_Value < 15) 
            Position_Value <= Position_Value + 1;
    end

 
 always @(*) 
    begin 
        case (Position_Value)
          0 : Leds = 16'b0000000000000000;
          1 : Leds = 16'b0000000000000001;
          2 : Leds = 16'b0000000000000010;
          3 : Leds = 16'b0000000000000100;
          4 : Leds = 16'b0000000000001000;
          5 : Leds = 16'b0000000000010000;
          6 : Leds = 16'b0000000000100000;
          7 : Leds = 16'b0000000001000000;
          8 : Leds = 16'b0000000010000000;
          9 : Leds = 16'b0000000100000000;
          10 : Leds = 16'b0000010000000000;
          11 : Leds = 16'b0000100000000000;
          12 : Leds = 16'b0001000000000000;
          13 : Leds = 16'b0010000000000000;
          14 : Leds = 16'b0100000000000000;
          15 : Leds = 16'b1000000000000000;
          default: Leds = 16'b0000000000000000;
          
        endcase
    end
    
endmodule
