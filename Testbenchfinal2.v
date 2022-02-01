//`include"top_mesh_5port.v"
`timescale 1ns / 1ns
module TestBenchfinal;
 
reg[31:0] core_packet, link1_packet, link2_packet, link3_packet, link4_packet;
reg core_in_val, link1_in_val, link2_in_val, link3_in_val, link4_in_val, clk0=1'b0, reset;
reg data_out_req_from_core, data_out_req_from_link1, data_out_req_from_link2, data_out_req_from_link3, data_out_req_from_link4 ;
 
wire[31:0] data_out_to_core, data_out_to_link1, data_out_to_link2, data_out_to_link3, data_out_to_link4 ;
wire data_in_req_from_core, data_in_req_from_link1, data_in_req_from_link2, data_in_req_from_link3, data_in_req_from_link4 ;
wire out_val_to_core, out_val_to_link1, out_val_to_link2, out_val_to_link3, out_val_to_link4 ;
 
top_mesh_5port mesh( clk0, reset,      
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
               
                out_val_to_core,  out_val_to_link1,
                out_val_to_link2, out_val_to_link3, out_val_to_link4
              );
 
// initial begin
//   forever begin
//     clk0= 1'b0;
//     #5 clk0= ~clk0;
//   end
// end


initial begin
  repeat(10000)
  #5 clk0=~clk0; 
end
 
 
initial begin
        $dumpfile("top_mesh_5port.vcd");
        $dumpvars(0,TestBenchfinal);
 
        //  HEADERS  (means initial flit values = 01 eop and bop)
 
        #5    data_out_req_from_core = 1'b1;  #2  core_in_val = 1'b1;  #2   core_packet = 32'h52545245;
        // core sends data_out_req_from_core signal to router to start sending header flit
        // then core sends core_in_val signal to let the router know that data is valid
        // lastly core send the 32 bit header data core_packet to router
        // small delay is provided to distinguish among different signals
        #5    data_out_req_from_link1 = 1'b1; #2  link1_in_val = 1'b1; #2   link1_packet = 32'h45613215;
        #5    data_out_req_from_link2 = 1'b1; #2  link2_in_val = 1'b1; #2   link2_packet = 32'h545678F2;
        #5    data_out_req_from_link3 = 1'b1; #2  link3_in_val = 1'b1; #2   link3_packet = 32'h44832167;
 
        // BODYFLITS  (means initial flit values = 00 eop and bop)
 
        #5    data_out_req_from_core = 1'b1;  #2  core_in_val = 1'b1;  #2   core_packet  = 32'h22545245;
        #5    data_out_req_from_link1 = 1'b1; #2  link1_in_val = 1'b1; #2   link1_packet = 32'h35613215;
        #5    data_out_req_from_link2 = 1'b1; #2  link2_in_val = 1'b1; #2   link2_packet = 32'h345678F2;
        #5    data_out_req_from_link3 = 1'b1; #2  link3_in_val = 1'b1; #2   link3_packet = 32'h24832167;
 
        #5    data_out_req_from_core = 1'b1;  #2  core_in_val = 1'b1;  #2   core_packet  = 32'h22565245;
        #5    data_out_req_from_link1 = 1'b1; #2  link1_in_val = 1'b1; #2   link1_packet = 32'h35623215;
        #5    data_out_req_from_link2 = 1'b1; #2  link2_in_val = 1'b1; #2   link2_packet = 32'h145648F2;
        #5    data_out_req_from_link3 = 1'b1; #2  link3_in_val = 1'b1; #2   link3_packet = 32'h24845167;
 
        // TAILER FLIT (means initial flit values = 10 eop and bop)
 
        #5    data_out_req_from_core = 1'b1;  #2  core_in_val = 1'b1;  #2   core_packet  = 32'h82545245;
        #5    data_out_req_from_link1 = 1'b1; #2  link1_in_val = 1'b1; #2   link1_packet = 32'h95613215;
        #5    data_out_req_from_link2 = 1'b1; #2  link2_in_val = 1'b1; #2   link2_packet = 32'h845678F2;
        #5    data_out_req_from_link3 = 1'b1; #2  link3_in_val = 1'b1; #2   link3_packet = 32'h84832167;
       
       
        #5 reset= 1'b1;
 
        #5 $finish;
 
end
 
endmodule
