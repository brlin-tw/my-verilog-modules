//testbench of multiplier2x2
//時間相關設定
`timescale 1ns / 100ps

//include D.U.T.模組
`include "../../Source_code/multiplier2x2/multiplier2x2.v"

//時脈產生器半週期
//`define CLOCK_PERIOD_HALF 10

module multiplier2x2_testbench();
//宣告port類型
  reg [1:0]multiplicand, multiplier;
  wire [3:0]product;

	//D.U.T. instantiation
	multiplier2x2 dut(product, multiplicand, multiplier);
	
  /* 時脈產生器
  always begin
    #`CLOCK_PERIOD_HALF Clk = !Clk;
	end
  */
  
  initial begin
		//初始化
		$dumpfile ("Simulation/multiplier2x2_testbench.vcd");
		$dumpvars;
		$display("\t\t時間\t積\t被乘數\t乘數");
		$monitor("%d\t%d\t%d\t%d", $time, product, multiplicand, multiplier);

		//模擬
		multiplicand = 0;
		multiplier = 0;
		
		#10
		multiplier = 1;
		
		#10
		multiplier = 2;
		
		#10
		multiplier = 3;
		
		#10
		multiplicand = 1;
		multiplier = 0;
		
		#10
		multiplier = 1;
		
		#10
		multiplier = 2;
		
		#10
		multiplier = 3;

		#10
		multiplicand = 2;
		multiplier = 0;
		
		#10
		multiplier = 1;
		
		#10
		multiplier = 2;
		
		#10
		multiplier = 3;

		#10
		multiplicand = 3;
		multiplier = 0;
		
		#10
		multiplier = 1;
		
		#10
		multiplier = 2;
		
		#10
		multiplier = 3;
		
		#10
		$finish;
	end
endmodule