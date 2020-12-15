`timescale 1ns / 1ps

module pcModule(
		input Selector, CLK,
		input[7:0] Jump_to,
		output reg[7:0] output_PC,
		output[7:0] output_R15
    );
	 
		wire[7:0] MUX;
		
		always @(posedge CLK) begin
			output_PC <= MUX;
			end
			
		assign MUX = Selector ? Jump_to : output_PC + 1 ;
		assign output_R15 = output_PC + 2;


endmodule
