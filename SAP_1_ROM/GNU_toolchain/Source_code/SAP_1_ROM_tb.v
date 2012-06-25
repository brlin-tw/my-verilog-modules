//testbench of SAP_1_ROM
//時間相關設定
`timescale 1ns / 100ps

//include D.U.T.模組
`include "Source_code/SAP_1_ROM/SAP_1_ROM.v"

//時脈頻率
//`define CLOCK_FREQ 50

module SAP_1_ROM_tb();
//宣告port類型
  reg [3:0] address_in;
  reg CEbar;
  wire [7:0] instruction_out;

	//D.U.T. instantiation
	SAP_1_ROM
		dut(.instruction_out(instruction_out),
				.address_in(address_in),
				.CEbar(CEbar));

  /* 時脈產生器
  always begin
    #`CLOCK_FREQ Clk = !Clk;
	end
  */

  initial begin
		//初始化
		$dumpfile ("Simulation/SAP_1_ROM_tb.vcd");
		$dumpvars;
		$monitor($time, " address_in=%4b, CEbar=%b -> instruction_out=%2x", address_in, CEbar
		, instruction_out);
		CEbar = 1;
		address_in = 4'b0000;
		// instruction_out should be zzh

		//模擬
		#10
			CEbar = 0;
			// instruction_out should be 09h
		#10
			address_in = 4'b0001;
		#10
			address_in = 4'b0010;
		#10
			address_in = 4'b0011;
		#10
			address_in = 4'b0100;
		#10
			address_in = 4'b0101;
		#10
			address_in = 4'b0110;
		#10
			address_in = 4'b0111;
		#10
			address_in = 4'b1000;
		#10
			address_in = 4'b1001;
		#10
			address_in = 4'b1010;
		#10
			address_in = 4'b1011;
		#10
			address_in = 4'b1100;
		#10
			address_in = 4'b1101;
		#10
			address_in = 4'b1110;
		#10
			address_in = 4'b1111;
		#10
			$finish;
	end
endmodule
