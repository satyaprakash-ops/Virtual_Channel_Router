
// `include"jk_ff.v"
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    16:37:40 09/14/09
// Design Name:    
// Module Name:    gray_mod6
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
module gray_mod6(clk, reset, en, gray_out, dir);
	input clk ;
	input reset ;
	input en ;
	output [2:0] gray_out ;
	output dir ;

	wire [2:0] gray_out ;
	wire dir, x ;
	wire j0, k0, j1, k1, j2, k2 ;
	wire q0, q1, q2, q0_bar, q1_bar, q2_bar ;

	assign j0 = q2_bar & q1_bar ;
	assign k0 = q2_bar & q1 ;
	
	assign j1 = q2_bar & q0 ;
	assign k1 = q0_bar & q2 ;

	assign j2 = q0_bar & q1 ;
	assign k2 = q1_bar & q0_bar ;

	jk_ff jk0(.j(j0), .k(k0), .reset(reset), .en(en), .clk(clk), .q(q0), .qbar(q0_bar));
	jk_ff jk1(.j(j1), .k(k1), .reset(reset), .en(en), .clk(clk), .q(q1), .qbar(q1_bar));
	jk_ff jk2(.j(j2), .k(k2), .reset(reset), .en(en), .clk(clk), .q(q2), .qbar(q2_bar));

	assign gray_out[2] = q2 ;
	assign gray_out[1] = q1 ;
	assign gray_out[0] = q0 ;

	assign x = ((q2 & q1_bar & q0_bar) == 1'b 1) ? 1'b 1 : 1'b 0 ;
	jk_ff jk3(.j(1'b 1), .k(1'b 1), .reset(reset), .en(1'b 1), .clk(! x), .q(dir));


endmodule