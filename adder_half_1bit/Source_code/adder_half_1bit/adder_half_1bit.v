//include guard
`ifndef adder_half_1bit
	`define adder_half_1bit
	// 指定模擬器的時間單位與精確度
	// 參考資料 | Reference Data
	// 		http://www.asic-world.com/verilog/compiler2.html#%60timescale
	`timescale 1ns / 100ps

	/* 模組名稱 | Module Name
			一位元半加法器
		 著作權宣告 | Copyright Declaration
				copyright 2012 林博仁(pika1021@gmail.com) */
	module adder_half_1bit(carry, sum, input_a, input_b);
		//port 類型宣告
		output carry, sum;
		input input_a, input_b;
		
		xor gate_sum(sum, input_a, input_b);
		and gate_carry(carry, input_a, input_b);

	endmodule
`endif