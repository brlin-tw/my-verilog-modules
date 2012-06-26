//include guard
`ifndef registerWnegClknegLoadEnable8bit
	`define registerWnegClknegLoadEnable8bit

	`include "Source_code/registerWnegClknegLoadEnable/registerWnegClknegLoadEnable.v"

	// 指定模擬器的時間單位與精確度
	// 參考資料 | Reference Data
	// 		http://www.asic-world.com/verilog/compiler2.html#%60timescale
	`timescale 1ns / 100ps

	/* 模組名稱 | Module Name
				registerWnegClknegLoadEnable8bit
		 著作權宣告 | Copyright Declaration
				copyright 2012 林博仁(pika1021@gmail.com) */
	module registerWnegClknegLoadEnable8bit(out, in, Enbar, Clkbar);
		//port 輸出輸入宣告
		output [7:0] out;
		input [7:0] in;
		input Enbar, Clkbar;

		//port 類型宣告
		wire [7:0] out;
		wire [7:0] in;
		wire Enbar, Clkbar;

		registerWnegClknegLoadEnable
			reg7(out[7], in[7], Enbar, Clkbar),
			reg6(out[6], in[6], Enbar, Clkbar),
			reg5(out[5], in[5], Enbar, Clkbar),
			reg4(out[4], in[4], Enbar, Clkbar),
			reg3(out[3], in[3], Enbar, Clkbar),
			reg2(out[2], in[2], Enbar, Clkbar),
			reg1(out[1], in[1], Enbar, Clkbar),
			reg0(out[0], in[0], Enbar, Clkbar);

	endmodule
`endif