
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    23:27:40 09/14/09
// Design Name:    
// Module Name:    mux_2line
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
module mux_2line(i0, i1, y, sel);
    input [31:0] i0;
    input [31:0] i1;    
    input sel;
	 output [31:0] y;

	 assign y = (sel == 1'b 1) ? i1 : i0 ;

endmodule
