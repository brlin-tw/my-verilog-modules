//include guard
`ifndef SAP_1_Memory_Address_Register
	`define SAP_1_Memory_Address_Register
	// 時間相關設定
	`timescale 1ns / 100ps

	`include "Source_code/flipflopDnegClknegRstWithNegLoadEnable/flipflopDnegClknegRstWithNegLoadEnable.v"

	/* 模組名稱：SAP_1_Memory_Address_Register
		著作權宣告：copyright 2012 林博仁(pika1021@gmail.com) */
	module SAP_1_Memory_Address_Register(register, address_in, Clk, LMbar);
	//port 輸出輸入宣告
		output [3:0]register;
		input [3:0]address_in;
		input Clk, LMbar;

	//port 類型宣告
		wire [3:0]register;
		wire [3:0]address_in;
	flipflopDnegClknegRstWithNegLoadEnable
		dFF3(register[3], address_in[3], Clk, 'b1, LMbar),
		dFF2(register[2], address_in[2], Clk, 'b1, LMbar),
		dFF1(register[1], address_in[1], Clk, 'b1, LMbar),
		dFF0(register[0], address_in[0], Clk, 'b1, LMbar);
	endmodule
`endif