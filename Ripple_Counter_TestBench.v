`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:58:44 10/21/2016
// Design Name:   Ripple_Counter
// Module Name:   /home/sanchit/Desktop/Xilinx/ELDAssignment9/Ripple_Counter_TestBench.v
// Project Name:  ELDAssignment9
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Ripple_Counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Ripple_Counter_TestBench;

	// Inputs
	reg clk;
	reg reset;
	// Outputs
	wire [7:0] q;

	// Instantiate the Unit Under Test (UUT)
	Ripple_Counter uut (
		.q(q), 
		.clk(clk), 
		.reset(reset)	
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	initial begin 
	#10 reset=0;
	#10 reset=1;
	end
	
	always begin
		#10 clk = ~clk;
	end
	
	initial begin
		$monitor($time, " Output is = %d", q);
	end
endmodule

