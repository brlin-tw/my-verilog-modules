/* 模組名稱：decoder3to8
   著作權宣告：copyright 2012 林博仁(pika1021@gmail.com)
   */
`ifndef DECODER3TO8_V_INCLUDED
	`define DECODER3TO8_V_INCLUDED
	`include "Source_code/decoder2to4withEnable/decoder2to4withEnable.v"
	`include "Source_code/decoder1to2/decoder1to2.v"
	`timescale 1ns / 100ps

	module decoder3to8(out, in);
		input [2:0]in;
		output [7:0]out;
		wire i2, i2bar;
		
		decoder1to2 dec12_2(i2, i2bar, in[2]);
		decoder2to4withEnable 
			dec24_0(out[3:0], in[1:0], i2bar), 
			dec24_1(out[7:4], in[1:0], i2);
	endmodule
`endif