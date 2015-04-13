//testbench of adder_full_4bit
`timescale 1ns / 100ps

//include模組
`include "Source_code/adder_full_4bit/adder_full_4bit.v"

//時脈頻率
//`define CLOCK_FREQ 50

module adder_full_4bit_tb;
  reg [3:0]add, aug;
  reg preC;
  wire proC;
  wire [3:0]sum;

	//D.U.T. instantiation
  adder_full_4bit adder(proC, sum, add, aug, preC);

  initial
    begin
	    //初始化
      $dumpfile ("Simulation/adder_full_4bit_tb.vcd");
      $dumpvars;
      $monitor($time, " add=%4b + aug=%4b + preC=%b = proC=%b + sum=%4b", add, aug, preC, proC, sum);

      //模擬
      add = 4'b0000;
      aug = 4'b0000;
      preC = 0;
      #10
      preC = 1;
      #10
      add = 4'b0101;
      aug = 4'b1010;
      preC = 1;
      #10
      $finish;
    end
endmodule
