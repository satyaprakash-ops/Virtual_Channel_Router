
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    16:46:47 09/14/09
// Design Name:    
// Module Name:    DFF_asynch_clr
// Project Name:   
// Target Device:  
// Tool versions:  
// Description:
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////
module DFF_asynch_clr(D, clk, Q, clr);
    input D;
    input clk;
    input clr;
    
	 output Q;
	 reg Q ;

	 always @ (posedge clk or posedge clr)
	 begin
	 		if(clr)	Q <= 1'b 0 ;

			else		Q <= D ;
	 end

endmodule