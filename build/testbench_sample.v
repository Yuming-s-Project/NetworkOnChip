`include "connect_parameters.v"
module Lab6_test();
//localparam flit_port_width = 2 /*valid and tail bits*/+ `FLIT_DATA_WIDTH + dest_bits + vc_bits;
parameter HalfClkPeriod = 5;
localparam ClkPeriod = 2*HalfClkPeriod;
reg Clk;
reg [63:0]addA;
reg [63:0]addB;
reg [63:0]mullA;
reg [63:0]mullB;
reg [63:0]andA;
reg [63:0]xorA;
reg reset;
wire [63:0]out0;
wire [63:0]out1;
wire [63:0]out2;
wire [63:0]out3;
wire [63:0]out4;
wire [63:0]out5;
wire [63:0]out6;
wire [63:0]out7;
wire [63:0]out8;
//wire [70:0]flit_out[0:8];
wire [70:0]flit_0_out;
wire [70:0]flit_1_out;
wire [70:0]flit_2_out;
wire [70:0]flit_3_out;
wire [70:0]flit_4_out;
wire [70:0]flit_5_out;
wire [70:0]flit_6_out;
wire [70:0]flit_7_out;
wire [70:0]flit_8_out;
initial
begin
Clk = 0;
addA = 10;
addB = 3;
mullA = 5;
mullB = 8;
andA = 6;
xorA = 4;
reset = 0;
#40;
reset = 1;
end
always #(HalfClkPeriod) Clk = ~Clk;

Lab6 l6(addA,addB, mullA, mullB,andA,xorA,Clk,reset,out0,out1,out2,out3,out4,out5,out6,out7,out8,flit_0_out,flit_1_out,flit_2_out,flit_3_out,flit_4_out,flit_5_out,flit_6_out,flit_7_out,flit_8_out);

endmodule
/*`ifndef XST_SYNTH

`timescale 1ns / 1ps

`include "connect_parameters.v"


module CONNECT_testbench_sample();
  parameter HalfClkPeriod = 5;
  localparam ClkPeriod = 2*HalfClkPeriod;*/

  // non-VC routers still reeserve 1 dummy bit for VC.
 /* localparam vc_bits = (`NUM_VCS > 1) ? $clog2(`NUM_VCS) : 1;
  localparam dest_bits = $clog2(`NUM_USER_RECV_PORTS);*/
  //localparam flit_port_width = 2 /*valid and tail bits*/+ `FLIT_DATA_WIDTH + dest_bits + vc_bits;
  //localparam credit_port_width = 1 + vc_bits; // 1 valid bit
  /*localparam test_cycles = 20;

  reg Clk;
  reg Rst_n;

  // input regs
  reg send_flit [0:`NUM_USER_SEND_PORTS-1]; // enable sending flits
  reg [flit_port_width-1:0] flit_in [0:`NUM_USER_SEND_PORTS-1]; // send port inputs

  reg send_credit [0:`NUM_USER_RECV_PORTS-1]; // enable sending credits
  reg [credit_port_width-1:0] credit_in [0:`NUM_USER_RECV_PORTS-1]; //recv port credits

  // output wires
  wire [credit_port_width-1:0] credit_out [0:`NUM_USER_SEND_PORTS-1];
  wire [flit_port_width-1:0] flit_out [0:`NUM_USER_RECV_PORTS-1];

  reg [31:0] cycle;
  integer i;

  // packet fields
  reg is_valid;
  reg is_tail;
  reg [dest_bits-1:0] dest;
  reg [vc_bits-1:0]   vc;
  reg [`FLIT_DATA_WIDTH-1:0] data;

  // Generate Clock
  initial Clk = 0;
  always #(HalfClkPeriod) Clk = ~Clk;

  // Run simulation 
  initial begin 
    cycle = 0;
    for(i = 0; i < `NUM_USER_SEND_PORTS; i = i + 1) begin flit_in[i] = 0; send_flit[i] = 0; end
    for(i = 0; i < `NUM_USER_RECV_PORTS; i = i + 1) begin credit_in[i] = 0; send_credit[i] = 0; end
    
    $display("---- Performing Reset ----");
    Rst_n = 0; // perform reset (active low) 
    #(5*ClkPeriod+HalfClkPeriod); 
    Rst_n = 1; 
    #(HalfClkPeriod);

    // send a 2-flit packet from send port 0 to receive port 1
    send_flit[0] = 1'b1;
    dest = 1;
    vc = 0;
    data = 'ha;*/
    //flit_in[0] = {1'b1 /*valid*/, 1'b0 /*tail*/, dest, vc, data};
    /*$display("@%3d: Injecting flit %x into send port %0d", cycle, flit_in[0], 0);

    #(ClkPeriod);
    // send 2nd flit of packet
    send_flit[0] = 1'b1;
    data = 'hb;*/
    //flit_in[0] = {1'b1 /*valid*/, 1'b1 /*tail*/, dest, vc, data};
    /*$display("@%3d: Injecting flit %x into send port %0d", cycle, flit_in[0], 0);
    
    #(ClkPeriod);
    // stop sending flits
    send_flit[0] = 1'b0;
    flit_in[0] = 'b0; // valid bit
  end


  // Monitor arriving flits
  always @ (posedge Clk) begin
    cycle <= cycle + 1;
    for(i = 0; i < `NUM_USER_RECV_PORTS; i = i + 1) begin
      if(flit_out[i][flit_port_width-1]) begin // valid flit
        $display("@%3d: Ejecting flit %x at receive port %0d", cycle, flit_out[i], i);
      end
    end

    // terminate simulation
    if (cycle > test_cycles) begin
      $finish();
    end
  end

  // Add your code to handle flow control here (sending receiving credits)

  // Instantiate  network
  mkNetwork dut
  (.CLK(Clk)
   ,.RST_N(Rst_n)

   ,.send_ports_0_putFlit_flit_in(flit_in[0])
   ,.EN_send_ports_0_putFlit(send_flit[0])

   ,.EN_send_ports_0_getCredits(1'b1) // drain credits
   ,.send_ports_0_getCredits(credit_out[0])

   ,.send_ports_1_putFlit_flit_in(flit_in[1])
   ,.EN_send_ports_1_putFlit(send_flit[1])

   ,.EN_send_ports_1_getCredits(1'b1) // drain credits
   ,.send_ports_1_getCredits(credit_out[1])

   // add rest of send ports here
   //

   ,.EN_recv_ports_0_getFlit(1'b1) // drain flits
   ,.recv_ports_0_getFlit(flit_out[0])

   ,.recv_ports_0_putCredits_cr_in(credit_in[0])
   ,.EN_recv_ports_0_putCredits(send_credit[0])

   ,.EN_recv_ports_1_getFlit(1'b1) // drain flits
   ,.recv_ports_1_getFlit(flit_out[1])

   ,.recv_ports_1_putCredits_cr_in(credit_in[1])
   ,.EN_recv_ports_1_putCredits(send_credit[1])

   // add rest of receive ports here
   // 

   );


endmodule

`endif*/



