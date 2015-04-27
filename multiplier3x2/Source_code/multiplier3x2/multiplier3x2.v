//include guard
`ifndef multiplier3x2_included
	`define multiplier3x2_included
	// 指定模擬器的時間單位與精確度
	// 參考資料 | Reference Data
	// 		http://www.asic-world.com/verilog/compiler2.html#%60timescale
	`timescale 1ns / 100ps

	`include "../../Source_code/adder_half_1bit/adder_half_1bit.v"
	`include "../../Source_code/adder_full_1bit/adder_full_1bit.v"
	
	/* 模組名稱 | Module Name
	     3x2 乘法器 gate level 設計
		 著作權宣告 | Copyright Declaration
				copyright 2015 09957010 林博仁(Henry.Lin.Taiwan@gmail.com) */
	module multiplier3x2(product, multiplicand, multiplier);
		//port 類型宣告
		output [4:0]product;
		input [2:0]multiplicand;
		input [1:0]multiplier;
		wire m1andm0, m0andm1;
		wire product2carry;
		wire m1andm1;
		wire m2andm0;
		wire product3carry;
		
		and multiplicand0multiplier0(product[0], multiplicand[0], multiplier[0]);
		
		and multiplicand1multiplier0(m1andm0, multiplicand[1], multiplier[0]);
		and multiplicand0multiplier1(m0andm1, multiplicand[0], multiplier[1]);
		adder_half_1bit product1(product2carry, product[1], m1andm0, m0andm1);
		
		and multiplicand2multiplier0(m2andm0, multiplicand[2], multiplier[0]);
		and multiplicand1multiplier1(m1andm1, multiplicand[1], multiplier[1]);
		adder_full_1bit product2(product3carry, product[2], m2andm0, m1andm1, product2carry);

		and multiplicand2multiplier1(m2andm1, multiplicand[2], multiplier[1]);
		adder_half_1bit product3(product[4], product[3], m2andm1, product3carry);
		
	endmodule
`endif