
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    02:27:33 09/15/09
// Design Name:    
// Module Name:    crossbar
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
module crossbar(
core_req_to_core, core_req_to_link1, core_req_to_link2, core_req_to_link3, core_req_to_link4,
//core1_rok_to_core1, core1_rok_to_link1, core1_rok_to_link2, core1_rok_to_core2,
core_gnt_from_link1, core_gnt_from_link2, core_gnt_from_link3, core_gnt_from_link4,

link1_req_to_core, link1_req_to_link1, link1_req_to_link2, link1_req_to_link3, link1_req_to_link4,
//link1_rok_to_core1, link1_rok_to_link1, link1_rok_to_link2, link1_rok_to_core2,
link1_gnt_from_core, link1_gnt_from_link2, link1_gnt_from_link3, link1_gnt_from_link4,

link2_req_to_core, link2_req_to_link1, link2_req_to_link2, link2_req_to_link3, link2_req_to_link4,
//link2_rok_to_core1, link2_rok_to_link2, link2_rok_to_link1, link2_rok_to_core2,
link2_gnt_from_core, link2_gnt_from_link1, link2_gnt_from_link3, link2_gnt_from_link4,

link3_req_to_core, link3_req_to_link1, link3_req_to_link2, link3_req_to_link3, link3_req_to_link4,
//core2_rok_to_core1, core2_rok_to_link1, core2_rok_to_link2,	core2_rok_to_core2,
link3_gnt_from_core, link3_gnt_from_link1, link3_gnt_from_link2, link3_gnt_from_link4,

link4_req_to_core, link4_req_to_link1, link4_req_to_link2, link4_req_to_link3, link4_req_to_link4,
//core2_rok_to_core1, core2_rok_to_link1, core2_rok_to_link2,	core2_rok_to_core2,
link4_gnt_from_core, link4_gnt_from_link1, link4_gnt_from_link2, link4_gnt_from_link3,



core_gnt_to_link1, core_gnt_to_link2, core_gnt_to_link3, core_gnt_to_link4, 
core_req_from_link1, core_req_from_link2, core_req_from_link3, core_req_from_link4,
//core1_rok_from_link1, core1_rok_from_link2, core1_rok_from_core2,
 
link1_gnt_to_core, link1_gnt_to_link2, link1_gnt_to_link3, link1_gnt_to_link4,
link1_req_from_core, link1_req_from_link2, link1_req_from_link3, link1_req_from_link4,
//link1_rok_from_core1, link1_rok_from_link2,	link1_rok_from_core2,

link2_gnt_to_core, link2_gnt_to_link1, link2_gnt_to_link3, link2_gnt_to_link4,
link2_req_from_core, link2_req_from_link1, link2_req_from_link3, link2_req_from_link4, 
//link2_rok_from_core1, link2_rok_from_link1, link2_rok_from_core2,

link3_gnt_to_core, link3_gnt_to_link1, link3_gnt_to_link2, link3_gnt_to_link4,
link3_req_from_core, link3_req_from_link1, link3_req_from_link2, link3_req_from_link4, 
//core2_rok_from_core1, core2_rok_from_link1, core2_rok_from_link2

link4_gnt_to_core, link4_gnt_to_link1, link4_gnt_to_link2, link4_gnt_to_link3,
link4_req_from_core, link4_req_from_link1, link4_req_from_link2, link4_req_from_link3 
 
);

input core_req_to_core, core_req_to_link1, core_req_to_link2, core_req_to_link3, core_req_to_link4 ; 
//input core1_rok_to_core1, core1_rok_to_link1, core1_rok_to_link2, core1_rok_to_core2 ;
output core_gnt_from_link1, core_gnt_from_link2, core_gnt_from_link3, core_gnt_from_link4 ;

input link1_req_to_core, link1_req_to_link1, link1_req_to_link2, link1_req_to_link3, link1_req_to_link4  ;
//input link1_rok_to_core1, link1_rok_to_link1, link1_rok_to_link2, link1_rok_to_core2 ;
output link1_gnt_from_core, link1_gnt_from_link2, link1_gnt_from_link3, link1_gnt_from_link4 ;

input link2_req_to_core, link2_req_to_link1, link2_req_to_link2, link2_req_to_link3, link2_req_to_link4 ;
//input link2_rok_to_core1, link2_rok_to_link1, link2_rok_to_link2, link2_rok_to_core2 ;
output link2_gnt_from_core, link2_gnt_from_link1, link2_gnt_from_link3, link2_gnt_from_link4 ;

input link3_req_to_core, link3_req_to_link1, link3_req_to_link2, link3_req_to_link3, link3_req_to_link4 ;
//input core2_rok_to_core1, core2_rok_to_link1, core2_rok_to_link2, core2_rok_to_core2 ;
output link3_gnt_from_core, link3_gnt_from_link1, link3_gnt_from_link2, link3_gnt_from_link4 ;

input link4_req_to_core, link4_req_to_link1, link4_req_to_link2, link4_req_to_link3, link4_req_to_link4 ;
//input core2_rok_to_core1, core2_rok_to_link1, core2_rok_to_link2, core2_rok_to_core2 ;
output link4_gnt_from_core, link4_gnt_from_link1, link4_gnt_from_link2, link4_gnt_from_link3 ;

input core_gnt_to_link1, core_gnt_to_link2, core_gnt_to_link3, core_gnt_to_link4 ;
output core_req_from_link1, core_req_from_link2, core_req_from_link3, core_req_from_link4 ;
//output core1_rok_from_link1, core1_rok_from_link2, core1_rok_from_core2 ;
 
input link1_gnt_to_core, link1_gnt_to_link2, link1_gnt_to_link3, link1_gnt_to_link4 ;
output link1_req_from_core, link1_req_from_link2, link1_req_from_link3, link1_req_from_link4 ;
//output link1_rok_from_core1, link1_rok_from_link2,	link1_rok_from_core2 ;

input link2_gnt_to_core, link2_gnt_to_link1, link2_gnt_to_link3, link2_gnt_to_link4 ;
output link2_req_from_core, link2_req_from_link1, link2_req_from_link3, link2_req_from_link4 ;
//output link2_rok_from_core1, link2_rok_from_link1, link2_rok_from_core2 ;

input link3_gnt_to_core, link3_gnt_to_link1, link3_gnt_to_link2, link3_gnt_to_link4 ;
output link3_req_from_core, link3_req_from_link1, link3_req_from_link2, link3_req_from_link4 ;
//output core2_rok_from_core1, core2_rok_from_link1, core2_rok_from_link2 ; 

input link4_gnt_to_core, link4_gnt_to_link1, link4_gnt_to_link2, link4_gnt_to_link3 ;
output link4_req_from_core, link4_req_from_link1, link4_req_from_link2, link4_req_from_link3 ;

///////////////////////////////////////////////////////////////////////////////

assign link1_req_from_core = core_req_to_link1 ;
assign link2_req_from_core = core_req_to_link2 ;
assign link3_req_from_core = core_req_to_link3 ;
assign link4_req_from_core = core_req_to_link4 ;

assign core_req_from_link1 = link1_req_to_core ;
assign link2_req_from_link1 =	link1_req_to_link2 ;
assign link3_req_from_link1 = link1_req_to_link3 ;
assign link4_req_from_link1 =	link1_req_to_link4 ;

assign core_req_from_link2 =	link2_req_to_core ;
assign link1_req_from_link2 = link2_req_to_link1 ;
assign link3_req_from_link2 = link2_req_to_link3 ;
assign link4_req_from_link2 =	link2_req_to_link4 ;

assign core_req_from_link3  = link3_req_to_core  ;
assign link1_req_from_link3 =	link3_req_to_link1 ;
assign link2_req_from_link3 =	link3_req_to_link2 ;
assign link4_req_from_link3 =	link3_req_to_link4 ;

assign core_req_from_link4  = link4_req_to_core  ;
assign link1_req_from_link4 =	link4_req_to_link1 ;
assign link2_req_from_link4 =	link4_req_to_link2 ;
assign link3_req_from_link4 =	link4_req_to_link3 ;

//////////////////////////////////////////////////////////////////////////////

assign core_gnt_from_link1 = link1_gnt_to_core ;
assign core_gnt_from_link2 = link2_gnt_to_core ;
assign core_gnt_from_link3 = link3_gnt_to_core ;
assign core_gnt_from_link4 = link4_gnt_to_core ;

assign link1_gnt_from_core  = core_gnt_to_link1 ;
assign link1_gnt_from_link2 = link2_gnt_to_link1 ;
assign link1_gnt_from_link3 = link3_gnt_to_link1 ;
assign link1_gnt_from_link4 = link4_gnt_to_link1 ;

assign link2_gnt_from_core  = core_gnt_to_link2 ;
assign link2_gnt_from_link1 = link1_gnt_to_link2 ;
assign link2_gnt_from_link3 = link3_gnt_to_link2 ;
assign link2_gnt_from_link4 = link4_gnt_to_link2 ;

assign link3_gnt_from_core  = core_gnt_to_link3 ;
assign link3_gnt_from_link1 = link1_gnt_to_link3 ;
assign link3_gnt_from_link2 = link2_gnt_to_link3 ;
assign link3_gnt_from_link4 = link4_gnt_to_link3 ;

assign link4_gnt_from_core  = core_gnt_to_link4 ;
assign link4_gnt_from_link1 = link1_gnt_to_link4 ;
assign link4_gnt_from_link2 = link2_gnt_to_link4 ;
assign link4_gnt_from_link3 = link3_gnt_to_link4 ;

/////////////////////////////////////////////////////////////////////////////
/*
assign link1_rok_from_core1 = core1_rok_to_link1 ;
assign link2_rok_from_core1 = core1_rok_to_link2 ;
assign core2_rok_from_core1 = core1_rok_to_core2 ;

assign core1_rok_from_link1 = link1_rok_to_core1 ;
assign link2_rok_from_link1 =	link1_rok_to_link2 ;
assign core2_rok_from_link1 = link1_rok_to_core2 ;

assign core1_rok_from_link2 =	link2_rok_to_core1 ;
assign link1_rok_from_link2 = link2_rok_to_link1 ;
assign core2_rok_from_link2 = link2_rok_to_core2 ;

assign core1_rok_from_core2 = core2_rok_to_core1 ;
assign link1_rok_from_core2 =	core2_rok_to_link1 ;
assign link2_rok_from_core2 =	core2_rok_to_link2 ; 
*/
endmodule
