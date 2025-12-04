`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2025 11:48:36 AM
// Design Name: 
// Module Name: seg_decoder
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


module seg_decoder(
    input [3:0] hex_value,
    output reg [7:0] seg
    );

    always@(hex_value)begin
        case(hex_value)
                    //  (dp)gfe_dcba
            4'd0:   seg=8'b1100_0000;
            4'd1:   seg=8'b1111_1001;
            4'd2:   seg=8'b1010_0100;
            4'd3:   seg=8'b1011_0000;
            4'd4:   seg=8'b1001_1001;
            4'd5:   seg=8'b1001_0010;
            4'd6:   seg=8'b1000_0010;
            4'd7:   seg=8'b1111_1000;
            4'd8:   seg=8'b1000_0000;
            4'd9:   seg=8'b1001_0000;

            4'd10:  seg=8'b1000_1000; // A
            4'd11:  seg=8'b1000_0011; // b 
            4'd12:  seg=8'b1100_0110; // C 
            4'd13:  seg=8'b1010_0001; // d 
            4'd14:  seg=8'b1000_0110; // E
            4'd15:  seg=8'b1000_1110; // F

            default: seg=8'b1111_1111; // default : all off

        endcase 

    end



endmodule
