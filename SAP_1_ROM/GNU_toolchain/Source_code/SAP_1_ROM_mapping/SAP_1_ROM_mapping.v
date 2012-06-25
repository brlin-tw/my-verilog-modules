//include guard
`ifndef SAP_1_ROM_mapping
	`define SAP_1_ROM_mapping
	// 時間相關設定
	`timescale 1ns / 100ps

	/* 模組名稱：SAP_1_ROM_mapping
		著作權宣告：copyright 2012 林博仁(pika1021@gmail.com) */
	module SAP_1_ROM_mapping(out, in);
	//port 輸出輸入宣告
		output [7:0]out;
		input [15:0]in;

	//port 類型宣告
		wire [7:0]out;
		wire [15:0]in;

	assign out[0] = in[0] | in[2];
	assign out[1] = in[1] | in[2];
	assign out[2] = in[3] | in[10];
	assign out[3] = in[0] | in[1] | in[2] | in[3] | in[11];
	assign out[4] = in[1] | in[2] | in[5] | in[9] | in[10] | in[11];
	assign out[5] = in[3] | in[4] | in[5] | in[12];
	assign out[6] = in[4] | in[5];
	assign out[7] = in[4] | in[5];

	endmodule
`endif