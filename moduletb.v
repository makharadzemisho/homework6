`timescale 1ns / 1ps


module moduletb;

	// Inputs
	reg Selector;
	reg CLK;
	reg [7:0] Jump_to;

	// Outputs
	wire [7:0] output_PC;
	wire [7:0] output_R15;

	// Instantiate the Unit Under Test (UUT)
	pcModule uut (
		.Selector(Selector), 
		.CLK(CLK), 
		.Jump_to(Jump_to), 
		.output_PC(output_PC), 
		.output_R15(output_R15)
	);
	
	always #5 CLK <= !CLK;
	always #50 Selector <= !Selector;
	always #50 Jump_to <= Jump_to + 5;
	initial begin
		// Initialize Inputs
		Selector = 0;
		CLK = 0;
		Jump_to = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

