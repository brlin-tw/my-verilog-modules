`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date:    10:12:36 03/07/2012
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
module multiplexer4to1(out,s1,s0,i0,i1,i2,i3);
  output out;
  input s1,s0,i0,i1,i2,i3;
  wire net1,net2;
  //module Mux2to1(out,i0,i1,s);
  multiplexer2to1 a1(net1,i0,i1,s0);
  multiplexer2to1 a2(net2,i2,i3,s0);
  multiplexer2to1 a3(out,net1,net2,s1);

endmodule
