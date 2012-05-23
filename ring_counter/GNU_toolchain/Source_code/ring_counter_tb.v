//testbench範本
`timescale 1ns / 100ps

//include模組
`include "Source_code/ring_counter/ring_counter.v"

//時脈頻率
`define CLOCK_FREQ 100

module ring_counter_tb();
  reg Clk, Rst;
  wire [6:1]t;

	//D.U.T. instantiation
  ring_counter counter1(t, Clk, Rst);

  /*時脈初始化*/
  always
	  begin
    #`CLOCK_FREQ Clk = !Clk;
	  end

  initial
    begin
	    //初始化
      $dumpfile ("Simulation/ring_counter_tb.vcd");
      $dumpvars;
      $monitor($time, "t=%6b <- Clk = %b, Rst = %b ", t, Clk, Rst);

      Rst = 1'b1;
      Clk = 1'b0;

      //模擬
      #250
      Rst = 1'b0;

      #1500
      $finish();
    end
endmodule
