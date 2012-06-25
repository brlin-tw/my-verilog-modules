//include guard
`ifndef SAP_1_ROM
	`define SAP_1_ROM
	// 時間相關設定
	`timescale 1ns / 100ps

	`include "Source_code/decoder4to16/decoder4to16.v"
	`include "Source_code/SAP_1_ROM_mapping/SAP_1_ROM_mapping.v"

	/* 模組名稱：SAP_1_ROM
		著作權宣告：copyright 2012 林博仁(pika1021@gmail.com) */
	module SAP_1_ROM(instruction_out, address_in, CEbar);
	//port 輸出輸入宣告
		output [7:0] instruction_out;
		input [3:0] address_in;
		input CEbar;

	//port 類型宣告
		wire [7:0] instruction_out;
		wire [3:0] address_in;
		wire CEbar;

	wire [15:0] dec_out;
	decoder4to16
		dec(dec_out, address_in);
	wire [7:0] instruction;
	SAP_1_ROM_mapping
		map(instruction, dec_out);

	bufif0
		triN0(instruction_out[0], instruction[0], CEbar),
		triN1(instruction_out[1], instruction[1], CEbar),
		triN2(instruction_out[2], instruction[2], CEbar),
		triN3(instruction_out[3], instruction[3], CEbar),
		triN4(instruction_out[4], instruction[4], CEbar),
		triN5(instruction_out[5], instruction[5], CEbar),
		triN6(instruction_out[6], instruction[6], CEbar),
		triN7(instruction_out[7], instruction[7], CEbar);

	endmodule
`endif