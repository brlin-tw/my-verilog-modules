//include guard
`ifndef SAP_1_top_module
	`define SAP_1_top_module
	// 時間相關設定
	`timescale 1ns / 100ps

	`include "Source_code/SAP_1_program_counter/SAP_1_program_counter.v"
	`include "Source_code/SAP_1_MAR_ROM_TOP/SAP_1_MAR_ROM_TOP.v"
	`include "Source_code/SAP_1_CTRL_SEQ_TOP/SAP_1_CTRL_SEQ_TOP.v"
	`include "Source_code/SAP_1_accumulator/SAP_1_accumulator.v"
	`include	"Source_code/SAP_1_adder_substractor/SAP_1_adder_substractor.v"
	`include "Source_code/decoderDisplay7Segment/decoderDisplay7Segment.v"
	`include "Source_code/registerWposClknegLoadEnable8bit/registerWposClknegLoadEnable8bit.v"
	`include	"Source_code/SAP_1_instruction_register/SAP_1_instruction_register.v"

	/* 模組名稱：SAP_1_top_module
		著作權宣告：copyright 2012 林博仁(pika1021@gmail.com) */
	module SAP_1_top_module(outcome_display, busW_display, Clk, Clr);
	// 輸出運算結果的七段顯示器信號
	output [15:0] outcome_display;
	wire [15:0] outcome_display;
	// 接到外面用來除錯的匯流排W七段顯示器訊號
	output [15:0] busW_display;
	wire  [15:0] busW_display;
	// 時脈、Reset訊號
	input Clk,Clr;
	wire Clk,Clr;

	wire [7:0]busW;
	decoderDisplay7Segment
		display_bus1(busW_display[15:8], busW[7:4]),
		display_bus0(busW_display[7:0], busW[3:0]);

	// 由 controller/sequencer 輸出的控制信號
	wire Cp, Ep, LMbar, CEbar, LIbar, EIbar, LAbar, EA, SU, EU, LBbar, LObar;

	SAP_1_program_counter
		PC(busW[3:0], Cp, Ep, !Clr, Clk);

	SAP_1_MAR_ROM_TOP
		MAR_ROM(busW, busW[3:0], LMbar, CEbar, Clk);

	wire [3:0] IR2CTRL_SEQ;
	SAP_1_instruction_register
		IR(IR2CTRL_SEQ, busW[3:0], busW, LIbar, EIbar, Clk, Clr);

	SAP_1_CTRL_SEQ_TOP
		CTRL_SEQ(Cp, Ep, LMbar, CEbar, LIbar, EIbar, LAbar, EA, SU, EU, LBbar, LObar, IR2CTRL_SEQ, Clr, Clk);

	wire [7:0] acc2add_sub;
	SAP_1_accumulator
		ACC(acc2add_sub, busW, busW, LAbar, EA, Clk);

	wire [7:0] regB2add_sub;
	registerWposClknegLoadEnable8bit
		regB(regB2add_sub, busW, LBbar, Clk);

	SAP_1_adder_substractor
		ADD_SUB(busW, acc2add_sub, regB2add_sub, SU, EU);

	wire [7:0] outcome;
	registerWposClknegLoadEnable8bit
		out_reg(outcome, busW, LObar, Clk);
	decoderDisplay7Segment
		display_outcome1(outcome_display[15:8], outcome[7:4]),
		display_outcome0(outcome_display[7:0], outcome[3:0]);
	endmodule
`endif