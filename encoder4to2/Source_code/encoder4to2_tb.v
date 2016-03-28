//encoder4to2 testbench
`timescale 1ns / 100ps
`include "encoder4to2/encoder4to2.v"

module encoder4to2_tb;
  reg [3:0]i;
  wire [1:0]o;

	//D.U.T. instantiation
	encoder4to2 enc42(o, i);
	
	//初始化
  initial
    begin
      $dumpfile ("Simulation/encoder4to2_tb.vcd");
      $dumpvars;
      $monitor($time, " i=%4b --> o=%2b", i, o);
      i = 4'b0000;
      
    end

	//模擬
  initial
    begin
			i = 4'b0001;
			#10
			i = 4'b0010;
			#10
			i = 4'b0100;
			#10
			i = 4'b1000;
			#10
			$finish;
    end

endmodule
