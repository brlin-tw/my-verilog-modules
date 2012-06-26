//testbench of registerWnegClknegLoadEnable
//時間相關設定
`timescale 1ns / 100ps

//include D.U.T.模組
`include "Source_code/registerWnegClknegLoadEnable/registerWnegClknegLoadEnable.v"

//時脈產生器半週期
`define CLOCK_PERIOD_HALF 10

module registerWnegClknegLoadEnable_tb();
//宣告port類型
  reg in, Enbar, Clk;
  wire out;

	//D.U.T. instantiation
	registerWnegClknegLoadEnable
		dut(.out(out),
				.in(in),
				.Enbar(Enbar),
				.ClkN(Clk));

  /* 時脈產生器  */
  always begin
    #`CLOCK_PERIOD_HALF Clk = !Clk;
	end


  initial begin
		//初始化
		$dumpfile ("Simulation/registerWnegClknegLoadEnable_tb.vcd");
		$dumpvars;
		$monitor($time, " Clk = %b, Enbar = %b, in = %b -> out = %b", Clk, Enbar, in, out);
		Clk = 1'b1;
		Enbar = 1'b1;
		in = 1'b0;

		//模擬
		#10
		in = 1'b1;
		#10
		Clk = 1'b0;
		#10
		Enbar = 1'b0;
		#10
		in = 1'b1;
		#10
		$finish;

	end
endmodule