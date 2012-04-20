`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:07:19 03/07/2012 
// Design Name: 
// Module Name:    multiplexer8to1 
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
module multiplexer8to1(out,S,I);
output out;
input S,I;
wire [2:0] S;
wire [7:0] I;
wire [2:1] W;

multiplexer4to1 m1(W[1],S[1:0],I[3:0]);
multiplexer4to1 m2(W[2],S[1:0],I[7:4]);
multiplexer2to1 m3(out,W[1],W[2],S[2]);

endmodule
