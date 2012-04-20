`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:20:50 03/07/2012 
// Design Name: 
// Module Name:    multiplexer2to1 
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
module multiplexer2to1(out,i0,i1,s);
	input i0,i1,s;
	output out;
	not a1(sbar,s);
	and a2(net1,i0,sbar);
	and a3(net2,i1,s);
	or a4(out,net1,net2);
endmodule
