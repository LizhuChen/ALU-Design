`timescale 1ns/1ns
module MUX( ALUOut, HiOut, LoOut, Shifter, Cout, Signal, dataOut );
input [31:0] ALUOut ;
input [31:0] HiOut ;
input [31:0] LoOut ;
input [31:0] Shifter ;
input Cout ;
input [5:0] Signal ;
output [31:0] dataOut ;

reg [31:0] temp ;
reg[31:0] tempSlt ;

parameter AND = 6'b100100; 
parameter OR  = 6'b100101;
parameter ADD = 6'b100000;
parameter SUB = 6'b100010;
parameter SLT = 6'b101010;

parameter SLL = 6'b000000;

parameter MULTU= 6'b011001;
parameter MFHI= 6'b010000;
parameter MFLO= 6'b010010;

// assign tempCout = 32'd0 ;

/*
�w�q�U�ذT��
*/
/*
=====================================================
�U���������d�ҡA�{�����g�п�ӦѮv�W�һ�������k�Ӽg
=====================================================
*/

always@( ALUOut or HiOut or LoOut or Shifter or Signal or Cout or tempSlt )
begin
    
    
	case ( Signal )
	AND:
	begin
		temp = ALUOut ;
	end
	OR:
	begin
		temp = ALUOut ;
	end
	ADD:
	begin
		temp = ALUOut ;
	end
	SUB:
	begin
		temp = ALUOut ;
	end
	SLT:
	begin
		tempSlt = 0 ;
	    tempSlt[0] = ~Cout ;
		temp = tempSlt ;
	end
	MFHI:
	begin
		temp = HiOut ;
	end
	MFLO:
	begin
		temp = LoOut ;
	end

	SLL:
	begin
		temp = Shifter ;
	end
	
	default: temp = 32'b0 ;	
	
	endcase
	
	/*
===========
   ���n
===========
MFHI�MMFLO
�o��D���O�@�w�n�[�i��
�o�O��HILO�Ȧs�����ȿ�X�����O
�ЧO�ѰO
===========
   ���n
===========
*/
/*
�W���o��case�O�b���T���B�z
���O�ھڶǶi�Ӫ�signal�ӿ�ܤ��P����J�ӷ�
�M���i�Ȧs���A��X
*/
end
assign dataOut = temp ;
/*
=====================================================
�W���������d�ҡA�{�����g�п�ӦѮv�W�һ�������k�Ӽg
=====================================================
*/

endmodule