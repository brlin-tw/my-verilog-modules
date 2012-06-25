//include guard
`ifndef SAP_1_MAR_ROM_TOP
	`define SAP_1_MAR_ROM_TOP

	`include "Source_code/SAP_1_Memory_Address_Register/SAP_1_Memory_Address_Register.v"
	`include "Source_code/SAP_1_ROM/SAP_1_ROM.v"

	// 指定模擬器的時間單位與精確度
	// 參考資料 | Reference Data
	// 		http://www.asic-world.com/verilog/compiler2.html#%60timescale
	`timescale 1ns / 100ps

	/* 模組名稱 | Module Name
SAP_1_MAR_ROM_TOP
		 著作權宣告 | Copyright Declaration
				copyright 2012 林博仁(pika1021@gmail.com) */
	module SAP_1_MAR_ROM_TOP(instruction, address, LMbar, CEbar, Clk);
		//port 輸出輸入宣告
		output [7:0] instruction;
		input [3:0] address;
		input LMbar, CEbar, Clk;

		//port 類型宣告
		wire [7:0] instruction;
		wire [3:0] program_counter;
		wire LMbar, CEbar, Clk;

		wire [3:0] MAR_out;
		SAP_1_Memory_Address_Register
			MAR(.address_in(address),
					.Clk(Clk),
					.LMbar(LMbar),
					.register(MAR_out));
		SAP_1_ROM
			ROM(.instruction_out(instruction),
					.address_in(MAR_out),
					.CEbar(CEbar));
	endmodule
`endif