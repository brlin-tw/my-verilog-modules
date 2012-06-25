//testbench of SAP_1_MAR_ROM_TOP
//時間相關設定
`timescale 1ns / 100ps

//include D.U.T.模組
`include "Source_code/SAP_1_MAR_ROM_TOP/SAP_1_MAR_ROM_TOP.v"

//時脈產生器半週期
`define CLOCK_PERIOD_HALF 5

module SAP_1_MAR_ROM_TOP_tb();
//宣告port類型
  reg LMbar, CEbar, Clk;
  reg [3:0] address;
  wire [7:0] instruction;

	//D.U.T. instantiation
	SAP_1_MAR_ROM_TOP
		dut(.instruction(instruction),
				.address(address),
				.LMbar(LMbar),
				.CEbar(CEbar),
				.Clk(Clk));

  /* 時脈產生器*/
  always begin
    #`CLOCK_PERIOD_HALF Clk = !Clk;
	end

  initial begin
		//初始化
		$dumpfile ("Simulation/SAP_1_MAR_ROM_TOP_tb.vcd");
		$dumpvars;
		$monitor($time, " ");
		Clk = 'b1;
		LMbar = 'b1;
		CEbar = 'b1;

		//模擬
		#10
			address = 4'b0000;
		#5
			LMbar = 'b0;
		#5
			CEbar = 'b0;
		#5
			LMbar = 'b1;
		#5
			address = 4'b1010;
			CEbar = 'b1;
		#10
			$finish;

	end
endmodule