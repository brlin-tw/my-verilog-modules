//七段顯示器解碼器
//輸入port
//	binary coded decimal 0~15
//輸出port
//	七段顯示器a~h顯示訊號
`ifndef SEVENSEGMENTDISPLAYDECODER_V
	`define SEVENSEGMENTDISPLAYDECODER_V
	`timescale 1ns / 100ps

	module sevenSegmentDisplayDecoder(out, in);
		output [7:0]out;
		input [3:0] in;
		
		//h(currently not used)
		assign out[7] = 0;
		
		//g
		assign out[6] = ~in[3] & ~in[2] & in[1] | 
										~in[3] & in[2] & ~in[1] | 
										in[3] & in[2] & in[0] | 
										in[1] & ~in[0] | 
										in[3] & ~in[2];
		//f
		assign out[5] = ~in[1] & ~in[0] | 
										~in[3] & in[2] & ~in[1] | 
										in[3] & ~in[2] & ~in[1] | 
										in[1] & in[3] | 
										in[2] & in[1] & ~in[0];

		//e
		assign out[4] = in[1] & ~in[0] | 
										in[3] & ~in[1] & ~in[0] | 
										~in[2] & ~in[1] & ~in[0] | 
										in[2] & in[3] | 
										in[3] & in[1] & in[0];
		//d
		assign out[3] = in[3] & ~in[1] | 
										~in[2] & ~in[1] & ~in[0] | 
										in[2] & ~in[1] & in[0] | 
										in[0] & in[3] & ~in[2] | 
										~in[3] & ~in[2] & in[1] | 
										in[2] & in[1] & ~in[0];
		
		//c
		assign out[2] = ~in[1] & ~in[3] | 
										in[0] & ~in[3] | 
										~in[3] & in[2] & in[1] | 
										in[3] & ~in[1] & in[0] | 
										in[3] & ~in[2];
		
		//b
		assign out[1] = ~in[3] & ~in[2] | 
										~in[3] & ~in[1] & ~in[0] | 
										~in[3] & in[1] & in[0] | 
										in[3] & ~in[1] & in[0] | 
										in[3] & ~in[2] & ~in[0];
		
		//a
		assign out[0] = ~in[2] & ~in[1] & ~in[0] | 
										in[3] & ~in[1] & ~in[0] | 
										~in[3] & in[1] & in[0] | 
										~in[1] & in[3] & ~in[2] | 
										~in[3] & in[2] & in[0] | 
										in[2] & in[1] & in[0] | 
										in[1] & ~in[0];
	endmodule
`endif
