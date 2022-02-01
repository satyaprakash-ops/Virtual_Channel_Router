
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    23:28:33 09/14/09
// Design Name:    
// Module Name:    IRS
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
module IRS (reset, empty, rd1, rd2, rd3, rd4, rd_core, rd_clk,
 	 			gnt_link1, gnt_link2, gnt_link3, gnt_link4, gnt_core, 
            en1, en2, en4, en5, en6, tailer, en_out, header
           );
    
	 input reset, empty, rd1, rd2, rd3, rd4, rd_core, rd_clk ;
    input gnt_link1, gnt_link2, gnt_link3, gnt_link4, gnt_core, header, tailer ;

    output en_out, en1, en2, en4, en5, en6 ;

	 wire en_out ;
	 wire en1, en2, en3, en4, en5, en6 ;

	 assign en1 = (!empty) &  (rd1 | rd2 | rd3 | rd4 | rd_core) ;	
	 assign en2 = ((rd1 & gnt_link1) | (rd2 & gnt_link2) | (rd3 & gnt_link3) | (rd4 & gnt_link4) | (rd_core & gnt_core)) ;  

	 DFF_asynch_clr d1(.D(1'b 1), .clk(header), .Q(en4), .clr(reset | en5));
	 DFF_asynch_clr d2(.D(en4), .clk( tailer), .Q(en5), .clr(reset | en6));
	 DFF_asynch_clr d3(.D(en5), .clk(rd_clk), .Q(en6), .clr(reset));

//	 DFF_clr d4(.d(en4), .clk(rd_clk), .clr(reset), .q(en3));  //////
	 assign en_out = (en4 == 1'b 0) ?  en1 : en2 ; ///// en4 -> en3

endmodule
