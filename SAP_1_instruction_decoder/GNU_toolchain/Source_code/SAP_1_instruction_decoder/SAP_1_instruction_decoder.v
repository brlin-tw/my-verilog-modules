/* 模組名稱：SAP_1_instruction_decoder
   著作權宣告：copyright 2012 林博仁(pika1021@gmail.com)
   */
`timescale 1ns / 100ps

module SAP_1_instruction_decoder(LDA, ADD, SUB, OUT, HLT, i);
  output LDA, ADD, SUB, OUT, HLT;
  input [7:4]i;
	// LDA = 0000
  assign LDA = !i[7] && !i[6] && !i[5] && !i[4];
  // ADD = 0001
  assign ADD = !i[7] && !i[6] && !i[5] && i[4];
  // SUB = 0010
  assign SUB = !i[7] && !i[6] && i[5] && !i[4];
  // OUT = 1110
  assign OUT = i[7] && i[6] && i[5] && !i[4];
  // HLT = 1111
  assign HLT = i[7] && i[6] && i[5] && i[4];
endmodule
