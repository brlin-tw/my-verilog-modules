/* 模組名稱：1對2解碼器(decoder)
   著作權宣告：copyright 2012 林博仁(pika1021@gmail.com)
   */
`ifndef DECODER1TO2_V_INCLUDED
	`define DECODER1TO2_V_INCLUDED
	`timescale 1ns / 100ps

	module decoder1to2(o1, o0, i);
		output o1, o0;
		input i;
		wire ibar;
		
		not
			inv(ibar, i);
		assign o1 = i;
		assign o0 = ibar;
	endmodule
`endif
