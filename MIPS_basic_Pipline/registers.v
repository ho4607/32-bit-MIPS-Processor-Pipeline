`timescale 1ns / 1ps

module registers(clk,rst,RegWrite,addr1,addr2,addr3,data,out1,out2);

input clk, rst;
input RegWrite;  		//���Ͽ� ������ ���� (1 -> ����)
input [4:0] addr1;	//�б�, ù��° reg addr
input [4:0] addr2;	//�б�, �ι�° reg addr
input [4:0] addr3;	//����, �� reg addr
input [31:0] data;	//����, �� ������

output [31:0] out1;	//�б�, ù��° reg addr
output [31:0] out2;	//�б�, �ι�° reg addr

reg [31:0] regFile [31:0];
integer i;

initial begin //�������� ������ �ʱⰪ�� 0���� ����Ǿ����� (3,4,6�� �������� ����) 
		  regFile[0] = 32'b00000000000000000000000000000000; 		
        regFile[1] = 32'b00000000000000000000000000000000;
        regFile[2] = 32'b00000000000000000000000000000000; 
        regFile[3] = 32'b00000000000000000000000000000011; // 3�� �������� �� 3
        regFile[4] = 32'b00000000000000000000000000000011; // 4�� �������� �� 3
        regFile[5] = 32'b00000000000000000000000000000000; 	
        regFile[6] = 32'b00000000000000000000000001000000; // 6�� �������� �� 0x40
        regFile[7] = 32'b00000000000000000000000000000000; 
        regFile[8] = 32'b00000000000000000000000000000000;
        regFile[9] = 32'b00000000000000000000000000000000;
        regFile[10] = 32'b00000000000000000000000000000000;
        regFile[11] = 32'b00000000000000000000000000000000;
        regFile[12] = 32'b00000000000000000000000000000000;
        regFile[13] = 32'b00000000000000000000000000000000;
        regFile[14] = 32'b00000000000000000000000000000000;

	end

		assign out1 = regFile[addr1];
		assign out2 = regFile[addr2];

	always@ (posedge clk, posedge rst) begin
		if(rst)begin
			for(i=0;i<=31;i=i+1)begin // ������ ��� 0���� �ʱ�ȭ �Ǵ°� ����
				regFile[i] <= 32'b00000000000000000000000000000000; 	
			end
			regFile[3] <= 32'b00000000000000000000000000000011; // 3�� �������� �� 3���� �ʱ�ȭ
			regFile[4] <= 32'b00000000000000000000000000000011; // 4�� �������� �� 3���� �ʱ�ȭ
			regFile[6] <= 32'b00000000000000000000000001000000; // 6�� �������� �� 0x40���� �ʱ�ȭ
		end
		else if(RegWrite) begin
			regFile[addr3] <= data;
		end
	end

endmodule

