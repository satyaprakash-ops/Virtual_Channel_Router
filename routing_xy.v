
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    15:56:44 09/14/09
// Design Name:    
// Module Name:    routing_xy
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
module routing_xy(reset, header_in, current_address, 
						req_east, req_west, req_local,  req_north, req_south);

input [31:0] header_in;
input [7:0] current_address; 
input reset;

output req_east, req_west, req_local,  req_north, req_south ;

reg req_east, req_west, req_local,  req_north, req_south ;

//supply0 gnd;
//supply1 vdd;

wire eop, bop, header ;
wire [3:0] dest_rn, dest_cn, curr_rn, curr_cn;

assign eop = header_in[30];
assign bop = header_in[29];
assign dest_rn = header_in[7:4];
assign dest_cn = header_in[3:0];

assign curr_rn = current_address[7:4];
assign curr_cn = current_address[3:0];


assign header = !eop & bop;

always @ (reset or eop or bop or dest_rn or dest_cn or curr_rn or curr_cn) 
begin
	  if(reset)
	  begin
	  		req_east <= 1'b 0 ;
	  		req_west <= 1'b 0 ; 
	  		req_north <= 1'b 0 ; 
	  		req_south <= 1'b 0 ; 
	  		req_local <= 1'b 0 ; 
	  end

	  else
	  begin
	  		if(header)
			begin
					if(dest_rn > curr_rn)
					begin
				   		req_east <= 1'b 0 ; 
	  			   		req_west <= 1'b 0 ; 
	            		req_north <= 1'b 0 ; 
	    					req_south <= 1'b 1 ; 
	  						req_local <= 1'b 0 ; 
					end

					else if(dest_rn < curr_rn)
					begin
				   		req_east <= 1'b 0 ; 
	  			   		req_west <= 1'b 0 ; 
	            		req_north <= 1'b 1 ; 
	    					req_south <= 1'b 0 ; 
	  						req_local <= 1'b 0 ;
					end

					else //if(dest_rn == curr_rn)
					begin
							if(dest_cn > curr_cn)
							begin
						   		req_east <= 1'b 1 ; 
	  			   				req_west <= 1'b 0 ; 
	            				req_north <= 1'b 0 ; 
	    							req_south <= 1'b 0 ; 
	  								req_local <= 1'b 0 ;
							end

							else if(dest_cn < curr_cn)
							begin
						   		req_east <= 1'b 0 ; 
	  			   				req_west <= 1'b 1 ; 
	            				req_north <= 1'b 0 ; 
	    							req_south <= 1'b 0 ; 
	  								req_local <= 1'b 0 ; 
							end

							else	// dest_cn == curr_cn
							begin
						   		req_east <= 1'b 0 ; 
	  			   				req_west <= 1'b 0 ; 
	            				req_north <= 1'b 0 ; 
	    							req_south <= 1'b 0 ; 
	  								req_local <= 1'b 1 ; 
							end
					end  
					
			end	 // header
			
			else		// if not  a header
			begin
					req_east <= 1'b 0 ; 
	  			   req_west <= 1'b 0 ; 
	            req_north <= 1'b 0 ; 
	    			req_south <= 1'b 0 ; 
	  				req_local <= 1'b 0 ; 
			end
	 	end
end   // end of always	 
		 
endmodule