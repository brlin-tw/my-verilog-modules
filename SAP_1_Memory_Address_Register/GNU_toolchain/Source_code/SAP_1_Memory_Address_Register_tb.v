//testbench of SAP_1_Memory_Address_Register
//時間相關設定
`timescale 1ns / 100ps

//include D.U.T.模組
`include "Source_code/SAP_1_Memory_Address_Register/SAP_1_Memory_Address_Register.v"

//時脈頻率
`define CLOCK_FREQ 10

module SAP_1_Memory_Address_Register_tb();
//宣告port類型
  reg Clk, LMbar;
  reg [3:0]address_in;
  wire [3:0]MAR;

	//D.U.T. instantiation
	SAP_1_Memory_Address_Register
		dut(MAR, address_in, Clk, LMbar);

  /* 時脈產生器*/
  always begin
    #`CLOCK_FREQ Clk = !Clk;
	end

  initial begin
		//初始化
		$dumpfile ("Simulation/SAP_1_Memory_Address_Register_tb.vcd");
		$dumpvars;
		$monitor($time, " MAR=%4b, address_in=%4b, LMbar=%b, Clk=%b", MAR, address_in, LMbar, Clk);
		address_in = 4'b0000; LMbar='b1; Clk='b0;

		//模擬
		#15
			address_in = 4'b1111;

		#35
			LMbar='b0;

		#55
			address_in = 4'b1010;

		#75
			LMbar='b1;

		#95
			address_in = 4'b0101;

		#110
			$finish;
	end
endmodule
