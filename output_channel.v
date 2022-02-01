

// `include"round_robin_arbiter.v"
// `include"ORS.v"
// `include"output_buffer.v"
// `include"nand_gate_2input.v"
// //`include"input_channel.v"

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    23:34:14 09/14/09
// Design Name:    
// Module Name:    output_channel
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
module output_channel(reset, dm1_req, dm2_req, dm3_req, dm4_req, rd_clk, wr_clk,
							 dm1_gnt, dm2_gnt, dm3_gnt, dm4_gnt, dm1_data_in, dm2_data_in,  
							 dm3_data_in, dm4_data_in, data_out, out_val, rd, 
							 req_from_input_ch, router_out  
							);	 

input dm1_req, dm2_req, dm3_req, dm4_req ;
input reset, rd_clk, wr_clk, req_from_input_ch;
input [31:0] dm1_data_in, dm2_data_in, dm3_data_in, dm4_data_in ;

output [31:0] data_out, router_out ;
output out_val, rd, dm1_gnt, dm2_gnt, dm3_gnt, dm4_gnt ;

wire fifo_wr_en, buf_full ;

round_robin_arbiter arbiter(.req1(dm1_req), .req2(dm2_req), .req3(dm3_req), .req4(dm4_req), 
									 .clk(wr_clk), .reset(reset), .gnt1(dm1_gnt), .gnt2(dm2_gnt), 
									 .gnt3(dm3_gnt), .gnt4(dm4_gnt) ); 

ORS ors1(.dm1_data_in(dm1_data_in), .dm2_data_in(dm2_data_in), 
			.dm3_data_in(dm3_data_in), .dm4_data_in(dm4_data_in),
			.gnt1(dm1_gnt), .gnt2(dm2_gnt), .gnt3(dm3_gnt), .gnt4(dm4_gnt),
			.data_out(data_out), .reset(reset)
		  );
assign fifo_wr_en = ! (data_out[30] & data_out[29]) ;

output_buffer ob1(.reset(reset), .rd_clk(rd_clk), .wr_clk(wr_clk), 
						.data_in_req(req_from_input_ch), .valid_data(fifo_wr_en),
						.output_full(buf_full), .rd(rd), .ors_data_out(data_out), 
						.buffer_out(router_out)
					  );	 

nand_gate_2input nand2(.a(router_out[30]), .b(router_out[29]), .y(out_val));

endmodule
