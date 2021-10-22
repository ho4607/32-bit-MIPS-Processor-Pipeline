`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:24:36 06/06/2021 
// Design Name: 
// Module Name:    DataMemory 
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

module DataMemory(
	input MemWrite,
	input MemRead,
	input [31:0] addr,  
	input [31:0] WriteData,

	output reg [31:0] outt
	);

	reg [31:0] memdata [64:0]; //������ 256���� mem�ּҰ� �־�������� �츮�� 65���� �ִ°ɷ� �Ѵ�.
	integer i;

	initial begin
		for(i=0; i<=63; i=i+1)begin
			memdata[i] = 32'b00000000000000000000000000000000; 
		end
		
		memdata[64] = 32'b00000000000000000000000000011110; // 0x40(64)��° �ּҿ��� �� 30�� ������� 
		
	 end

	always @(*) begin
		if(MemWrite == 1'b1 && MemRead == 1'b0)begin
			memdata[addr] <= WriteData;
		end
		else if(MemWrite == 1'b0 && MemRead == 1'b1)begin
			outt <= memdata[addr];
		end
		else outt <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	end

endmodule 