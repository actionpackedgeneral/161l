`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:13:57 03/31/2020 
// Design Name: 
// Module Name:    fulladder 
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

module fulladder(    
	input  wire A, 
    input  wire B, 
    input wire Cin, 
	 output Cout,
	 output S
	 );
	 
	 assign S = A ^  B ^ Cin;
	 assign Cout = ( A^B) | (Cin | (A&B)) ; 

endmodule
