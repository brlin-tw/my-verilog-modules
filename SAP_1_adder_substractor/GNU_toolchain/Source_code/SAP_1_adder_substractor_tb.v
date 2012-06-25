//testbench of SAP_1_adder_substractor
//時間相關設定
`timescale 1ns / 100ps

//include D.U.T.模組
`include "Source_code/SAP_1_adder_substractor/SAP_1_adder_substractor.v"

//時脈頻率
//`define CLOCK_FREQ 50

module SAP_1_adder_substractor_tb();
//宣告port類型
  reg [7:0] accumulater_in;
  reg [7:0] register_B_in;
  reg SU;
  reg EU;
  wire [7:0] out;

	//D.U.T. instantiation
	SAP_1_adder_substractor
		dut(out, accumulater_in, register_B_in, SU, EU);

  /* 時脈產生器
  always begin
    #`CLOCK_FREQ Clk = !Clk;
	end
  */

  initial begin
		//初始化
		$dumpfile ("Simulation/SAP_1_adder_substractor_tb.vcd");
		$dumpvars;
		$monitor($time, " accumulater_in=%8b, register_B_in=%8b, EU=%b, SU=%b -> out=%8b", accumulater_in, register_B_in, SU, EU, out);
		accumulater_in = 4'b0000;
		register_B_in = 4'b0000;
		SU = 0;
		EU = 1;

		//模擬
		#10
			register_B_in = 4'b0001;
		#10
			accumulater_in = 4'b1010;
		#10
			SU = 1;
		#10
			EU = 0;
		#10
			$finish;
	end
endmodule
