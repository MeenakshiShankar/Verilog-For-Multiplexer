// Copyright (C) 2019  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"
// CREATED		"Mon Nov 02 17:05:47 2020"

module mux_8_to_1_bdf(
	A,
	D,
	B,
	C,
	Y
);


input wire	A;
input wire	D;
input wire	B;
input wire	C;
output wire	Y;

wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;

assign	SYNTHESIZED_WIRE_10 = 0;
assign	SYNTHESIZED_WIRE_11 = 1;




mux_4_to_1	b2v_inst(
	.i3(A),
	.i2(SYNTHESIZED_WIRE_9),
	.i1(SYNTHESIZED_WIRE_10),
	.i0(SYNTHESIZED_WIRE_11),
	.s1(D),
	.s0(C),
	.en(SYNTHESIZED_WIRE_3),
	.y(SYNTHESIZED_WIRE_8));

assign	SYNTHESIZED_WIRE_3 =  ~B;

assign	SYNTHESIZED_WIRE_9 =  ~A;



mux_4_to_1	b2v_inst4(
	.i3(SYNTHESIZED_WIRE_11),
	.i2(SYNTHESIZED_WIRE_10),
	.i1(SYNTHESIZED_WIRE_9),
	.i0(A),
	.s1(D),
	.s0(C),
	.en(B),
	.y(SYNTHESIZED_WIRE_7));


assign	Y = SYNTHESIZED_WIRE_7 | SYNTHESIZED_WIRE_8;


endmodule
