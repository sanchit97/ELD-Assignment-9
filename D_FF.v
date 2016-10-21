`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:08:22 10/21/2016 
// Design Name: 
// Module Name:    D_FF 
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
module D_FF(q,d,clk,reset);
	 input d, clk, reset;
	 output q;
	 wire d, clk;
	 reg q;
	 always@ (negedge clk or negedge reset)
	 begin
	 if (~reset)
		q = 0;
	 else
		q = d;
	 end
endmodule
