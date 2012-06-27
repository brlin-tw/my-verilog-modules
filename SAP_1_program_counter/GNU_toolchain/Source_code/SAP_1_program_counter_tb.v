//SAP_1_program_counter
//時間相關設定
`timescale 1ns / 100ps

//include D.U.T.模組
`include "Source_code/SAP_1_program_counter/SAP_1_program_counter.v"

//時脈頻率
`define CLOCK_FREQ 5

module SAP_1_program_counter_tb();
//宣告port類型
  reg Cp, Ep, Clk, Clr;
  wire [3:0]PC;

	//D.U.T. instantiation
	SAP_1_program_counter
		dut(
			.PC(PC),
			.Cp(Cp),
			.Ep(Ep),
			.ClkN(Clk),
			.ClrN(Clr));

  /* 時脈產生器*/
  always begin
    #`CLOCK_FREQ Clk = !Clk;
	end


  initial begin
		//初始化
		$dumpfile ("Simulation/SAP_1_program_counter_tb.vcd");
		$dumpvars;
		$monitor($time, " PC=%4b, Cp=%b, Ep=%b, Clk=%b, Clr=%b", PC, Cp, Ep, Clk, Clr);
		Ep = 'b0;
		Cp = 'b0;
		Clk = 'b0;
		Clr = 'b0;

		//模擬
		#15
		Clr = 'b1;
		Ep = 'b1;
		#35
		Cp = 'b1;


		#75
		Cp = 'b0;

		#95
		Cp = 'b1;

		#165
		$finish;
	end
endmodule
