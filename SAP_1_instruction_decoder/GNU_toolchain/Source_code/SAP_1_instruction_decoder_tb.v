//testbench of SAP_1_instruction_decoder
`timescale 1ns / 100ps

//include模組
`include "Source_code/SAP_1_instruction_decoder/SAP_1_instruction_decoder.v"
//時脈頻率
`define CLOCK_FREQ 50

module SAP_1_instruction_decoder_tb();
  reg ;
  wire ;

	//D.U.T. instantiation

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
      $monitor($time, " ");

      //模擬
    end
endmodule
