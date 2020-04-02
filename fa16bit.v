`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:12:35 04/01/2020 
// Design Name: 
// Module Name:    fa16bit 
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
module fa16bit#(parameter NUMBITS = 16)(
		input wire [NUMBITS-1:0]A,
		input wire [NUMBITS-1:0]B,
		output [NUMBITS-1:0] sum,
		output carryflag,
		output zero,
		output overlfow
		
    );
	 wire [NUMBITS:0]t;
	 

	 fulladder b0(
		.A(A[0]),
		.B(B[0]),
		.Cin(t[0]),
		.S(sum[0]),
		.Cout(t[1])
		);
		initial begin
			for(int i = 0; i < NUMBITS;i = i + 1){
				fulladder b0(
				.A(A[i]),
				.B(B[i],
				.Cin(t[i-1]),
				.S(sum[0]),
				.Cout(t[i+1])
				);
				}
				
			
		end
//		
//		 fulladder b1(
//		.A(A[1]),
//		.B(B[1]),
//		.Cin(t[1]),
//		.S(sum[1]),
//		.Cout(t[2])
//		);
//		
//			 fulladder b2(
//		.A(A[2]),
//		.B(B[2]),
//		.Cin(t[2]),
//		.S(sum[2]),
//		.Cout(t[3])
//		);
//		
//		fulladder b3(
//		.A(A[3]),
//		.B(B[3]),
//		.Cin(t[3]),
//		.S(sum[3]),
//		.Cout(t[4])
//		);
//		
//		
//	 fulladder b4(
//		.A(A[4]),
//		.B(B[4]),
//		.Cin(t[4]),
//		.S(sum[4]),
//		.Cout(t[5])
//		);
//		
//		 fulladder b5(
//		.A(A[5]),
//		.B(B[5]),
//		.Cin(t[5]),
//		.S(sum[5]),
//		.Cout(t[6])
//		);
//		
//			 fulladder b6(
//		.A(A[6]),
//		.B(B[6]),
//		.Cin(t[6]),
//		.S(sum[6]),
//		.Cout(t[3])
//		);
//		
//		fulladder b7(
//		.A(A[7]),
//		.B(B[7]),
//		.Cin(t[7]),
//		.S(sum[7]),
//		.Cout(t[8])
//		);
//		
//		
//	 fulladder b8(
//		.A(A[8]),
//		.B(B[8]),
//		.Cin(t[8]),
//		.S(sum[8]),
//		.Cout(t[9])
//		);
//		
//		 fulladder b9(
//		.A(A[9]),
//		.B(B[9]),
//		.Cin(t[9]),
//		.S(sum[9]),
//		.Cout(t[10])
//		);
//		
//			 fulladder b10(
//		.A(A[10]),
//		.B(B[10]),
//		.Cin(t[10]),
//		.S(sum[10]),
//		.Cout(t[11])
//		);
//		
//		fulladder b11(
//		.A(A[11]),
//		.B(B[11]),
//		.Cin(t[11]),
//		.S(sum[11]),
//		.Cout(t[12])
//		);
//		
//		
//	 fulladder b12(
//		.A(A[12]),
//		.B(B[12]),
//		.Cin(t[12]),
//		.S(sum[12]),
//		.Cout(t[13])
//		);
//		
//		 fulladder b13(
//		.A(A[13]),
//		.B(B[13]),
//		.Cin(t[13]),
//		.S(sum[13]),
//		.Cout(t[14])
//		);
//		
//			 fulladder b14(
//		.A(A[14]),
//		.B(B[14]),
//		.Cin(t[14]),
//		.S(sum[14]),
//		.Cout(t[15])
//		);
//		
//		fulladder b15(
//		.A(A[15]),
//		.B(B[15]),
//		.Cin(t[15]),
//		.S(sum[15]),
//		.Cout(carryflag)
//		);
		
		
		
	 


endmodule
