
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    16:36:23 09/14/09
// Design Name:    
// Module Name:    decoder6
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
module decoder6(addr, en1, en2, en3, en4, en5, en6);
    input [2:0] addr;
    output en1;
    output en2;
    output en3;
    output en4;
    output en5;
    output en6;

	 reg en1, en2, en3, en4, en5, en6 ;

	 always @ (addr)
	 begin
	 		if (addr == 3'b 000)
			begin
					en1 <= 1'b 1 ; en2 <= 1'b 0 ; en3 <= 1'b 0 ;
					en4 <= 1'b 0 ; en5 <= 1'b 0 ; en6 <= 1'b 0 ;
			end

			else if (addr == 3'b 001)
			begin
					en1 <= 1'b 0 ; en2 <= 1'b 1 ; en3 <= 1'b 0 ;
					en4 <= 1'b 0 ; en5 <= 1'b 0 ; en6 <= 1'b 0 ;
			end

			else if (addr == 3'b 011)
			begin
					en1 <= 1'b 0 ; en2 <= 1'b 0 ; en3 <= 1'b 1 ;
					en4 <= 1'b 0 ; en5 <= 1'b 0 ; en6 <= 1'b 0 ;
			end

			else if (addr == 3'b 010)
			begin
					en1 <= 1'b 0 ; en2 <= 1'b 0 ; en3 <= 1'b 0 ;
					en4 <= 1'b 1 ; en5 <= 1'b 0 ; en6 <= 1'b 0 ;
			end

			else if (addr == 3'b 110)
			begin
					en1 <= 1'b 0 ; en2 <= 1'b 0 ; en3 <= 1'b 0 ;
					en4 <= 1'b 0 ; en5 <= 1'b 1 ; en6 <= 1'b 0 ;
			end

			else if (addr == 3'b 100)
			begin
					en1 <= 1'b 0 ; en2 <= 1'b 0 ; en3 <= 1'b 0 ;
					en4 <= 1'b 0 ; en5 <= 1'b 0 ; en6 <= 1'b 1 ;
			end

			else
			begin						
					en1 <= 1'b 0 ; en2 <= 1'b 0 ; en3 <= 1'b 0 ;
					en4 <= 1'b 0 ; en5 <= 1'b 0 ; en6 <= 1'b 0 ;
			end
	end


endmodule
