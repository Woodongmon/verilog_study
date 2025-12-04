`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2025 12:11:47 PM
// Design Name: 
// Module Name: FND_top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module FND_top(
    input [3:0] hex_value,
    output [7:0] seg,
    output [3:0] an
    );

    seg_decoder u1(
        .hex_value(hex_value),
        .seg(seg)
    );
    assign an = 4'b0000;

endmodule
