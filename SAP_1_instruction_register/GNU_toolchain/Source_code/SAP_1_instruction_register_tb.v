//testbench範本
//時間相關設定
`timescale 1ns / 100ps

//include D.U.T.模組
`include "Source_code/SAP_1_instruction_register/SAP_1_instruction_register.v"

//時脈頻率
`define CLOCK_FREQ 10

module SAP_1_instruction_register_tb();
//宣告port類型
  reg Clk, Clr, LIbar, EIbar;
  reg [7:0]instruction;
  wire [3:0]opcode;
  wire [3:0]operand;

	//D.U.T. instantiation
	SAP_1_instruction_register
		dut(opcode, operand, instruction, LIbar, EIbar, Clk, Clr);

  /* 時脈產生器 */
  always begin
    #`CLOCK_FREQ Clk = !Clk;
	end

  initial begin
		//初始化
		$dumpfile ("Simulation/SAP_1_instruction_register_tb.vcd");
		$dumpvars;
		$display("\t\t時間\tClk\tClr\tLIbar\tEIbar\tinstruct --> opcode\toperand");
		$monitor("%d\t%b\t%b\t%b\t%b\t%8b --> %4b\t%4b", $time, Clk, Clr, LIbar, EIbar, instruction, opcode, operand);
		Clk = 0;
		Clr = 0;
		LIbar = 1;
		EIbar = 1;

		//模擬
		#10
		Clr = 1;

		#15
		instruction = 8'b10101010;

		#20
		LIbar = 0;

		#20
		EIbar = 0;

		#20
		$finish;
	end
endmodule
