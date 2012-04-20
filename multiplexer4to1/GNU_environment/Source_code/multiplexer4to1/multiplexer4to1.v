//4對1多工器
`timescale 1ns / 100ps
`include "Source_code/multiplexer2to1/multiplexer2to1.v"

module multiplexer4to1(out,s1,s0,i0,i1,i2,i3);
  output out;
  input s1,s0,i0,i1,i2,i3;
  wire net1,net0;

  multiplexer2to1 a1(.out(net0), .i1(i1), .i0(i0), .s(s0));
  multiplexer2to1 a2(.out(net1), .i1(i3), .i0(i2), .s(s0));
  multiplexer2to1 b(.out(out), .i1(net1), .i0(net0), .s(s1));
endmodule
