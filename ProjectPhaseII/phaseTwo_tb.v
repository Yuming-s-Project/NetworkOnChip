
`include "connect_parameters.v"
module test_phaseTwo();
parameter HalfClkPeriod = 5;
localparam ClkPeriod = 2*HalfClkPeriod;
reg Clk;
reg reset;

reg select;
wire[70:0] out1;
wire[70:0] out0;

integer i;
reg [70:0] flit_in [0:8]; // send port inputs
wire [70:0] flit_out [0:8];//output wires
wire [1:0] credit_out [0:8];
initial Clk = 0;
always #(HalfClkPeriod) Clk = ~Clk;

initial select = 0;
always #(5*ClkPeriod+HalfClkPeriod) select = ~select;
initial begin
     for(i = 0; i < 9; i = i + 1)
         begin 
             flit_in[i] = 0; 
             //flit_out[i] = 0;
         end
    
     reset= 0; // perform reset (active low) 
     #(5*ClkPeriod+HalfClkPeriod); 
     reset = 1; 
     #(HalfClkPeriod);


 
     flit_in[2] = {1'b1, 1'b1, 4'b0010,1'b1, 64'b1}; 
     
      
     
     end
 
mkNetwork u_network(
    .CLK(Clk),
    .RST_N(reset),
    .select(select),
    .out1(out1),
    .out0(out0),
    .send_ports_0_putFlit_flit_in(flit_in[0]),
    .EN_send_ports_0_putFlit(1'b1),
    .EN_send_ports_0_getCredits(1'b0),
    .send_ports_0_getCredits(credit_out[0]),
    
    .send_ports_1_putFlit_flit_in(flit_in[1]),
    .EN_send_ports_1_putFlit(1'b1),
    .EN_send_ports_1_getCredits(1'b0),
    .send_ports_1_getCredits(credit_out[1]),
    
     
    .send_ports_2_putFlit_flit_in(flit_in[2]),
    .EN_send_ports_2_putFlit(1'b1),
    .EN_send_ports_2_getCredits(1'b0),
    .send_ports_2_getCredits(credit_out[2]),
    
    .send_ports_3_putFlit_flit_in(flit_in[3]),
    .EN_send_ports_3_putFlit(1'b1),
    .EN_send_ports_3_getCredits(1'b0),
    .send_ports_3_getCredits(credit_out[3]),
    
    .send_ports_4_putFlit_flit_in(flit_in[4]),
    .EN_send_ports_4_putFlit(1'b1),
    .EN_send_ports_4_getCredits(1'b0),
    .send_ports_4_getCredits(credit_out[4]),
    
    .send_ports_5_putFlit_flit_in(flit_in[5]),
    .EN_send_ports_5_putFlit(1'b1),
    .EN_send_ports_5_getCredits(1'b0),
    .send_ports_5_getCredits(credit_out[5]),
    
    .send_ports_6_putFlit_flit_in(flit_in[6]),
    .EN_send_ports_6_putFlit(1'b1),
    .EN_send_ports_6_getCredits(1'b0),
    .send_ports_6_getCredits(credit_out[6]),
    
    .send_ports_7_putFlit_flit_in(flit_in[7]),
    .EN_send_ports_7_putFlit(1'b1),
    .EN_send_ports_7_getCredits(1'b0),
    .send_ports_7_getCredits(credit_out[7]),
    
    .send_ports_8_putFlit_flit_in(flit_in[8]),
    .EN_send_ports_8_putFlit(1'b1),
    .EN_send_ports_8_getCredits(1'b0),
    .send_ports_8_getCredits(credit_out[8]),
    
    .EN_recv_ports_0_getFlit(1'b1),
    .recv_ports_0_getFlit(flit_out[0]),
    .recv_ports_0_putCredits_cr_in(2'b00),
    .EN_recv_ports_0_putCredits(1'b0),
    
    .EN_recv_ports_1_getFlit(1'b1),
    .recv_ports_1_getFlit(flit_out[1]),
    .recv_ports_1_putCredits_cr_in(2'b00),
    .EN_recv_ports_1_putCredits(1'b0),
    
    //in first mapping, N2 is not used
    .EN_recv_ports_2_getFlit(1'b0),
    .recv_ports_2_getFlit(flit_out[2]),
    .recv_ports_2_putCredits_cr_in(2'b00),
    .EN_recv_ports_2_putCredits(1'b0),
    
    .EN_recv_ports_3_getFlit(1'b1),
    .recv_ports_3_getFlit(flit_out[3]),
    .recv_ports_3_putCredits_cr_in(2'b00),
    .EN_recv_ports_3_putCredits(1'b0),
    
    .EN_recv_ports_4_getFlit(1'b1),
    .recv_ports_4_getFlit(flit_out[4]),
    .recv_ports_4_putCredits_cr_in(2'b00),
    .EN_recv_ports_4_putCredits(1'b0),
    
    .EN_recv_ports_5_getFlit(1'b1),
    .recv_ports_5_getFlit(flit_out[5]),
    .recv_ports_5_putCredits_cr_in(2'b00),
    .EN_recv_ports_5_putCredits(1'b0),
    
    .EN_recv_ports_6_getFlit(1'b1),
    .recv_ports_6_getFlit(flit_out[6]),
    .recv_ports_6_putCredits_cr_in(2'b00),
    .EN_recv_ports_6_putCredits(1'b0),
    
    .EN_recv_ports_7_getFlit(1'b1),
    .recv_ports_7_getFlit(flit_out[7]),
    .recv_ports_7_putCredits_cr_in(2'b00),
    .EN_recv_ports_7_putCredits(1'b0),
    
    .EN_recv_ports_8_getFlit(1'b1),
    .recv_ports_8_getFlit(flit_out[8]),
    .recv_ports_8_putCredits_cr_in(2'b00),
    .EN_recv_ports_8_putCredits(1'b0)
    
);
endmodule

