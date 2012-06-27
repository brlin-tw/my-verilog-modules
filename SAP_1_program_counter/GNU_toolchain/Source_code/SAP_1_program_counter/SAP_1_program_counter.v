//include guard
`ifndef SAP_1_program_counter
	`define SAP_1_program_counter
	// 時間相關設定
	`timescale 1ns / 100ps

	/* dff */
	`include "Source_code/flipflopDnegClknegRst/flipflopDnegClknegRst.v"

	/* 模組名稱：SAP_1_program_counter
		著作權宣告：copyright 2012 林博仁(pika1021@gmail.com) */
	module SAP_1_program_counter(PC, Cp, Ep, Clr, Clk);
	//port 輸出輸入宣告
		output [3:0]PC;
		input Cp, Ep, Clr, Clk;

	//port 類型宣告
		wire Cp, Ep, Clr, Clk;
		wire [3:0]PC;

		wire q0, q1, q2, q3,
				 d0, d1, d2, d3;

	xor g0(d0, Cp, q0),
			g1(d1, Cp, q1),
			g2(d2, Cp, q2),
			g3(d3, Cp, q3);

	//flipflopDnegClknegRst
	flipflopDnegClknegRst
		dff0(
			.Q(q0),
			.D(d0),
			.ClkN(Clk),
			.ClrN(!Clr)),
		dff1(
			.Q(q1),
			.D(d1),
			.ClkN(q0),
			.ClrN(!Clr)),
		dff2(
			.Q(q2),
			.D(d2),
			.ClkN(q1),
			.ClrN(!Clr)),
		dff3(
			.Q(q3),
			.D(d3),
			.ClkN(q2),
			.ClrN(!Clr));

	bufif1 g0(PC[0], q0, Ep);
	bufif1 g1(PC[1], q1, Ep);
	bufif1 g2(PC[2], q2, Ep);
	bufif1 g3(PC[3], q3, Ep);

	endmodule
`endif