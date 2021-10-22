`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:10:34 06/24/2021 
// Design Name: 
// Module Name:    Memory 
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
module data_memory(
	input clk,
	input rst,
	input [4:0] addr,
	input MemRead,			//read = 1 else = 0
	input MemWrite,		//write = 1 else = 0
	input [31:0] Write_Data, 
	output [31:0] Read_Data
    );
	
	integer i;
	
	//������ 256���� mem�ּҰ� �־�������� �츮�� 65���� �ִ°ɷ� �Ѵ�.
	reg [31:0] data_mem[31:0]; 
	
	always @(posedge clk, posedge rst) begin
		case(rst) 		//rst�� 1�϶��� ���� �ʱ�ȭ
			1'b1 : begin
				for(i = 0; i<32; i = i+1) begin
					data_mem[i] <= 32'h0;
				end
					data_mem[12] <= 32'b0000000000_0000000000_0000000111_10;
			end
			default  begin //rst�� ������ �ʾ��� ��� �׻�Ȯ��
				if(!MemRead && MemWrite) begin // MemWrite��1�̰� MemRead�� 0 �϶��� �޸� ����
					data_mem[addr[4:0]] <= Write_Data;  
				end
			end
		endcase
	end	
	
	assign Read_Data = (rst) ? 32'b0 : data_mem[addr[4:0]] ;
	
endmodule
