//include guard
`ifndef registerWnegClknegLoadEnable
	`define registerWnegClknegLoadEnable
	// 指定模擬器的時間單位與精確度
	// 參考資料 | Reference Data
	// 		http://www.asic-world.com/verilog/compiler2.html#%60timescale
	`timescale 1ns / 100ps

	`include "Source_code/flipflopDnegClknegRstWithNegLoadEnable/flipflopDnegClknegRstWithNegLoadEnable.v"

	/* 模組名稱 | Module Name
   registerWnegClknegLoadEnable
		 著作權宣告 | Copyright Declaration
				copyright 2012 林博仁(pika1021@gmail.com) */
	module registerWnegClknegLoadEnable(out, in, Enbar, ClkN);
		//port 輸出輸入宣告
		output out;
		input in, Enbar, ClkN;

		//port 類型宣告
		wire out, in, Enbar, ClkN;

		flipflopDnegClknegRstWithNegLoadEnable
			flip1(.Q(out),
						.D(in),
						.ClkN(ClkN),
						.ClrN(1'b1),
						.Enbar(Enbar));

	endmodule
`endif