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
//					assign t = A + B;
//					assign result = t[NUMBITS - 1: 0];
//					assign carryout = t[NUMBITS];
//					assign overflow = 0;
//					assign zero = (result == 0) ? 1: 0;
					t = A + B;
					result <= t[NUMBITS - 1: 0];
					carryout <= t[NUMBITS];
					overflow <= 0;
					zero <= (!t[NUMBITS -1:0])? 1 : 0;
				
				end
				3'b001: // signed add
				begin
					t = A + B;
					result <= t[NUMBITS - 1: 0];
					carryout <= t[NUMBITS];
					overflow <= 0;
					zero <= (!t[NUMBITS -1: 0])? 1 : 0;
					if ((A[NUMBITS-1] & B[NUMBITS -1] & !t[NUMBITS -1]) | 
					(!A[NUMBITS -1] & !B[NUMBITS -1] & t[NUMBITS - 1])) begin
					overflow <= 1;
					end else begin
					overflow <= 0;
					end

				end

				3'b010: // unsigned sub 
				begin
					t = A - B;
					result <= t[NUMBITS - 1: 0];
					carryout <= t[NUMBITS];
					overflow <= 0;
					zero <= (!t[NUMBITS -1:0])? 1 : 0;
				end

				3'b011: //// signed sub
				begin
					t = A - B;
					result <= t[NUMBITS - 1: 0];
					carryout <= t[NUMBITS];
					if ((A[NUMBITS-1] & !B[NUMBITS -1] & !t[NUMBITS -1]) | 
					(!A[NUMBITS -1] & B[NUMBITS -1] & t[NUMBITS - 1])) begin
					overflow <= 1;
					end else begin
					overflow <= 0;
					end
					zero <= (!t[NUMBITS -1:0])? 1 : 0;
			
					
				end
				
				3'b100: // AND
				begin
					t = A & B;
					result <= t[NUMBITS - 1: 0];
					carryout <= 0;
					overflow <= 0;
					zero <= (!t[NUMBITS -1:0])? 1 : 0;
				end

				3'b101:  // OR
				begin
					t = A | B;
					result <= t[NUMBITS - 1: 0];
					carryout <= 0;
					overflow <= 0;
					zero <= (!t[NUMBITS -1:0])? 1 : 0;
				end

				3'b110: // XOR
				begin
					t = A ^ B;
					result <= t[NUMBITS - 1: 0];
					carryout <= 0;
					overflow <= 0;
					zero <= (!t[NUMBITS -1:0])? 1 : 0;
				end
				
//				bit xor
				3'b111: begin
					t = A >> 1;
					result <= t[NUMBITS - 1: 0];
					carryout <= 0;
					overflow <= 0;
					zero <= (!t[NUMBITS -1:0])? 1 : 0;
				end
//				a by 2
				
			
			endcase
			end // alwasy

endmodule
