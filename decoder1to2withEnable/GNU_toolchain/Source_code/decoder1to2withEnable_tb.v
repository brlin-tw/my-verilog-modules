//帶有作用訊號的1對2解碼器
//作者：林博仁(pika1021@gmail.com)
//本程式碼以LGPL 3及以上版本授權所有人使用
`timescale 1ns / 100ps
`include "Source_code/decoder1to2withEnable/decoder1to2withEnable.v"
module decoder1to2withEnable_tb;
  reg i, en;
  wire o1, o0;

  //instantiate a DUT(Device Under Test)
	decoder1to2withEnable dec12wEn(o1, o0, i, en);

  initial //初始化
	  begin
    $dumpfile("Simulation/decoder1to2withEnable.vcd");
    $dumpvars;
		$monitor("#", $time, "  ","en = %b, i = %b ==> o1=%b, o0=%b", en, i, o1, o0);
    i = 0;
    en = 0;
    end

  initial //測試
	  begin
    $display("When enable is LOW, i doesn't affect output");
    #10
    i = 1;

    #10
		i = 0;
		en = 1;

		$display("當enable is HIGH, i affect output");

		#10
		i = 1;

    #10
    $display("結束模擬");
		$finish;
		end

endmodule
