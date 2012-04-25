//非同步clock之四位元D型正反器
`ifndef FOURBITDFFCOUNTWASYNCLK_V
	`timescale 1ns / 100ps
	`include "Source_code/dFlipFlopNegClkNegRst/dFlipFlopNegClkNegRst.v"
	module fourBitDFFdownCounterWasynClock(count, Clk, ClrN);
		output [3:0]count;
		input Clk, ClrN;
		wire w3, w2, w1, w0;
		wire [3:0]dummy;
		
		dFlipFlopNegClkNegRst c0(w0, dummy[0], ~w0, Clk, ClrN), 
		c1(w1, dummy[1], ~w1, w0, ClrN), 
		c2(w2, dummy[2], ~w2, w1, ClrN), 
		c3(w3, dummy[3], ~w3, w2, ClrN);
		
		assign count[0] = w0, 
						count[1] = w1, 
						count[2] = w2, 
						count[3] = w3;
		
	endmodule
`endif
