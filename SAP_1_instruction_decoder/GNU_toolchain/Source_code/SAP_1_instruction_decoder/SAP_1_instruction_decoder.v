/* 模組名稱：SAP_1_instruction_decoder
   著作權宣告：copyright 2012 林博仁(pika1021@gmail.com)
   */
`timescale 1ns / 100ps

module SAP_1_instruction_decoder(LDA, ADD, SUB, OUT, HLT, i);
  output LDA, ADD, SUB, OUT, HLT;
  input [7:4]i;

  assign LDA = !i[7] && !i[6] && !i[5] && !i[4];
  assign ADD = !i[7] && !i[6] && !i[5] && i[4];
  assign SUB = !i[7] && !i[6] && i[5] && !i[4];
  assign OUT = i[7] && i[6] && i[5] && !i[4];
  assign HLT = i[7] && i[6] && i[5] && i[4];
endmodule
