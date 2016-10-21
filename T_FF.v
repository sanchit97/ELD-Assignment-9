`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:46:20 10/21/2016 
// Design Name: 
// Module Name:    T_FF 
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
module T_FF(clk,reset,q);
	 input clk, reset;
	 output q;
	 wire d;
	 
	 D_FF dff0(q, d, clk, reset);
	 assign d=~q;

endmodule
