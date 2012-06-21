//testbench of SAP_1_ROM_mapping
//時間相關設定
`timescale 1ns / 100ps

//include D.U.T.模組
`include "Source_code/SAP_1_ROM_mapping/SAP_1_ROM_mapping.v"

//時脈頻率
//`define CLOCK_FREQ 50

module SAP_1_ROM_mapping_tb();
//宣告port類型
  reg ;
  wire ;

	//D.U.T. instantiation

  /* 時脈產生器
  always begin
    #`CLOCK_FREQ Clk = !Clk;
	end
  */

  initial begin
		//初始化
		$dumpfile ("Simulation/_tb.vcd");
		$dumpvars;
		$monitor($time, " ");

		//模擬
	end
endmodule
