//4對1多工器
`timescale 1ns / 100ps
`include "Source_code/multiplexer2to1/multiplexer2to1.v"

module multiplexer4to1(out, i, s);
  output out;
  input [1:0] s;
  input [3:0] i;
  wire net1,net0;

  multiplexer2to1 a1(.out(net0), .i1(i[1]), .i0(i[0]), .s(s[0]));
  multiplexer2to1 a2(.out(net1), .i1(i[3]), .i0(i[2]), .s(s[0]));
  multiplexer2to1 b(.out(out), .i1(net1), .i0(net0), .s(s[1]));
endmodule
