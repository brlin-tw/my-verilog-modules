//testbench flipflopDposClknegRstWithNegLoadEnable
//時間相關設定
`timescale 1ns / 100ps

//include D.U.T.模組
`include "Source_code/flipflopDposClknegRstWithNegLoadEnable/flipflopDposClknegRstWithNegLoadEnable.v"

//時脈頻率
`define CLOCK_FREQ 10

module flipflopDposClknegRstWithNegLoadEnable_tb();
//宣告port類型
  reg D, ClkN, ClrN, Enbar;
  wire Q;

	//D.U.T. instantiation
	flipflopDposClknegRstWithNegLoadEnable
		dut(.Q(Q),
				.D(D),
				.ClkN(ClkN),
				.ClrN(ClrN),
				.Enbar(Enbar));

  /* 時脈產生器 */
  always begin
    #`CLOCK_FREQ ClkN = !ClkN;
	end

  initial begin
		//初始化
		$dumpfile ("Simulation/flipflopDposClknegRstWithNegLoadEnable_tb.vcd");
		$dumpvars;
		$monitor($time, " Q=%b, D=%b, ClkN=%b, ClrN=%b, Enbar=%b", Q, D, ClkN, ClrN, Enbar);
		D='b0; ClrN='b0; ClkN='b0; Enbar='b1;

		//模擬
		#15 D='b1;

		#35 Enbar='b0;

		#55 ClrN='b1;

		#85 D='b0;

		#105
		$finish;
	end
endmodule
