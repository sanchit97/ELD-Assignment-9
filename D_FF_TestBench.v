`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:15:10 10/21/2016
// Design Name:   D_FF
// Module Name:   /home/sanchit/Desktop/Xilinx/ELDAssignment9/D_FF_TestBench.v
// Project Name:  ELDAssignment9
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: D_FF
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module D_FF_TestBench;

	// Inputs
	reg d;
	reg clk;
	reg reset;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	D_FF uut (
		.d(d), 
		.clk(clk), 
		.reset(reset), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		d = 0;
		clk = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	always begin
		#10 clk=~clk;
	end
	
	always begin
		#20 d = ~d;
	end
	initial begin
		$monitor($time, " Output is = %d", q);
	end
      
endmodule

