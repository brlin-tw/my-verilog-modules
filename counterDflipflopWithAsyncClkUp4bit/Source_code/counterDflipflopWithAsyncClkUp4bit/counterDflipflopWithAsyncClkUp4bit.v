//非同步clock之四位元D型正反器上數計數器
//counterDflipflopWithAsyncClkUp4bit
`ifndef FOURBITDFFUPCOUNTWASYNCLK_V
	`timescale 1ns / 100ps
	`include "../Source_code/flipflopDnegClknegRst/flipflopDnegClknegRst.v"
	module counterDflipflopWithAsyncClkUp4bit(count, Clk, ClrN);
		output [3:0]count;
		input Clk, ClrN;
		wire w3, w2, w1, w0;

		flipflopDnegClknegRst
			c0(w0, , ~w0, Clk, ClrN),
			c1(w1, , ~w1, w0, ClrN),
			c2(w2, , ~w2, w1, ClrN),
			c3(w3, , ~w3, w2, ClrN);

		assign count = {w3, w2, w1, w0};
	endmodule
`endif
