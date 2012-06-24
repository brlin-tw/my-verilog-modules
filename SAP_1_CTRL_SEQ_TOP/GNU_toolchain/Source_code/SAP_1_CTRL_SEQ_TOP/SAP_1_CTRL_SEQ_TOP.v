//include guard
`ifndef SAP_1_CTRL_SEQ_TOP
	`define SAP_1_CTRL_SEQ_TOP
	// 時間相關設定
	`timescale 1ns / 100ps

	`include "Source_code/SAP_1_control_matrix/SAP_1_control_matrix.v"
	`include "Source_code/SAP_1_ring_counter/SAP_1_ring_counter.v"
	`include "Source_code/SAP_1_instruction_decoder/SAP_1_instruction_decoder.v"

	/* 模組名稱：SAP_1_CTRL_SEQ_TOP
		著作權宣告：copyright 2012 林博仁(pika1021@gmail.com) */
	module SAP_1_CTRL_SEQ_TOP(Cp, Ep, LMbar, CEbar, LIbar, EIbar, LAbar, EA, SU, EU, LBbar, LObar, opcode, Clr, Clk);
	//port 輸出輸入宣告
		output Cp, Ep, LMbar, CEbar, LIbar, EIbar, LAbar, EA, SU, EU, LBbar, LObar;
		input Clr, Clk;
		input [7:4]opcode;

	//port 類型宣告
		wire [7:4]opcode;
		wire[6:1]T;

	wire LDA,ADD,SUB,OUT,HLT;
	SAP_1_ring_counter
		ring(T, Clk, Clr);
	SAP_1_instruction_decoder
		inst_dec(LDA, ADD, SUB, OUT, HLT, opcode);
	SAP_1_control_matrix
		ctrl_matrix(Cp, Ep, LMbar, CEbar, LIbar, EIbar, LAbar, EA, SU, EU, LBbar, LObar, LDA, ADD, SUB, OUT, HLT, T);
	endmodule
`endif