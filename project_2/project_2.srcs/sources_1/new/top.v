`timescale 1ns / 1ps


module top(
input wire [3:0] button,
input wire [7:0] switch,
output wire [7:0] sseg_cathode,
output wire [3:0] sseg_anode

    );
    
assign sseg_anode = button;

assign sseg_cathode = switch;

endmodule
