	//`include"mesh_5port.v"
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    11:36:14 09/15/09
// Design Name:    
// Module Name:    top_mesh_5port
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
module top_mesh_5port( clk0, reset,  			
							  core_packet, core_in_val, data_out_req_from_core, 
							  link1_packet, link1_in_val, data_out_req_from_link1,
							  link2_packet, link2_in_val, data_out_req_from_link2,
							  link3_packet, link3_in_val, data_out_req_from_link3,
							  link4_packet, link4_in_val, data_out_req_from_link4,

							  data_in_req_from_core, data_in_req_from_link1, 
							  data_in_req_from_link2, data_in_req_from_link3,
							  data_in_req_from_link4,
							   
							  data_out_to_core, data_out_to_link1, 
							  data_out_to_link2, data_out_to_link3, data_out_to_link4,
							  
							  out_val_to_core,	out_val_to_link1, 
							  out_val_to_link2, out_val_to_link3, out_val_to_link4
							);

input clk0, reset ;
input [31:0] core_packet, link1_packet, link2_packet, link3_packet, link4_packet ;
input core_in_val, link1_in_val, link2_in_val, link3_in_val, link4_in_val ;
input data_out_req_from_core, data_out_req_from_link1, data_out_req_from_link2, data_out_req_from_link3, data_out_req_from_link4 ;

output data_in_req_from_core, data_in_req_from_link1, data_in_req_from_link2, data_in_req_from_link3, data_in_req_from_link4 ;
output out_val_to_core, out_val_to_link1, out_val_to_link2, out_val_to_link3, out_val_to_link4 ;
output [31:0] data_out_to_core, data_out_to_link1, data_out_to_link2, data_out_to_link3, data_out_to_link4 ;


wire rd_link1, rd_link2, rd_core, rd_link3, rd_link4 ;
wire [31:0] core_fifo_out, link1_fifo_out, link2_fifo_out, link3_fifo_out, link4_fifo_out ;
wire [31:0] core_data_out, link1_data_out, link2_data_out, link3_data_out, link4_data_out ;

wire core_req_to_link1, core_req_to_link2, core_req_to_core, core_req_to_link3, core_req_to_link4 ; 
wire core_gnt_from_link1, core_gnt_from_link2, core_gnt_from_link3, core_gnt_from_link4 ;  

wire link1_req_to_link1, link1_req_to_link2, link1_req_to_core, link1_req_to_link3, link1_req_to_link4  ; 
wire link1_gnt_from_link2, link1_gnt_from_core, link1_gnt_from_link3, link1_gnt_from_link4  ;

wire link2_req_to_link1, link2_req_to_link2, link2_req_to_core, link2_req_to_link3, link2_req_to_link4  ; 
wire link2_gnt_from_link1, link2_gnt_from_core, link2_gnt_from_link3, link2_gnt_from_link4 ;

wire link3_req_to_link1, link3_req_to_link2, link3_req_to_core, link3_req_to_link3, link3_req_to_link4  ; 
wire link3_gnt_from_link1, link3_gnt_from_link2, link3_gnt_from_core, link3_gnt_from_link4  ; 

wire link4_req_to_link1, link4_req_to_link2, link4_req_to_core, link4_req_to_link3, link4_req_to_link4  ; 
wire link4_gnt_from_link1, link4_gnt_from_link2, link4_gnt_from_core, link4_gnt_from_link3  ; 



//dff_synchronous_set dff_synch(.d(clr), .clk(clk0), .set(clr), .q(reset));


mesh_5port m5 (.reset(reset), .wr_clk(clk0), .router_clk(clk0), .current_address(8'b 00010001),
.rd_link1(rd_link1), .rd_link2(rd_link2), .rd_core(rd_core1), .rd_link3(rd_link3), .rd_link4(rd_link4),

.core_packet(core_packet), .core_in_val(core_in_val), .core_data_out(core_data_out),
.data_in_req_from_core(data_in_req_from_core), .core_fifo_out(core_fifo_out), 
.dm1_req_link1(core_req_to_link1), .dm1_req_link2(core_req_to_link2), 
.dm1_req_core(core_req_to_core), .dm1_req_link3(core_req_to_link3), .dm1_req_link4(core_req_to_link4), 
.dm1_gnt_from_link1(core_gnt_from_link1), .dm1_gnt_from_link2(core_gnt_from_link2), 
.dm1_gnt_from_link3(core_gnt_from_link3), .dm1_gnt_from_link4(core_gnt_from_link4),

.link1_packet(link1_packet), .link1_in_val(link1_in_val), .link1_data_out(link1_data_out),
.data_in_req_from_link1(data_in_req_from_link1), .link1_fifo_out(link1_fifo_out), 
.dm2_req_link1(link1_req_to_link1), .dm2_req_link2(link1_req_to_link2), 
.dm2_req_core(link1_req_to_core), .dm2_req_link3(link1_req_to_link3), .dm2_req_link4(link1_req_to_link4), 
.dm2_gnt_from_link2(link1_gnt_from_link2), .dm2_gnt_from_core(link1_gnt_from_core), 
.dm2_gnt_from_link3(link1_gnt_from_link3), .dm2_gnt_from_link4(link1_gnt_from_link4),

.link2_packet(link2_packet), .link2_in_val(link2_in_val), .link2_data_out(link2_data_out),
.data_in_req_from_link2(data_in_req_from_link2), .link2_fifo_out(link2_fifo_out), 
.dm3_req_link1(link2_req_to_link1), .dm3_req_link2(link2_req_to_link2), 
.dm3_req_core(link2_req_to_core), .dm3_req_link3(link2_req_to_link3), .dm3_req_link4(link2_req_to_link4), 
.dm3_gnt_from_link1(link2_gnt_from_link1), .dm3_gnt_from_core(link2_gnt_from_core), 
.dm3_gnt_from_link3(link2_gnt_from_link3), .dm3_gnt_from_link4(link2_gnt_from_link4),

.link3_packet(link3_packet), .link3_in_val(link3_in_val), .link3_data_out(link3_data_out),
.data_in_req_from_link3(data_in_req_from_link3), .link3_fifo_out(link3_fifo_out),  
.dm4_req_link1(link3_req_to_link1), .dm4_req_link2(link3_req_to_link2), 
.dm4_req_core(link3_req_to_core), .dm4_req_link3(link3_req_to_link3), .dm4_req_link4(link3_req_to_link4), 
.dm4_gnt_from_link1(link3_gnt_from_link1), .dm4_gnt_from_link2(link3_gnt_from_link2), 
.dm4_gnt_from_core(link3_gnt_from_core), .dm4_gnt_from_link4(link3_gnt_from_link4),

.link4_packet(link4_packet), .link4_in_val(link4_in_val), .link4_data_out(link4_data_out),
.data_in_req_from_link4(data_in_req_from_link4), .link4_fifo_out(link4_fifo_out),  
.dm5_req_link1(link4_req_to_link1), .dm5_req_link2(link4_req_to_link2), 
.dm5_req_core(link4_req_to_core), .dm5_req_link3(link4_req_to_link3), .dm5_req_link4(link4_req_to_link4), 
.dm5_gnt_from_link1(link4_gnt_from_link1), .dm5_gnt_from_link2(link4_gnt_from_link2), 
.dm5_gnt_from_core(link4_gnt_from_core), .dm5_gnt_from_link3(link4_gnt_from_link3),

.out_val_to_core(out_val_to_core), .data_out_to_core(data_out_to_core),
.data_out_req_from_core(data_out_req_from_core), 

.out_val_to_link1(out_val_to_link1), .data_out_to_link1(data_out_to_link1),
.data_out_req_from_link1(data_out_req_from_link1), 

.out_val_to_link2(out_val_to_link2), .data_out_to_link2(data_out_to_link2),
.data_out_req_from_link2(data_out_req_from_link2), 

.out_val_to_link3(out_val_to_link3), .data_out_to_link3(data_out_to_link3),
.data_out_req_from_link3(data_out_req_from_link3),

.out_val_to_link4(out_val_to_link4), .data_out_to_link4(data_out_to_link4),
.data_out_req_from_link4(data_out_req_from_link4)
 
);			 



endmodule