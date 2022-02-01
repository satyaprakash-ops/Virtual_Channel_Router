
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    16:33:02 09/14/09
// Design Name:    
// Module Name:    asynch_comparator
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
module asynch_comparator(rd_ptr, wr_ptr, rd_dir, wr_dir, full_ext, full_int, empty);

    input [2:0] rd_ptr;
    input [2:0] wr_ptr;
    input rd_dir;
    input wr_dir;
    output full_ext;
    output full_int;
    output empty;

	 wire full_int, empty ;
	 reg full_ext ;

	 assign full_int = ((rd_ptr == wr_ptr) && (rd_dir != wr_dir)) ? 1'b 1 : 1'b 0 ;
	 assign empty = ((rd_ptr == wr_ptr) && (rd_dir == wr_dir)) ? 1'b 1 : 1'b 0 ;

	 always @ (rd_ptr or wr_ptr or rd_dir or wr_dir)
	 begin
	 		if (rd_ptr == 3'b 000)
			begin
					if (wr_ptr == 3'b 000)	
					begin
						if (rd_dir != wr_dir)
							full_ext = 1'b 1 ;
						else
							full_ext = 1'b 0 ;
					end

					else if (wr_ptr == 3'b 001)
						 full_ext = 1'b 0 ;
					else if (wr_ptr == 3'b 011)
						 full_ext = 1'b 0 ;
					else if (wr_ptr == 3'b 010)
						 full_ext = 1'b 0 ;

				   else if (wr_ptr == 3'b 110)
						 full_ext = 1'b 1 ;
					else
						 full_ext = 1'b 1 ;
		   end
/////////////////////////////////////////////////////////////
			else if (rd_ptr == 3'b 001)
			begin
					if (wr_ptr == 3'b 000)	
						 full_ext = 1'b 1 ;

					else if (wr_ptr == 3'b 001)
				   begin
						if (rd_dir != wr_dir)
							full_ext = 1'b 1 ;
						else
							full_ext = 1'b 0 ;
					end

					else if (wr_ptr == 3'b 011)
						 full_ext = 1'b 0 ;
					else if (wr_ptr == 3'b 010)
						 full_ext = 1'b 0 ;
				   else if (wr_ptr == 3'b 110)
						 full_ext = 1'b 0 ;

					else
						 full_ext = 1'b 1 ;
		   end
/////////////////////////////////////////////////////////////////
			else if (rd_ptr == 3'b 011)
			begin
					if (wr_ptr == 3'b 000)	
						 full_ext = 1'b 1 ;
					else if (wr_ptr == 3'b 001)
				   	 full_ext = 1'b 1 ;

					else if (wr_ptr == 3'b 011)
					begin
						if (rd_dir != wr_dir)
							full_ext = 1'b 1 ;
						else
							full_ext = 1'b 0 ;
					end 
						
					else if (wr_ptr == 3'b 010)
						 full_ext = 1'b 0 ;
				   else if (wr_ptr == 3'b 110)
						 full_ext = 1'b 0 ;
					else
						 full_ext = 1'b 0 ;
		   end
/////////////////////////////////////////////////////////////////
			else if (rd_ptr == 3'b 010)
			begin
					if (wr_ptr == 3'b 000)	
						 full_ext = 1'b 0 ;

					else if (wr_ptr == 3'b 001)
				   	 full_ext = 1'b 1 ; 
					else if (wr_ptr == 3'b 011)
						 full_ext = 1'b 1 ;
						
					else if (wr_ptr == 3'b 010)
					begin
						if (rd_dir != wr_dir)
							full_ext = 1'b 1 ;
						else
							full_ext = 1'b 0 ;
					end
				  						
				   else if (wr_ptr == 3'b 110)
						 full_ext = 1'b 0 ;	
					else
						 full_ext = 1'b 0 ;
		   end 
/////////////////////////////////////////////////////////////////
			else if (rd_ptr == 3'b 110)
			begin
					if (wr_ptr == 3'b 000)	
						 full_ext = 1'b 0 ; 
					else if (wr_ptr == 3'b 001)
				   	 full_ext = 1'b 0 ; 

					else if (wr_ptr == 3'b 011)
						 full_ext = 1'b 1 ;
					else if (wr_ptr == 3'b 010)
						 full_ext = 1'b 1 ;
				  						
				   else if (wr_ptr == 3'b 110)
					begin
						if (rd_dir != wr_dir)
							full_ext = 1'b 1 ;
						else
							full_ext = 1'b 0 ;
					end	 
						 
				 	else
						 full_ext = 1'b 0 ;
		   end 
/////////////////////////////////////////////////////////////////
			else		 // rd_ptr == 3'b 100
			begin 
			     if (wr_ptr == 3'b 000)	
						 full_ext = 1'b 0 ; 
					else if (wr_ptr == 3'b 001)
				   	 full_ext = 1'b 0 ; 
					else if (wr_ptr == 3'b 011)
						 full_ext = 1'b 0 ;

					else if (wr_ptr == 3'b 010)
						 full_ext = 1'b 1 ; 				  						
				   else if (wr_ptr == 3'b 110)
						 full_ext = 1'b 1 ;
						 
				 	else
					begin
						if (rd_dir != wr_dir)
							full_ext = 1'b 1 ;
						else
							full_ext = 1'b 0 ;
					end	 
		   end 
	 end // end always...

////////////////////////////////////////////////////////////////////////////////////

endmodule
