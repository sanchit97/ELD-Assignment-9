`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:53:32 10/21/2016 
// Design Name: 
// Module Name:    Ripple_Counter 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Ripple_Counter(clk, reset,q);
	output[7:0]q;
	input clk, reset;
	T_FF t1(clk, reset,q[0]);
	T_FF t2(q[0], reset,q[1]);
	T_FF t3(q[1], reset,q[2]);
	T_FF t4(q[2], reset,q[3]);
	T_FF t5(q[3], reset,q[4]);
	T_FF t6(q[4], reset,q[5]);
	T_FF t7(q[5], reset,q[6]);
	T_FF t8(q[6], reset,q[7]);
endmodule
