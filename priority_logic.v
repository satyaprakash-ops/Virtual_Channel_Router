
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    16:48:50 09/14/09
// Design Name:    
// Module Name:    priority_logic
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
module priority_logic(reset, en, in0, in1, in2, in3, out0, out1, out2, out3);

	 input reset;
    input en;

    input in0;
    input in1;
    input in2;
	 input in3;

    output out0;
    output out1;
    output out2;
	 output out3;

	 assign out0 = !reset & en & in0 ;
	 assign out1 = !reset & en & !in0 & in1 ;
	 assign out2 = !reset & en & !in0 & !in1 & in2 ;
	 assign out3 = !reset & en & !in0 & !in1 & !in2	& in3 ;

endmodule
