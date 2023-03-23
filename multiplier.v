`timescale 1ns/1ns
module multiplier ( input[31:0] multiplicand, input[31:0] multiplier, input clk, output[63:0] dataout, input reset ) ;
	reg [63:0]    tempproduct; // 暫存結果
	reg start ;            //做第一次
    reg [31:0]    multiplier_copy; //存放要右移的乘數
	reg [63:0]    multiplicand_copy; //存放被乘數
	reg [5:0]     nowbit; //做的次數

	//initial nowbit = 0; //初始為0
	//initial start = 1; //初始為1
	
	always @( posedge clk )
	begin
	
		if ( reset )
        begin
                tempproduct = 64'b0 ;
				nowbit = 0;
				start = 1;
        end
		
		else 
		begin
			if ( start ) 
				begin
					nowbit	= 6'd32;
					
					tempproduct	= 0;
					multiplicand_copy = { 32'd0, multiplicand };
					multiplier_copy   = multiplier;
					start = 0 ;
					
				end 
				
			else if ( nowbit ) 
				begin

					if ( multiplier_copy[0] == 1'b1 )
					begin
						tempproduct = tempproduct + multiplicand_copy;
					end
					
						multiplier_copy = multiplier_copy >> 1;
						multiplicand_copy = multiplicand_copy << 1;
						nowbit = nowbit - 1;
				end
		end
	end
	
	assign dataout = tempproduct ;

endmodule
