`timescale 1ns/1ns
module mul1bit ( input[63:0]multiplicand, input multiplier, input[63:0] sumIn ,output[63:0] sumOut ) ;

reg[63:0] temp ;
reg[63:0] mulCand ;
reg[63:0] mulER ;

always
begin
#5 ;

if ( multiplier == 1'b1 )
    begin
		temp = multiplicand + sumIn ;
    end
	
	$stop ;
end

assign sumOut = temp ;

endmodule
