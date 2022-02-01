
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    16:35:37 09/14/09
// Design Name:    
// Module Name:    bus_mux_6line
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
module bus_mux_6line(reset, i1, i2, i3, i4, i5, i6, s, mux_out);
    input [31:0] i1;
    input [31:0] i2;
    input [31:0] i3;
    input [31:0] i4;
    input [31:0] i5;
    input [31:0] i6;
    input [5:0] s ;
	 input reset ;
    output [31:0] mux_out;
	 reg [31:0] mux_out;

	 always @ (reset or i1 or i2 or i3 or i4 or i5 or i6 or s)
	 begin
	 		if (reset == 1'b 1)
					mux_out <= 32'b 01100000000000000000000000000000 ;
			else 
			begin
	 		     		  if (s == 6'b 000001) mux_out <= i1 ;
					else if (s == 6'b 000010) mux_out <= i2 ;
					else if (s == 6'b 000100) mux_out <= i3 ;
					else if (s == 6'b 001000) mux_out <= i4 ;
					else if (s == 6'b 010000) mux_out <= i5 ;
					else if (s == 6'b 100000) mux_out <= i6 ;
					else mux_out <= 32'b 01100000000000000000000000000000 ;
			end
	 end


endmodule