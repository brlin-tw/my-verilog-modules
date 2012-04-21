//encoder4to2
//作者：林博仁(pika1021@gmail.com)
`ifndef ENCODER4TO2_V_INCLUDED
	`define ENCODER4TO2_V_INCLUDED
	`timescale 1ns / 100ps

	module encoder4to2(y, i);
		output [1:0]y;
		input [3:0]i;
		
		assign y[1] = i[2] | i[3];
		assign y[0] = i[1] | i[3];

	endmodule
`endif
