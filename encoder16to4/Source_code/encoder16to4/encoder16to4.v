//16對4編碼器
`ifndef ENCODER16TO4_V_INCLUDED
	`define ENCODER16TO4_V_INCLUDED
	`timescale 1ns / 100ps

	module encoder16to4(out, in);
		input [15:0]in;
		output [3:0]out;

		assign out[3] /*8*/= in[8] | in[9] | in[10] | in[11] | in[12] | in[13] | in[14] | in[15];
		assign out[2] /*4*/= in[4] | in[5] | in[6] | in[7] | in[12] | in[13] | in[14] | in[15];
		assign out[1] /*2*/= in[2] | in[3] | in[6] | in[7] | in[10] | in[11] | in[14] | in[15];
		assign out[0] /*1*/= in[1] | in[3] | in[5] | in[7] | in[9] | in[11] | in[13]  | in[15];
	endmodule
`endif