
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    23:49:30 09/14/09
// Design Name:    
// Module Name:    nand_gate_2input
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
module nand_gate_2input(a, b, y);
    input a;
    input b;
    output y;

	 assign y = ! (a & b) ;

endmodule
