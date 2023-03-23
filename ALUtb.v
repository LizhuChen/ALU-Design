`timescale 1ns/ 1ns
module ALUtb();
	
	/*
	wire [1:0] dataA ;
	wire [1:0] dataB ;
	wire [5:0] Signal ;
	wire ans ;
	wire [1:0] sum ;
	wire [2:0]control ;
	*/
	reg        clk;
	initial begin
	clk = 0;
	#330 $stop;
	end
	
	always #10 clk = ~clk;
	
	reg [31:0] dataA ;
	reg [31:0] dataB ;
	wire coutAns ;
	wire [5:0] Signal ;
	wire [63:0] ans ;
	wire [31:0] sum ;
	wire [2:0] control ;
	
    // mul1bit m ( 64'd1, 1'b1, 64'd1 , ans ) ;
	// multiplier m ( .multiplicand(32'd5), .multiplier(32'd10), .clk(clk), .dataout(ans) ) ;

	
	//initial begin
	//#50 $display("%d",ans);
	//end
	// shifter shifter( .datain(32'd1), .shiftnum(32'd1), .dataout(ans) ) ;

	ALU alu( .dataA(32'd20), .dataB(32'd15), .control(3'b111), .sum(sum), .slt(coutAns) );
	// ALU1bit a (  .dataA(1'b1), .dataB(1'b1), .carryin(1'b0), .control(3'b000), .less(1'b0), .dataOut(ans), .carryOut(cout) ) ;
	// mux2to1 m ( 1'b1, 1'b0, 1'b1, ans );
	// mux4to1 mf ( 1'b1, 1'b0, 1'b1, 1'b0, 2'b10, ans );

	/*
	initial 
	begin
	#200;
	dataA = 32'd20;
	dataB = 32'd15;
	#200; $stop;
	
	end
	*/
	/*	
	wire inputA, inputB, inputC, inputD, ans ;
	
	reg [5:0] Signal ;
	reg [31:0] sum ;
	reg [2:0]control ;
	wire carryin ;
	wire less ;
	wire carryOut ;
	wire sel ;

	parameter AND = 6'b100100;
	parameter OR  = 6'b100101;
	parameter ADD = 6'b100000;
	parameter SUB = 6'b100010;
	parameter SLT = 6'b101010;
	
	initial begin
	
		Signal[5:0] = 6'b100100 ;
		
		case ( Signal )
		AND:
		begin
			assign control[2:0] = 3'b000 ;
		end
		OR:
		begin
			assign control[2:0] = 3'b001 ;
		end
		ADD:
		begin
			assign control[2:0] = 3'b010 ;
		end
		SUB:
		begin
			assign control[2:0] = 3'b110 ;
		end
		SLT:
		begin
			assign control[2:0] = 3'b111 ;
		end
		
		default: sum = 32'b0 ;	
	
		endcase
		
		
	end*/
	

	// ALU alu( .dataA(dataA), .dataB(dataB), .control(3'b010), .sum(sum), .Cout(ans) );

	//ALU alu( .dataA(32'd20), .dataB(32'd15), .control(3'b010),.sum(sum), .Cout(ans) );
	
	//ALU1bit alu1bit( .dataA(inputA),.dataB(inputB), .carryin(carryin),.control(control),.less(less),.dataOut(ans),.carryOut(carryOut) );
	
	//mux2to1 mux_1( .dataA(inputA),.dataB(inputB),.sel(sel),.dataOut(ans) );
	
	//mux4to1 mux_2(.dataA(inputA),.dataB(inputB),.dataC(inputC),.dataD(inputD),.control(control),.dataOut(ans) );

endmodule