`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2025 10:24:28 AM
// Design Name: 
// Module Name: demux
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


module demux_1_4(

    input d,
    input [1:0]s,
    output [3:0]f
);

    assign f[0] = (s==2'b00)?d:0;
    assign f[1] = (s==2'b01)?d:0;
    assign f[2] = (s==2'b10)?d:0;
    assign f[3] = (s==2'b11)?d:0; 

    // assgin f =  (s==2'b00)?{3'b000,d} :
    //             (s==2'b01)?{2'b00,d,1'b0} :
    //             (s==2'b10)?{1'b0,d,2'b00} : 
    //             {d,3'b000};
    

endmodule