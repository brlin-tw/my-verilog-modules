/* 模組名稱：adder_full_4bit
   著作權宣告：copyright 2012 林博仁(pika1021@gmail.com)
   */
`timescale 1ns / 100ps
`include "Source_code/adder_full_1bit/adder_full_1bit.v"


module adder_full_4bit(proC, sum, add, aug, preC);
  input [3:0]add, aug;
  input preC;
  output proC;
  output [3:0]sum;

  wire c3, c2, c1;

  adder_full_1bit 
    fa0(c1, sum[0], add[0], aug[0], preC), 
    fa1(c2, sum[1], add[1], aug[1], c1), 
    fa2(c3, sum[2], add[2], aug[2], c2), 
    fa3(proC, sum[3], add[3], aug[3], c3); 

endmodule
