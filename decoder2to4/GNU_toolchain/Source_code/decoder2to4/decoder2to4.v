/* 模組名稱： 2 to 4 line decoder
   著作權宣告：copyright 2012 林博仁(pika1021@gmail.com)
   */
`timescale 1ns / 1ps
`include "Source_code/decoder1to2/decoder1to2.v"

module decoder2to4(o0, o1, o2, o3, i1, i0);
  input i1, i0;
  output o0, o1, o2, o3;
  wire a0, a1, b0, b1;
  decoder1to2 
    dec12a(a1, a0, i0),
    dec12b(b1, b0, i1);
  and
    and00(o0, b0, a0),
    and01(o1, b0, a1),
    and10(o2, b1, a0),
    and11(o3, b1, a1);
  
endmodule
