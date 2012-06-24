/* 模組名稱：SAP_1_instruction_decoder
   著作權宣告：copyright 2012 林博仁(pika1021@gmail.com)
   */
`timescale 1ns / 100ps

module SAP_1_instruction_decoder(LDA, ADD, SUB, OUT, HLT, in);
  output LDA, ADD, SUB, OUT, HLT;
  input [7:4]in;
	// LDA = 0000
  assign LDA = !in[7] && !in[6] && !in[5] && !in[4];
  // ADD = 0001
  assign ADD = !in[7] && !in[6] && !in[5] && in[4];
  // SUB = 0010
  assign SUB = !in[7] && !in[6] && in[5] && !in[4];
  // OUT = 1110
  assign OUT = in[7] && in[6] && in[5] && !in[4];
  // HLT = 1111
  assign HLT = in[7] && in[6] && in[5] && in[4];
endmodule
