/* 模組名稱：帶有Enable的1對2解碼器
   著作權宣告：copyright 2012 林博仁(pika1021@gmail.com)
   */
`timescale 1ns / 100ps

module decoder1to2withEnable(o1, o0, i, enable);
  input i, enable;
  output o1, o0;

  not inv(ibar, i);
  and and1(o1, i, enable),
      and0(o0, ibar, enable);

endmodule
