/* 模組名稱： 2 to 4 line decoder with enable
   著作權宣告：copyright 2012 林博仁(pika1021@gmail.com)
   */
`ifndef DECODER2TO4WITHENABLE_V_INCLUDED
	`define DECODER2TO4WITHENABLE_V_INCLUDED
	`timescale 1ns / 100ps
	`include "Source_code/decoder1to2/decoder1to2.v"

	module decoder2to4withEnable(o, i, En);
		output [3:0]o;
		input [1:0]i;
		input En;		
		wire o3a, o2a, o1a, o0a, raw1, raw1bar, raw0, raw0bar;

		//
		decoder1to2
			dec0(raw0, raw0bar, i[0]),
			dec1(raw1, raw1bar, i[1]);

		//
		and
			a3(o3a, raw1, raw0),
			a2(o2a, raw1, raw0bar),
			a1(o1a, raw1bar, raw0),
			a0(o0a, raw1bar, raw0bar), 
			
			e3(o[3], o3a, En), 
			e2(o[2], o2a, En), 
			e1(o[1], o1a, En), 
			e0(o[0], o0a, En);

	endmodule
`endif