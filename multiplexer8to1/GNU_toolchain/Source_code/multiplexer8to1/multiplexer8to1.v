/* 模組名稱：multiplexer8to1
   著作權宣告：copyright 2012 林博仁(pika1021@gmail.com)
   */
`ifndef MULTIPLEXER8TO1_V_INCLUDE
	`define MULTIPLEXER8TO1_V_INCLUDE
	`timescale 1ns / 100ps
	`include "Source_code/multiplexer4to1/multiplexer4to1.v"
	`include "Source_code/multiplexer2to1/multiplexer2to1.v"

	module multiplexer8to1(out, i, s);
		input [7:0]i;
		input [2:0]s;
		output out;
		wire mux41_1o, mux41_0o;
		
		//我們需要2個共用s[1:0]的4對1多工器
		multiplexer4to1 
			mux41_1(
				.out(mux41_0o), 
				.i(i[3:0]), 
				.s(s[1:0])
			), 
			mux41_2(
				.out(mux41_1o), 
				.i(i[7:4]), 
				.s(s[1:0])
			);
		//用1個2對1多工器選擇第2位
		multiplexer2to1
			mux21(
				.out(out), 
				.i1(mux41_1o), 
				.i0(mux41_0o), 
				.s(s[2])
			);
	endmodule
`endif