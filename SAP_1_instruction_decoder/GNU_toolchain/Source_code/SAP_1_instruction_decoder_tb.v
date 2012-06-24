//testbench of SAP_1_instruction_decoder
`timescale 1ns / 100ps

//include模組
`include "Source_code/SAP_1_instruction_decoder/SAP_1_instruction_decoder.v"
//時脈頻率
`define CLOCK_FREQ 10

module SAP_1_instruction_decoder_tb();
  reg [7:4]in;
  wire LDA, ADD, SUB, OUT, HLT;

	//D.U.T. instantiation
	SAP_1_instruction_decoder
		DUT(.LDA(LDA),
				.ADD(ADD),
				.SUB(SUB),
				.OUT(OUT),
				.HLT(HLT),
				.in(in));

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
      $monitor($time, " LDA =%b ADD=%b SUB=%b OUT=%b HLT=%b in=%4b", LDA, ADD, SUB, OUT, HLT, in);
			in = 4'b0000;

      //模擬
			#10
      in = 4'b0001;
      #10
      in = 4'b0010;
      #10
      in = 4'b1110;
      #10
      in = 4'b1111;
      #10
      $finish;

    end
endmodule
