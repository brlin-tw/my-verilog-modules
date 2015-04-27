//include guard
`ifndef multiplier2x2_included
	`define multiplier2x2_included
	// 指定模擬器的時間單位與精確度
	// 參考資料 | Reference Data
	// 		http://www.asic-world.com/verilog/compiler2.html#%60timescale
	`timescale 1ns / 100ps

	`include "../../Source_code/adder_half_1bit/adder_half_1bit.v"
	
	/* 模組名稱 | Module Name
	     2x2 乘法器 gate level 設計
		 著作權宣告 | Copyright Declaration
				copyright 2015 09957010 林博仁(Henry.Lin.Taiwan@gmail.com) */
	module multiplier2x2(result, multiplicand, multiplier);
		//port 類型宣告
		output [3:0]result;
		input [1:0]multiplicand, multiplier;
		wire m1andm0, m0andm1;
		wire result2carry;
		wire m1andm1;
		
		and multiplicand0multiplier0(result[0], multiplicand[0], multiplier[0]);
		
		and multiplicand1multiplier0(m1andm0, multiplicand[1], multiplier[0]);
		and multiplicand0multiplier1(m0andm1, multiplicand[0], multiplier[1]);
		adder_half_1bit result1(result2carry, result[1], m1andm0, m0andm1);
		
		and multiplicand1multiplier1(m1andm1, multiplicand[1], multiplier[1]);
		adder_half_1bit result3(result[3], result[2], result2carry, m1andm1);

	endmodule
`endif