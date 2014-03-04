//include guard
`ifndef flipflopDnegClknegRstWithNegLoadEnable8bit
	`define flipflopDnegClknegRstWithNegLoadEnable8bit
	// 時間相關設定
	`timescale 1ns / 100ps

	`include "Source_code/flipflopDnegClknegRstWithNegLoadEnable/flipflopDnegClknegRstWithNegLoadEnable.v"

	/* 模組名稱：flipflopDnegClknegRstWithNegLoadEnable8bit
		著作權宣告：copyright 2012 林博仁(pika1021@gmail.com) */
	module flipflopDnegClknegRstWithNegLoadEnable8bit(register, new_data, ClkN, ClrN, Enbar);
	//port 輸出輸入宣告
		output [7:0]register;
		input [7:0]new_data;
		input ClkN, ClrN, Enbar;

	//port 類型宣告
		wire [7:0]register;
		wire [7:0]new_data;
		wire ClkN, ClrN, Enbar;

flipflopDnegClknegRstWithNegLoadEnable
	dFF0(.Q(register[0]),
				.D(new_data[0]),
				.ClkN(ClkN),
				.ClrN(ClrN), .Enbar(Enbar)),
	dFF1(.Q(register[1]),
				.D(new_data[1]),
				.ClkN(ClkN),
				.ClrN(ClrN), .Enbar(Enbar)),
	dFF2(.Q(register[2]),
				.D(new_data[2]),
				.ClkN(ClkN),
				.ClrN(ClrN), .Enbar(Enbar)),
	dFF3(.Q(register[3]),
				.D(new_data[3]),
				.ClkN(ClkN),
				.ClrN(ClrN), .Enbar(Enbar)),
	dFF4(.Q(register[4]),
				.D(new_data[4]),
				.ClkN(ClkN),
				.ClrN(ClrN), .Enbar(Enbar)),
	dFF5(.Q(register[5]),
				.D(new_data[5]),
				.ClkN(ClkN),
				.ClrN(ClrN), .Enbar(Enbar)),
	dFF6(.Q(register[6]),
				.D(new_data[6]),
				.ClkN(ClkN),
				.ClrN(ClrN), .Enbar(Enbar)),
	dFF7(.Q(register[7]),
				.D(new_data[7]),
				.ClkN(ClkN),
				.ClrN(ClrN), .Enbar(Enbar));
	endmodule
`endif