
// `include"top_fifo_6.v"
// `include"and_gate_2input.v"
// `include"register_32bit.v"
// `include"mux_2line.v"
// `include"IRS.v"
// `include"routing_xy.v"
// `include"DFF_clr.v"
// `include"DFF_asynch_clr.v"
// `include"IFC.v"


////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    21:28:54 09/14/09
// Design Name:    
// Module Name:    input_channel
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
module input_channel(reset, packet_in, in_val, wr_clk, router_clk, wr_en, rd_en,
							data_in_req, fifo_full_ext, fifo_full_int, fifo_empty, 
							fifo_data, rd_add, wr_add, data1_tailer, wr_dir, rd_dir, 
							header_flit, header1, fifo_shift, data_to_output_channel,
							rd1, rd2, rd3, rd4, rd_c, gnt1, gnt2, gnt3, gnt4, gnt_c, 
							gnt_val, gnt_select, gnt_reset, current_address, req_ae, 
							req_aw, req_an, req_as, req_al, req_se, req_sw, req_sn, 
							req_ss, req_sl, req_link1, req_link2, req_link3, req_link4, 
							req_core, en1, en2, en4, en5, en6
						  );

	input [7:0] current_address ;									
	input rd1, rd2, rd3, rd4, rd_c ;									 
	input gnt1, gnt2, gnt3, gnt4, gnt_c ; 
	input reset ;
	input [31:0] packet_in ;
	input in_val ;
	input wr_clk, router_clk ;	

	output wr_en, rd_en ;
	output data_in_req, fifo_full_ext, fifo_full_int, fifo_empty ;						 
	output [31:0] fifo_data, header1, fifo_shift, data_to_output_channel ;
	output [2:0] rd_add, wr_add ;
	output data1_tailer, wr_dir, rd_dir, header_flit ; 
	output gnt_val, gnt_select, gnt_reset ;
	output en1, en2, en4, en5, en6, req_ae, req_aw, req_an, req_as, req_al ;
	output req_se, req_sw, req_sn, req_ss, req_sl, req_link1, req_link2, req_link3, req_link4, req_core ;

	wire [31:0] header2 ;
//////////////////////////////////////////////////////////////////////////
IFC ifc1(.full(fifo_full_ext), .in_val(in_val), .wr_en(wr_en), 
               .data_in_req(data_in_req), .data_in(packet_in));

/////////////////////////////////////////////////////////////////////////

top_fifo_6 in_fifo(.din(packet_in), .dout(fifo_data), .reset(reset), .wr_clk(wr_clk), 
					    .rd_clk(router_clk), .rd(rd_en & ! data1_tailer), .in_val(wr_en),   
                   .full_int(fifo_full_int), .full_ext(fifo_full_ext), .empty(fifo_empty) 
						);

///////////////////////////////////////////////////////////////////////////
and_gate_2input and1(.a(! fifo_data[30]), .b(fifo_data[29]), .y(header_flit));
and_gate_2input and2(.a(fifo_data[30]), .b(! fifo_data[29]), .y(data1_tailer));

register_32bit reg2(.dout(header2), .din(fifo_data), .clk( router_clk), 
                    .clr(reset | data1_tailer), .ce(header_flit));  

mux_2line mux_1(.i0(header2), .i1(fifo_data), .y(header1), .sel(header_flit));
						     
assign gnt_val = gnt1 | gnt2 | gnt3 | gnt4 | gnt_c ;

register_32bit reg1(.dout(fifo_shift), .din(fifo_data), .clk( router_clk), 
                    .clr(reset), .ce(gnt_val)); 

////////////////////////////////////////////////////////////////////////////////////////

IRS irs1(.reset(reset), .rd1(rd1), .rd2(rd2), .rd3(rd3), .rd4(rd4), .rd_core(rd_c),
.empty(fifo_empty), .rd_clk( router_clk), .header(header_flit), .tailer(data1_tailer),
.gnt_link1(gnt1), .gnt_link2(gnt2), .gnt_link3(gnt3), .gnt_link4(gnt4), .gnt_core(gnt_c), 
.en_out(rd_en), .en1(en1), .en2(en2), .en4(en4), .en5(en5), .en6(en6) );
 
//////////////////////////////////////////////////////////////////////////////////////////

routing_xy routing_logic(.header_in(header1), .reset(reset), .current_address(current_address),
 								 .req_east(req_ae), .req_west(req_aw), 
								 .req_north(req_an), .req_south(req_as),
								 .req_local(req_al)  );

DFF_clr d2 (.d(req_ae), .clk(router_clk), .q(req_se), .clr(reset));
DFF_clr d3 (.d(req_aw), .clk(router_clk), .q(req_sw), .clr(reset));
DFF_clr d4 (.d(req_an), .clk(router_clk), .q(req_sn), .clr(reset));
DFF_clr d5 (.d(req_as), .clk(router_clk), .q(req_ss), .clr(reset)); 
DFF_clr d6 (.d(req_al), .clk(router_clk), .q(req_sl), .clr(reset)); 

//link1 = east; link2 = west; link3 = north; link4 = south; core = local ....
and_gate_2input and3(.a(req_se), .b(req_ae), .y(req_link1));
and_gate_2input and4(.a(req_sw), .b(req_aw), .y(req_link2));
and_gate_2input and5(.a(req_sn), .b(req_an), .y(req_link3));
and_gate_2input and6(.a(req_ss), .b(req_as), .y(req_link4));
and_gate_2input and7(.a(req_sl), .b(req_al), .y(req_core) );


DFF_asynch_clr d7(.D(1'b 1), .clk(gnt_val), .Q(gnt_select), .clr(gnt_reset | reset)); 
DFF_asynch_clr d8(.D(gnt_select), .clk(router_clk), .Q(gnt_reset), .clr(reset)) ; 					   

mux_2line mux_2(.i0(fifo_shift), .i1(header1), .y(data_to_output_channel), .sel(gnt_select));

//mux_2line mux_2(.i0(fifo_shift), .i1(header1), .y(data_to_output_channel), .sel(gnt_select));
//nand_gate_2input nand1(.a(data_to_output_channel[30]), .b(data_to_output_channel[29]), .y(read_ok));
//and_gate_2input and7(.a(gnt1), .b(read_ok), .y(rok_link1));
//and_gate_2input and8(.a(gnt2), .b(read_ok), .y(rok_link2));
//and_gate_2input and9(.a(gnt_c1), .b(read_ok), .y(rok_core1));
//and_gate_2input and10(.a(gnt_c2), .b(read_ok), .y(rok_core2));

endmodule