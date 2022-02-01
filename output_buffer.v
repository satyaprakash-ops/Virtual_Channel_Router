
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    00:01:43 09/15/09
// Design Name:    
// Module Name:    output_buffer
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
module output_buffer(reset, rd_clk, wr_clk, data_in_req,  valid_data,
							output_full, rd, ors_data_out, buffer_out );

input reset, rd_clk, wr_clk, data_in_req, valid_data ;
input [31:0] ors_data_out ;
output output_full, rd ;
output [31:0] buffer_out ;



top_fifo_6 output_fifo(.reset(reset), .rd_clk(rd_clk), .rd(data_in_req),
							  .din(ors_data_out), .wr_clk(wr_clk), .in_val(valid_data),
							  .dout(buffer_out), .full_ext(output_full) ) ;

assign rd = ! output_full ;

endmodule