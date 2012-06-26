/* 模組名稱： 負緣觸發Clk, Clr的D型正反器
   著作權宣告：copyright 2012 林博仁(pika1021@gmail.com)
   */
`ifndef FLIPFLOPDNCLKNRST_V
	`define FLIPFLOPDNCLKNRST_V
	`timescale 1ns / 100ps
	module flipflopDnegClknegRst(Q, Qbar, D, ClkN, ClrN);
		input D, ClkN, ClrN;
		output reg Q, Qbar;

		always @(negedge ClkN or negedge ClrN)
		begin
			if(~ClrN) begin
				Q <= 0;
				Qbar <= 1;
			end else begin
				Q <= D;
				Qbar <= ~D;
			end
		end
	endmodule
`endif

