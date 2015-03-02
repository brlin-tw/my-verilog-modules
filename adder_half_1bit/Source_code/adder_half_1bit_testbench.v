//testbench of adder_half_1bit
//時間相關設定
`timescale 1ns / 100ps

//include D.U.T.模組
`include "../../Source_code/adder_half_1bit.v"

//時脈產生器半週期
//`define CLOCK_PERIOD_HALF 10

module adder_half_1bit_testbench();
	//宣告port類型
	reg input_a, input_b;
	wire output_carry, output_sum;

	//D.U.T. instantiation
	adder_half_1bit dut(output_carry, output_sum, input_a, input_b);
	
  /* 時脈產生器
  always begin
    #`CLOCK_PERIOD_HALF Clk = !Clk;
	end
  */
  
  initial begin
		//初始化
		$dumpfile ("Simulation/adder_half_1bit.vcd");
		$dumpvars;
		$display("\t\t時間\tcarry\tsum\tb\ta");
		$monitor("%d\t%b\t%b\t%b\t%b", $time, output_carry, output_sum, input_a, input_b);
		
		//模擬
		// 0, 0
		input_a = 0;
		input_b = 0;
		
		#10 //0, 1
		input_a = 1;
		
		#10 //1, 0
		input_a = 0;
		input_b = 1;
		
		#10 //1, 1
		input_a = 1;
		
		#10
		$finish;
	end
endmodule