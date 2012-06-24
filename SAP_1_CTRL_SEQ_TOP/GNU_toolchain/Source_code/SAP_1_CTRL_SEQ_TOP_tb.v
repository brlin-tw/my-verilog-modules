//testbench of SAP_1_CTRL_SEQ_TOP
//時間相關設定
`timescale 1ns / 100ps

//include D.U.T.模組
`include "Source_code/SAP_1_CTRL_SEQ_TOP/SAP_1_CTRL_SEQ_TOP.v"

//時脈產生器頻率
`define CLOCK_FREQ 5

module SAP_1_CTRL_SEQ_TOP_tb();
//宣告port類型
  reg Clk, Clr;
  reg [7:4]opcode;
  wire Cp, Ep, LMbar, CEbar, LIbar, EIbar, LAbar, EA, SU, EU, LBbar, LObar;

	//D.U.T. instantiation
	SAP_1_CTRL_SEQ_TOP dut(
		Cp, Ep, LMbar, CEbar, LIbar, EIbar, LAbar, EA, SU, EU, LBbar, LObar, opcode, Clr, Clk);

  /* 時脈產生器*/
  always begin
    #`CLOCK_FREQ Clk = !Clk;
	end

  initial begin
		//初始化
		$dumpfile ("Simulation/SAP_1_CTRL_SEQ_TOP_tb.vcd");
		$dumpvars;
		$monitor($time, " ");
		Clk = 'b0;
		Clr = 'b1;

		//模擬
		#15
		Clr = 'b0;
		//LDA
		//opcode = 4'b0000;
		//ADD
		//opcode = 4'b0001;
		//SUB
		//opcode = 4'b0010;
		//OUT
		//opcode = 4'b1110;
		//HLT
		opcode = 4'b1111;

		#65
		$finish;
	end
endmodule