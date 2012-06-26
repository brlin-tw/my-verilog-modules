//testbench of registerWnegClknegLoadEnable
//時間相關設定
`timescale 1ns / 100ps

//include D.U.T.模組
`include "Source_code/registerWnegClknegLoadEnable8bit/registerWnegClknegLoadEnable8bit.v"

//時脈產生器半週期
`define CLOCK_PERIOD_HALF 10

module registerWnegClknegLoadEnable8bit_tb();
//宣告port類型
  reg [7:0] in;
  reg Enbar, Clk;
  wire [7:0] out;

	//D.U.T. instantiation
	registerWnegClknegLoadEnable8bit
		dut(.out(out),
				.in(in),
				.Enbar(Enbar),
				.Clkbar(Clk));

  /* 時脈產生器  */
  always begin
    #`CLOCK_PERIOD_HALF Clk = !Clk;
	end


  initial begin
		//初始化
		$dumpfile ("Simulation/registerWnegClknegLoadEnable8bit_tb.vcd");
		$dumpvars;
		$monitor($time, " Clk = %b, Enbar = %b, in = %8b -> out = %8b", Clk, Enbar, in, out);
		Clk = 1'b1;
		Enbar = 1'b1;
		in = 8'b00000000;

		//模擬
		#10
		in = 8'b1111111;
		#10
		Clk = 1'b0;
		#10
		Enbar = 1'b0;
		#10
		in = 8'b10101010;
		#10
		$finish;

	end
endmodule