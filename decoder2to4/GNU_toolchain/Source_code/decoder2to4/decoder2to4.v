/* 模組名稱： 2 to 4 line decoder
   著作權宣告：copyright 2012 林博仁(pika1021@gmail.com)
   */
`ifndef DECODER2TO4_V_INCLUDED
	`define DECODER2TO4_V_INCLUDED
	`timescale 1ns / 100ps
	`include "Source_code/decoder1to2/decoder1to2.v"

	module decoder2to4(o, i);
		output [3:0]o;
		input [1:0]i;  
		wire a0, a1, b0, b1;
		decoder1to2 
			dec12a(a1, a0, i[0]),
			dec12b(b1, b0, i[1]);
		and
			and00(o[0], b0, a0),
			and01(o[1], b0, a1),
			and10(o[2], b1, a0),
			and11(o[3], b1, a1);
		
	endmodule
`endif