
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    23:39:29 09/14/09
// Design Name:    
// Module Name:    ORS
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
module ORS (gnt1, gnt2, gnt3, gnt4,	data_out, reset,
				dm1_data_in, dm2_data_in, dm3_data_in, dm4_data_in 
			  );

    input [31:0] dm1_data_in ;
    input [31:0] dm2_data_in ;
    input [31:0] dm3_data_in ;		  
    input [31:0] dm4_data_in ;		  
	 
    input gnt1 ;
    input gnt2 ;
    input gnt3 ;
	 input gnt4 ;
	 input reset ;

    output [31:0] data_out;
	 reg [31:0] data_out;
	 
	 always @ (gnt1 or gnt2 or gnt3 or gnt4 or dm1_data_in or dm2_data_in or
	 			  dm3_data_in or dm4_data_in or reset) 
	 begin
	 	if (reset == 1'b 1)
	 	begin
	      data_out <= 32'b 01100000000000000000000000000000 ;	
    	end
else
	 		begin
	     
		       if (gnt1 == 1'b 1 && gnt2 == 1'b 0 && gnt3 == 1'b 0 && gnt4 == 1'b 0)
		       begin
		  					data_out <= dm1_data_in ;
             end
					
		       else if (gnt1 == 1'b 0 && gnt2 == 1'b 1 && gnt3 == 1'b 0 && gnt4 == 1'b 0)
		       begin
						  data_out <= dm2_data_in ;
				 end
				
				 else if (gnt1 == 1'b 0 && gnt2 == 1'b 0 && gnt3 == 1'b 1 && gnt4 == 1'b 0)
		       begin
						  data_out <= dm3_data_in ;
				 end

				 else if (gnt1 == 1'b 0 && gnt2 == 1'b 0 && gnt3 == 1'b 0 && gnt4 == 1'b 1)
		       begin
						  data_out <= dm4_data_in ;
				 end
						
		       else  
				 begin
		 		        data_out <= 32'b 01100000000000000000000000000000 ;	
             	 end	  

	 	end
	end // end of always1...

endmodule
