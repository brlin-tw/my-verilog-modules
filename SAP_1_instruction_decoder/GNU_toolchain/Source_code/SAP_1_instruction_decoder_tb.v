//testbench of SAP_1_instruction_decoder
`timescale 1ns / 100ps

//include模組
`include "Source_code/SAP_1_instruction_decoder/SAP_1_instruction_decoder.v"
//時脈頻率
`define CLOCK_FREQ 50

module SAP_1_instruction_decoder_tb();
  reg [7:4]i;
  wire LDA, ADD, SUB, OUT, HLT;

	//D.U.T. instantiation
	SAP_1_instruction_decoder
		DUT(.LDA(LDA),
				.ADD(ADD),
				.SUB(SUB),
				.OUT(OUT),
				.HLT(HLT),
				.i(i));

  /*時脈初始化
  always
	  begin
    #`CLOCK_FREQ Clk = !Clk;
	  end
  */

  initial
    begin
	    //初始化
      $dumpfile ("Simulation/SAP_1_instruction_decoder_tb.vcd");
      $dumpvars;
      $monitor($time, "LDA =%b ADD=%b SUB=%b OUT=%b HLT=%b i=%4b", LDA, ADD, SUB, OUT, HLT, i);
			i = 4'b0000;

      //模擬
			#10
      i = 4'b0001;
      #20
      i = 4'b0010;
      #30
      i = 4'b1110;
      #40
      i = 4'b1111;
      #50
      $finish;

    end
endmodule
