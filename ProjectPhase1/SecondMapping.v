
`include "connect_parameters.v"
module test();
parameter HalfClkPeriod = 5;
localparam ClkPeriod = 2*HalfClkPeriod;
reg Clk;
reg reset;
reg [63:0]addA;
reg [63:0]addB;
reg [63:0]mul1A;
reg [63:0]mul1B;
reg [63:0]andA;
reg [63:0]xorA;
wire [63:0]out0;
wire [63:0]out1;
wire [63:0]out2;
wire [63:0]out3;
wire [63:0]out4;
wire [63:0]out5;
wire [63:0]out6;
wire [63:0]out7;
wire [63:0]out8;
integer i;
reg [70:0] flit_in [0:8]; // send port inputs
wire [70:0] flit_out [0:8];//output wires
wire [1:0] credit_out [0:8];
initial Clk = 0;
always #(HalfClkPeriod) Clk = ~Clk;

initial begin
     for(i = 0; i < 9; i = i + 1)
         begin 
             flit_in[i] = 0; 
             //flit_out[i] = 0;
         end
     Clk = 0;
    addA = 10;
    addB = 3;
    mul1A = 5;
    mul1B = 8;
    andA = 6;
    xorA = 4;
     reset= 0; // perform reset (active low) 
     #(5*ClkPeriod+HalfClkPeriod); 
     reset = 1; 
     #(HalfClkPeriod);


     //add1 maps to N2
     flit_in[2] = {1'b1, 1'b1, 4'b0010,1'b1, out2}; 
     #(ClkPeriod);  

     //mul1 maps to N5
     flit_in[5] = {1'b1, 1'b1, 4'b0101,1'b1, out5}; 
     #(ClkPeriod);
   

     //or maps to N8
     flit_in[8] = {1'b1, 1'b1, 4'b1000,1'b1, out8};
     #(ClkPeriod); 
 
    //and maps to N0
     flit_in[0] = {1'b1, 1'b1, 4'b0000,1'b1, out0};
     #(ClkPeriod);

     //mul2 maps to N3
     flit_in[3] = {1'b1, 1'b1, 4'b0011,1'b1, out3}; 
     #(ClkPeriod);

     //add2 maps to N4
     flit_in[4] = {1'b1, 1'b1, 4'b0100,1'b1, out4}; 
     #(ClkPeriod);

     //xor maps to N6
     flit_in[6] = {1'b1, 1'b1, 4'b0110,1'b1, out6}; 
     #(ClkPeriod);

     //add3 maps to N1
     flit_in[1] = {1'b1, 1'b1, 4'b0001,1'b1, out1};
     #(ClkPeriod); 
     end
 add add1(.out(out2),.A(addA),.B(addB));
 add add2(.out(out4),.A(flit_out[8][63:0]),.B(flit_out[5][63:0]));
 add add3(.out(out1),.A(flit_out[6][63:0]),.B(flit_out[4][63:0]));
 multiply mul1(.out(out5),.A(mul1A),.B(mul1B));
 multiply mul2(.out(out3),.A(flit_out[0][63:0]),.B(flit_out[2][63:0]));
 And and1(.out(out0),.A(andA),.B(flit_out[2][63:0]));
 Or or1(.out(out8),.A(flit_out[2][63:0]),.B(flit_out[5][63:0]));
 Xor Xor(.out(out6),.A(flit_out[3][63:0]),.B(xorA));

mkNetwork u_network(
    .CLK(Clk),
    .RST_N(reset),
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
    
    /*.recv_ports_info_0_getRecvPortID(4'b0000),
    .recv_ports_info_1_getRecvPortID(4'b0001),
    .recv_ports_info_2_getRecvPortID(4'b0010),
    .recv_ports_info_3_getRecvPortID(4'b0011),
    .recv_ports_info_4_getRecvPortID(4'b0100),
    .recv_ports_info_5_getRecvPortID(4'b0101),
    .recv_ports_info_6_getRecvPortID(4'b0110),
    .recv_ports_info_7_getRecvPortID(4'b0111),
    .recv_ports_info_8_getRecvPortID(4'b1000)*/
);
endmodule

module add(out,A,B);
    output [63:0] out;
    input  [63:0] A;
    input  [63:0] B;
    assign out = A + B;
endmodule

module multiply(out,A,B);
    output [63:0] out;
    input  [63:0] A;
    input  [63:0] B;
    assign out = A * B;
endmodule

module And(out,A,B);
    output [63:0] out;
    input  [63:0] A;
    input  [63:0] B;
    assign out = A & B;
endmodule

module Or(out,A,B);
    output [63:0] out;
    input  [63:0] A;
    input  [63:0] B;
    assign out = A | B;
endmodule

module Xor(out,A,B);
    output [63:0] out;
    input  [63:0] A;
    input  [63:0] B;
    assign out = A ^ B;
endmodule
