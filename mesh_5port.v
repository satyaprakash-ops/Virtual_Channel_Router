
// //`include"input_channel.v"
// `include"output_channel.v"
// `include"crossbar.v"

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    00:19:06 09/15/09
// Design Name:    
// Module Name:    mesh_5port
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
module mesh_5port(reset, wr_clk, router_clk, rd_link1, rd_link2, rd_link3, 
						rd_link4, rd_core, current_address, 

						core_packet, core_in_val, data_in_req_from_core, core_fifo_out, 
						core_data_out, dm1_req_link1, dm1_req_link2, dm1_req_link3, 
						dm1_req_link4, dm1_req_core, dm1_gnt_from_link1, dm1_gnt_from_link2, 
						dm1_gnt_from_link3, dm1_gnt_from_link4, rd_en_core, core_en1, 
						core_en2, core_en4, core_en5, core_en6, core_fifo_empty, 
						link1_fifo_empty, link2_fifo_empty, link3_fifo_empty,	link4_fifo_empty,
 
						link1_packet, link1_in_val, data_in_req_from_link1, link1_fifo_out, 
						link1_data_out, dm2_req_link1, dm2_req_link2, dm2_req_link3, dm2_req_link4, 
						dm2_req_core, dm2_gnt_from_core, dm2_gnt_from_link2, dm2_gnt_from_link3, 
						dm2_gnt_from_link4, rd_en_link1, link1_en1, link1_en2, link1_en4, link1_en5, link1_en6,

						link2_packet, link2_in_val, data_in_req_from_link2, link2_fifo_out, 
						link2_data_out, dm3_req_link1, dm3_req_link2, dm3_req_link3, dm3_req_link4, 
						dm3_req_core, dm3_gnt_from_link1, dm3_gnt_from_link3,	dm3_gnt_from_link4,
						dm3_gnt_from_core, rd_en_link2, link2_en1, link2_en2, link2_en4, link2_en5, link2_en6,

						link3_packet, link3_in_val, data_in_req_from_link3, link3_fifo_out, 
						link3_data_out, dm4_req_link1, dm4_req_link2, dm4_req_link3, dm4_req_link4, 
						dm4_req_core, dm4_gnt_from_link1, dm4_gnt_from_link2, dm4_gnt_from_link4, 
						dm4_gnt_from_core, rd_en_link3, link3_en1, link3_en2, link3_en4, link3_en5, link3_en6,

						link4_packet, link4_in_val, data_in_req_from_link4, link4_fifo_out, 
						link4_data_out, dm5_req_link1, dm5_req_link2, dm5_req_link3, dm5_req_link4, 
						dm5_req_core, dm5_gnt_from_link1, dm5_gnt_from_link2, dm5_gnt_from_link3, 
						dm5_gnt_from_core, rd_en_link4, link4_en1, link4_en2, link4_en4, link4_en5, link4_en6,

						out_val_to_core, data_out_req_from_core, data_out_to_core,
						out_val_to_link1, data_out_req_from_link1, data_out_to_link1,
						out_val_to_link2, data_out_req_from_link2, data_out_to_link2,
						out_val_to_link3, data_out_req_from_link3, data_out_to_link3,
						out_val_to_link4, data_out_req_from_link4, data_out_to_link4
					);

input reset, wr_clk, router_clk ;
input [7:0] current_address ;
output rd_link1, rd_link2, rd_link3, rd_link4, rd_core ;

input [31:0] core_packet, link1_packet, link2_packet, link3_packet, link4_packet ;
input core_in_val, link1_in_val, link2_in_val, link3_in_val, link4_in_val ;

output data_in_req_from_core, data_in_req_from_link1, data_in_req_from_link2, 
		 data_in_req_from_link3, data_in_req_from_link4 ;

output [31:0] core_fifo_out, link1_fifo_out, link2_fifo_out, link3_fifo_out, link4_fifo_out ;
output [31:0] core_data_out, link1_data_out, link2_data_out, link3_data_out, link4_data_out ;

output dm1_req_link1, dm1_req_link2, dm1_req_link3, dm1_req_link4, dm1_req_core ;
output dm2_req_link1, dm2_req_link2, dm2_req_link3, dm2_req_link4, dm2_req_core ;
output dm3_req_link1, dm3_req_link2, dm3_req_link3, dm3_req_link4, dm3_req_core ;
output dm4_req_link1, dm4_req_link2, dm4_req_link3, dm4_req_link4, dm4_req_core ;
output dm5_req_link1, dm5_req_link2, dm5_req_link3, dm5_req_link4, dm5_req_core ;

output dm1_gnt_from_link1, dm1_gnt_from_link2, dm1_gnt_from_link3, dm1_gnt_from_link4 ;
output dm2_gnt_from_core, dm2_gnt_from_link2, dm2_gnt_from_link3,  dm2_gnt_from_link4 ;
output dm3_gnt_from_core, dm3_gnt_from_link1, dm3_gnt_from_link3,  dm3_gnt_from_link4 ;
output dm4_gnt_from_core, dm4_gnt_from_link1, dm4_gnt_from_link2,  dm4_gnt_from_link4 ;
output dm5_gnt_from_core, dm5_gnt_from_link1, dm5_gnt_from_link2,  dm5_gnt_from_link3 ;

output rd_en_core, rd_en_link1, rd_en_link2, rd_en_link3, rd_en_link4 ;
output link3_en1, link3_en2, link3_en4, link3_en5, link3_en6 ;
output core_en1, core_en2, core_en4, core_en5, core_en6 ;
output link4_en1, link4_en2, link4_en4, link4_en5, link4_en6 ;
output link2_en1, link2_en2, link2_en4, link2_en5, link2_en6 ;
output link1_en1, link1_en2, link1_en4, link1_en5, link1_en6 ;
output core_fifo_empty, link1_fifo_empty, link2_fifo_empty, link3_fifo_empty, link4_fifo_empty ;

output out_val_to_core, out_val_to_link1, out_val_to_link2, out_val_to_link3, out_val_to_link4 ;
input data_out_req_from_core, data_out_req_from_link1, data_out_req_from_link2, data_out_req_from_link3, data_out_req_from_link4 ;
output [31:0] data_out_to_core, data_out_to_link1, data_out_to_link2, data_out_to_link3, data_out_to_link4 ;

wire core_gnt_to_link1, core_gnt_to_link2, core_gnt_to_link3, core_gnt_to_link4 ;
wire core_req_from_link1, core_req_from_link2, core_req_from_link3, core_req_from_link4 ;

wire link1_gnt_to_core, link1_gnt_to_link2, link1_gnt_to_link3, link1_gnt_to_link4 ;
wire link1_req_from_core, link1_req_from_link2, link1_req_from_link3, link1_req_from_link4 ;

wire link2_gnt_to_core, link2_gnt_to_link1, link2_gnt_to_link3, link2_gnt_to_link4 ;
wire link2_req_from_core, link2_req_from_link1, link2_req_from_link3, link2_req_from_link4 ;

wire link3_gnt_to_core, link3_gnt_to_link1, link3_gnt_to_link2, link3_gnt_to_link4 ;
wire link3_req_from_core, link3_req_from_link1, link3_req_from_link2, link3_req_from_link4 ;

wire link4_gnt_to_core, link4_gnt_to_link1, link4_gnt_to_link2, link4_gnt_to_link3 ;
wire link4_req_from_core, link4_req_from_link1, link4_req_from_link2, link4_req_from_link3 ;

input_channel in_core(.reset(reset), .packet_in(core_packet), .in_val(core_in_val), 
.wr_clk(wr_clk), .router_clk(router_clk), .data_in_req(data_in_req_from_core), 
.fifo_data(core_fifo_out), .data_to_output_channel(core_data_out), .rd_en(rd_en_core), 
.en1(core_en1), .en2(core_en2), .en4(core_en4), .en5(core_en5), .en6(core_en6),
.rd1(rd_link1), .rd2(rd_link2), .rd3(rd_link3), .rd4(rd_link4), .rd_c(rd_core), 
.fifo_empty(core_fifo_empty), .current_address(current_address), 

.req_link1(dm1_req_link1), .req_link2(dm1_req_link2), .req_link3(dm1_req_link3), .req_link4(dm1_req_link4), .req_core(dm1_req_core), 
.gnt1(dm1_gnt_from_link1), .gnt2(dm1_gnt_from_link2), .gnt_c(1'b 0), .gnt3(dm1_gnt_from_link3),	.gnt4(dm1_gnt_from_link4)
);

input_channel in_link1(.reset(reset), .packet_in(link1_packet), .in_val(link1_in_val), 
.wr_clk(wr_clk), .router_clk(router_clk), .data_in_req(data_in_req_from_link1), 
.fifo_data(link1_fifo_out), .data_to_output_channel(link1_data_out),	.rd_en(rd_en_link1),
.en1(link1_en1), .en2(link1_en2), .en4(link1_en4), .en5(link1_en5), .en6(link1_en6),
.rd1(rd_link1), .rd2(rd_link2), .rd3(rd_link3), .rd4(rd_link4), .rd_c(rd_core),
.fifo_empty(link1_fifo_empty), .current_address(current_address), 
 
.req_link1(dm2_req_link1), .req_link2(dm2_req_link2), .req_link3(dm2_req_link3), .req_link4(dm2_req_link4), .req_core(dm2_req_core),
.gnt1(1'b 0), .gnt2(dm2_gnt_from_link2), .gnt_c(dm2_gnt_from_core), .gnt3(dm2_gnt_from_link3),	.gnt4(dm2_gnt_from_link4)
);

input_channel in_link2(.reset(reset), .packet_in(link2_packet), .in_val(link2_in_val), 
.wr_clk(wr_clk), .router_clk(router_clk), .data_in_req(data_in_req_from_link2), 
.fifo_data(link2_fifo_out), .data_to_output_channel(link2_data_out),	.rd_en(rd_en_link2),
.en1(link2_en1), .en2(link2_en2), .en4(link2_en4), .en5(link2_en5), .en6(link2_en6),
.rd1(rd_link1), .rd2(rd_link2), .rd3(rd_link3), .rd4(rd_link4), .rd_c(rd_core), 
.fifo_empty(link2_fifo_empty), .current_address(current_address), 

.req_link1(dm3_req_link1), .req_link2(dm3_req_link2), .req_link3(dm3_req_link3), .req_link4(dm3_req_link4), .req_core(dm3_req_core),
.gnt1(dm3_gnt_from_link1), .gnt2(1'b 0), .gnt_c(dm3_gnt_from_core), .gnt3(dm3_gnt_from_link3), .gnt4(dm3_gnt_from_link4)
);

input_channel in_link3(.reset(reset), .packet_in(link3_packet), .in_val(link3_in_val), 
.wr_clk(wr_clk), .router_clk(router_clk), .data_in_req(data_in_req_from_link3), 
.fifo_data(link3_fifo_out), .data_to_output_channel(link3_data_out),	.rd_en(rd_en_link3),
.en1(link3_en1), .en2(link3_en2), .en4(link3_en4), .en5(link3_en5), .en6(link3_en6),
.rd1(rd_link1), .rd2(rd_link2), .rd3(rd_link3), .rd4(rd_link4), .rd_c(rd_core), 
.fifo_empty(link3_fifo_empty), .current_address(current_address), 

.req_link1(dm4_req_link1), .req_link2(dm4_req_link2), .req_link3(dm4_req_link3), .req_link4(dm4_req_link4), .req_core(dm4_req_core),
.gnt1(dm4_gnt_from_link1), .gnt2(dm4_gnt_from_link2), .gnt_c(dm4_gnt_from_core), .gnt3(1'b 0), .gnt4(dm4_gnt_from_link4)
);

input_channel in_link4(.reset(reset), .packet_in(link4_packet), .in_val(link4_in_val), 
.wr_clk(wr_clk), .router_clk(router_clk), .data_in_req(data_in_req_from_link4), 
.fifo_data(link4_fifo_out), .data_to_output_channel(link4_data_out),	.rd_en(rd_en_link4),
.en1(link4_en1), .en2(link4_en2), .en4(link4_en4), .en5(link4_en5), .en6(link4_en6),
.rd1(rd_link1), .rd2(rd_link2), .rd3(rd_link3), .rd4(rd_link4), .rd_c(rd_core), 
.fifo_empty(link4_fifo_empty), .current_address(current_address), 

.req_link1(dm5_req_link1), .req_link2(dm5_req_link2), .req_link3(dm5_req_link3), .req_link4(dm5_req_link4), .req_core(dm5_req_core),
.gnt1(dm5_gnt_from_link1), .gnt2(dm5_gnt_from_link2), .gnt_c(dm5_gnt_from_core), .gnt3(dm5_gnt_from_link3), .gnt4(1'b 0)
);

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////

output_channel out_core(.reset(reset), .rd_clk(router_clk), .wr_clk(wr_clk), .rd(rd_core),

.dm1_req(core_req_from_link1), .dm2_req(core_req_from_link2), .dm3_req(core_req_from_link3), .dm4_req(core_req_from_link4),
.dm1_gnt(core_gnt_to_link1), .dm2_gnt(core_gnt_to_link2), .dm3_gnt(core_gnt_to_link3), .dm4_gnt(core_gnt_to_link4),

.dm1_data_in(link1_data_out), .dm2_data_in(link2_data_out), .dm3_data_in(link3_data_out), .dm4_data_in(link4_data_out), 
.out_val(out_val_to_core), .req_from_input_ch(data_out_req_from_core), .router_out(data_out_to_core)  
);	 

output_channel out_link1(.reset(reset), .rd_clk(router_clk), .wr_clk(wr_clk), .rd(rd_link1),

.dm1_req(link1_req_from_core), .dm2_req(link1_req_from_link2), .dm3_req(link1_req_from_link3), .dm4_req(link1_req_from_link4),
.dm1_gnt(link1_gnt_to_core), .dm2_gnt(link1_gnt_to_link2), .dm3_gnt(link1_gnt_to_link3), .dm4_gnt(link1_gnt_to_link4), 

.dm1_data_in(core_data_out), .dm2_data_in(link2_data_out), .dm3_data_in(link3_data_out), .dm4_data_in(link4_data_out),
.out_val(out_val_to_link1), .req_from_input_ch(data_out_req_from_link1), .router_out(data_out_to_link1)  
);

output_channel out_link2(.reset(reset), .rd_clk(router_clk), .wr_clk(wr_clk), .rd(rd_link2),

.dm1_req(link2_req_from_core), .dm2_req(link2_req_from_link1), .dm3_req(link2_req_from_link3), .dm4_req(link2_req_from_link4), 
.dm1_gnt(link2_gnt_to_core), .dm2_gnt(link2_gnt_to_link1), .dm3_gnt(link2_gnt_to_link3), .dm4_gnt(link2_gnt_to_link4), 

.dm1_data_in(core_data_out), .dm2_data_in(link1_data_out), .dm3_data_in(link3_data_out), .dm4_data_in(link4_data_out), 
.out_val(out_val_to_link2), .req_from_input_ch(data_out_req_from_link2), .router_out(data_out_to_link2)  
);

output_channel out_link3(.reset(reset), .rd_clk(router_clk), .wr_clk(wr_clk), .rd(rd_link3),

.dm1_req(link3_req_from_core), .dm2_req(link3_req_from_link1), .dm3_req(link3_req_from_link2), .dm4_req(link3_req_from_link4),
.dm1_gnt(link3_gnt_to_core), .dm2_gnt(link3_gnt_to_link1), .dm3_gnt(link3_gnt_to_link2), .dm4_gnt(link3_gnt_to_link4),

.dm1_data_in(core_data_out), .dm2_data_in(link1_data_out), .dm3_data_in(link2_data_out), .dm4_data_in(link4_data_out), 
.out_val(out_val_to_link3), .req_from_input_ch(data_out_req_from_link3), .router_out(data_out_to_link3)  
);


output_channel out_link4(.reset(reset), .rd_clk(router_clk), .wr_clk(wr_clk), .rd(rd_link4),

.dm1_req(link4_req_from_core), .dm2_req(link4_req_from_link1), .dm3_req(link4_req_from_link2), .dm4_req(link4_req_from_link3),
.dm1_gnt(link4_gnt_to_core), .dm2_gnt(link4_gnt_to_link1), .dm3_gnt(link4_gnt_to_link2), .dm4_gnt(link4_gnt_to_link3),

.dm1_data_in(core_data_out), .dm2_data_in(link1_data_out), .dm3_data_in(link2_data_out), .dm4_data_in(link3_data_out), 
.out_val(out_val_to_link4), .req_from_input_ch(data_out_req_from_link4), .router_out(data_out_to_link4)  
);


crossbar crossbar5(
.core_req_to_core(dm1_req_core), .core_req_to_link1(dm1_req_link1), .core_req_to_link2(dm1_req_link2), .core_req_to_link3(dm1_req_link3), .core_req_to_link4(dm1_req_link4),
.core_gnt_from_link1(dm1_gnt_from_link1), .core_gnt_from_link2(dm1_gnt_from_link2), .core_gnt_from_link3(dm1_gnt_from_link3), .core_gnt_from_link4(dm1_gnt_from_link4),
																		 
.link1_req_to_core(dm2_req_core), .link1_req_to_link1(dm2_req_link1), .link1_req_to_link2(dm2_req_link2), .link1_req_to_link3(dm2_req_link3), .link1_req_to_link4(dm2_req_link4),
.link1_gnt_from_core(dm2_gnt_from_core), .link1_gnt_from_link2(dm2_gnt_from_link2), .link1_gnt_from_link3(dm2_gnt_from_link3), .link1_gnt_from_link4(dm2_gnt_from_link4),

.link2_req_to_core(dm3_req_core), .link2_req_to_link1(dm3_req_link1), .link2_req_to_link2(dm3_req_link2), .link2_req_to_link3(dm3_req_link3), .link2_req_to_link4(dm3_req_link4),
.link2_gnt_from_core(dm3_gnt_from_core), .link2_gnt_from_link1(dm3_gnt_from_link1), .link2_gnt_from_link3(dm3_gnt_from_link3), .link2_gnt_from_link4(dm3_gnt_from_link4),

.link3_req_to_core(dm4_req_core), .link3_req_to_link1(dm4_req_link1), .link3_req_to_link2(dm4_req_link2), .link3_req_to_link3(dm4_req_link3), .link3_req_to_link4(dm4_req_link4),
.link3_gnt_from_core(dm4_gnt_from_core), .link3_gnt_from_link1(dm4_gnt_from_link1), .link3_gnt_from_link2(dm4_gnt_from_link2), .link3_gnt_from_link4(dm4_gnt_from_link4),

.link4_req_to_core(dm5_req_core), .link4_req_to_link1(dm5_req_link1), .link4_req_to_link2(dm5_req_link2), .link4_req_to_link3(dm5_req_link3), .link4_req_to_link4(dm5_req_link4),
.link4_gnt_from_core(dm5_gnt_from_core), .link4_gnt_from_link1(dm5_gnt_from_link1), .link4_gnt_from_link2(dm5_gnt_from_link2), .link4_gnt_from_link3(dm5_gnt_from_link3),

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
.core_gnt_to_link1(core_gnt_to_link1), .core_gnt_to_link2(core_gnt_to_link2), .core_gnt_to_link3(core_gnt_to_link3), .core_gnt_to_link4(core_gnt_to_link4),
.core_req_from_link1(core_req_from_link1), .core_req_from_link2(core_req_from_link2), .core_req_from_link3(core_req_from_link3),  .core_req_from_link4(core_req_from_link4),
 
.link1_gnt_to_core(link1_gnt_to_core), .link1_gnt_to_link2(link1_gnt_to_link2), .link1_gnt_to_link3(link1_gnt_to_link3), .link1_gnt_to_link4(link1_gnt_to_link4),
.link1_req_from_core(link1_req_from_core), .link1_req_from_link2(link1_req_from_link2), .link1_req_from_link3(link1_req_from_link3), .link1_req_from_link4(link1_req_from_link4),

.link2_gnt_to_core(link2_gnt_to_core), .link2_gnt_to_link1(link2_gnt_to_link1), .link2_gnt_to_link3(link2_gnt_to_link3), .link2_gnt_to_link4(link2_gnt_to_link4),
.link2_req_from_core(link2_req_from_core), .link2_req_from_link1(link2_req_from_link1), .link2_req_from_link3(link2_req_from_link3), .link2_req_from_link4(link2_req_from_link4), 

.link3_gnt_to_core(link3_gnt_to_core), .link3_gnt_to_link1(link3_gnt_to_link1), .link3_gnt_to_link2(link3_gnt_to_link2), .link3_gnt_to_link4(link3_gnt_to_link4),
.link3_req_from_core(link3_req_from_core), .link3_req_from_link1(link3_req_from_link1), .link3_req_from_link2(link3_req_from_link2), .link3_req_from_link4(link3_req_from_link4), 

.link4_gnt_to_core(link4_gnt_to_core), .link4_gnt_to_link1(link4_gnt_to_link1), .link4_gnt_to_link2(link4_gnt_to_link2), .link4_gnt_to_link3(link4_gnt_to_link3),
.link4_req_from_core(link4_req_from_core), .link4_req_from_link1(link4_req_from_link1), .link4_req_from_link2(link4_req_from_link2), .link4_req_from_link3(link4_req_from_link3) 

);

endmodule