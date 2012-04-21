`timescale 1ns / 100ps
`include "Source_code/decoder2to4withEnable/decoder2to4withEnable.v"
module decoder2to4Test;
  wire [3:0] o;
  reg  [1:0] i;
  reg En;


	//測試元件實體化
  decoder2to4withEnable dec24wEn(o, i, En);

  initial
	  begin
	  //初始化
    $dumpfile("Simulation/decoder2to4withEnable_tb.vcd");
    $dumpvars;
		$monitor($time, " i = %2b En = %b -> o = %4b", i, En, o);

    i[1] = 0;i[0] = 0;En = 0;

		//模擬
    #10 i[1] = 0;i[0] = 1;
    #10 i[1] = 1;i[0] = 0;
    #10 i[1] = 1;i[0] = 1;
		#10 En = 1; i[1] = 0; i[0] = 0;
    #10 i[1] = 0;i[0] = 1;
    #10 i[1] = 1;i[0] = 0;
    #10 i[1] = 1;i[0] = 1;

		//結束
    #10 $finish;
    end


endmodule
