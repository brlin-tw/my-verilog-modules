`timescale 1ns / 1ps
`include "Source_code/decoder2to4withEnable/decoder2to4withEnable.v"
module decoder2to4Test;
  reg i1, i0, En;
  wire o0, o1, o2, o3;

	//測試元件實體化
  decoder2to4withEnable dec24wEn(o3, o2, o1, o0, i1, i0, En);

  initial
	  begin
	  //初始化
    $dumpfile("Simulation/decoder2to4withEnable.vcd");
    $dumpvars;
		$monitor($time, "i = %b%b En = %b -> o = %b%b%b%b", i1, i0, En, o3, o2, o1, o0);

    i1 = 0;i0 = 0;En = 0;

		//模擬
    #10 i1 = 0;i0 = 1;
    #10 i1 = 1;i0 = 0;
    #10 i1 = 1;i0 = 1;
		#10 En = 1; i1 = 0; i0 = 0;
    #10 i1 = 0;i0 = 1;
    #10 i1 = 1;i0 = 0;
    #10 i1 = 1;i0 = 1;

		//結束
    #10 $finish;
    end


endmodule
