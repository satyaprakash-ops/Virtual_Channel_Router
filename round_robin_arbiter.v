
// `include"DFF_synch_clr.v"
// `include"priority_logic.v"
// `include"pulse_generator.v"
// `include"top_fifo_6.v"
// `include"input_channel.v"
// `include"DFF_asynch_clr.v"


////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    16:43:48 09/14/09
// Design Name:    
// Module Name:    round_robin_arbiter
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
module round_robin_arbiter(reset, clk, 
									req1, req2, req3, req4, 
									gnt1, gnt2, gnt3, gnt4,

									en1, en2, en3, en4, en1_reset,  
									gnt1_pulse, gnt2_pulse, gnt3_pulse,	gnt4_pulse,
									p1_out0, p1_out1, p1_out2, p1_out3,
									sh_p1_out0, sh_p1_out1, sh_p1_out2, sh_p1_out3,
									p2_out0, p2_out1, p2_out2, p2_out3,
									sh_p2_out0, sh_p2_out1, sh_p2_out2,	sh_p2_out3,
									p3_out0, p3_out1, p3_out2, p3_out3,
									sh_p3_out0, sh_p3_out1, sh_p3_out2, sh_p3_out3,
									p4_out0, p4_out1, p4_out2, p4_out3,
									sh_p4_out0, sh_p4_out1, sh_p4_out2, sh_p4_out3

								  );

input reset, clk ;
input req1, req2, req3, req4 ;
output gnt1, gnt2, gnt3, gnt4 ;

output en1, en2, en3, en4, en1_reset ;
output gnt1_pulse, gnt2_pulse, gnt3_pulse, gnt4_pulse ;
output p1_out0, p1_out1, p1_out2, p1_out3 ;
output sh_p1_out0, sh_p1_out1, sh_p1_out2, sh_p1_out3 ;
output p2_out0, p2_out1, p2_out2, p2_out3 ;
output sh_p2_out0, sh_p2_out1, sh_p2_out2, sh_p2_out3 ;
output p3_out0, p3_out1, p3_out2, p3_out3 ;
output sh_p3_out0, sh_p3_out1, sh_p3_out2, sh_p3_out3	;
output p4_out0, p4_out1, p4_out2, p4_out3 ;
output sh_p4_out0, sh_p4_out1, sh_p4_out2, sh_p4_out3 ;

	 priority_logic p1(.reset(reset), .en(en1_reset | en1),
	 						 .in0(req1 & !sh_p1_out1 & !sh_p1_out2 & !sh_p1_out3), 
	 						 .in1(req2 & !sh_p1_out0 & !sh_p1_out2 & !sh_p1_out3), 
							 .in2(req3 & !sh_p1_out0 & !sh_p1_out1 & !sh_p1_out3),
							 .in3(req4 & !sh_p1_out0 & !sh_p1_out1 & !sh_p1_out2), 
	 						 .out0(p1_out0), 
							 .out1(p1_out1), 
							 .out2(p1_out2),
							 .out3(p1_out3)
							);
	 
	 DFF_synch_clr d1(.d(p1_out0), .clk(clk), .clr(reset), .q(sh_p1_out0));
	 DFF_synch_clr d2(.d(p1_out1), .clk(clk), .clr(reset), .q(sh_p1_out1));
	 DFF_synch_clr d3(.d(p1_out2), .clk(clk), .clr(reset), .q(sh_p1_out2));
	 DFF_synch_clr d4(.d(p1_out3), .clk(clk), .clr(reset), .q(sh_p1_out3));
//////////////////////////////////////////////////////////////////////////////
	
	 priority_logic p2(.reset(reset), .en(en2), 
	 						 .in0(req2 & !sh_p2_out1 & !sh_p2_out2 & !sh_p2_out3), 
							 .in1(req3 & !sh_p2_out0 & !sh_p2_out2 & !sh_p2_out3), 
							 .in2(req4 & !sh_p2_out0 & !sh_p2_out1 & !sh_p2_out3),
							 .in3(req1 & !sh_p2_out0 & !sh_p2_out1 & !sh_p2_out2),
	 						 .out0(p2_out0), 
							 .out1(p2_out1), 
							 .out2(p2_out2),
							 .out3(p2_out3)
							);

	 DFF_synch_clr d5(.d(p2_out0), .clk(clk), .clr(reset), .q(sh_p2_out0));
	 DFF_synch_clr d6(.d(p2_out1), .clk(clk), .clr(reset), .q(sh_p2_out1));
	 DFF_synch_clr d7(.d(p2_out2), .clk(clk), .clr(reset), .q(sh_p2_out2));
	 DFF_synch_clr d8(.d(p2_out3), .clk(clk), .clr(reset), .q(sh_p2_out3));
//////////////////////////////////////////////////////////////////////////////

	 priority_logic p3(.reset(reset), .en(en3), 
	 						 .in0(req3 & !sh_p3_out1 & !sh_p3_out2 & !sh_p3_out3), 
							 .in1(req4 & !sh_p3_out0 & !sh_p3_out2 & !sh_p3_out3), 
							 .in2(req1 & !sh_p3_out0 & !sh_p3_out1 & !sh_p3_out3),
							 .in3(req2 & !sh_p3_out0 & !sh_p3_out1 & !sh_p3_out2), 
	 						 .out0(p3_out0), 
							 .out1(p3_out1), 
							 .out2(p3_out2),
							 .out3(p3_out3)
							 );
	 
	 DFF_synch_clr d9(.d(p3_out0), .clk(clk), .clr(reset), .q(sh_p3_out0));
	 DFF_synch_clr d10(.d(p3_out1), .clk(clk), .clr(reset), .q(sh_p3_out1));
	 DFF_synch_clr d11(.d(p3_out2), .clk(clk), .clr(reset), .q(sh_p3_out2));
	 DFF_synch_clr d12(.d(p3_out3), .clk(clk), .clr(reset), .q(sh_p3_out3));
//////////////////////////////////////////////////////////////////////////////
   
	 priority_logic p4(.reset(reset), .en(en4), 
	 						 .in0(req4 & !sh_p4_out1 & !sh_p4_out2 & !sh_p4_out3), 
							 .in1(req1 & !sh_p4_out0 & !sh_p4_out2 & !sh_p4_out3), 
							 .in2(req2 & !sh_p4_out0 & !sh_p4_out1 & !sh_p4_out3),
							 .in3(req3 & !sh_p4_out0 & !sh_p4_out1 & !sh_p4_out2), 
	 						 .out0(p4_out0), 
							 .out1(p4_out1), 
							 .out2(p4_out2),
							 .out3(p4_out3)
							 );
	 
	 DFF_synch_clr d13(.d(p4_out0), .clk(clk), .clr(reset), .q(sh_p4_out0));
	 DFF_synch_clr d14(.d(p4_out1), .clk(clk), .clr(reset), .q(sh_p4_out1));
	 DFF_synch_clr d15(.d(p4_out2), .clk(clk), .clr(reset), .q(sh_p4_out2));
	 DFF_synch_clr d16(.d(p4_out3), .clk(clk), .clr(reset), .q(sh_p4_out3));
//////////////////////////////////////////////////////////////////////////////

	 assign gnt1 = sh_p1_out0 | sh_p2_out3 | sh_p3_out2 | sh_p4_out1 ;	 
	 assign gnt2 = sh_p1_out1 | sh_p2_out0 | sh_p3_out3 | sh_p4_out2 ;	 
	 assign gnt3 = sh_p1_out2 | sh_p2_out1 | sh_p3_out0 | sh_p4_out3 ;	 
	 assign gnt4 = sh_p1_out3 | sh_p2_out2 | sh_p3_out1 | sh_p4_out0 ;

	 DFF_asynch_clr d17(.D(1'b 1), .clk(clk), .Q(en1_reset), .clr(reset | en1 | en2 | en3 | en4));

	 pulse_generator pulse1(.gnt(gnt1), .clk(clk), .clr(reset), .q(gnt1_pulse));
	 pulse_generator pulse2(.gnt(gnt2), .clk(clk), .clr(reset), .q(gnt2_pulse));
	 pulse_generator pulse3(.gnt(gnt3), .clk(clk), .clr(reset), .q(gnt3_pulse));
	 pulse_generator pulse4(.gnt(gnt4), .clk(clk), .clr(reset), .q(gnt4_pulse));

	 DFF_asynch_clr d18(.D(1'b 1), .clk(!gnt1), .Q(en2), .clr(reset | gnt3_pulse | gnt2_pulse | gnt4_pulse));

	 DFF_asynch_clr d19(.D(1'b 1), .clk(!gnt2), .Q(en3), .clr(reset | gnt1_pulse | gnt3_pulse | gnt4_pulse));

	 DFF_asynch_clr d20(.D(1'b 1), .clk(!gnt3), .Q(en4), .clr(reset | gnt1_pulse | gnt2_pulse | gnt4_pulse));

	 DFF_asynch_clr d21(.D(1'b 1), .clk(!gnt4), .Q(en1), .clr(reset | gnt1_pulse | gnt2_pulse | gnt3_pulse));

endmodule