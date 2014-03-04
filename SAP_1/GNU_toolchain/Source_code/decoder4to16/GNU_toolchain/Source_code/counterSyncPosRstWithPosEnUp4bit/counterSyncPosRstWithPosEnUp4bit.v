//include guard
`ifndef COUNTER_SYNC_POS_RST_W_POS_EN_UP_4
	`define COUNTER_SYNC_POS_RST_W_POS_EN_UP_4
	// 時間相關設定
	`timescale 1ns / 100ps

	/* 模組名稱：4位元正緣觸發Reset、Enable同步上數計數器
		 著作權宣告：copyright 2012 林博仁(pika1021@gmail.com) */
	module counterSyncPosRstWithPosEnUp4bit(
		out,
		clock,
		reset,
		enable);//決定是否隨clock pulse遞增
		//port 輸出輸入宣告
		output [3:0] out;
		input clock, reset, enable;

		//port 類型宣告
		reg [3:0] out;
		wire clock, reset, enable;

		//
		always @ (posedge clock) begin
			//如果reset為HIGH就重設output
			if (reset == 1'b1) begin
				out <= #1 4'b0000;
			end
			//如果enable為HIGH就遞增計數器
			else if(enable == 1'b1) begin
				out <= #1 out + 1;
			end
		end
	endmodule
`endif