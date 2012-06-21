//testbench範本
//時間相關設定
`timescale 1ns / 100ps

//include D.U.T.模組
`include "Source_code/SAP_1_control_matrix/SAP_1_control_matrix.v"

//時脈頻率
//`define CLOCK_FREQ 50

module SAP_1_control_matrix_tb();
//宣告port類型
  reg ;
  wire [11:0]CONTROL;

	//D.U.T. instantiation
	SAP_1_control_matrix dut(
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
