`timescale 1ns / 1ps


module top(
input wire clk,
input wire [1:0] buttons, // 10 = Left, 01 = Right. 00/11 = do nothing
output reg [15:0] Leds

    );

wire clk_10Hz;
    
clock_divider wrapper (
.clk(clk),
.divided_clk(clk_10Hz)
); 


    
reg [3:0] Position_Value = 4'd8;    

always @(posedge clk_10Hz) begin
    if (buttons == 2'b10 && Position_Value > 0) begin
        Position_Value <= Position_Value - 1;
        
    end else if (buttons == 2'b01 && Position_Value < 15) begin
        Position_Value <= Position_Value + 1;
        
    end else if (buttons == 2'b00 || buttons == 2'b11) begin
        Position_Value <= Position_Value;

    end
end
 
 always @(Position_Value)
    begin 
    Leds = 16'b0000000001000000; 
        case (Position_Value)
          4'd0 : Leds = 16'b0000000000000001;     
          4'd1 : Leds = 16'b0000000000000010;     
          4'd2 : Leds = 16'b0000000000000100;     
          4'd3 : Leds = 16'b0000000000001000;     
          4'd4 : Leds = 16'b0000000000010000;     
          4'd5 : Leds = 16'b0000000000100000;     
          4'd6 : Leds = 16'b0000000001000000;     
          4'd7 : Leds = 16'b0000000010000000;     
          4'd8 : Leds = 16'b0000000100000000;     
          4'd9 : Leds = 16'b0000001000000000;     
          4'd10 : Leds = 16'b0000010000000000;    
          4'd11 : Leds = 16'b0000100000000000;    
          4'd12 : Leds = 16'b0001000000000000;    
          4'd13 : Leds = 16'b0010000000000000;    
          4'd14 : Leds = 16'b0100000000000000;    
          4'd15 : Leds = 16'b1000000000000000;    
          default: Leds = 16'b0000000001000000;
          
//          case (Position_Value)
//          0 : Leds[1] <= 1;     
//          1 : Leds[2] <= 1;     
//          2 : Leds[3] <= 1;     
//          3 : Leds[4] <= 1;     
//          4 : Leds[5] <= 1;     
//          5 : Leds[6] <= 1;     
//          6 : Leds[7] <= 1;     
//          7 : Leds[8] <= 1;     
//          8 : Leds[9] <= 1;     
//          9 : Leds[10] <= 1;     
//          10 : Leds[11] <= 1;    
//          11 : Leds[12] <= 1;    
//          12 : Leds[13] <= 1;    
//          13 : Leds[14] <= 1;    
//          14 : Leds[15] <= 1;    
//          15 : Leds[16] <= 1;    
//          default: Leds[7] <= 1;
 
         endcase
    end
    
endmodule
