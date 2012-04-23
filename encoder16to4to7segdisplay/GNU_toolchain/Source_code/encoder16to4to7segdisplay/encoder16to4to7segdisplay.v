/* 模組名稱：encoder16to4to7segdisplay
   著作權宣告：copyright 2012 林博仁(pika1021@gmail.com)
   */
`ifndef ENC16TO4TO7SEGDISPLAY
	`define ENC16TO4TO7SEGDISPLAY
	`timescale 1ns / 100ps
	`include "Source_code/encoder16to4/encoder16to4.v"
	`include "Source_code/sevenSegmentDisplayDecoder/sevenSegmentDisplayDecoder.v"

	module encoder16to4to7segdisplay(display, in);
		input [15:0]in;
		output [6:0]display;
		wire [3:0]code;
		
		encoder16to4 enc16to4(code, in);
		sevenSegmentDisplayDecoder sevendisplay(display, code);
	endmodule
`endif