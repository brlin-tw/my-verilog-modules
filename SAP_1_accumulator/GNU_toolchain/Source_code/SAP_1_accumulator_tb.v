//testbench of SAP_1_accumulator
//時間相關設定
`timescale 1ns / 100ps

//include D.U.T.模組
`include "Source_code/SAP_1_accumulator/SAP_1_accumulator.v"

//時脈產生器半週期
`define CLOCK_PERIOD_HALF 10

module SAP_1_accumulator_tb();
//宣告port類型
  reg [7:0] in;
  reg LAbar;
  reg EA;
  reg Clk;
  wire [7:0] s_a_out;
  wire [7:0] bus_out;

	//D.U.T. instantiation
	SAP_1_accumulator
		dut(s_a_out, bus_out, in, LAbar, EA, Clk);

  /* 時脈產生器*/
  always begin
    #`CLOCK_PERIOD_HALF Clk = !Clk;
	end


  initial begin
		//初始化
		$dumpfile ("Simulation/SAP_1_accumulator_tb.vcd");
		$dumpvars;
		$display("\t\t時刻\tin\tLAbar\tEA\tClk -> s_a_out\tbus_out");
		$monitor($time, "\t%8b\t%b\t%b\t%b -> %8b\t%8b", in, LAbar, EA, Clk, s_a_out, bus_out);
		in = 8'b00000000;
		LAbar = 1'b1;
		EA = 1'b0;
		Clk = 1'b0;

		//模擬
		#10
		LAbar = 1'b0;

		#20
		EA = 1'b1;

		#10
		in = 8'b10101010;

		#30
		$finish;
	end
endmodule