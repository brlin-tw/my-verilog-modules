//decoder3to8 testbench
`timescale 1ns / 100ps
`include "Source_code/decoder3to8/decoder3to8.v"

//時脈頻率
//`define CLOCK_FREQ 50

module _tb;
  reg [2:0] in;
  wire [7:0] out;

	//D.U.T. instantiation
  decoder3to8 dec38(out, in);
  
  initial
    begin
			//初始化    
      $dumpfile ("Simulation/decoder3to8_tb.vcd");
      $dumpvars;
      $monitor($time, " in=%3b -> out=%8b", in, out);
      in = 3'b000;
      
      //測試
      #10 in = 3'b001;
      #10 in = 3'b010;
      #10 in = 3'b011;
      #10 in = 3'b100;
      #10 in = 3'b101;
      #10 in = 3'b110;
      #10 in = 3'b111;
      #10 $finish();
    end
endmodule
