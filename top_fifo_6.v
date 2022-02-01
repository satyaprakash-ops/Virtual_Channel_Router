
// `include"register_32bit_ce.v"
// `include"decoder6.v"
// `include"gray_mod6.v"
// `include"bus_mux_6line.v"
// //`include"asynch_comparator.v"
// //`include"input_channel.v"
// //`include"register_32bit.v"
// //`include"and_gate_2input.v"

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    16:28:55 09/14/09
// Design Name:    
// Module Name:    top_fifo_6
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
module top_fifo_6( din, wr_clk, rd_clk, reset, in_val, rd, 
					    full_int, full_ext, empty, dout ) ;

    input [31:0] din ;
    input wr_clk, rd_clk ;
    input reset, in_val, rd ;
    output full_int, full_ext ;
    output empty ;
    output [31:0] dout;

	 wire [31:0] reg1_out, reg2_out, reg3_out, reg4_out, reg5_out, reg6_out, mux_out ;
	 wire [31:0] out1, out2, out3, out4, out5, out6 ;
	 wire wr_en1, wr_en2, wr_en3, wr_en4, wr_en5, wr_en6 ;
	 wire rd_en1, rd_en2, rd_en3, rd_en4, rd_en5, rd_en6 ;
	 wire [2:0] wr_addr, rd_addr ;
	 wire ren_int, wen_int, shifted_rd, wr_dir, rd_dir ;
	 wire [5:0] s ;
	 wire r1, r2, r3, r4, r5, r6 ;

	 register_32bit wr_reg1(.din(din), .clk(wr_clk), .clr(reset), 
	 								.ce(wr_en1), .dout(reg1_out) );
								  
	 register_32bit wr_reg2(.din(din), .clk(wr_clk), .clr(reset), 
	 								.ce(wr_en2), .dout(reg2_out) );
								  
	 register_32bit wr_reg3(.din(din), .clk(wr_clk), .clr(reset), 
	 								.ce(wr_en3), .dout(reg3_out) );
								  
	 register_32bit wr_reg4(.din(din), .clk(wr_clk), .clr(reset), 
	 								.ce(wr_en4), .dout(reg4_out) );
								  
	 register_32bit wr_reg5(.din(din), .clk(wr_clk), .clr(reset), 
	 								.ce(wr_en5), .dout(reg5_out) );
								  
	 register_32bit wr_reg6(.din(din), .clk(wr_clk), .clr(reset), 
	 								.ce(wr_en6), .dout(reg6_out) );

////////////////////////////////////////////////////////////////////////////
	 asynch_comparator comp1(.rd_ptr(rd_addr), .wr_ptr(wr_addr), 
									 .rd_dir(rd_dir), .wr_dir(wr_dir), 
									 .full_ext(full_ext), .full_int(full_int), 
									 .empty(empty) );

	 assign wen_int = in_val & (! full_int) ;	// 'in_val' is the input valid signal
	 assign ren_int = rd & (! empty) ; // 'rd' is the input from next router's input channel
	 								  
	 gray_mod6 wr_counter(.clk(wr_clk), .reset(reset), .en(wen_int), 
	 							 .gray_out(wr_addr), .dir(wr_dir) );

	 gray_mod6 rd_counter(.clk(rd_clk), .reset(reset), .en(ren_int), 
	 							 .gray_out(rd_addr), .dir(rd_dir) );

	 decoder6 wr_dec(.addr(wr_addr), .en1(wr_en1), .en2(wr_en2), .en3(wr_en3), 
	 					  .en4(wr_en4), .en5(wr_en5), .en6(wr_en6) );

	 decoder6 rd_dec(.addr(rd_addr), .en1(rd_en1), .en2(rd_en2), .en3(rd_en3), 
	 					  .en4(rd_en4), .en5(rd_en5), .en6(rd_en6) );

////////////////////////////////////////////////////////////////////////////
    and_gate_2input and100 (.a(rd_en1), .b(ren_int), .y(r1));
	 and_gate_2input and101 (.a(rd_en2), .b(ren_int), .y(r2));
	 and_gate_2input and102 (.a(rd_en3), .b(ren_int), .y(r3));
	 and_gate_2input and103 (.a(rd_en4), .b(ren_int), .y(r4));
	 and_gate_2input and104 (.a(rd_en5), .b(ren_int), .y(r5));
	 and_gate_2input and105 (.a(rd_en6), .b(ren_int), .y(r6));

     
	 register_32bit_ce rd_reg1(.din(reg1_out), .clk(rd_clk), .clr(reset), 
	 							   	.ce(r1), .dout(out1) );
								  
	 register_32bit_ce rd_reg2(.din(reg2_out), .clk(rd_clk), .clr(reset), 
	 						   		.ce(r2), .dout(out2) );
								  
	 register_32bit_ce rd_reg3(.din(reg3_out), .clk(rd_clk), .clr(reset), 
	 						   		.ce(r3), .dout(out3) );
								  
	 register_32bit_ce rd_reg4(.din(reg4_out), .clk(rd_clk), .clr(reset), 
	 						   		.ce(r4), .dout(out4) );
								  
	 register_32bit_ce rd_reg5(.din(reg5_out), .clk(rd_clk), .clr(reset), 
	 						   		.ce(r5), .dout(out5) );
								  
	 register_32bit_ce rd_reg6(.din(reg6_out), .clk(rd_clk), .clr(reset), 
	 						   		.ce(r6), .dout(out6) );

	 assign s[0] = ! (out1[30] & out1[29]) ;
	 assign s[1] = ! (out2[30] & out2[29]) ;
	 assign s[2] = ! (out3[30] & out3[29]) ;
	 assign s[3] = ! (out4[30] & out4[29]) ;
	 assign s[4] = ! (out5[30] & out5[29]) ;
	 assign s[5] = ! (out6[30] & out6[29]) ;

	 bus_mux_6line mux1(.i1(reg1_out), .i2(reg2_out), .i3(reg3_out), 
	 						  .i4(reg4_out), .i5(reg5_out), .i6(reg6_out), 
							  .s(s), .mux_out(dout), .reset(reset) ); //mux_out


endmodule