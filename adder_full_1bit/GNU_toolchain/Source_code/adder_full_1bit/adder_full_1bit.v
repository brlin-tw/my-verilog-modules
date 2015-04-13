/* 模組名稱：adder_full_1bit
   著作權宣告：copyright 2012 林博仁(pika1021@gmail.com)
   */
`timescale 1ns / 100ps

module adder_full_1bit(proC, sum, add, aug, preC);
  input add, aug, preC;
  output proC, sum;

  assign proC = aug & preC | add & preC | add & aug;
  assign sum = ~add & ~aug & preC | ~add & aug & ~preC |
         add & ~aug & ~preC | add & aug & preC;

endmodule
