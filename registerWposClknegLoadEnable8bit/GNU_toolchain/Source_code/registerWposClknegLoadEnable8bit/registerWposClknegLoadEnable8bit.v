//include guard
`ifndef registerWposClknegLoadEnable8bit
	`define registerWposClknegLoadEnable8bit


	// 指定模擬器的時間單位與精確度
	// 參考資料 | Reference Data
	// 		http://www.asic-world.com/verilog/compiler2.html#%60timescale
	`timescale 1ns / 100ps

	`include "Source_code/flipflopDposClknegRstWithNegLoadEnable/flipflopDposClknegRstWithNegLoadEnable.v"

	/* 模組名稱 | Module Name
				registerWposClknegLoadEnable8bit
		 著作權宣告 | Copyright Declaration
				copyright 2012 林博仁(pika1021@gmail.com) */
	module registerWposClknegLoadEnable8bit(out, in, Enbar, Clk);
		//port 輸出輸入宣告
		output [7:0] out;
		input [7:0] in;
		input Enbar, Clk;

		//port 類型宣告
		wire [7:0] out;
		wire [7:0] in;
		wire Enbar, Clk;

		flipflopDposClknegRstWithNegLoadEnable
			reg7(out[7], in[7], Clk, 1'b1, Enbar),
			reg6(out[6], in[6], Clk, 1'b1, Enbar),
			reg5(out[5], in[5], Clk, 1'b1, Enbar),
			reg4(out[4], in[4], Clk, 1'b1, Enbar),
			reg3(out[3], in[3], Clk, 1'b1, Enbar),
			reg2(out[2], in[2], Clk, 1'b1, Enbar),
			reg1(out[1], in[1], Clk, 1'b1, Enbar),
			reg0(out[0], in[0], Clk, 1'b1, Enbar);

	endmodule
`endif