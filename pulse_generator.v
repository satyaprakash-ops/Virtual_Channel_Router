
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    16:49:39 09/14/09
// Design Name:    
// Module Name:    pulse_generator
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
module pulse_generator(gnt, clk, clr, q);
    input gnt;
    input clk;
    input clr;
    output q;

	 wire q2 ;

	 DFF_asynch_clr dff1(.D(1'b 1), .clk(!gnt), .Q(q), .clr(clr | q2));
	 DFF_asynch_clr dff2(.D(q), .clk(clk), .Q(q2), .clr(clr));

endmodule
