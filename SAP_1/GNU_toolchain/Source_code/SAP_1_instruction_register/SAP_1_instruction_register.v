//include guard
`ifndef SAP_1_instruction_register
	`define SAP_1_instruction_register
	// 時間相關設定
	`timescale 1ns / 100ps

	`include "Source_code/flipflopDnegClknegRstWithNegLoadEnable8bit/flipflopDnegClknegRstWithNegLoadEnable8bit.v"

	/* 模組名稱：SAP_1_instruction_register
		著作權宣告：copyright 2012 林博仁(pika1021@gmail.com) */
	module SAP_1_instruction_register(opcode, operand, instruction, LIbar, EIbar, ClkN, ClrN);
	//port 輸出輸入宣告
		output [7:4]opcode;
		output [3:0]operand;
		input [7:0]instruction;
		input LIbar, EIbar, ClkN, ClrN;

	//port 類型宣告
		wire [7:4]opcode;
		wire [3:0]operand;
		wire [7:0]reg_out;
	flipflopDnegClknegRstWithNegLoadEnable8bit
		register(reg_out, instruction, ClkN, ClrN, LIbar);

	bufif0
		EIbuf3(operand[3], reg_out[3], EIbar),
		EIbuf2(operand[2], reg_out[2], EIbar),
		EIbuf1(operand[1], reg_out[1], EIbar),
		EIbuf0(operand[0], reg_out[0], EIbar);

	assign opcode[7:4] = reg_out[7:4];
	endmodule
`endif