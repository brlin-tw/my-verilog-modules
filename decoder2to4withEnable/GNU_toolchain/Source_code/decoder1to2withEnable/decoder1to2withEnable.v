/* 模組名稱：
   著作權宣告：copyright 2012 林博仁(pika1021@gmail.com)
   */
`timescale 1ns / 1ps

module decoder1to2withEnable(o1, o0, i0, en);
  input i0, en;
  output o1, o0;

  not inv1(i0bar, i0);

  and and2(o1, i0, en);
  and and1(o0, i0bar, en);

endmodule
