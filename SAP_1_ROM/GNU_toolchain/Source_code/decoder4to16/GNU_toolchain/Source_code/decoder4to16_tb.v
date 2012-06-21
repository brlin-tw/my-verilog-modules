//testbench of decoder4to16
//時間相關設定
`timescale 1ns / 100ps

`include "Source_code/counterSyncPosRstWithPosEnUp4bit/counterSyncPosRstWithPosEnUp4bit.v"

//include D.U.T.模組
`include "Source_code/decoder4to16/decoder4to16.v"

//時脈頻率
`define CLOCK_FREQ 10

module decoder4to16_tb();
//宣告port類型
  wire [3:0]in;
  wire [15:0]out;

  reg Rst;
  reg Clk;

  counterSyncPosRstWithPosEnUp4bit
		count(.out(in),
					.clock(Clk),
					.reset(Rst),
					.enable('b1));
	//D.U.T. instantiation
	decoder4to16 dut(out, in);

  /* 時脈產生器*/
  always begin
    #`CLOCK_FREQ Clk = !Clk;
	end

  initial begin
		//初始化
		$dumpfile ("Simulation/decoder4to16_tb.vcd");
		$dumpvars;
		$monitor($time, " out=%16b, in=%4b", out, in);
		Rst = 1'b1; Clk = 1'b0;

		//模擬
		#15
			Rst=1'b0;

		#385
			$finish;
	end
endmodule
