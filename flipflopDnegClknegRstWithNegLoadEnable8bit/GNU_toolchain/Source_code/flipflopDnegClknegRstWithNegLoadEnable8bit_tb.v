//testbench flipflopDnegClknegRstWithNegLoadEnable4bit
//時間相關設定
`timescale 1ns / 100ps

//include D.U.T.模組
`include "Source_code/flipflopDnegClknegRstWithNegLoadEnable8bit/flipflopDnegClknegRstWithNegLoadEnable8bit.v"

//時脈頻率
`define CLOCK_FREQ 10

module flipflopDnegClknegRstWithNegLoadEnable8bit_tb();
//宣告port類型
  reg ClkN, ClrN, Enbar;
  reg [7:0]new_data;
  wire [7:0]register;

	//D.U.T. instantiation
	flipflopDnegClknegRstWithNegLoadEnable8bit
		dut(.register(register),
				.new_data(new_data),
				.ClkN(ClkN),
				.ClrN(ClrN),
				.Enbar(Enbar));

  /* 時脈產生器 */
  always begin
    #`CLOCK_FREQ ClkN = !ClkN;
	end

  initial begin
		//初始化
		$dumpfile ("Simulation/flipflopDnegClknegRstWithNegLoadEnable8bit_tb.vcd");
		$dumpvars;
		$monitor($time, " register=%8b, new_data=%8b, ClkN=%b, ClrN=%b, Enbar=%b", register, new_data, ClkN, ClrN, Enbar);
		new_data=8'b00000000; ClrN='b0; ClkN='b0; Enbar='b1;

		//模擬
		#15 new_data='b01010101;

		#35 Enbar='b0;

		#55 ClrN='b1;

		#85 new_data=8'b10101010;

		#105
		$finish;
	end
endmodule
