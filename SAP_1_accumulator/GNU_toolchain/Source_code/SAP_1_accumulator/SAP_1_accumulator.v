//include guard
`ifndef SAP_1_accumulator
	`define SAP_1_accumulator
	// 指定模擬器的時間單位與精確度
	// 參考資料 | Reference Data
	// 		http://www.asic-world.com/verilog/compiler2.html#%60timescale
	`timescale 1ns / 100ps

	`include "Source_code/registerWnegClknegLoadEnable8bit/registerWnegClknegLoadEnable8bit.v"

	`include "Source_code/bufferTristate8bit/bufferTristate8bit.v"

	/* 模組名稱 | Module Name
				SAP_1_accumulator
		 著作權宣告 | Copyright Declaration
				copyright 2012 林博仁(pika1021@gmail.com) */
	module SAP_1_accumulator(s_a_out, bus_out, in, LAbar, EA, Clk);
		//port 輸出輸入宣告
		output [7:0] s_a_out;
		output [7:0] bus_out;
		input [7:0] in;
		input LAbar;
		input EA;
		input Clk;

		//port 類型宣告
		wire [7:0] s_a_out;
		wire [7:0] bus_out;
		wire [7:0] in;
		wire LAbar;
		wire EA;
		wire Clk;

	registerWnegClknegLoadEnable8bit
		reg0(.out(s_a_out),
				.in(in),
				.Enbar(LAbar),
				.Clkbar(Clk));

	bufferTristate8bit
		tribuf0(.out(bus_out),
				 .in(s_a_out),
				 .Enable(EA));

	endmodule
`endif