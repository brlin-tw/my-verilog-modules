//include guard
`ifndef decoder4to16
	`define decoder4to16
	// 時間相關設定
	`timescale 1ns / 100ps

	`include "Source_code/decoder2to4/decoder2to4.v"

	/* 模組名稱：decoder4to16
		著作權宣告：copyright 2012 林博仁(pika1021@gmail.com) */
	module decoder4to16(out, in);
	//port 輸出輸入宣告
		output [15:0]out;
		input [3:0]in;

	//port 類型宣告
		wire [15:0]out;
		wire [3:0]in;

	wire [3:0]dec24w_0;
	wire [3:0]dec24w_1;

	decoder2to4
		dec24_0(dec24w_0, in[1:0]),
		dec24_1(dec24w_1, in[3:2]);

	and
		and00(out[0], dec24w_0[0], dec24w_1[0]),
		and01(out[1], dec24w_0[1], dec24w_1[0]),
		and02(out[2], dec24w_0[2], dec24w_1[0]),
		and03(out[3], dec24w_0[3], dec24w_1[0]),
		and10(out[4], dec24w_0[0], dec24w_1[1]),
		and11(out[5], dec24w_0[1], dec24w_1[1]),
		and12(out[6], dec24w_0[2], dec24w_1[1]),
		and13(out[7], dec24w_0[3], dec24w_1[1]),
		and20(out[8], dec24w_0[0], dec24w_1[2]),
		and21(out[9], dec24w_0[1], dec24w_1[2]),
		and22(out[10], dec24w_0[2], dec24w_1[2]),
		and23(out[11], dec24w_0[3], dec24w_1[2]),
		and30(out[12], dec24w_0[0], dec24w_1[3]),
		and31(out[13], dec24w_0[1], dec24w_1[3]),
		and32(out[14], dec24w_0[2], dec24w_1[3]),
		and33(out[15], dec24w_0[3], dec24w_1[3]);

	endmodule
`endif