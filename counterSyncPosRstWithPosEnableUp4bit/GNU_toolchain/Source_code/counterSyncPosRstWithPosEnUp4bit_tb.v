//testbench範本
//時間相關設定
`timescale 1ns / 100ps

//include D.U.T.模組
`include "Source_code/counterSyncPosRstWithPosEnUp4bit/counterSyncPosRstWithPosEnUp4bit.v"

//時脈頻率
`define CLOCK_FREQ 10

module counterSyncPosRstWithPosEnUp4bit_tb();
//宣告port類型
  reg Clk, reset, enable;
  wire [3:0]out;

	//D.U.T. instantiation
	counterSyncPosRstWithPosEnUp4bit
		dut(.out(out),
				.clock(Clk),
				.reset(reset),
				.enable(enable));

  /* 時脈產生器*/
  always begin
    #`CLOCK_FREQ Clk = !Clk;
	end


  initial begin
		//初始化
		$dumpfile ("Simulation/counterSyncPosRstWithPosEnUp4bit_tb.vcd");
		$dumpvars;
		$monitor($time, " reset=%b, enable=%b, clock=%b --> out=%d",
											reset, enable, Clk, out);
		Clk = 'b0;
		enable = 'b0;
		reset = 'b1;

		//模擬
		#15
		reset = 'b0;

		#35
		enable = 'b1;

		#65
		enable = 'b0;

		#85
		enable = 'b1;

		#235
		$finish;
	end
endmodule
