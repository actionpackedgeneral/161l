`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:10:25 03/31/2020 
// Design Name: 
// Module Name:    myalu 
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
//  Constant definitions 

module myalu#( parameter NUMBITS = 16 ) (
    input wire clk, 
    input wire reset ,  
    input  wire[NUMBITS-1:0] A, 
    input  wire[NUMBITS-1:0] B, 
    input wire [2:0]opcode, 
    output reg [NUMBITS-1:0] result,  
    output reg carryout ,
    output reg overflow , 
    output reg zero  );

//-------------------------------
// Insert your solution below   |
// ------------------------------ 
//fa16bit fa(
//		.A(A),
//		.B(B),
//		.sum(result),
//		.carryflag(carryout),
//		.zero(zero),
//		.overflow(overflow)
//		
//    );
		reg [NUMBITS:0] t;

	 always @ (posedge clk)begin 
			case(opcode)
				3'b000: // unsigned add

				begin
					assign t = A + B;
					assign result = t[NUMBITS - 1: 0];
					assign carryout = t[NUMBITS];
					assign overflow = 0;
					assign zero = (result == 0) ? 1: 0;
				
				end
				3'b001: // signed add
				begin
					assign t = A + B;
					assign result = t[NUMBITS - 1: 0];
					assign carryout = 0;
//					assign a1 = !(A ^ B);
					assign overflow = (A & B & !t[NUMBITS]) | (!A & !B & t[NUMBITS]);					assign zero = (result == 0) ? 1: 0;
				end

				3'b010: // unsigned sub 
				begin
					assign t = A - B;
					assign result = t[NUMBITS - 1: 0];
					assign carryout = 0;
					assign overflow = t[NUMBITS];
				
				end

				3'b011: // signed sub
				begin
					assign t = A - B;
					assign result = t[NUMBITS -1 : 0];
					assign overflow = (!A & B & t[NUMBITS]) | ( A & !B & !t[NUMBITS]);
					assign carryout = 0;
					assign zero = (result == 0) ? 1: 0;
			
					
				end
				
				3'b100: // AND
				begin
				assign result = A & B;
				assign zero = (result == 0) ? 1: 0;
				assign overflow = 0;
				assign carryout = 0;
				end

				3'b101:  // OR
				begin
					assign result = A | B;
					assign zero = (result == 0) ? 1: 0;
					assign overflow = 0;
					assign carryout = 0;
				end

				3'b110: // XOR
				begin
					assign result = A ^ B;
					assign zero = (result == 0) ? 1: 0;
					assign overflow = 0;
					assign carryout = 0;
				end
				
//				bit xor
				3'b111: begin
					assign result = A >> 1;
					assign zero = (result == 0) ? 1: 0;
					assign overflow = 0;
					assign carryout = 0;
				end
//				a by 2
				
			
			endcase
			end // alwasy

endmodule
