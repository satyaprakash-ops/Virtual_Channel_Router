
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    23:26:48 09/14/09
// Design Name:    
// Module Name:    IFC
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
module IFC(data_in, full, in_val, wr_en, in_ack, data_in_req);

    input full ;
    input in_val ;
    input [31:0] data_in ;
	 output wr_en ;
    output in_ack ;
	 output data_in_req ;

	 assign wr_en = !(data_in[30] & data_in[29]) & in_val ;
	 // 'in_ack' signal is used for retransmission ....
	 // for the time being this port has no functionality.... 
	 assign data_in_req = ! full ;

endmodule