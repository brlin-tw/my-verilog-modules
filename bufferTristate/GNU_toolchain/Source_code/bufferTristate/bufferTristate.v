/* 模組名稱：三態緩衝器
   著作權宣告：copyright 2012 林博仁(pika1021@gmail.com)
   */
`timescale 1ns / 100ps

module bufferTristate(out, in, enable);
  output out;
  wire out;
  input in, enable;
	wire in, enable;

  assign out = (enable) ? in : 1'bz;
endmodule
