//include guard
`ifndef bufferTristate8bit
	`define bufferTristate8bit
	// 時間相關設定
	`timescale 1ns / 100ps

	/* 模組名稱：bufferTristate8bit
		著作權宣告：copyright 2012 林博仁(pika1021@gmail.com) */
	module bufferTristate8bit(out, in, Enable);
	//port 輸出輸入宣告
		output [7:0]out;
		input Enable;
		input [7:0]in;

	//port 類型宣告
		wire [7:0]in;
		wire [7:0]out;
		wire Enable;

	bufif1
		g0(out[0], in[0], Enable),
		g1(out[1], in[1], Enable),
		g2(out[2], in[2], Enable),
		g3(out[3], in[3], Enable),
		g4(out[4], in[4], Enable),
		g5(out[5], in[5], Enable),
		g6(out[6], in[6], Enable),
		g7(out[7], in[7], Enable);

	endmodule
`endif