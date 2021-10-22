`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:12:43 03/29/2021 
// Design Name: 
// Module Name:    md_mux4to1 
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
module md_mux4to1_if(
	input	[1:0] se1,
	input [3:0]	a,
	input [3:0]	b,
	input [3:0]	c,
	input [3:0]	d,
	output reg [3:0] y
 );
	
	always @(sel or a or b or c or d) begin
		if(sel == 2'b00) y = a;
		else if(sel == 2'b01 ) y = b;
		else if(sel == 2'b10 ) y = c;
		else if(sel == 2'b11 ) y = d;
		else y = 4'bx;
	end
endmodule
