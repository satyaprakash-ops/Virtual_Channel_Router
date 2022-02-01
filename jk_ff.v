
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    16:38:57 09/14/09
// Design Name:    
// Module Name:    jk_ff
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
module jk_ff(j, k, reset, en, clk, q, qbar);
    input j;
    input k;
    input reset; 
	 input en;
    input clk;
    output q;
    output qbar;
    
	 reg q, qbar, temp_q, temp_qbar ;

	 always @ (posedge clk)
	 begin
	 	if(reset)
		begin
			q = 1'b 0 ;      qbar = 1'b 1 ;
			temp_q = 1'b 0 ;	temp_qbar = 1'b 1 ;	 			
		end

		else
		begin
			if (en)
			begin
				if (j == 1'b 0 && k == 1'b 0)
				begin
					q = temp_q ;
					qbar = temp_qbar ;
				end

				else if (j == 1'b 0 && k == 1'b 1)
				begin
					q = 1'b 0 ;  temp_q = 1'b 0 ;
					qbar = 1'b 1 ;  temp_qbar = 1'b 1 ;
				end

				else if (j == 1'b 1 && k == 1'b 0)
				begin
					q = 1'b 1 ;  temp_q = 1'b 1 ;
					qbar = 1'b 0 ;  temp_qbar = 1'b 0 ;
				end

				else
				begin
					  temp_q = ! temp_q ;
					  q = temp_q ;
					  temp_qbar = ! temp_qbar ;
					  qbar = temp_qbar ;
				end
		  end	 // end en
	  end	 // end else(reset)
  end // end always
endmodule
