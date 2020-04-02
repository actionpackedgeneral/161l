`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:12:24 03/31/2020
// Design Name:   myalu
// Module Name:   C:/WINDOWS/system32/alu/alu_tb.v
// Project Name:  alu
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: myalu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module alu_tb;

	// Inputs
	reg clk;
	reg reset;
	reg [15:0] A;
	reg [15:0] B;
	reg [2:0] opcode;

	// Outputs
	wire [15:0] result;
	wire carryout;
	wire overflow;
	wire zero;

	// Instantiate the Unit Under Test (UUT)
	myalu uut (
		.clk(clk), 
		.reset(reset), 
		.A(A), 
		.B(B), 
		.opcode(opcode), 
		.result(result), 
		.carryout(carryout), 
		.overflow(overflow), 
		.zero(zero)
	);
	integer i,j,k;
	integer a,b,expected_result;

	always
		begin
			clk = 1; #5;

			clk = 0; #5; // 10ns period
		end
initial begin
for(i = 0; i < 8; i = i + 1) begin
		opcode = i;
for(j = 0; j < 255; j = j + 16) begin
	A = j;
for(k = 0; k < 255; k = k + 16) begin
	B = k;

			case(opcode)
				0:
				//unsigned add 
					begin
//						A = $random()%255;
//						B = $random()%255;
						a = A; b = B;
						expected_result = a + b;
						if(!(result == expected_result))
							begin
								$display("Opcode: %d A: %d B: %d Result %d Expected Result: %d",opcode,A,B,result,expected_result);
							end
					end
				1:
				//signed add
					begin
//						for(
//						A = $random() % 255;
//						B = $random() % 255;
						a = A; b = B;
						expected_result = a + b;
						if(!(result == expected_result))
							begin
								$display("Opcode: %d A: %d B: %d Result %d Expected Result: %d",opcode,A,B,result,expected_result);;
							end
					end
				2:
				//unsigned sub
					begin
										
//						A = $random() % 255;
//						B = $random() % 255;
						a = A; b = B;
						expected_result = a - b;
						if(!(result == expected_result))
							begin
								$display("Opcode: %d A: %d B: %d Result %d Expected Result: %d",opcode,A,B,result,expected_result);
							end
					end
				3:
				//signed sub
					begin
//						A = $random() % 255;
//						B = $random() % 255;
						a = A; b = B;
						expected_result = a - b;
						if(!(result == expected_result))
							begin
								$display("Opcode: %d A: %d B: %d Result %d Expected Result: %d",opcode,A,B,result,expected_result);
							end
					end
				4:
				//bitwise AND
					begin
//						A = $random() % 255;
//						B = $random() % 255;
						a = A; b = B;
						expected_result = a & b;
						if(!(result == expected_result))
							begin
								$display("Opcode: %d A: %d B: %d Result %d Expected Result: %d",opcode,A,B,result,expected_result);
							end
					end
				5:
				//bitwise OR
					begin
//						A = $random() % 255;
//						B = $random() % 255;
						a = A; b = B;
						expected_result = a | b;
						if(!(result == expected_result))
							begin
								$display("Opcode: %d A: %d B: %d Result %d Expected Result: %d",opcode,A,B,result,expected_result);
							end
					end
				6:
				//bitwise XOR
					begin
//						A = $random() % 255;
//						B = $random() % 255;
						a = A; b = B;
						expected_result = a ^ b;
						if(!(result == expected_result))
							begin
								$display("Opcode: %d A: %d B: %d Result %d Expected Result: %d",opcode,A,B,result,expected_result);
							end
					end
				7:
				//divide by 2
					begin
//						A = $random() % 255;
//						B = $random() % 255;
						a = A; b = B;
						expected_result = a & b;
						if(!(result == expected_result))
							begin
								$display("Opcode: %d A: %d B: %d Result %d Expected Result: %d",opcode,A,B,result,expected_result);
							end
					end
					
				
//				default: result = 7;
			endcase
		end
end
end
end
endmodule

