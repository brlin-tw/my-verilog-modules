//testbench of adder_full_8bit
`timescale 1ns / 100ps

//include模組
`include "Source_code/adder_full_8bit/adder_full_8bit.v"

//時脈頻率
//`define CLOCK_FREQ 50

module adder_full_8bit_tb;
  reg [7:0]add, aug;
  reg preC;
  wire proC;
  wire [7:0]sum;

	//D.U.T. instantiation
  adder_full_8bit adder(proC, sum, add, aug, preC);

  initial
    begin
	    //初始化
      $dumpfile ("Simulation/adder_full_8bit_tb.vcd");
      $dumpvars;
      $monitor($time, " add=%8b + aug=%8b + preC=%b = proC=%b + sum=%8b", add, aug, preC, proC, sum);

      //模擬
      add = 8'b00000000;
      aug = 8'b00000000;
      preC = 0;
      #10
      preC = 1;
      #10
      add = 8'b01010101;
      aug = 8'b10101010;
      preC = 1;
      #10
      $finish;
    end
endmodule
