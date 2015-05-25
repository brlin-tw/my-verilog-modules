//decoderDisplay7Segment testbench
`timescale 1ns / 100ps
`include "decoderDisplay7Segment.v"

//時脈頻率
//`define CLOCK_FREQ 50

module decoderDisplay7Segment_tb;
  reg [3:0]i;
  wire [7:0]o;

	//D.U.T. instantiation
	decoderDisplay7Segment sevSegDec(o, i);

	//初始化
  initial
    begin
      $dumpfile ("Simulation/decoderDisplay7Segment_testbench.vcd");
      $dumpvars;
      $monitor($time, " i=%4d -> o=%8b", i, o);

      i = 4'b0000;

 			#10
      i = 4'b0000;

      #10
      i = 4'b0001;

 			#10
      i = 4'b0010;

 			#10
      i = 4'b0011;

      #10
      i = 4'b0100;

 			#10
      i = 4'b0101;

 			#10
      i = 4'b0110;

      #10
      i = 4'b0111;

 			#10
      i = 4'b1000;

 			#10
      i = 4'b1001;

 			#10
      i = 4'b1010;

 			#10
      i = 4'b1011;

      #10
      i = 4'b1100;

 			#10
      i = 4'b1101;

			#10
      i = 4'b1110;

      #10
      i = 4'b1111;

      #10
      $finish;
    end
endmodule
