//include guard
`ifndef SAP_1_control_matrix
	`define SAP_1_control_matrix
	// 時間相關設定
	`timescale 1ns / 100ps

	/* 模組名稱：SAP_1_control_matrix
		著作權宣告：copyright 2012 林博仁(pika1021@gmail.com) */
	module SAP_1_control_matrix(CONTROL, LDA, ADD, SUB, OUT, ring_counter);
	//port 輸出輸入宣告
		output [11:0]CONTROL;
		input LDA, ADD, SUB, OUT;
		input [6:1]ring_counter;

	//port 類型宣告
		wire [11:0]CONTROL;
		wire LDA, ADD, SUB, OUT;
		wire [6:1]ring_counter;

	wire Cp, Ep, LMbar, CEbar, LIbar, EIbar, LAbar, EA, SU, EU, LBbar, LObar;
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

	assign CONTROL = {Cp, Ep, LMbar, CEbar, LIbar, EIbar, LAbar, EA, SU, EU, LBbar, LObar};
	endmodule
`endif