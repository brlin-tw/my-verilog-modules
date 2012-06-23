//testbench of 8位元三緩衝器
//時間相關設定
`timescale 1ns / 100ps

//include D.U.T.模組
`include "Source_code/bufferTristate8bit/bufferTristate8bit.v"

//時脈產生器頻率
//`define CLOCK_FREQ 50

module bufferTristate8bit_tb();
//宣告port類型
  reg [7:0]in;
  reg Enable;
  wire [7:0]out;

	//D.U.T. instantiation
	bufferTristate8bit
		dut(.out(out), 
				.in(in), 
				.Enable(Enable));
				
  initial begin
		//初始化
		$dumpfile ("Simulation/bufferTristate8bit_tb.vcd");
		$dumpvars;
		$monitor($time, " Enable=%b, in=%8b -> out=%8b", Enable, in, out);
    Enable = 0;
    in = 8'b00000000;

		//模擬
    //out should be zzzzzzzz
    #25
    Enable = 1;
    //out should be 00000000 now

    #45
    in = 8'b10101010;
    //out should be 10101010 now

    #65
    Enable = 0;
    //out should be zzzzzzzz now

    #85
    $finish;
	end
endmodule
