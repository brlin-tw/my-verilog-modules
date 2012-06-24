//include guard
`ifndef SAP_1_control_matrix
	`define SAP_1_control_matrix
	// 時間相關設定
	`timescale 1ns / 100ps

	/* 模組名稱：SAP_1_control_matrix
		著作權宣告：copyright 2012 林博仁(pika1021@gmail.com) */
	module SAP_1_control_matrix(Cp, Ep, LMbar, CEbar, LIbar, EIbar, LAbar, EA, SU, EU, LBbar, LObar, LDA, ADD, SUB, OUT, HLT, ring_counter);
	//port 輸出輸入宣告
		output Cp, Ep, LMbar, CEbar, LIbar, EIbar, LAbar, EA, SU, EU, LBbar, LObar;
		input LDA, ADD, SUB, OUT, HLT;
		input [6:1]ring_counter;

	//port 類型宣告
		wire Cp, Ep, LMbar, CEbar, LIbar, EIbar, LAbar, EA, SU, EU, LBbar, LObar;
		wire LDA, ADD, SUB, OUT, HLT;
		wire [6:1]ring_counter;

  assign	Cp = ring_counter[2];
	assign Ep = ring_counter[1];

	assign LMbar = ~((LDA || ADD || SUB)
									&& ring_counter[4] || ring_counter[1]);

	assign CEbar = ~(ring_counter[3] ||
										(LDA || ADD || SUB) &&
										ring_counter[5]);

	assign LIbar = ~ring_counter[3];
	assign EIbar = ~((LDA || ADD || SUB) &&
										ring_counter[4]);
	assign LAbar = ~(LDA && ring_counter[5] ||
										(ADD || SUB) &&
										ring_counter[6]);
	assign EA = OUT && ring_counter[4];
	assign SU = SUB && ring_counter[6];
	assign EU = (ADD || SUB) && ring_counter[6];
	assign LBbar = ~((ADD || SUB) &&
									ring_counter[5]);
	assign LObar = ~(OUT && ring_counter[4]);

	endmodule
`endif