//encoder16to4 testbench
`timescale 1ns / 100ps
`include "../Source_code/encoder16to4/encoder16to4.v"

//時脈頻率
//`define CLOCK_FREQ 50

module encoder16to4_tb;
  reg [15:0]i;
  wire [3:0]o;

	//D.U.T. instantiation
	encoder16to4 enc16_4(o, i);
	
	//初始化
  initial
    begin
      $dumpfile ("Simulation/encoder16to4_tb.vcd");
      $dumpvars;
      $monitor($time, " i=%16b --> o=%4b", i, o);
    end

	//模擬
  initial
    begin
			i=16'b0000000000000001;
			#10
			i=16'b0000000000000010;
			#10
			i=16'b0000000000000100;
			#10
			i=16'b0000000000001000;
			#10
			i=16'b0000000000010000;
			#10
			i=16'b0000000000100000;
			#10
			i=16'b0000000001000000;
			#10
			i=16'b0000000010000000;
			#10
			i=16'b0000000100000000;	
			#10
			i=16'b0000001000000000;
			#10
			i=16'b0000010000000000;
			#10
			i=16'b0000100000000000;			
			#10
			i=16'b0001000000000000;		
			#10
			i=16'b0010000000000000;
			#10
			i=16'b0100000000000000;
			#10
			i=16'b1000000000000000;			
			#10
			$finish();
    end

endmodule
