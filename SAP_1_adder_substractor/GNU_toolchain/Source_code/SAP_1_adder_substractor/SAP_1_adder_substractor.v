//include guard
`ifndef SAP_1_adder_substractor
	`define SAP_1_adder_substractor
	// 時間相關設定
	`timescale 1ns / 100ps

	`include "Source_code/fullAdder8bit/fullAdder8bit.v"
	`include "Source_code/bufferTristate8bit/bufferTristate8bit.v"
	/* 模組名稱：SAP_1_adder_substractor
		著作權宣告：copyright 2012 林博仁(pika1021@gmail.com) */
	module SAP_1_adder_substractor(out, accumulater_in, register_B_in, SU, EU);
	//port 輸出輸入宣告
		output [7:0]out;
		input SU;
		input EU;
		input [7:0] accumulater_in;
		input [7:0] register_B_in;

	//port 類型宣告
		wire [7:0]accumulater_in;
		wire [7:0]register_B_in;
		wire [7:0]out;
		wire [7:0]temp;
		wire carry;

	wire [7:0] selected;
	xor
		complement2select0(selected[0], register_B_in[0], SU),
		complement2select1(selected[1], register_B_in[1], SU),
		complement2select2(selected[2], register_B_in[2], SU),
		complement2select3(selected[3], register_B_in[3], SU),
		complement2select4(selected[4], register_B_in[4], SU),
		complement2select5(selected[5], register_B_in[5], SU),
		complement2select6(selected[6], register_B_in[6], SU),
		complement2select7(selected[7], register_B_in[7], SU);
	fullAdder8bit
		g1(carry, temp, accumulater_in, selected, SU);
	bufferTristate8bit
		buff1(out, temp, EU);
	endmodule
`endif