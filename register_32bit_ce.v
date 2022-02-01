
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    16:41:03 09/14/09
// Design Name:    
// Module Name:    register_32bit_ce
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
module register_32bit_ce(din, clk, clr, ce, dout);
    input [31:0] din ;
    input clk ;
    input clr ;
    input ce ;
    output [31:0] dout ;

	 reg [31:0] dout ;
    
	 always @(posedge clk)
	 begin
	 		if(clr)
			dout <= 32'b 01100000000000000000000000000000 ;

			else
			begin
					if (ce)
						dout <= din ;
					else
					   dout <= 32'b 01100000000000000000000000000000 ; 
			end
	 end

endmodule