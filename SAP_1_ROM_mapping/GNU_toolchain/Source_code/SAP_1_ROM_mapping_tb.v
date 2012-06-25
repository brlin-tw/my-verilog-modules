//testbench of SAP_1_ROM_mapping
//時間相關設定
`timescale 1ns / 100ps

//include D.U.T.模組
`include "Source_code/SAP_1_ROM_mapping/SAP_1_ROM_mapping.v"

//時脈頻率
//`define CLOCK_FREQ 50

module SAP_1_ROM_mapping_tb();
//宣告port類型
  reg [15:0]in;
  wire [7:0]out;

	//D.U.T. instantiation
	SAP_1_ROM_mapping
		dut(.in(in),
				.out(out));

  /* 時脈產生器
  always begin
    #`CLOCK_FREQ Clk = !Clk;
	end
  */

  initial begin
		//初始化
		$dumpfile ("Simulation/SAP_1_ROM_mapping_tb.vcd");
		$dumpvars;
		$monitor($time, " in=%16b, out=%2X", in, out);
		in = 16'b0000000000000001;

		//模擬
		#10
		in = 16'b0000000000000010;
		#10
		in = 16'b0000000000000100;
		#10
		in = 16'b0000000000001000;
		#10
		in = 16'b0000000000010000;
		#10
		in = 16'b0000000000100000;
		#10
		in = 16'b0000000001000000;
		#10
		in = 16'b0000000010000000;
		#10
		in = 16'b0000000100000000;
		#10
		in = 16'b0000001000000000;
		#10
		in = 16'b0000010000000000;
		#10
		in = 16'b0000100000000000;
		#10
		in = 16'b0001000000000000;
		#10
		in = 16'b0010000000000000;
		#10
		in = 16'b0100000000000000;
		#10
		in = 16'b1000000000000000;
		#10
		$finish;
	end
endmodule
