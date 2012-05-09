//testbench範本
`timescale 1ns / 100ps

//include模組
`include "Source_code/fullAdder1bit/fullAdder1bit.v"

//時脈頻率
//`define CLOCK_FREQ 50

module fullAdder1bit_tb;
  reg add, aug, preC;
  wire proC, sum;

	//D.U.T. instantiation
  fullAdder1bit adder(proC, sum, add, aug, preC);

  /*時脈初始化
  always
	  begin
    #`CLOCK_FREQ Clk = !Clk;
	  end
  */


  initial
    begin
	    //初始化
      $dumpfile ("Simulation/fullAdder1bit_tb.vcd");
      $dumpvars;
      $monitor($time, " add=%b + aug=%b + preC=%b = proC=%b + sum=%b", add, aug, preC, proC, sum);

      //模擬
      add = 0;
      aug = 0;
      preC = 0;
      #10
      preC = 1;
      #10
      aug = 1; preC = 0;
      #10
      preC = 1;
      #10
      add = 1; aug = 0; preC = 0;
      #10
      preC = 1;
      #10
      aug = 1; preC = 0;
      #10
      preC = 1;
      #10
      $finish;
    end
endmodule
