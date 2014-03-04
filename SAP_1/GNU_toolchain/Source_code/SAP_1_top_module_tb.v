//testbench of SAP_1_top_module
//時間相關設定
`timescale 1ns / 100ps

//include D.U.T.模組
`include "Source_code/SAP_1_top_module.v"

//時脈產生器半週期
`define CLOCK_PERIOD_HALF 10

module SAP_1_top_module_tb();
//宣告port類型
  reg Clk;
  reg Clr;
  wire [15:0] outcome_display;
  wire [15:0] busW_display;

	//D.U.T. instantiation
	SAP_1_top_module
		dut(outcome_display, busW_display, Clk, Clr);

  /* 時脈產生器*/
  always begin
    #`CLOCK_PERIOD_HALF Clk = !Clk;
	end

  initial begin
		//初始化
		$dumpfile ("Simulation/SAP_1_top_module_tb.vcd");
		$dumpvars;
		$display("\t\t時間\toutcome\t\t\tbus\t\t\tClk\tClr");
		$monitor("%d\t%8b\t%8b\t%b\t%b", $time, outcome_display, busW_display, Clk, Clr);
		Clk = 'b0;
		Clr = 'b1;

		//模擬
		#15
		Clr = 'b0;

		#100
		$finish;

	end
endmodule