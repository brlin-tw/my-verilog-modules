//testbench範本
//時間相關設定
`timescale 1ns / 100ps

//include D.U.T.模組
`include "Source_code/SAP_1_control_matrix/SAP_1_control_matrix.v"

//時脈頻率
//`define CLOCK_FREQ 50

module SAP_1_control_matrix_tb();
//宣告port類型
  reg LDA, ADD, SUB, OUT, HLT;
  reg [6:1]ring_counter;
  wire Cp, Ep, LMbar, CEbar, LIbar, EIbar, LAbar, EA, SU, EU, LBbar, LObar;

	//D.U.T. instantiation
	SAP_1_control_matrix
		dut(Cp, Ep, LMbar, CEbar, LIbar, EIbar, LAbar, EA, SU, EU, LBbar, LObar, LDA, ADD, SUB, OUT, HLT, ring_counter);

  /* 時脈產生器
  always begin
    #`CLOCK_FREQ Clk = !Clk;
	end
  */

  initial begin
		//初始化
		$dumpfile ("Simulation/SAP_1_control_matrix_tb.vcd");
		$dumpvars;
		$monitor($time, " ");
		ring_counter = 6'b000001;
		LDA = 'b0;
		ADD = 'b0;
		SUB = 'b0;
		OUT = 'b0;
		HLT = 'b1;

		//模擬
		#10
		ring_counter = ring_counter << 1;
		#10
		ring_counter = ring_counter << 1;
		#10
		ring_counter = ring_counter << 1;
		#10
		ring_counter = ring_counter << 1;
		#10
		ring_counter = ring_counter << 1;
		#10
		$finish;
	end
endmodule
