`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:47:12 10/21/2016
// Design Name:   T_FF
// Module Name:   /home/sanchit/Desktop/Xilinx/ELDAssignment9/T_FF_TestBench.v
// Project Name:  ELDAssignment9
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: T_FF
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module T_FF_TestBench;

	// Inputs
	reg clk;
	reg reset;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	T_FF uut (
		.clk(clk), 
		.q(q), 
		.reset(reset)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	initial begin
		#10 reset = 1;
		#10 reset = 0;
	end
	
	always begin
		#5 clk = ~clk;
	end
	
	initial begin
		$monitor($time, " Output is = %d", q);
	end
      
endmodule