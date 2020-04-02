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
	 always @ (posedge clk)begin 
			case(opcode)
				3'b000:
//				unsigned add
				begin
	 end
				3'b001: begin 
				end
//				signed add
				3'b010: begin
				end
//				unsigned sub
				3'b011: begin
				end
				
//				signed sub
				3'b100: begin
				end
//				bit and
				3'b101: begin
				end
//				bit or
				3'b110: begin
				end
				
//				bit xor
				3'b111: begin
				end
//				a by 2
				default: begin
				end
			endcase
			end // alwasy

endmodule
