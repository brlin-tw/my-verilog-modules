//include guard
`ifndef flipflopDnegClknegRstWithNegLoadEnable
	`define flipflopDnegClknegRstWithNegLoadEnable
	// 時間相關設定
	`timescale 1ns / 100ps

	`include "Source_code/multiplexer2to1/multiplexer2to1.v"
	`include "Source_code/flipflopDnegClknegRst/flipflopDnegClknegRst.v"

	/* 模組名稱：flipflopDnegClknegRstWithNegLoadEnable
		著作權宣告：copyright 2012 林博仁(pika1021@gmail.com) */
	module flipflopDnegClknegRstWithNegLoadEnable(Q, D, ClkN, ClrN, Enbar);
	//port 輸出輸入宣告
		output Q;
		input D, ClkN, ClrN, Enbar;

	//port 類型宣告
		wire Q, D, ClkN, ClrN, Enbar;

	wire newD;
	multiplexer2to1 mul21(newD, D, Q, !Enbar);
	flipflopDnegClknegRst
		dff(Q, , newD, ClkN, ClrN);
	endmodule
`endif