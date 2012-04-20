/* 模組名稱： 2 to 4 line decoder with enable
   著作權宣告：copyright 2012 林博仁(pika1021@gmail.com)
   */
`ifndef DECODER2TO4WITHENABLE_V_INCLUDED
	`define DECODER2TO4WITHENABLE_V_INCLUDED
	`timescale 1ns / 1ps
	`include "Source_code/decoder1to2withEnable/decoder1to2withEnable.v"

	module decoder2to4withEnable(o3, o2, o1, o0, i1, i0, En);
		input i1, i0, En;
		output o3, o2, o1, o0;
		wire i1N, raw3, raw2, raw1, raw0;

		//i1控制哪一個1對2解碼器作用（當作dec0跟dec1的作用訊號）
		not
			inv(i1N, i1);
		decoder1to2withEnable
			dec0(raw1, raw0, i0, i1N),
			dec1(raw3, raw2, i0, i1);

		//En決定o0~o3是否作用
		and
			a3(o3, raw3, En),
			a2(o2, raw2, En),
			a1(o1, raw1, En),
			a0(o0, raw0, En);

	endmodule
`endif