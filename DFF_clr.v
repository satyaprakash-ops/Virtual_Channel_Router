
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    23:25:55 09/14/09
// Design Name:    
// Module Name:    DFF_clr
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
module DFF_clr(d, clk, clr, q);
    input d ;
    input clk ;
    input clr ;
    output q ;

	 reg q ;

	 always @ (posedge clk)
	 begin
	 		if (clr) q <= 1'b 0 ;
			else q <= d ;
	 end

endmodule