/* 模組名稱： D型正反器（負緣觸發）
   著作權宣告：copyright 2012 林博仁(pika1021@gmail.com)
   */
`ifndef FLIPFLOPDPCLKPRST_V
	`define FLIPFLOPDPCLKPRST_V
	`timescale 1ns / 100ps
	module flipflopDposClknegRst(Q, Qbar, D, Clk, ClrN);
		input D, Clk, ClrN;
		output reg Q, Qbar;

		always @(posedge Clk or negedge ClrN)
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

