/* 模組名稱：fullAdder8bit
   著作權宣告：copyright 2012 林博仁(pika1021@gmail.com)
   */
`timescale 1ns / 100ps
`include "Source_code/fullAdder1bit/fullAdder1bit.v"

module fullAdder8bit(proC, sum, add, aug, preC);
  input [7:0]add;
  input [7:0]aug;
  input preC;
  output proC;
  output [7:0]sum;

  wire [7:1]c;

  fullAdder1bit
    fa0(c[1], sum[0], add[0], aug[0], preC),
    fa1(c[2], sum[1], add[1], aug[1], c[1]),
    fa2(c[3], sum[2], add[2], aug[2], c[2]),
    fa3(c[4], sum[3], add[3], aug[3], c[3]),
		fa4(c[5], sum[4], add[4], aug[4], c[4]),
		fa5(c[6], sum[5], add[5], aug[5], c[5]),
		fa6(c[7], sum[6], add[6], aug[6], c[6]),
		fa7(proC, sum[7], add[7], aug[7], c[7]);

endmodule
