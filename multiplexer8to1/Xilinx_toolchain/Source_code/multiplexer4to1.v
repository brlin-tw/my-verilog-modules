`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:04:23 03/07/2012 
// Design Name: 
// Module Name:    multiplexer4to1 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module multiplexer4to1(out,S,I);
output out;
input S,I;
wire [1:0] S;
wire [3:0] I;
multiplexer2to1 m1(w1,I[0],I[1],S[0]);
multiplexer2to1 m2(w2,I[2],I[3],S[0]);
multiplexer2to1 m3(out,w1,w2,S[1]);

endmodule
