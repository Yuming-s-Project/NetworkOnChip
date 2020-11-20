`ifdef BSV_ASSIGNMENT_DELAY
`else
`define BSV_ASSIGNMENT_DELAY
`endif

module mkNetwork(CLK,
		 RST_N,

		 send_ports_0_putFlit_flit_in,
		 EN_send_ports_0_putFlit,

		 EN_send_ports_0_getCredits,
		 send_ports_0_getCredits,

		 send_ports_1_putFlit_flit_in,
		 EN_send_ports_1_putFlit,

		 EN_send_ports_1_getCredits,
		 send_ports_1_getCredits,

		 send_ports_2_putFlit_flit_in,
		 EN_send_ports_2_putFlit,

		 EN_send_ports_2_getCredits,
		 send_ports_2_getCredits,

		 send_ports_3_putFlit_flit_in,
		 EN_send_ports_3_putFlit,

		 EN_send_ports_3_getCredits,
		 send_ports_3_getCredits,

		 send_ports_4_putFlit_flit_in,
		 EN_send_ports_4_putFlit,

		 EN_send_ports_4_getCredits,
		 send_ports_4_getCredits,

		 send_ports_5_putFlit_flit_in,
		 EN_send_ports_5_putFlit,

		 EN_send_ports_5_getCredits,
		 send_ports_5_getCredits,

		 send_ports_6_putFlit_flit_in,
		 EN_send_ports_6_putFlit,

		 EN_send_ports_6_getCredits,
		 send_ports_6_getCredits,

		 send_ports_7_putFlit_flit_in,
		 EN_send_ports_7_putFlit,

		 EN_send_ports_7_getCredits,
		 send_ports_7_getCredits,

		 send_ports_8_putFlit_flit_in,
		 EN_send_ports_8_putFlit,

		 EN_send_ports_8_getCredits,
		 send_ports_8_getCredits,

		 EN_recv_ports_0_getFlit,
		 recv_ports_0_getFlit,

		 recv_ports_0_putCredits_cr_in,
		 EN_recv_ports_0_putCredits,

		 EN_recv_ports_1_getFlit,
		 recv_ports_1_getFlit,

		 recv_ports_1_putCredits_cr_in,
		 EN_recv_ports_1_putCredits,

		 EN_recv_ports_2_getFlit,
		 recv_ports_2_getFlit,

		 recv_ports_2_putCredits_cr_in,
		 EN_recv_ports_2_putCredits,

		 EN_recv_ports_3_getFlit,
		 recv_ports_3_getFlit,

		 recv_ports_3_putCredits_cr_in,
		 EN_recv_ports_3_putCredits,

		 EN_recv_ports_4_getFlit,
		 recv_ports_4_getFlit,

		 recv_ports_4_putCredits_cr_in,
		 EN_recv_ports_4_putCredits,

		 EN_recv_ports_5_getFlit,
		 recv_ports_5_getFlit,

		 recv_ports_5_putCredits_cr_in,
		 EN_recv_ports_5_putCredits,

		 EN_recv_ports_6_getFlit,
		 recv_ports_6_getFlit,

		 recv_ports_6_putCredits_cr_in,
		 EN_recv_ports_6_putCredits,

		 EN_recv_ports_7_getFlit,
		 recv_ports_7_getFlit,

		 recv_ports_7_putCredits_cr_in,
		 EN_recv_ports_7_putCredits,

		 EN_recv_ports_8_getFlit,
		 recv_ports_8_getFlit,

		 recv_ports_8_putCredits_cr_in,
		 EN_recv_ports_8_putCredits,

		 recv_ports_info_0_getRecvPortID,

		 recv_ports_info_1_getRecvPortID,

		 recv_ports_info_2_getRecvPortID,

		 recv_ports_info_3_getRecvPortID,

		 recv_ports_info_4_getRecvPortID,

		 recv_ports_info_5_getRecvPortID,

		 recv_ports_info_6_getRecvPortID,

		 recv_ports_info_7_getRecvPortID,

		 recv_ports_info_8_getRecvPortID,

         select,

         out1,

         out0

     );
  input  CLK;
  input  RST_N;
  //added port
  input select;
  output  [70:0] out1; //output if select bit is 1
  output  [70:0] out0; //output if select bit is 0
 
  reg [70:0] out1;
  reg [70:0] out0;
  wire [70:0] temp_out1;
  wire [70:0] temp_out0;


  // action method send_ports_0_putFlit
  input  [70 : 0] send_ports_0_putFlit_flit_in;
  input  EN_send_ports_0_putFlit;

  // actionvalue method send_ports_0_getCredits
  input  EN_send_ports_0_getCredits;
  output [1 : 0] send_ports_0_getCredits;

  // action method send_ports_1_putFlit
  input  [70 : 0] send_ports_1_putFlit_flit_in;
  input  EN_send_ports_1_putFlit;

  // actionvalue method send_ports_1_getCredits
  input  EN_send_ports_1_getCredits;
  output [1 : 0] send_ports_1_getCredits;

  // action method send_ports_2_putFlit
  input  [70 : 0] send_ports_2_putFlit_flit_in;
  input  EN_send_ports_2_putFlit;

  // actionvalue method send_ports_2_getCredits
  input  EN_send_ports_2_getCredits;
  output [1 : 0] send_ports_2_getCredits;

  // action method send_ports_3_putFlit
  input  [70 : 0] send_ports_3_putFlit_flit_in;
  input  EN_send_ports_3_putFlit;

  // actionvalue method send_ports_3_getCredits
  input  EN_send_ports_3_getCredits;
  output [1 : 0] send_ports_3_getCredits;

  // action method send_ports_4_putFlit
  input  [70 : 0] send_ports_4_putFlit_flit_in;
  input  EN_send_ports_4_putFlit;

  // actionvalue method send_ports_4_getCredits
  input  EN_send_ports_4_getCredits;
  output [1 : 0] send_ports_4_getCredits;

  // action method send_ports_5_putFlit
  input  [70 : 0] send_ports_5_putFlit_flit_in;
  input  EN_send_ports_5_putFlit;

  // actionvalue method send_ports_5_getCredits
  input  EN_send_ports_5_getCredits;
  output [1 : 0] send_ports_5_getCredits;

  // action method send_ports_6_putFlit
  input  [70 : 0] send_ports_6_putFlit_flit_in;
  input  EN_send_ports_6_putFlit;

  // actionvalue method send_ports_6_getCredits
  input  EN_send_ports_6_getCredits;
  output [1 : 0] send_ports_6_getCredits;

  // action method send_ports_7_putFlit
  input  [70 : 0] send_ports_7_putFlit_flit_in;
  input  EN_send_ports_7_putFlit;

  // actionvalue method send_ports_7_getCredits
  input  EN_send_ports_7_getCredits;
  output [1 : 0] send_ports_7_getCredits;

  // action method send_ports_8_putFlit
  input  [70 : 0] send_ports_8_putFlit_flit_in;
  input  EN_send_ports_8_putFlit;

  // actionvalue method send_ports_8_getCredits
  input  EN_send_ports_8_getCredits;
  output [1 : 0] send_ports_8_getCredits;

  // actionvalue method recv_ports_0_getFlit
  input  EN_recv_ports_0_getFlit;
  output [70 : 0] recv_ports_0_getFlit;

  // action method recv_ports_0_putCredits
  input  [1 : 0] recv_ports_0_putCredits_cr_in;
  input  EN_recv_ports_0_putCredits;

  // actionvalue method recv_ports_1_getFlit
  input  EN_recv_ports_1_getFlit;
  output [70 : 0] recv_ports_1_getFlit;

  // action method recv_ports_1_putCredits
  input  [1 : 0] recv_ports_1_putCredits_cr_in;
  input  EN_recv_ports_1_putCredits;

  // actionvalue method recv_ports_2_getFlit
  input  EN_recv_ports_2_getFlit;
  output [70 : 0] recv_ports_2_getFlit;

  // action method recv_ports_2_putCredits
  input  [1 : 0] recv_ports_2_putCredits_cr_in;
  input  EN_recv_ports_2_putCredits;

  // actionvalue method recv_ports_3_getFlit
  input  EN_recv_ports_3_getFlit;
  output [70 : 0] recv_ports_3_getFlit;

  // action method recv_ports_3_putCredits
  input  [1 : 0] recv_ports_3_putCredits_cr_in;
  input  EN_recv_ports_3_putCredits;

  // actionvalue method recv_ports_4_getFlit
  input  EN_recv_ports_4_getFlit;
  output [70 : 0] recv_ports_4_getFlit;

  // action method recv_ports_4_putCredits
  input  [1 : 0] recv_ports_4_putCredits_cr_in;
  input  EN_recv_ports_4_putCredits;

  // actionvalue method recv_ports_5_getFlit
  input  EN_recv_ports_5_getFlit;
  output [70 : 0] recv_ports_5_getFlit;

  // action method recv_ports_5_putCredits
  input  [1 : 0] recv_ports_5_putCredits_cr_in;
  input  EN_recv_ports_5_putCredits;

  // actionvalue method recv_ports_6_getFlit
  input  EN_recv_ports_6_getFlit;
  output [70 : 0] recv_ports_6_getFlit;

  // action method recv_ports_6_putCredits
  input  [1 : 0] recv_ports_6_putCredits_cr_in;
  input  EN_recv_ports_6_putCredits;

  // actionvalue method recv_ports_7_getFlit
  input  EN_recv_ports_7_getFlit;
  output [70 : 0] recv_ports_7_getFlit;

  // action method recv_ports_7_putCredits
  input  [1 : 0] recv_ports_7_putCredits_cr_in;
  input  EN_recv_ports_7_putCredits;

  // actionvalue method recv_ports_8_getFlit
  input  EN_recv_ports_8_getFlit;
  output [70 : 0] recv_ports_8_getFlit;

  // action method recv_ports_8_putCredits
  input  [1 : 0] recv_ports_8_putCredits_cr_in;
  input  EN_recv_ports_8_putCredits;

  // value method recv_ports_info_0_getRecvPortID
  output [3 : 0] recv_ports_info_0_getRecvPortID;

  // value method recv_ports_info_1_getRecvPortID
  output [3 : 0] recv_ports_info_1_getRecvPortID;

  // value method recv_ports_info_2_getRecvPortID
  output [3 : 0] recv_ports_info_2_getRecvPortID;

  // value method recv_ports_info_3_getRecvPortID
  output [3 : 0] recv_ports_info_3_getRecvPortID;

  // value method recv_ports_info_4_getRecvPortID
  output [3 : 0] recv_ports_info_4_getRecvPortID;

  // value method recv_ports_info_5_getRecvPortID
  output [3 : 0] recv_ports_info_5_getRecvPortID;

  // value method recv_ports_info_6_getRecvPortID
  output [3 : 0] recv_ports_info_6_getRecvPortID;

  // value method recv_ports_info_7_getRecvPortID
  output [3 : 0] recv_ports_info_7_getRecvPortID;

  // value method recv_ports_info_8_getRecvPortID
  output [3 : 0] recv_ports_info_8_getRecvPortID;

  // signals for module outputs
  wire [70 : 0] recv_ports_0_getFlit,
		recv_ports_1_getFlit,
		recv_ports_2_getFlit,
		recv_ports_3_getFlit,
		recv_ports_4_getFlit,
		recv_ports_5_getFlit,
		recv_ports_6_getFlit,
		recv_ports_7_getFlit,
		recv_ports_8_getFlit;
  wire [3 : 0] recv_ports_info_0_getRecvPortID,
	       recv_ports_info_1_getRecvPortID,
	       recv_ports_info_2_getRecvPortID,
	       recv_ports_info_3_getRecvPortID,
	       recv_ports_info_4_getRecvPortID,
	       recv_ports_info_5_getRecvPortID,
	       recv_ports_info_6_getRecvPortID,
	       recv_ports_info_7_getRecvPortID,
	       recv_ports_info_8_getRecvPortID;
  wire [1 : 0] send_ports_0_getCredits,
	       send_ports_1_getCredits,
	       send_ports_2_getCredits,
	       send_ports_3_getCredits,
	       send_ports_4_getCredits,
	       send_ports_5_getCredits,
	       send_ports_6_getCredits,
	       send_ports_7_getCredits,
	       send_ports_8_getCredits;

  // ports of submodule net_routers_routeTable_1_rt_ifc_banks_banks_rf
  wire [3 : 0] net_routers_routeTable_1_rt_ifc_banks_banks_rf$ADDR_1,
	       net_routers_routeTable_1_rt_ifc_banks_banks_rf$ADDR_IN;
  wire [2 : 0] net_routers_routeTable_1_rt_ifc_banks_banks_rf$D_IN,
	       net_routers_routeTable_1_rt_ifc_banks_banks_rf$D_OUT_1;
  wire net_routers_routeTable_1_rt_ifc_banks_banks_rf$WE;

  // ports of submodule net_routers_routeTable_1_rt_ifc_banks_banks_rf_1
  wire [3 : 0] net_routers_routeTable_1_rt_ifc_banks_banks_rf_1$ADDR_1,
	       net_routers_routeTable_1_rt_ifc_banks_banks_rf_1$ADDR_IN;
  wire [2 : 0] net_routers_routeTable_1_rt_ifc_banks_banks_rf_1$D_IN,
	       net_routers_routeTable_1_rt_ifc_banks_banks_rf_1$D_OUT_1;
  wire net_routers_routeTable_1_rt_ifc_banks_banks_rf_1$WE;

  // ports of submodule net_routers_routeTable_1_rt_ifc_banks_banks_rf_2
  wire [3 : 0] net_routers_routeTable_1_rt_ifc_banks_banks_rf_2$ADDR_1,
	       net_routers_routeTable_1_rt_ifc_banks_banks_rf_2$ADDR_IN;
  wire [2 : 0] net_routers_routeTable_1_rt_ifc_banks_banks_rf_2$D_IN,
	       net_routers_routeTable_1_rt_ifc_banks_banks_rf_2$D_OUT_1;
  wire net_routers_routeTable_1_rt_ifc_banks_banks_rf_2$WE;

  // ports of submodule net_routers_routeTable_1_rt_ifc_banks_banks_rf_3
  wire [3 : 0] net_routers_routeTable_1_rt_ifc_banks_banks_rf_3$ADDR_1,
	       net_routers_routeTable_1_rt_ifc_banks_banks_rf_3$ADDR_IN;
  wire [2 : 0] net_routers_routeTable_1_rt_ifc_banks_banks_rf_3$D_IN,
	       net_routers_routeTable_1_rt_ifc_banks_banks_rf_3$D_OUT_1;
  wire net_routers_routeTable_1_rt_ifc_banks_banks_rf_3$WE;

  // ports of submodule net_routers_routeTable_1_rt_ifc_banks_banks_rf_4
  wire [3 : 0] net_routers_routeTable_1_rt_ifc_banks_banks_rf_4$ADDR_1,
	       net_routers_routeTable_1_rt_ifc_banks_banks_rf_4$ADDR_IN;
  wire [2 : 0] net_routers_routeTable_1_rt_ifc_banks_banks_rf_4$D_IN;
  wire net_routers_routeTable_1_rt_ifc_banks_banks_rf_4$WE;

  // ports of submodule net_routers_routeTable_2_rt_ifc_banks_banks_rf
  wire [3 : 0] net_routers_routeTable_2_rt_ifc_banks_banks_rf$ADDR_1,
	       net_routers_routeTable_2_rt_ifc_banks_banks_rf$ADDR_IN;
  wire [2 : 0] net_routers_routeTable_2_rt_ifc_banks_banks_rf$D_IN,
	       net_routers_routeTable_2_rt_ifc_banks_banks_rf$D_OUT_1;
  wire net_routers_routeTable_2_rt_ifc_banks_banks_rf$WE;

  // ports of submodule net_routers_routeTable_2_rt_ifc_banks_banks_rf_1
  wire [3 : 0] net_routers_routeTable_2_rt_ifc_banks_banks_rf_1$ADDR_1,
	       net_routers_routeTable_2_rt_ifc_banks_banks_rf_1$ADDR_IN;
  wire [2 : 0] net_routers_routeTable_2_rt_ifc_banks_banks_rf_1$D_IN;
  wire net_routers_routeTable_2_rt_ifc_banks_banks_rf_1$WE;

  // ports of submodule net_routers_routeTable_2_rt_ifc_banks_banks_rf_2
  wire [3 : 0] net_routers_routeTable_2_rt_ifc_banks_banks_rf_2$ADDR_1,
	       net_routers_routeTable_2_rt_ifc_banks_banks_rf_2$ADDR_IN;
  wire [2 : 0] net_routers_routeTable_2_rt_ifc_banks_banks_rf_2$D_IN,
	       net_routers_routeTable_2_rt_ifc_banks_banks_rf_2$D_OUT_1;
  wire net_routers_routeTable_2_rt_ifc_banks_banks_rf_2$WE;

  // ports of submodule net_routers_routeTable_2_rt_ifc_banks_banks_rf_3
  wire [3 : 0] net_routers_routeTable_2_rt_ifc_banks_banks_rf_3$ADDR_1,
	       net_routers_routeTable_2_rt_ifc_banks_banks_rf_3$ADDR_IN;
  wire [2 : 0] net_routers_routeTable_2_rt_ifc_banks_banks_rf_3$D_IN,
	       net_routers_routeTable_2_rt_ifc_banks_banks_rf_3$D_OUT_1;
  wire net_routers_routeTable_2_rt_ifc_banks_banks_rf_3$WE;

  // ports of submodule net_routers_routeTable_2_rt_ifc_banks_banks_rf_4
  wire [3 : 0] net_routers_routeTable_2_rt_ifc_banks_banks_rf_4$ADDR_1,
	       net_routers_routeTable_2_rt_ifc_banks_banks_rf_4$ADDR_IN;
  wire [2 : 0] net_routers_routeTable_2_rt_ifc_banks_banks_rf_4$D_IN;
  wire net_routers_routeTable_2_rt_ifc_banks_banks_rf_4$WE;

  // ports of submodule net_routers_routeTable_3_rt_ifc_banks_banks_rf
  wire [3 : 0] net_routers_routeTable_3_rt_ifc_banks_banks_rf$ADDR_1,
	       net_routers_routeTable_3_rt_ifc_banks_banks_rf$ADDR_IN;
  wire [2 : 0] net_routers_routeTable_3_rt_ifc_banks_banks_rf$D_IN,
	       net_routers_routeTable_3_rt_ifc_banks_banks_rf$D_OUT_1;
  wire net_routers_routeTable_3_rt_ifc_banks_banks_rf$WE;

  // ports of submodule net_routers_routeTable_3_rt_ifc_banks_banks_rf_1
  wire [3 : 0] net_routers_routeTable_3_rt_ifc_banks_banks_rf_1$ADDR_1,
	       net_routers_routeTable_3_rt_ifc_banks_banks_rf_1$ADDR_IN;
  wire [2 : 0] net_routers_routeTable_3_rt_ifc_banks_banks_rf_1$D_IN,
	       net_routers_routeTable_3_rt_ifc_banks_banks_rf_1$D_OUT_1;
  wire net_routers_routeTable_3_rt_ifc_banks_banks_rf_1$WE;

  // ports of submodule net_routers_routeTable_3_rt_ifc_banks_banks_rf_2
  wire [3 : 0] net_routers_routeTable_3_rt_ifc_banks_banks_rf_2$ADDR_1,
	       net_routers_routeTable_3_rt_ifc_banks_banks_rf_2$ADDR_IN;
  wire [2 : 0] net_routers_routeTable_3_rt_ifc_banks_banks_rf_2$D_IN,
	       net_routers_routeTable_3_rt_ifc_banks_banks_rf_2$D_OUT_1;
  wire net_routers_routeTable_3_rt_ifc_banks_banks_rf_2$WE;

  // ports of submodule net_routers_routeTable_3_rt_ifc_banks_banks_rf_3
  wire [3 : 0] net_routers_routeTable_3_rt_ifc_banks_banks_rf_3$ADDR_1,
	       net_routers_routeTable_3_rt_ifc_banks_banks_rf_3$ADDR_IN;
  wire [2 : 0] net_routers_routeTable_3_rt_ifc_banks_banks_rf_3$D_IN;
  wire net_routers_routeTable_3_rt_ifc_banks_banks_rf_3$WE;

  // ports of submodule net_routers_routeTable_3_rt_ifc_banks_banks_rf_4
  wire [3 : 0] net_routers_routeTable_3_rt_ifc_banks_banks_rf_4$ADDR_1,
	       net_routers_routeTable_3_rt_ifc_banks_banks_rf_4$ADDR_IN;
  wire [2 : 0] net_routers_routeTable_3_rt_ifc_banks_banks_rf_4$D_IN,
	       net_routers_routeTable_3_rt_ifc_banks_banks_rf_4$D_OUT_1;
  wire net_routers_routeTable_3_rt_ifc_banks_banks_rf_4$WE;

  // ports of submodule net_routers_routeTable_4_rt_ifc_banks_banks_rf
  wire [3 : 0] net_routers_routeTable_4_rt_ifc_banks_banks_rf$ADDR_1,
	       net_routers_routeTable_4_rt_ifc_banks_banks_rf$ADDR_IN;
  wire [2 : 0] net_routers_routeTable_4_rt_ifc_banks_banks_rf$D_IN,
	       net_routers_routeTable_4_rt_ifc_banks_banks_rf$D_OUT_1;
  wire net_routers_routeTable_4_rt_ifc_banks_banks_rf$WE;

  // ports of submodule net_routers_routeTable_4_rt_ifc_banks_banks_rf_1
  wire [3 : 0] net_routers_routeTable_4_rt_ifc_banks_banks_rf_1$ADDR_1,
	       net_routers_routeTable_4_rt_ifc_banks_banks_rf_1$ADDR_IN;
  wire [2 : 0] net_routers_routeTable_4_rt_ifc_banks_banks_rf_1$D_IN,
	       net_routers_routeTable_4_rt_ifc_banks_banks_rf_1$D_OUT_1;
  wire net_routers_routeTable_4_rt_ifc_banks_banks_rf_1$WE;

  // ports of submodule net_routers_routeTable_4_rt_ifc_banks_banks_rf_2
  wire [3 : 0] net_routers_routeTable_4_rt_ifc_banks_banks_rf_2$ADDR_1,
	       net_routers_routeTable_4_rt_ifc_banks_banks_rf_2$ADDR_IN;
  wire [2 : 0] net_routers_routeTable_4_rt_ifc_banks_banks_rf_2$D_IN,
	       net_routers_routeTable_4_rt_ifc_banks_banks_rf_2$D_OUT_1;
  wire net_routers_routeTable_4_rt_ifc_banks_banks_rf_2$WE;

  // ports of submodule net_routers_routeTable_4_rt_ifc_banks_banks_rf_3
  wire [3 : 0] net_routers_routeTable_4_rt_ifc_banks_banks_rf_3$ADDR_1,
	       net_routers_routeTable_4_rt_ifc_banks_banks_rf_3$ADDR_IN;
  wire [2 : 0] net_routers_routeTable_4_rt_ifc_banks_banks_rf_3$D_IN,
	       net_routers_routeTable_4_rt_ifc_banks_banks_rf_3$D_OUT_1;
  wire net_routers_routeTable_4_rt_ifc_banks_banks_rf_3$WE;

  // ports of submodule net_routers_routeTable_4_rt_ifc_banks_banks_rf_4
  wire [3 : 0] net_routers_routeTable_4_rt_ifc_banks_banks_rf_4$ADDR_1,
	       net_routers_routeTable_4_rt_ifc_banks_banks_rf_4$ADDR_IN;
  wire [2 : 0] net_routers_routeTable_4_rt_ifc_banks_banks_rf_4$D_IN,
	       net_routers_routeTable_4_rt_ifc_banks_banks_rf_4$D_OUT_1;
  wire net_routers_routeTable_4_rt_ifc_banks_banks_rf_4$WE;

  // ports of submodule net_routers_routeTable_5_rt_ifc_banks_banks_rf
  wire [3 : 0] net_routers_routeTable_5_rt_ifc_banks_banks_rf$ADDR_1,
	       net_routers_routeTable_5_rt_ifc_banks_banks_rf$ADDR_IN;
  wire [2 : 0] net_routers_routeTable_5_rt_ifc_banks_banks_rf$D_IN,
	       net_routers_routeTable_5_rt_ifc_banks_banks_rf$D_OUT_1;
  wire net_routers_routeTable_5_rt_ifc_banks_banks_rf$WE;

  // ports of submodule net_routers_routeTable_5_rt_ifc_banks_banks_rf_1
  wire [3 : 0] net_routers_routeTable_5_rt_ifc_banks_banks_rf_1$ADDR_1,
	       net_routers_routeTable_5_rt_ifc_banks_banks_rf_1$ADDR_IN;
  wire [2 : 0] net_routers_routeTable_5_rt_ifc_banks_banks_rf_1$D_IN;
  wire net_routers_routeTable_5_rt_ifc_banks_banks_rf_1$WE;

  // ports of submodule net_routers_routeTable_5_rt_ifc_banks_banks_rf_2
  wire [3 : 0] net_routers_routeTable_5_rt_ifc_banks_banks_rf_2$ADDR_1,
	       net_routers_routeTable_5_rt_ifc_banks_banks_rf_2$ADDR_IN;
  wire [2 : 0] net_routers_routeTable_5_rt_ifc_banks_banks_rf_2$D_IN,
	       net_routers_routeTable_5_rt_ifc_banks_banks_rf_2$D_OUT_1;
  wire net_routers_routeTable_5_rt_ifc_banks_banks_rf_2$WE;

  // ports of submodule net_routers_routeTable_5_rt_ifc_banks_banks_rf_3
  wire [3 : 0] net_routers_routeTable_5_rt_ifc_banks_banks_rf_3$ADDR_1,
	       net_routers_routeTable_5_rt_ifc_banks_banks_rf_3$ADDR_IN;
  wire [2 : 0] net_routers_routeTable_5_rt_ifc_banks_banks_rf_3$D_IN,
	       net_routers_routeTable_5_rt_ifc_banks_banks_rf_3$D_OUT_1;
  wire net_routers_routeTable_5_rt_ifc_banks_banks_rf_3$WE;

  // ports of submodule net_routers_routeTable_5_rt_ifc_banks_banks_rf_4
  wire [3 : 0] net_routers_routeTable_5_rt_ifc_banks_banks_rf_4$ADDR_1,
	       net_routers_routeTable_5_rt_ifc_banks_banks_rf_4$ADDR_IN;
  wire [2 : 0] net_routers_routeTable_5_rt_ifc_banks_banks_rf_4$D_IN,
	       net_routers_routeTable_5_rt_ifc_banks_banks_rf_4$D_OUT_1;
  wire net_routers_routeTable_5_rt_ifc_banks_banks_rf_4$WE;

  // ports of submodule net_routers_routeTable_6_rt_ifc_banks_banks_rf
  wire [3 : 0] net_routers_routeTable_6_rt_ifc_banks_banks_rf$ADDR_1,
	       net_routers_routeTable_6_rt_ifc_banks_banks_rf$ADDR_IN;
  wire [2 : 0] net_routers_routeTable_6_rt_ifc_banks_banks_rf$D_IN,
	       net_routers_routeTable_6_rt_ifc_banks_banks_rf$D_OUT_1;
  wire net_routers_routeTable_6_rt_ifc_banks_banks_rf$WE;

  // ports of submodule net_routers_routeTable_6_rt_ifc_banks_banks_rf_1
  wire [3 : 0] net_routers_routeTable_6_rt_ifc_banks_banks_rf_1$ADDR_1,
	       net_routers_routeTable_6_rt_ifc_banks_banks_rf_1$ADDR_IN;
  wire [2 : 0] net_routers_routeTable_6_rt_ifc_banks_banks_rf_1$D_IN,
	       net_routers_routeTable_6_rt_ifc_banks_banks_rf_1$D_OUT_1;
  wire net_routers_routeTable_6_rt_ifc_banks_banks_rf_1$WE;

  // ports of submodule net_routers_routeTable_6_rt_ifc_banks_banks_rf_2
  wire [3 : 0] net_routers_routeTable_6_rt_ifc_banks_banks_rf_2$ADDR_1,
	       net_routers_routeTable_6_rt_ifc_banks_banks_rf_2$ADDR_IN;
  wire [2 : 0] net_routers_routeTable_6_rt_ifc_banks_banks_rf_2$D_IN;
  wire net_routers_routeTable_6_rt_ifc_banks_banks_rf_2$WE;

  // ports of submodule net_routers_routeTable_6_rt_ifc_banks_banks_rf_3
  wire [3 : 0] net_routers_routeTable_6_rt_ifc_banks_banks_rf_3$ADDR_1,
	       net_routers_routeTable_6_rt_ifc_banks_banks_rf_3$ADDR_IN;
  wire [2 : 0] net_routers_routeTable_6_rt_ifc_banks_banks_rf_3$D_IN;
  wire net_routers_routeTable_6_rt_ifc_banks_banks_rf_3$WE;

  // ports of submodule net_routers_routeTable_6_rt_ifc_banks_banks_rf_4
  wire [3 : 0] net_routers_routeTable_6_rt_ifc_banks_banks_rf_4$ADDR_1,
	       net_routers_routeTable_6_rt_ifc_banks_banks_rf_4$ADDR_IN;
  wire [2 : 0] net_routers_routeTable_6_rt_ifc_banks_banks_rf_4$D_IN,
	       net_routers_routeTable_6_rt_ifc_banks_banks_rf_4$D_OUT_1;
  wire net_routers_routeTable_6_rt_ifc_banks_banks_rf_4$WE;

  // ports of submodule net_routers_routeTable_7_rt_ifc_banks_banks_rf
  wire [3 : 0] net_routers_routeTable_7_rt_ifc_banks_banks_rf$ADDR_1,
	       net_routers_routeTable_7_rt_ifc_banks_banks_rf$ADDR_IN;
  wire [2 : 0] net_routers_routeTable_7_rt_ifc_banks_banks_rf$D_IN,
	       net_routers_routeTable_7_rt_ifc_banks_banks_rf$D_OUT_1;
  wire net_routers_routeTable_7_rt_ifc_banks_banks_rf$WE;

  // ports of submodule net_routers_routeTable_7_rt_ifc_banks_banks_rf_1
  wire [3 : 0] net_routers_routeTable_7_rt_ifc_banks_banks_rf_1$ADDR_1,
	       net_routers_routeTable_7_rt_ifc_banks_banks_rf_1$ADDR_IN;
  wire [2 : 0] net_routers_routeTable_7_rt_ifc_banks_banks_rf_1$D_IN,
	       net_routers_routeTable_7_rt_ifc_banks_banks_rf_1$D_OUT_1;
  wire net_routers_routeTable_7_rt_ifc_banks_banks_rf_1$WE;

  // ports of submodule net_routers_routeTable_7_rt_ifc_banks_banks_rf_2
  wire [3 : 0] net_routers_routeTable_7_rt_ifc_banks_banks_rf_2$ADDR_1,
	       net_routers_routeTable_7_rt_ifc_banks_banks_rf_2$ADDR_IN;
  wire [2 : 0] net_routers_routeTable_7_rt_ifc_banks_banks_rf_2$D_IN;
  wire net_routers_routeTable_7_rt_ifc_banks_banks_rf_2$WE;

  // ports of submodule net_routers_routeTable_7_rt_ifc_banks_banks_rf_3
  wire [3 : 0] net_routers_routeTable_7_rt_ifc_banks_banks_rf_3$ADDR_1,
	       net_routers_routeTable_7_rt_ifc_banks_banks_rf_3$ADDR_IN;
  wire [2 : 0] net_routers_routeTable_7_rt_ifc_banks_banks_rf_3$D_IN,
	       net_routers_routeTable_7_rt_ifc_banks_banks_rf_3$D_OUT_1;
  wire net_routers_routeTable_7_rt_ifc_banks_banks_rf_3$WE;

  // ports of submodule net_routers_routeTable_7_rt_ifc_banks_banks_rf_4
  wire [3 : 0] net_routers_routeTable_7_rt_ifc_banks_banks_rf_4$ADDR_1,
	       net_routers_routeTable_7_rt_ifc_banks_banks_rf_4$ADDR_IN;
  wire [2 : 0] net_routers_routeTable_7_rt_ifc_banks_banks_rf_4$D_IN,
	       net_routers_routeTable_7_rt_ifc_banks_banks_rf_4$D_OUT_1;
  wire net_routers_routeTable_7_rt_ifc_banks_banks_rf_4$WE;

  // ports of submodule net_routers_routeTable_8_rt_ifc_banks_banks_rf
  wire [3 : 0] net_routers_routeTable_8_rt_ifc_banks_banks_rf$ADDR_1,
	       net_routers_routeTable_8_rt_ifc_banks_banks_rf$ADDR_IN;
  wire [2 : 0] net_routers_routeTable_8_rt_ifc_banks_banks_rf$D_IN,
	       net_routers_routeTable_8_rt_ifc_banks_banks_rf$D_OUT_1;
  wire net_routers_routeTable_8_rt_ifc_banks_banks_rf$WE;

  // ports of submodule net_routers_routeTable_8_rt_ifc_banks_banks_rf_1
  wire [3 : 0] net_routers_routeTable_8_rt_ifc_banks_banks_rf_1$ADDR_1,
	       net_routers_routeTable_8_rt_ifc_banks_banks_rf_1$ADDR_IN;
  wire [2 : 0] net_routers_routeTable_8_rt_ifc_banks_banks_rf_1$D_IN;
  wire net_routers_routeTable_8_rt_ifc_banks_banks_rf_1$WE;

  // ports of submodule net_routers_routeTable_8_rt_ifc_banks_banks_rf_2
  wire [3 : 0] net_routers_routeTable_8_rt_ifc_banks_banks_rf_2$ADDR_1,
	       net_routers_routeTable_8_rt_ifc_banks_banks_rf_2$ADDR_IN;
  wire [2 : 0] net_routers_routeTable_8_rt_ifc_banks_banks_rf_2$D_IN;
  wire net_routers_routeTable_8_rt_ifc_banks_banks_rf_2$WE;

  // ports of submodule net_routers_routeTable_8_rt_ifc_banks_banks_rf_3
  wire [3 : 0] net_routers_routeTable_8_rt_ifc_banks_banks_rf_3$ADDR_1,
	       net_routers_routeTable_8_rt_ifc_banks_banks_rf_3$ADDR_IN;
  wire [2 : 0] net_routers_routeTable_8_rt_ifc_banks_banks_rf_3$D_IN,
	       net_routers_routeTable_8_rt_ifc_banks_banks_rf_3$D_OUT_1;
  wire net_routers_routeTable_8_rt_ifc_banks_banks_rf_3$WE;

  // ports of submodule net_routers_routeTable_8_rt_ifc_banks_banks_rf_4
  wire [3 : 0] net_routers_routeTable_8_rt_ifc_banks_banks_rf_4$ADDR_1,
	       net_routers_routeTable_8_rt_ifc_banks_banks_rf_4$ADDR_IN;
  wire [2 : 0] net_routers_routeTable_8_rt_ifc_banks_banks_rf_4$D_IN,
	       net_routers_routeTable_8_rt_ifc_banks_banks_rf_4$D_OUT_1;
  wire net_routers_routeTable_8_rt_ifc_banks_banks_rf_4$WE;

  // ports of submodule net_routers_routeTable_rt_ifc_banks_banks_rf
  wire [3 : 0] net_routers_routeTable_rt_ifc_banks_banks_rf$ADDR_1,
	       net_routers_routeTable_rt_ifc_banks_banks_rf$ADDR_IN;
  wire [2 : 0] net_routers_routeTable_rt_ifc_banks_banks_rf$D_IN,
	       net_routers_routeTable_rt_ifc_banks_banks_rf$D_OUT_1;
  wire net_routers_routeTable_rt_ifc_banks_banks_rf$WE;

  // ports of submodule net_routers_routeTable_rt_ifc_banks_banks_rf_1
  wire [3 : 0] net_routers_routeTable_rt_ifc_banks_banks_rf_1$ADDR_1,
	       net_routers_routeTable_rt_ifc_banks_banks_rf_1$ADDR_IN;
  wire [2 : 0] net_routers_routeTable_rt_ifc_banks_banks_rf_1$D_IN,
	       net_routers_routeTable_rt_ifc_banks_banks_rf_1$D_OUT_1;
  wire net_routers_routeTable_rt_ifc_banks_banks_rf_1$WE;

  // ports of submodule net_routers_routeTable_rt_ifc_banks_banks_rf_2
  wire [3 : 0] net_routers_routeTable_rt_ifc_banks_banks_rf_2$ADDR_1,
	       net_routers_routeTable_rt_ifc_banks_banks_rf_2$ADDR_IN;
  wire [2 : 0] net_routers_routeTable_rt_ifc_banks_banks_rf_2$D_IN,
	       net_routers_routeTable_rt_ifc_banks_banks_rf_2$D_OUT_1;
  wire net_routers_routeTable_rt_ifc_banks_banks_rf_2$WE;

  // ports of submodule net_routers_routeTable_rt_ifc_banks_banks_rf_3
  wire [3 : 0] net_routers_routeTable_rt_ifc_banks_banks_rf_3$ADDR_1,
	       net_routers_routeTable_rt_ifc_banks_banks_rf_3$ADDR_IN;
  wire [2 : 0] net_routers_routeTable_rt_ifc_banks_banks_rf_3$D_IN;
  wire net_routers_routeTable_rt_ifc_banks_banks_rf_3$WE;

  // ports of submodule net_routers_routeTable_rt_ifc_banks_banks_rf_4
  wire [3 : 0] net_routers_routeTable_rt_ifc_banks_banks_rf_4$ADDR_1,
	       net_routers_routeTable_rt_ifc_banks_banks_rf_4$ADDR_IN;
  wire [2 : 0] net_routers_routeTable_rt_ifc_banks_banks_rf_4$D_IN;
  wire net_routers_routeTable_rt_ifc_banks_banks_rf_4$WE;

  // ports of submodule net_routers_router_core
  wire [73 : 0] net_routers_router_core$in_ports_0_putRoutedFlit_flit_in,
		net_routers_router_core$in_ports_1_putRoutedFlit_flit_in,
		net_routers_router_core$in_ports_2_putRoutedFlit_flit_in,
		net_routers_router_core$in_ports_3_putRoutedFlit_flit_in,
		net_routers_router_core$in_ports_4_putRoutedFlit_flit_in;
  wire [70 : 0] net_routers_router_core$out_ports_0_getFlit,
		net_routers_router_core$out_ports_3_getFlit,
		net_routers_router_core$out_ports_4_getFlit;
  wire [1 : 0] net_routers_router_core$in_ports_0_getCredits,
	       net_routers_router_core$in_ports_1_getCredits,
	       net_routers_router_core$in_ports_2_getCredits,
	       net_routers_router_core$out_ports_0_putCredits_cr_in,
	       net_routers_router_core$out_ports_1_putCredits_cr_in,
	       net_routers_router_core$out_ports_2_putCredits_cr_in,
	       net_routers_router_core$out_ports_3_putCredits_cr_in,
	       net_routers_router_core$out_ports_4_putCredits_cr_in;
  wire net_routers_router_core$EN_in_ports_0_getCredits,
       net_routers_router_core$EN_in_ports_0_putRoutedFlit,
       net_routers_router_core$EN_in_ports_1_getCredits,
       net_routers_router_core$EN_in_ports_1_putRoutedFlit,
       net_routers_router_core$EN_in_ports_2_getCredits,
       net_routers_router_core$EN_in_ports_2_putRoutedFlit,
       net_routers_router_core$EN_in_ports_3_getCredits,
       net_routers_router_core$EN_in_ports_3_putRoutedFlit,
       net_routers_router_core$EN_in_ports_4_getCredits,
       net_routers_router_core$EN_in_ports_4_putRoutedFlit,
       net_routers_router_core$EN_out_ports_0_getFlit,
       net_routers_router_core$EN_out_ports_0_putCredits,
       net_routers_router_core$EN_out_ports_1_getFlit,
       net_routers_router_core$EN_out_ports_1_putCredits,
       net_routers_router_core$EN_out_ports_2_getFlit,
       net_routers_router_core$EN_out_ports_2_putCredits,
       net_routers_router_core$EN_out_ports_3_getFlit,
       net_routers_router_core$EN_out_ports_3_putCredits,
       net_routers_router_core$EN_out_ports_4_getFlit,
       net_routers_router_core$EN_out_ports_4_putCredits;

  // ports of submodule net_routers_router_core_1
  wire [73 : 0] net_routers_router_core_1$in_ports_0_putRoutedFlit_flit_in,
		net_routers_router_core_1$in_ports_1_putRoutedFlit_flit_in,
		net_routers_router_core_1$in_ports_2_putRoutedFlit_flit_in,
		net_routers_router_core_1$in_ports_3_putRoutedFlit_flit_in,
		net_routers_router_core_1$in_ports_4_putRoutedFlit_flit_in;
  wire [70 : 0] net_routers_router_core_1$out_ports_0_getFlit,
		net_routers_router_core_1$out_ports_1_getFlit,
		net_routers_router_core_1$out_ports_3_getFlit,
		net_routers_router_core_1$out_ports_4_getFlit;
  wire [1 : 0] net_routers_router_core_1$in_ports_0_getCredits,
	       net_routers_router_core_1$in_ports_1_getCredits,
	       net_routers_router_core_1$in_ports_2_getCredits,
	       net_routers_router_core_1$in_ports_3_getCredits,
	       net_routers_router_core_1$out_ports_0_putCredits_cr_in,
	       net_routers_router_core_1$out_ports_1_putCredits_cr_in,
	       net_routers_router_core_1$out_ports_2_putCredits_cr_in,
	       net_routers_router_core_1$out_ports_3_putCredits_cr_in,
	       net_routers_router_core_1$out_ports_4_putCredits_cr_in;
  wire net_routers_router_core_1$EN_in_ports_0_getCredits,
       net_routers_router_core_1$EN_in_ports_0_putRoutedFlit,
       net_routers_router_core_1$EN_in_ports_1_getCredits,
       net_routers_router_core_1$EN_in_ports_1_putRoutedFlit,
       net_routers_router_core_1$EN_in_ports_2_getCredits,
       net_routers_router_core_1$EN_in_ports_2_putRoutedFlit,
       net_routers_router_core_1$EN_in_ports_3_getCredits,
       net_routers_router_core_1$EN_in_ports_3_putRoutedFlit,
       net_routers_router_core_1$EN_in_ports_4_getCredits,
       net_routers_router_core_1$EN_in_ports_4_putRoutedFlit,
       net_routers_router_core_1$EN_out_ports_0_getFlit,
       net_routers_router_core_1$EN_out_ports_0_putCredits,
       net_routers_router_core_1$EN_out_ports_1_getFlit,
       net_routers_router_core_1$EN_out_ports_1_putCredits,
       net_routers_router_core_1$EN_out_ports_2_getFlit,
       net_routers_router_core_1$EN_out_ports_2_putCredits,
       net_routers_router_core_1$EN_out_ports_3_getFlit,
       net_routers_router_core_1$EN_out_ports_3_putCredits,
       net_routers_router_core_1$EN_out_ports_4_getFlit,
       net_routers_router_core_1$EN_out_ports_4_putCredits;

  // ports of submodule net_routers_router_core_2
  wire [73 : 0] net_routers_router_core_2$in_ports_0_putRoutedFlit_flit_in,
		net_routers_router_core_2$in_ports_1_putRoutedFlit_flit_in,
		net_routers_router_core_2$in_ports_2_putRoutedFlit_flit_in,
		net_routers_router_core_2$in_ports_3_putRoutedFlit_flit_in,
		net_routers_router_core_2$in_ports_4_putRoutedFlit_flit_in;
  wire [70 : 0] net_routers_router_core_2$out_ports_0_getFlit,
		net_routers_router_core_2$out_ports_1_getFlit,
		net_routers_router_core_2$out_ports_4_getFlit;
  wire [1 : 0] net_routers_router_core_2$in_ports_0_getCredits,
	       net_routers_router_core_2$in_ports_2_getCredits,
	       net_routers_router_core_2$in_ports_3_getCredits,
	       net_routers_router_core_2$out_ports_0_putCredits_cr_in,
	       net_routers_router_core_2$out_ports_1_putCredits_cr_in,
	       net_routers_router_core_2$out_ports_2_putCredits_cr_in,
	       net_routers_router_core_2$out_ports_3_putCredits_cr_in,
	       net_routers_router_core_2$out_ports_4_putCredits_cr_in;
  wire net_routers_router_core_2$EN_in_ports_0_getCredits,
       net_routers_router_core_2$EN_in_ports_0_putRoutedFlit,
       net_routers_router_core_2$EN_in_ports_1_getCredits,
       net_routers_router_core_2$EN_in_ports_1_putRoutedFlit,
       net_routers_router_core_2$EN_in_ports_2_getCredits,
       net_routers_router_core_2$EN_in_ports_2_putRoutedFlit,
       net_routers_router_core_2$EN_in_ports_3_getCredits,
       net_routers_router_core_2$EN_in_ports_3_putRoutedFlit,
       net_routers_router_core_2$EN_in_ports_4_getCredits,
       net_routers_router_core_2$EN_in_ports_4_putRoutedFlit,
       net_routers_router_core_2$EN_out_ports_0_getFlit,
       net_routers_router_core_2$EN_out_ports_0_putCredits,
       net_routers_router_core_2$EN_out_ports_1_getFlit,
       net_routers_router_core_2$EN_out_ports_1_putCredits,
       net_routers_router_core_2$EN_out_ports_2_getFlit,
       net_routers_router_core_2$EN_out_ports_2_putCredits,
       net_routers_router_core_2$EN_out_ports_3_getFlit,
       net_routers_router_core_2$EN_out_ports_3_putCredits,
       net_routers_router_core_2$EN_out_ports_4_getFlit,
       net_routers_router_core_2$EN_out_ports_4_putCredits;

  // ports of submodule net_routers_router_core_3
  wire [73 : 0] net_routers_router_core_3$in_ports_0_putRoutedFlit_flit_in,
		net_routers_router_core_3$in_ports_1_putRoutedFlit_flit_in,
		net_routers_router_core_3$in_ports_2_putRoutedFlit_flit_in,
		net_routers_router_core_3$in_ports_3_putRoutedFlit_flit_in,
		net_routers_router_core_3$in_ports_4_putRoutedFlit_flit_in;
  wire [70 : 0] net_routers_router_core_3$out_ports_0_getFlit,
		net_routers_router_core_3$out_ports_2_getFlit,
		net_routers_router_core_3$out_ports_3_getFlit,
		net_routers_router_core_3$out_ports_4_getFlit;
  wire [1 : 0] net_routers_router_core_3$in_ports_0_getCredits,
	       net_routers_router_core_3$in_ports_1_getCredits,
	       net_routers_router_core_3$in_ports_2_getCredits,
	       net_routers_router_core_3$in_ports_4_getCredits,
	       net_routers_router_core_3$out_ports_0_putCredits_cr_in,
	       net_routers_router_core_3$out_ports_1_putCredits_cr_in,
	       net_routers_router_core_3$out_ports_2_putCredits_cr_in,
	       net_routers_router_core_3$out_ports_3_putCredits_cr_in,
	       net_routers_router_core_3$out_ports_4_putCredits_cr_in;
  wire net_routers_router_core_3$EN_in_ports_0_getCredits,
       net_routers_router_core_3$EN_in_ports_0_putRoutedFlit,
       net_routers_router_core_3$EN_in_ports_1_getCredits,
       net_routers_router_core_3$EN_in_ports_1_putRoutedFlit,
       net_routers_router_core_3$EN_in_ports_2_getCredits,
       net_routers_router_core_3$EN_in_ports_2_putRoutedFlit,
       net_routers_router_core_3$EN_in_ports_3_getCredits,
       net_routers_router_core_3$EN_in_ports_3_putRoutedFlit,
       net_routers_router_core_3$EN_in_ports_4_getCredits,
       net_routers_router_core_3$EN_in_ports_4_putRoutedFlit,
       net_routers_router_core_3$EN_out_ports_0_getFlit,
       net_routers_router_core_3$EN_out_ports_0_putCredits,
       net_routers_router_core_3$EN_out_ports_1_getFlit,
       net_routers_router_core_3$EN_out_ports_1_putCredits,
       net_routers_router_core_3$EN_out_ports_2_getFlit,
       net_routers_router_core_3$EN_out_ports_2_putCredits,
       net_routers_router_core_3$EN_out_ports_3_getFlit,
       net_routers_router_core_3$EN_out_ports_3_putCredits,
       net_routers_router_core_3$EN_out_ports_4_getFlit,
       net_routers_router_core_3$EN_out_ports_4_putCredits;

  // ports of submodule net_routers_router_core_4
  wire [73 : 0] net_routers_router_core_4$in_ports_0_putRoutedFlit_flit_in,
		net_routers_router_core_4$in_ports_1_putRoutedFlit_flit_in,
		net_routers_router_core_4$in_ports_2_putRoutedFlit_flit_in,
		net_routers_router_core_4$in_ports_3_putRoutedFlit_flit_in,
		net_routers_router_core_4$in_ports_4_putRoutedFlit_flit_in;
  wire [70 : 0] net_routers_router_core_4$out_ports_0_getFlit,
		net_routers_router_core_4$out_ports_1_getFlit,
		net_routers_router_core_4$out_ports_2_getFlit,
		net_routers_router_core_4$out_ports_3_getFlit,
		net_routers_router_core_4$out_ports_4_getFlit;
  wire [1 : 0] net_routers_router_core_4$in_ports_0_getCredits,
	       net_routers_router_core_4$in_ports_1_getCredits,
	       net_routers_router_core_4$in_ports_2_getCredits,
	       net_routers_router_core_4$in_ports_3_getCredits,
	       net_routers_router_core_4$in_ports_4_getCredits,
	       net_routers_router_core_4$out_ports_0_putCredits_cr_in,
	       net_routers_router_core_4$out_ports_1_putCredits_cr_in,
	       net_routers_router_core_4$out_ports_2_putCredits_cr_in,
	       net_routers_router_core_4$out_ports_3_putCredits_cr_in,
	       net_routers_router_core_4$out_ports_4_putCredits_cr_in;
  wire net_routers_router_core_4$EN_in_ports_0_getCredits,
       net_routers_router_core_4$EN_in_ports_0_putRoutedFlit,
       net_routers_router_core_4$EN_in_ports_1_getCredits,
       net_routers_router_core_4$EN_in_ports_1_putRoutedFlit,
       net_routers_router_core_4$EN_in_ports_2_getCredits,
       net_routers_router_core_4$EN_in_ports_2_putRoutedFlit,
       net_routers_router_core_4$EN_in_ports_3_getCredits,
       net_routers_router_core_4$EN_in_ports_3_putRoutedFlit,
       net_routers_router_core_4$EN_in_ports_4_getCredits,
       net_routers_router_core_4$EN_in_ports_4_putRoutedFlit,
       net_routers_router_core_4$EN_out_ports_0_getFlit,
       net_routers_router_core_4$EN_out_ports_0_putCredits,
       net_routers_router_core_4$EN_out_ports_1_getFlit,
       net_routers_router_core_4$EN_out_ports_1_putCredits,
       net_routers_router_core_4$EN_out_ports_2_getFlit,
       net_routers_router_core_4$EN_out_ports_2_putCredits,
       net_routers_router_core_4$EN_out_ports_3_getFlit,
       net_routers_router_core_4$EN_out_ports_3_putCredits,
       net_routers_router_core_4$EN_out_ports_4_getFlit,
       net_routers_router_core_4$EN_out_ports_4_putCredits;

  // ports of submodule net_routers_router_core_5
  wire [73 : 0] net_routers_router_core_5$in_ports_0_putRoutedFlit_flit_in,
		net_routers_router_core_5$in_ports_1_putRoutedFlit_flit_in,
		net_routers_router_core_5$in_ports_2_putRoutedFlit_flit_in,
		net_routers_router_core_5$in_ports_3_putRoutedFlit_flit_in,
		net_routers_router_core_5$in_ports_4_putRoutedFlit_flit_in;
  wire [70 : 0] net_routers_router_core_5$out_ports_0_getFlit,
		net_routers_router_core_5$out_ports_1_getFlit,
		net_routers_router_core_5$out_ports_2_getFlit,
		net_routers_router_core_5$out_ports_4_getFlit;
  wire [1 : 0] net_routers_router_core_5$in_ports_0_getCredits,
	       net_routers_router_core_5$in_ports_2_getCredits,
	       net_routers_router_core_5$in_ports_3_getCredits,
	       net_routers_router_core_5$in_ports_4_getCredits,
	       net_routers_router_core_5$out_ports_0_putCredits_cr_in,
	       net_routers_router_core_5$out_ports_1_putCredits_cr_in,
	       net_routers_router_core_5$out_ports_2_putCredits_cr_in,
	       net_routers_router_core_5$out_ports_3_putCredits_cr_in,
	       net_routers_router_core_5$out_ports_4_putCredits_cr_in;
  wire net_routers_router_core_5$EN_in_ports_0_getCredits,
       net_routers_router_core_5$EN_in_ports_0_putRoutedFlit,
       net_routers_router_core_5$EN_in_ports_1_getCredits,
       net_routers_router_core_5$EN_in_ports_1_putRoutedFlit,
       net_routers_router_core_5$EN_in_ports_2_getCredits,
       net_routers_router_core_5$EN_in_ports_2_putRoutedFlit,
       net_routers_router_core_5$EN_in_ports_3_getCredits,
       net_routers_router_core_5$EN_in_ports_3_putRoutedFlit,
       net_routers_router_core_5$EN_in_ports_4_getCredits,
       net_routers_router_core_5$EN_in_ports_4_putRoutedFlit,
       net_routers_router_core_5$EN_out_ports_0_getFlit,
       net_routers_router_core_5$EN_out_ports_0_putCredits,
       net_routers_router_core_5$EN_out_ports_1_getFlit,
       net_routers_router_core_5$EN_out_ports_1_putCredits,
       net_routers_router_core_5$EN_out_ports_2_getFlit,
       net_routers_router_core_5$EN_out_ports_2_putCredits,
       net_routers_router_core_5$EN_out_ports_3_getFlit,
       net_routers_router_core_5$EN_out_ports_3_putCredits,
       net_routers_router_core_5$EN_out_ports_4_getFlit,
       net_routers_router_core_5$EN_out_ports_4_putCredits;

  // ports of submodule net_routers_router_core_6
  wire [73 : 0] net_routers_router_core_6$in_ports_0_putRoutedFlit_flit_in,
		net_routers_router_core_6$in_ports_1_putRoutedFlit_flit_in,
		net_routers_router_core_6$in_ports_2_putRoutedFlit_flit_in,
		net_routers_router_core_6$in_ports_3_putRoutedFlit_flit_in,
		net_routers_router_core_6$in_ports_4_putRoutedFlit_flit_in;
  wire [70 : 0] net_routers_router_core_6$out_ports_0_getFlit,
		net_routers_router_core_6$out_ports_2_getFlit,
		net_routers_router_core_6$out_ports_3_getFlit;
  wire [1 : 0] net_routers_router_core_6$in_ports_0_getCredits,
	       net_routers_router_core_6$in_ports_1_getCredits,
	       net_routers_router_core_6$in_ports_4_getCredits,
	       net_routers_router_core_6$out_ports_0_putCredits_cr_in,
	       net_routers_router_core_6$out_ports_1_putCredits_cr_in,
	       net_routers_router_core_6$out_ports_2_putCredits_cr_in,
	       net_routers_router_core_6$out_ports_3_putCredits_cr_in,
	       net_routers_router_core_6$out_ports_4_putCredits_cr_in;
  wire net_routers_router_core_6$EN_in_ports_0_getCredits,
       net_routers_router_core_6$EN_in_ports_0_putRoutedFlit,
       net_routers_router_core_6$EN_in_ports_1_getCredits,
       net_routers_router_core_6$EN_in_ports_1_putRoutedFlit,
       net_routers_router_core_6$EN_in_ports_2_getCredits,
       net_routers_router_core_6$EN_in_ports_2_putRoutedFlit,
       net_routers_router_core_6$EN_in_ports_3_getCredits,
       net_routers_router_core_6$EN_in_ports_3_putRoutedFlit,
       net_routers_router_core_6$EN_in_ports_4_getCredits,
       net_routers_router_core_6$EN_in_ports_4_putRoutedFlit,
       net_routers_router_core_6$EN_out_ports_0_getFlit,
       net_routers_router_core_6$EN_out_ports_0_putCredits,
       net_routers_router_core_6$EN_out_ports_1_getFlit,
       net_routers_router_core_6$EN_out_ports_1_putCredits,
       net_routers_router_core_6$EN_out_ports_2_getFlit,
       net_routers_router_core_6$EN_out_ports_2_putCredits,
       net_routers_router_core_6$EN_out_ports_3_getFlit,
       net_routers_router_core_6$EN_out_ports_3_putCredits,
       net_routers_router_core_6$EN_out_ports_4_getFlit,
       net_routers_router_core_6$EN_out_ports_4_putCredits;

  // ports of submodule net_routers_router_core_7
  wire [73 : 0] net_routers_router_core_7$in_ports_0_putRoutedFlit_flit_in,
		net_routers_router_core_7$in_ports_1_putRoutedFlit_flit_in,
		net_routers_router_core_7$in_ports_2_putRoutedFlit_flit_in,
		net_routers_router_core_7$in_ports_3_putRoutedFlit_flit_in,
		net_routers_router_core_7$in_ports_4_putRoutedFlit_flit_in;
  wire [70 : 0] net_routers_router_core_7$out_ports_0_getFlit,
		net_routers_router_core_7$out_ports_1_getFlit,
		net_routers_router_core_7$out_ports_2_getFlit,
		net_routers_router_core_7$out_ports_3_getFlit;
  wire [1 : 0] net_routers_router_core_7$in_ports_0_getCredits,
	       net_routers_router_core_7$in_ports_1_getCredits,
	       net_routers_router_core_7$in_ports_3_getCredits,
	       net_routers_router_core_7$in_ports_4_getCredits,
	       net_routers_router_core_7$out_ports_0_putCredits_cr_in,
	       net_routers_router_core_7$out_ports_1_putCredits_cr_in,
	       net_routers_router_core_7$out_ports_2_putCredits_cr_in,
	       net_routers_router_core_7$out_ports_3_putCredits_cr_in,
	       net_routers_router_core_7$out_ports_4_putCredits_cr_in;
  wire net_routers_router_core_7$EN_in_ports_0_getCredits,
       net_routers_router_core_7$EN_in_ports_0_putRoutedFlit,
       net_routers_router_core_7$EN_in_ports_1_getCredits,
       net_routers_router_core_7$EN_in_ports_1_putRoutedFlit,
       net_routers_router_core_7$EN_in_ports_2_getCredits,
       net_routers_router_core_7$EN_in_ports_2_putRoutedFlit,
       net_routers_router_core_7$EN_in_ports_3_getCredits,
       net_routers_router_core_7$EN_in_ports_3_putRoutedFlit,
       net_routers_router_core_7$EN_in_ports_4_getCredits,
       net_routers_router_core_7$EN_in_ports_4_putRoutedFlit,
       net_routers_router_core_7$EN_out_ports_0_getFlit,
       net_routers_router_core_7$EN_out_ports_0_putCredits,
       net_routers_router_core_7$EN_out_ports_1_getFlit,
       net_routers_router_core_7$EN_out_ports_1_putCredits,
       net_routers_router_core_7$EN_out_ports_2_getFlit,
       net_routers_router_core_7$EN_out_ports_2_putCredits,
       net_routers_router_core_7$EN_out_ports_3_getFlit,
       net_routers_router_core_7$EN_out_ports_3_putCredits,
       net_routers_router_core_7$EN_out_ports_4_getFlit,
       net_routers_router_core_7$EN_out_ports_4_putCredits;

  // ports of submodule net_routers_router_core_8
  wire [73 : 0] net_routers_router_core_8$in_ports_0_putRoutedFlit_flit_in,
		net_routers_router_core_8$in_ports_1_putRoutedFlit_flit_in,
		net_routers_router_core_8$in_ports_2_putRoutedFlit_flit_in,
		net_routers_router_core_8$in_ports_3_putRoutedFlit_flit_in,
		net_routers_router_core_8$in_ports_4_putRoutedFlit_flit_in;
  wire [70 : 0] net_routers_router_core_8$out_ports_0_getFlit,
		net_routers_router_core_8$out_ports_1_getFlit,
		net_routers_router_core_8$out_ports_2_getFlit;
  wire [1 : 0] net_routers_router_core_8$in_ports_0_getCredits,
	       net_routers_router_core_8$in_ports_3_getCredits,
	       net_routers_router_core_8$in_ports_4_getCredits,
	       net_routers_router_core_8$out_ports_0_putCredits_cr_in,
	       net_routers_router_core_8$out_ports_1_putCredits_cr_in,
	       net_routers_router_core_8$out_ports_2_putCredits_cr_in,
	       net_routers_router_core_8$out_ports_3_putCredits_cr_in,
	       net_routers_router_core_8$out_ports_4_putCredits_cr_in;
  wire net_routers_router_core_8$EN_in_ports_0_getCredits,
       net_routers_router_core_8$EN_in_ports_0_putRoutedFlit,
       net_routers_router_core_8$EN_in_ports_1_getCredits,
       net_routers_router_core_8$EN_in_ports_1_putRoutedFlit,
       net_routers_router_core_8$EN_in_ports_2_getCredits,
       net_routers_router_core_8$EN_in_ports_2_putRoutedFlit,
       net_routers_router_core_8$EN_in_ports_3_getCredits,
       net_routers_router_core_8$EN_in_ports_3_putRoutedFlit,
       net_routers_router_core_8$EN_in_ports_4_getCredits,
       net_routers_router_core_8$EN_in_ports_4_putRoutedFlit,
       net_routers_router_core_8$EN_out_ports_0_getFlit,
       net_routers_router_core_8$EN_out_ports_0_putCredits,
       net_routers_router_core_8$EN_out_ports_1_getFlit,
       net_routers_router_core_8$EN_out_ports_1_putCredits,
       net_routers_router_core_8$EN_out_ports_2_getFlit,
       net_routers_router_core_8$EN_out_ports_2_putCredits,
       net_routers_router_core_8$EN_out_ports_3_getFlit,
       net_routers_router_core_8$EN_out_ports_3_putCredits,
       net_routers_router_core_8$EN_out_ports_4_getFlit,
       net_routers_router_core_8$EN_out_ports_4_putCredits;

  // actionvalue method send_ports_0_getCredits
  assign send_ports_0_getCredits =
	     net_routers_router_core$in_ports_0_getCredits ;

  // actionvalue method send_ports_1_getCredits
  assign send_ports_1_getCredits =
	     net_routers_router_core_1$in_ports_0_getCredits ;

  // actionvalue method send_ports_2_getCredits
  assign send_ports_2_getCredits =
	     net_routers_router_core_2$in_ports_0_getCredits ;

  // actionvalue method send_ports_3_getCredits
  assign send_ports_3_getCredits =
	     net_routers_router_core_3$in_ports_0_getCredits ;

  // actionvalue method send_ports_4_getCredits
  assign send_ports_4_getCredits =
	     net_routers_router_core_4$in_ports_0_getCredits ;

  // actionvalue method send_ports_5_getCredits
  assign send_ports_5_getCredits =
	     net_routers_router_core_5$in_ports_0_getCredits ;

  // actionvalue method send_ports_6_getCredits
  assign send_ports_6_getCredits =
	     net_routers_router_core_6$in_ports_0_getCredits ;

  // actionvalue method send_ports_7_getCredits
  assign send_ports_7_getCredits =
	     net_routers_router_core_7$in_ports_0_getCredits ;

  // actionvalue method send_ports_8_getCredits
  assign send_ports_8_getCredits =
	     net_routers_router_core_8$in_ports_0_getCredits ;

  // actionvalue method recv_ports_0_getFlit
  assign recv_ports_0_getFlit = net_routers_router_core$out_ports_0_getFlit ;

  // actionvalue method recv_ports_1_getFlit
  assign recv_ports_1_getFlit =
	     net_routers_router_core_1$out_ports_0_getFlit ;

  // actionvalue method recv_ports_2_getFlit
  assign recv_ports_2_getFlit =
	     net_routers_router_core_2$out_ports_0_getFlit ;

  // actionvalue method recv_ports_3_getFlit
  assign recv_ports_3_getFlit =
	     net_routers_router_core_3$out_ports_0_getFlit ;

  // actionvalue method recv_ports_4_getFlit
  assign recv_ports_4_getFlit =
	     net_routers_router_core_4$out_ports_0_getFlit ;

  // actionvalue method recv_ports_5_getFlit
  assign recv_ports_5_getFlit =
	     net_routers_router_core_5$out_ports_0_getFlit ;

  // actionvalue method recv_ports_6_getFlit
  assign recv_ports_6_getFlit =
	     net_routers_router_core_6$out_ports_0_getFlit ;

  // actionvalue method recv_ports_7_getFlit
  assign recv_ports_7_getFlit =
	     net_routers_router_core_7$out_ports_0_getFlit ;

  // actionvalue method recv_ports_8_getFlit
  assign recv_ports_8_getFlit =
	     net_routers_router_core_8$out_ports_0_getFlit ;

  // value method recv_ports_info_0_getRecvPortID
  assign recv_ports_info_0_getRecvPortID = 4'd0 ;

  // value method recv_ports_info_1_getRecvPortID
  assign recv_ports_info_1_getRecvPortID = 4'd1 ;

  // value method recv_ports_info_2_getRecvPortID
  assign recv_ports_info_2_getRecvPortID = 4'd2 ;

  // value method recv_ports_info_3_getRecvPortID
  assign recv_ports_info_3_getRecvPortID = 4'd3 ;

  // value method recv_ports_info_4_getRecvPortID
  assign recv_ports_info_4_getRecvPortID = 4'd4 ;

  // value method recv_ports_info_5_getRecvPortID
  assign recv_ports_info_5_getRecvPortID = 4'd5 ;

  // value method recv_ports_info_6_getRecvPortID
  assign recv_ports_info_6_getRecvPortID = 4'd6 ;

  // value method recv_ports_info_7_getRecvPortID
  assign recv_ports_info_7_getRecvPortID = 4'd7 ;

  // value method recv_ports_info_8_getRecvPortID
  assign recv_ports_info_8_getRecvPortID = 4'd8 ;

  // submodule net_routers_routeTable_1_rt_ifc_banks_banks_rf
  RegFileLoadSyn #( /*file*/ "mesh_9RTs_2VCs_8BD_64DW_SepIFRoundRobinAlloc_3RTsPerRow_3RTsPerCol_routing_1.hex",
		    /*addr_width*/ 32'd4,
		    /*data_width*/ 32'd3,
		    /*lo*/ 32'd0,
		    /*hi*/ 32'd8,
		    /*binary*/ 32'd0) net_routers_routeTable_1_rt_ifc_banks_banks_rf(.CLK(CLK),
										     .RST_N(RST_N),
										     .ADDR_1(net_routers_routeTable_1_rt_ifc_banks_banks_rf$ADDR_1),
										     .ADDR_IN(net_routers_routeTable_1_rt_ifc_banks_banks_rf$ADDR_IN),
										     .D_IN(net_routers_routeTable_1_rt_ifc_banks_banks_rf$D_IN),
										     .WE(net_routers_routeTable_1_rt_ifc_banks_banks_rf$WE),
										     .D_OUT_1(net_routers_routeTable_1_rt_ifc_banks_banks_rf$D_OUT_1));

  // submodule net_routers_routeTable_1_rt_ifc_banks_banks_rf_1
  RegFileLoadSyn #( /*file*/ "mesh_9RTs_2VCs_8BD_64DW_SepIFRoundRobinAlloc_3RTsPerRow_3RTsPerCol_routing_1.hex",
		    /*addr_width*/ 32'd4,
		    /*data_width*/ 32'd3,
		    /*lo*/ 32'd0,
		    /*hi*/ 32'd8,
		    /*binary*/ 32'd0) net_routers_routeTable_1_rt_ifc_banks_banks_rf_1(.CLK(CLK),
										       .RST_N(RST_N),
										       .ADDR_1(net_routers_routeTable_1_rt_ifc_banks_banks_rf_1$ADDR_1),
										       .ADDR_IN(net_routers_routeTable_1_rt_ifc_banks_banks_rf_1$ADDR_IN),
										       .D_IN(net_routers_routeTable_1_rt_ifc_banks_banks_rf_1$D_IN),
										       .WE(net_routers_routeTable_1_rt_ifc_banks_banks_rf_1$WE),
										       .D_OUT_1(net_routers_routeTable_1_rt_ifc_banks_banks_rf_1$D_OUT_1));

  // submodule net_routers_routeTable_1_rt_ifc_banks_banks_rf_2
  RegFileLoadSyn #( /*file*/ "mesh_9RTs_2VCs_8BD_64DW_SepIFRoundRobinAlloc_3RTsPerRow_3RTsPerCol_routing_1.hex",
		    /*addr_width*/ 32'd4,
		    /*data_width*/ 32'd3,
		    /*lo*/ 32'd0,
		    /*hi*/ 32'd8,
		    /*binary*/ 32'd0) net_routers_routeTable_1_rt_ifc_banks_banks_rf_2(.CLK(CLK),
										       .RST_N(RST_N),
										       .ADDR_1(net_routers_routeTable_1_rt_ifc_banks_banks_rf_2$ADDR_1),
										       .ADDR_IN(net_routers_routeTable_1_rt_ifc_banks_banks_rf_2$ADDR_IN),
										       .D_IN(net_routers_routeTable_1_rt_ifc_banks_banks_rf_2$D_IN),
										       .WE(net_routers_routeTable_1_rt_ifc_banks_banks_rf_2$WE),
										       .D_OUT_1(net_routers_routeTable_1_rt_ifc_banks_banks_rf_2$D_OUT_1));

  // submodule net_routers_routeTable_1_rt_ifc_banks_banks_rf_3
  RegFileLoadSyn #( /*file*/ "mesh_9RTs_2VCs_8BD_64DW_SepIFRoundRobinAlloc_3RTsPerRow_3RTsPerCol_routing_1.hex",
		    /*addr_width*/ 32'd4,
		    /*data_width*/ 32'd3,
		    /*lo*/ 32'd0,
		    /*hi*/ 32'd8,
		    /*binary*/ 32'd0) net_routers_routeTable_1_rt_ifc_banks_banks_rf_3(.CLK(CLK),
										       .RST_N(RST_N),
										       .ADDR_1(net_routers_routeTable_1_rt_ifc_banks_banks_rf_3$ADDR_1),
										       .ADDR_IN(net_routers_routeTable_1_rt_ifc_banks_banks_rf_3$ADDR_IN),
										       .D_IN(net_routers_routeTable_1_rt_ifc_banks_banks_rf_3$D_IN),
										       .WE(net_routers_routeTable_1_rt_ifc_banks_banks_rf_3$WE),
										       .D_OUT_1(net_routers_routeTable_1_rt_ifc_banks_banks_rf_3$D_OUT_1));

  // submodule net_routers_routeTable_1_rt_ifc_banks_banks_rf_4
  RegFileLoadSyn #( /*file*/ "mesh_9RTs_2VCs_8BD_64DW_SepIFRoundRobinAlloc_3RTsPerRow_3RTsPerCol_routing_1.hex",
		    /*addr_width*/ 32'd4,
		    /*data_width*/ 32'd3,
		    /*lo*/ 32'd0,
		    /*hi*/ 32'd8,
		    /*binary*/ 32'd0) net_routers_routeTable_1_rt_ifc_banks_banks_rf_4(.CLK(CLK),
										       .RST_N(RST_N),
										       .ADDR_1(net_routers_routeTable_1_rt_ifc_banks_banks_rf_4$ADDR_1),
										       .ADDR_IN(net_routers_routeTable_1_rt_ifc_banks_banks_rf_4$ADDR_IN),
										       .D_IN(net_routers_routeTable_1_rt_ifc_banks_banks_rf_4$D_IN),
										       .WE(net_routers_routeTable_1_rt_ifc_banks_banks_rf_4$WE),
										       .D_OUT_1());

  // submodule net_routers_routeTable_2_rt_ifc_banks_banks_rf
  RegFileLoadSyn #( /*file*/ "mesh_9RTs_2VCs_8BD_64DW_SepIFRoundRobinAlloc_3RTsPerRow_3RTsPerCol_routing_2.hex",
		    /*addr_width*/ 32'd4,
		    /*data_width*/ 32'd3,
		    /*lo*/ 32'd0,
		    /*hi*/ 32'd8,
		    /*binary*/ 32'd0) net_routers_routeTable_2_rt_ifc_banks_banks_rf(.CLK(CLK),
										     .RST_N(RST_N),
										     .ADDR_1(net_routers_routeTable_2_rt_ifc_banks_banks_rf$ADDR_1),
										     .ADDR_IN(net_routers_routeTable_2_rt_ifc_banks_banks_rf$ADDR_IN),
										     .D_IN(net_routers_routeTable_2_rt_ifc_banks_banks_rf$D_IN),
										     .WE(net_routers_routeTable_2_rt_ifc_banks_banks_rf$WE),
										     .D_OUT_1(net_routers_routeTable_2_rt_ifc_banks_banks_rf$D_OUT_1));

  // submodule net_routers_routeTable_2_rt_ifc_banks_banks_rf_1
  RegFileLoadSyn #( /*file*/ "mesh_9RTs_2VCs_8BD_64DW_SepIFRoundRobinAlloc_3RTsPerRow_3RTsPerCol_routing_2.hex",
		    /*addr_width*/ 32'd4,
		    /*data_width*/ 32'd3,
		    /*lo*/ 32'd0,
		    /*hi*/ 32'd8,
		    /*binary*/ 32'd0) net_routers_routeTable_2_rt_ifc_banks_banks_rf_1(.CLK(CLK),
										       .RST_N(RST_N),
										       .ADDR_1(net_routers_routeTable_2_rt_ifc_banks_banks_rf_1$ADDR_1),
										       .ADDR_IN(net_routers_routeTable_2_rt_ifc_banks_banks_rf_1$ADDR_IN),
										       .D_IN(net_routers_routeTable_2_rt_ifc_banks_banks_rf_1$D_IN),
										       .WE(net_routers_routeTable_2_rt_ifc_banks_banks_rf_1$WE),
										       .D_OUT_1());

  // submodule net_routers_routeTable_2_rt_ifc_banks_banks_rf_2
  RegFileLoadSyn #( /*file*/ "mesh_9RTs_2VCs_8BD_64DW_SepIFRoundRobinAlloc_3RTsPerRow_3RTsPerCol_routing_2.hex",
		    /*addr_width*/ 32'd4,
		    /*data_width*/ 32'd3,
		    /*lo*/ 32'd0,
		    /*hi*/ 32'd8,
		    /*binary*/ 32'd0) net_routers_routeTable_2_rt_ifc_banks_banks_rf_2(.CLK(CLK),
										       .RST_N(RST_N),
										       .ADDR_1(net_routers_routeTable_2_rt_ifc_banks_banks_rf_2$ADDR_1),
										       .ADDR_IN(net_routers_routeTable_2_rt_ifc_banks_banks_rf_2$ADDR_IN),
										       .D_IN(net_routers_routeTable_2_rt_ifc_banks_banks_rf_2$D_IN),
										       .WE(net_routers_routeTable_2_rt_ifc_banks_banks_rf_2$WE),
										       .D_OUT_1(net_routers_routeTable_2_rt_ifc_banks_banks_rf_2$D_OUT_1));

  // submodule net_routers_routeTable_2_rt_ifc_banks_banks_rf_3
  RegFileLoadSyn #( /*file*/ "mesh_9RTs_2VCs_8BD_64DW_SepIFRoundRobinAlloc_3RTsPerRow_3RTsPerCol_routing_2.hex",
		    /*addr_width*/ 32'd4,
		    /*data_width*/ 32'd3,
		    /*lo*/ 32'd0,
		    /*hi*/ 32'd8,
		    /*binary*/ 32'd0) net_routers_routeTable_2_rt_ifc_banks_banks_rf_3(.CLK(CLK),
										       .RST_N(RST_N),
										       .ADDR_1(net_routers_routeTable_2_rt_ifc_banks_banks_rf_3$ADDR_1),
										       .ADDR_IN(net_routers_routeTable_2_rt_ifc_banks_banks_rf_3$ADDR_IN),
										       .D_IN(net_routers_routeTable_2_rt_ifc_banks_banks_rf_3$D_IN),
										       .WE(net_routers_routeTable_2_rt_ifc_banks_banks_rf_3$WE),
										       .D_OUT_1(net_routers_routeTable_2_rt_ifc_banks_banks_rf_3$D_OUT_1));

  // submodule net_routers_routeTable_2_rt_ifc_banks_banks_rf_4
  RegFileLoadSyn #( /*file*/ "mesh_9RTs_2VCs_8BD_64DW_SepIFRoundRobinAlloc_3RTsPerRow_3RTsPerCol_routing_2.hex",
		    /*addr_width*/ 32'd4,
		    /*data_width*/ 32'd3,
		    /*lo*/ 32'd0,
		    /*hi*/ 32'd8,
		    /*binary*/ 32'd0) net_routers_routeTable_2_rt_ifc_banks_banks_rf_4(.CLK(CLK),
										       .RST_N(RST_N),
										       .ADDR_1(net_routers_routeTable_2_rt_ifc_banks_banks_rf_4$ADDR_1),
										       .ADDR_IN(net_routers_routeTable_2_rt_ifc_banks_banks_rf_4$ADDR_IN),
										       .D_IN(net_routers_routeTable_2_rt_ifc_banks_banks_rf_4$D_IN),
										       .WE(net_routers_routeTable_2_rt_ifc_banks_banks_rf_4$WE),
										       .D_OUT_1());

  // submodule net_routers_routeTable_3_rt_ifc_banks_banks_rf
  RegFileLoadSyn #( /*file*/ "mesh_9RTs_2VCs_8BD_64DW_SepIFRoundRobinAlloc_3RTsPerRow_3RTsPerCol_routing_3.hex",
		    /*addr_width*/ 32'd4,
		    /*data_width*/ 32'd3,
		    /*lo*/ 32'd0,
		    /*hi*/ 32'd8,
		    /*binary*/ 32'd0) net_routers_routeTable_3_rt_ifc_banks_banks_rf(.CLK(CLK),
										     .RST_N(RST_N),
										     .ADDR_1(net_routers_routeTable_3_rt_ifc_banks_banks_rf$ADDR_1),
										     .ADDR_IN(net_routers_routeTable_3_rt_ifc_banks_banks_rf$ADDR_IN),
										     .D_IN(net_routers_routeTable_3_rt_ifc_banks_banks_rf$D_IN),
										     .WE(net_routers_routeTable_3_rt_ifc_banks_banks_rf$WE),
										     .D_OUT_1(net_routers_routeTable_3_rt_ifc_banks_banks_rf$D_OUT_1));

  // submodule net_routers_routeTable_3_rt_ifc_banks_banks_rf_1
  RegFileLoadSyn #( /*file*/ "mesh_9RTs_2VCs_8BD_64DW_SepIFRoundRobinAlloc_3RTsPerRow_3RTsPerCol_routing_3.hex",
		    /*addr_width*/ 32'd4,
		    /*data_width*/ 32'd3,
		    /*lo*/ 32'd0,
		    /*hi*/ 32'd8,
		    /*binary*/ 32'd0) net_routers_routeTable_3_rt_ifc_banks_banks_rf_1(.CLK(CLK),
										       .RST_N(RST_N),
										       .ADDR_1(net_routers_routeTable_3_rt_ifc_banks_banks_rf_1$ADDR_1),
										       .ADDR_IN(net_routers_routeTable_3_rt_ifc_banks_banks_rf_1$ADDR_IN),
										       .D_IN(net_routers_routeTable_3_rt_ifc_banks_banks_rf_1$D_IN),
										       .WE(net_routers_routeTable_3_rt_ifc_banks_banks_rf_1$WE),
										       .D_OUT_1(net_routers_routeTable_3_rt_ifc_banks_banks_rf_1$D_OUT_1));

  // submodule net_routers_routeTable_3_rt_ifc_banks_banks_rf_2
  RegFileLoadSyn #( /*file*/ "mesh_9RTs_2VCs_8BD_64DW_SepIFRoundRobinAlloc_3RTsPerRow_3RTsPerCol_routing_3.hex",
		    /*addr_width*/ 32'd4,
		    /*data_width*/ 32'd3,
		    /*lo*/ 32'd0,
		    /*hi*/ 32'd8,
		    /*binary*/ 32'd0) net_routers_routeTable_3_rt_ifc_banks_banks_rf_2(.CLK(CLK),
										       .RST_N(RST_N),
										       .ADDR_1(net_routers_routeTable_3_rt_ifc_banks_banks_rf_2$ADDR_1),
										       .ADDR_IN(net_routers_routeTable_3_rt_ifc_banks_banks_rf_2$ADDR_IN),
										       .D_IN(net_routers_routeTable_3_rt_ifc_banks_banks_rf_2$D_IN),
										       .WE(net_routers_routeTable_3_rt_ifc_banks_banks_rf_2$WE),
										       .D_OUT_1(net_routers_routeTable_3_rt_ifc_banks_banks_rf_2$D_OUT_1));

  // submodule net_routers_routeTable_3_rt_ifc_banks_banks_rf_3
  RegFileLoadSyn #( /*file*/ "mesh_9RTs_2VCs_8BD_64DW_SepIFRoundRobinAlloc_3RTsPerRow_3RTsPerCol_routing_3.hex",
		    /*addr_width*/ 32'd4,
		    /*data_width*/ 32'd3,
		    /*lo*/ 32'd0,
		    /*hi*/ 32'd8,
		    /*binary*/ 32'd0) net_routers_routeTable_3_rt_ifc_banks_banks_rf_3(.CLK(CLK),
										       .RST_N(RST_N),
										       .ADDR_1(net_routers_routeTable_3_rt_ifc_banks_banks_rf_3$ADDR_1),
										       .ADDR_IN(net_routers_routeTable_3_rt_ifc_banks_banks_rf_3$ADDR_IN),
										       .D_IN(net_routers_routeTable_3_rt_ifc_banks_banks_rf_3$D_IN),
										       .WE(net_routers_routeTable_3_rt_ifc_banks_banks_rf_3$WE),
										       .D_OUT_1());

  // submodule net_routers_routeTable_3_rt_ifc_banks_banks_rf_4
  RegFileLoadSyn #( /*file*/ "mesh_9RTs_2VCs_8BD_64DW_SepIFRoundRobinAlloc_3RTsPerRow_3RTsPerCol_routing_3.hex",
		    /*addr_width*/ 32'd4,
		    /*data_width*/ 32'd3,
		    /*lo*/ 32'd0,
		    /*hi*/ 32'd8,
		    /*binary*/ 32'd0) net_routers_routeTable_3_rt_ifc_banks_banks_rf_4(.CLK(CLK),
										       .RST_N(RST_N),
										       .ADDR_1(net_routers_routeTable_3_rt_ifc_banks_banks_rf_4$ADDR_1),
										       .ADDR_IN(net_routers_routeTable_3_rt_ifc_banks_banks_rf_4$ADDR_IN),
										       .D_IN(net_routers_routeTable_3_rt_ifc_banks_banks_rf_4$D_IN),
										       .WE(net_routers_routeTable_3_rt_ifc_banks_banks_rf_4$WE),
										       .D_OUT_1(net_routers_routeTable_3_rt_ifc_banks_banks_rf_4$D_OUT_1));

  // submodule net_routers_routeTable_4_rt_ifc_banks_banks_rf
  RegFileLoadSyn #( /*file*/ "mesh_9RTs_2VCs_8BD_64DW_SepIFRoundRobinAlloc_3RTsPerRow_3RTsPerCol_routing_4.hex",
		    /*addr_width*/ 32'd4,
		    /*data_width*/ 32'd3,
		    /*lo*/ 32'd0,
		    /*hi*/ 32'd8,
		    /*binary*/ 32'd0) net_routers_routeTable_4_rt_ifc_banks_banks_rf(.CLK(CLK),
										     .RST_N(RST_N),
										     .ADDR_1(net_routers_routeTable_4_rt_ifc_banks_banks_rf$ADDR_1),
										     .ADDR_IN(net_routers_routeTable_4_rt_ifc_banks_banks_rf$ADDR_IN),
										     .D_IN(net_routers_routeTable_4_rt_ifc_banks_banks_rf$D_IN),
										     .WE(net_routers_routeTable_4_rt_ifc_banks_banks_rf$WE),
										     .D_OUT_1(net_routers_routeTable_4_rt_ifc_banks_banks_rf$D_OUT_1));

  // submodule net_routers_routeTable_4_rt_ifc_banks_banks_rf_1
  RegFileLoadSyn #( /*file*/ "mesh_9RTs_2VCs_8BD_64DW_SepIFRoundRobinAlloc_3RTsPerRow_3RTsPerCol_routing_4.hex",
		    /*addr_width*/ 32'd4,
		    /*data_width*/ 32'd3,
		    /*lo*/ 32'd0,
		    /*hi*/ 32'd8,
		    /*binary*/ 32'd0) net_routers_routeTable_4_rt_ifc_banks_banks_rf_1(.CLK(CLK),
										       .RST_N(RST_N),
										       .ADDR_1(net_routers_routeTable_4_rt_ifc_banks_banks_rf_1$ADDR_1),
										       .ADDR_IN(net_routers_routeTable_4_rt_ifc_banks_banks_rf_1$ADDR_IN),
										       .D_IN(net_routers_routeTable_4_rt_ifc_banks_banks_rf_1$D_IN),
										       .WE(net_routers_routeTable_4_rt_ifc_banks_banks_rf_1$WE),
										       .D_OUT_1(net_routers_routeTable_4_rt_ifc_banks_banks_rf_1$D_OUT_1));

  // submodule net_routers_routeTable_4_rt_ifc_banks_banks_rf_2
  RegFileLoadSyn #( /*file*/ "mesh_9RTs_2VCs_8BD_64DW_SepIFRoundRobinAlloc_3RTsPerRow_3RTsPerCol_routing_4.hex",
		    /*addr_width*/ 32'd4,
		    /*data_width*/ 32'd3,
		    /*lo*/ 32'd0,
		    /*hi*/ 32'd8,
		    /*binary*/ 32'd0) net_routers_routeTable_4_rt_ifc_banks_banks_rf_2(.CLK(CLK),
										       .RST_N(RST_N),
										       .ADDR_1(net_routers_routeTable_4_rt_ifc_banks_banks_rf_2$ADDR_1),
										       .ADDR_IN(net_routers_routeTable_4_rt_ifc_banks_banks_rf_2$ADDR_IN),
										       .D_IN(net_routers_routeTable_4_rt_ifc_banks_banks_rf_2$D_IN),
										       .WE(net_routers_routeTable_4_rt_ifc_banks_banks_rf_2$WE),
										       .D_OUT_1(net_routers_routeTable_4_rt_ifc_banks_banks_rf_2$D_OUT_1));

  // submodule net_routers_routeTable_4_rt_ifc_banks_banks_rf_3
  RegFileLoadSyn #( /*file*/ "mesh_9RTs_2VCs_8BD_64DW_SepIFRoundRobinAlloc_3RTsPerRow_3RTsPerCol_routing_4.hex",
		    /*addr_width*/ 32'd4,
		    /*data_width*/ 32'd3,
		    /*lo*/ 32'd0,
		    /*hi*/ 32'd8,
		    /*binary*/ 32'd0) net_routers_routeTable_4_rt_ifc_banks_banks_rf_3(.CLK(CLK),
										       .RST_N(RST_N),
										       .ADDR_1(net_routers_routeTable_4_rt_ifc_banks_banks_rf_3$ADDR_1),
										       .ADDR_IN(net_routers_routeTable_4_rt_ifc_banks_banks_rf_3$ADDR_IN),
										       .D_IN(net_routers_routeTable_4_rt_ifc_banks_banks_rf_3$D_IN),
										       .WE(net_routers_routeTable_4_rt_ifc_banks_banks_rf_3$WE),
										       .D_OUT_1(net_routers_routeTable_4_rt_ifc_banks_banks_rf_3$D_OUT_1));

  // submodule net_routers_routeTable_4_rt_ifc_banks_banks_rf_4
  RegFileLoadSyn #( /*file*/ "mesh_9RTs_2VCs_8BD_64DW_SepIFRoundRobinAlloc_3RTsPerRow_3RTsPerCol_routing_4.hex",
		    /*addr_width*/ 32'd4,
		    /*data_width*/ 32'd3,
		    /*lo*/ 32'd0,
		    /*hi*/ 32'd8,
		    /*binary*/ 32'd0) net_routers_routeTable_4_rt_ifc_banks_banks_rf_4(.CLK(CLK),
										       .RST_N(RST_N),
										       .ADDR_1(net_routers_routeTable_4_rt_ifc_banks_banks_rf_4$ADDR_1),
										       .ADDR_IN(net_routers_routeTable_4_rt_ifc_banks_banks_rf_4$ADDR_IN),
										       .D_IN(net_routers_routeTable_4_rt_ifc_banks_banks_rf_4$D_IN),
										       .WE(net_routers_routeTable_4_rt_ifc_banks_banks_rf_4$WE),
										       .D_OUT_1(net_routers_routeTable_4_rt_ifc_banks_banks_rf_4$D_OUT_1));

  // submodule net_routers_routeTable_5_rt_ifc_banks_banks_rf
  RegFileLoadSyn #( /*file*/ "mesh_9RTs_2VCs_8BD_64DW_SepIFRoundRobinAlloc_3RTsPerRow_3RTsPerCol_routing_5.hex",
		    /*addr_width*/ 32'd4,
		    /*data_width*/ 32'd3,
		    /*lo*/ 32'd0,
		    /*hi*/ 32'd8,
		    /*binary*/ 32'd0) net_routers_routeTable_5_rt_ifc_banks_banks_rf(.CLK(CLK),
										     .RST_N(RST_N),
										     .ADDR_1(net_routers_routeTable_5_rt_ifc_banks_banks_rf$ADDR_1),
										     .ADDR_IN(net_routers_routeTable_5_rt_ifc_banks_banks_rf$ADDR_IN),
										     .D_IN(net_routers_routeTable_5_rt_ifc_banks_banks_rf$D_IN),
										     .WE(net_routers_routeTable_5_rt_ifc_banks_banks_rf$WE),
										     .D_OUT_1(net_routers_routeTable_5_rt_ifc_banks_banks_rf$D_OUT_1));

  // submodule net_routers_routeTable_5_rt_ifc_banks_banks_rf_1
  RegFileLoadSyn #( /*file*/ "mesh_9RTs_2VCs_8BD_64DW_SepIFRoundRobinAlloc_3RTsPerRow_3RTsPerCol_routing_5.hex",
		    /*addr_width*/ 32'd4,
		    /*data_width*/ 32'd3,
		    /*lo*/ 32'd0,
		    /*hi*/ 32'd8,
		    /*binary*/ 32'd0) net_routers_routeTable_5_rt_ifc_banks_banks_rf_1(.CLK(CLK),
										       .RST_N(RST_N),
										       .ADDR_1(net_routers_routeTable_5_rt_ifc_banks_banks_rf_1$ADDR_1),
										       .ADDR_IN(net_routers_routeTable_5_rt_ifc_banks_banks_rf_1$ADDR_IN),
										       .D_IN(net_routers_routeTable_5_rt_ifc_banks_banks_rf_1$D_IN),
										       .WE(net_routers_routeTable_5_rt_ifc_banks_banks_rf_1$WE),
										       .D_OUT_1());

  // submodule net_routers_routeTable_5_rt_ifc_banks_banks_rf_2
  RegFileLoadSyn #( /*file*/ "mesh_9RTs_2VCs_8BD_64DW_SepIFRoundRobinAlloc_3RTsPerRow_3RTsPerCol_routing_5.hex",
		    /*addr_width*/ 32'd4,
		    /*data_width*/ 32'd3,
		    /*lo*/ 32'd0,
		    /*hi*/ 32'd8,
		    /*binary*/ 32'd0) net_routers_routeTable_5_rt_ifc_banks_banks_rf_2(.CLK(CLK),
										       .RST_N(RST_N),
										       .ADDR_1(net_routers_routeTable_5_rt_ifc_banks_banks_rf_2$ADDR_1),
										       .ADDR_IN(net_routers_routeTable_5_rt_ifc_banks_banks_rf_2$ADDR_IN),
										       .D_IN(net_routers_routeTable_5_rt_ifc_banks_banks_rf_2$D_IN),
										       .WE(net_routers_routeTable_5_rt_ifc_banks_banks_rf_2$WE),
										       .D_OUT_1(net_routers_routeTable_5_rt_ifc_banks_banks_rf_2$D_OUT_1));

  // submodule net_routers_routeTable_5_rt_ifc_banks_banks_rf_3
  RegFileLoadSyn #( /*file*/ "mesh_9RTs_2VCs_8BD_64DW_SepIFRoundRobinAlloc_3RTsPerRow_3RTsPerCol_routing_5.hex",
		    /*addr_width*/ 32'd4,
		    /*data_width*/ 32'd3,
		    /*lo*/ 32'd0,
		    /*hi*/ 32'd8,
		    /*binary*/ 32'd0) net_routers_routeTable_5_rt_ifc_banks_banks_rf_3(.CLK(CLK),
										       .RST_N(RST_N),
										       .ADDR_1(net_routers_routeTable_5_rt_ifc_banks_banks_rf_3$ADDR_1),
										       .ADDR_IN(net_routers_routeTable_5_rt_ifc_banks_banks_rf_3$ADDR_IN),
										       .D_IN(net_routers_routeTable_5_rt_ifc_banks_banks_rf_3$D_IN),
										       .WE(net_routers_routeTable_5_rt_ifc_banks_banks_rf_3$WE),
										       .D_OUT_1(net_routers_routeTable_5_rt_ifc_banks_banks_rf_3$D_OUT_1));

  // submodule net_routers_routeTable_5_rt_ifc_banks_banks_rf_4
  RegFileLoadSyn #( /*file*/ "mesh_9RTs_2VCs_8BD_64DW_SepIFRoundRobinAlloc_3RTsPerRow_3RTsPerCol_routing_5.hex",
		    /*addr_width*/ 32'd4,
		    /*data_width*/ 32'd3,
		    /*lo*/ 32'd0,
		    /*hi*/ 32'd8,
		    /*binary*/ 32'd0) net_routers_routeTable_5_rt_ifc_banks_banks_rf_4(.CLK(CLK),
										       .RST_N(RST_N),
										       .ADDR_1(net_routers_routeTable_5_rt_ifc_banks_banks_rf_4$ADDR_1),
										       .ADDR_IN(net_routers_routeTable_5_rt_ifc_banks_banks_rf_4$ADDR_IN),
										       .D_IN(net_routers_routeTable_5_rt_ifc_banks_banks_rf_4$D_IN),
										       .WE(net_routers_routeTable_5_rt_ifc_banks_banks_rf_4$WE),
										       .D_OUT_1(net_routers_routeTable_5_rt_ifc_banks_banks_rf_4$D_OUT_1));

  // submodule net_routers_routeTable_6_rt_ifc_banks_banks_rf
  RegFileLoadSyn #( /*file*/ "mesh_9RTs_2VCs_8BD_64DW_SepIFRoundRobinAlloc_3RTsPerRow_3RTsPerCol_routing_6.hex",
		    /*addr_width*/ 32'd4,
		    /*data_width*/ 32'd3,
		    /*lo*/ 32'd0,
		    /*hi*/ 32'd8,
		    /*binary*/ 32'd0) net_routers_routeTable_6_rt_ifc_banks_banks_rf(.CLK(CLK),
										     .RST_N(RST_N),
										     .ADDR_1(net_routers_routeTable_6_rt_ifc_banks_banks_rf$ADDR_1),
										     .ADDR_IN(net_routers_routeTable_6_rt_ifc_banks_banks_rf$ADDR_IN),
										     .D_IN(net_routers_routeTable_6_rt_ifc_banks_banks_rf$D_IN),
										     .WE(net_routers_routeTable_6_rt_ifc_banks_banks_rf$WE),
										     .D_OUT_1(net_routers_routeTable_6_rt_ifc_banks_banks_rf$D_OUT_1));

  // submodule net_routers_routeTable_6_rt_ifc_banks_banks_rf_1
  RegFileLoadSyn #( /*file*/ "mesh_9RTs_2VCs_8BD_64DW_SepIFRoundRobinAlloc_3RTsPerRow_3RTsPerCol_routing_6.hex",
		    /*addr_width*/ 32'd4,
		    /*data_width*/ 32'd3,
		    /*lo*/ 32'd0,
		    /*hi*/ 32'd8,
		    /*binary*/ 32'd0) net_routers_routeTable_6_rt_ifc_banks_banks_rf_1(.CLK(CLK),
										       .RST_N(RST_N),
										       .ADDR_1(net_routers_routeTable_6_rt_ifc_banks_banks_rf_1$ADDR_1),
										       .ADDR_IN(net_routers_routeTable_6_rt_ifc_banks_banks_rf_1$ADDR_IN),
										       .D_IN(net_routers_routeTable_6_rt_ifc_banks_banks_rf_1$D_IN),
										       .WE(net_routers_routeTable_6_rt_ifc_banks_banks_rf_1$WE),
										       .D_OUT_1(net_routers_routeTable_6_rt_ifc_banks_banks_rf_1$D_OUT_1));

  // submodule net_routers_routeTable_6_rt_ifc_banks_banks_rf_2
  RegFileLoadSyn #( /*file*/ "mesh_9RTs_2VCs_8BD_64DW_SepIFRoundRobinAlloc_3RTsPerRow_3RTsPerCol_routing_6.hex",
		    /*addr_width*/ 32'd4,
		    /*data_width*/ 32'd3,
		    /*lo*/ 32'd0,
		    /*hi*/ 32'd8,
		    /*binary*/ 32'd0) net_routers_routeTable_6_rt_ifc_banks_banks_rf_2(.CLK(CLK),
										       .RST_N(RST_N),
										       .ADDR_1(net_routers_routeTable_6_rt_ifc_banks_banks_rf_2$ADDR_1),
										       .ADDR_IN(net_routers_routeTable_6_rt_ifc_banks_banks_rf_2$ADDR_IN),
										       .D_IN(net_routers_routeTable_6_rt_ifc_banks_banks_rf_2$D_IN),
										       .WE(net_routers_routeTable_6_rt_ifc_banks_banks_rf_2$WE),
										       .D_OUT_1());

  // submodule net_routers_routeTable_6_rt_ifc_banks_banks_rf_3
  RegFileLoadSyn #( /*file*/ "mesh_9RTs_2VCs_8BD_64DW_SepIFRoundRobinAlloc_3RTsPerRow_3RTsPerCol_routing_6.hex",
		    /*addr_width*/ 32'd4,
		    /*data_width*/ 32'd3,
		    /*lo*/ 32'd0,
		    /*hi*/ 32'd8,
		    /*binary*/ 32'd0) net_routers_routeTable_6_rt_ifc_banks_banks_rf_3(.CLK(CLK),
										       .RST_N(RST_N),
										       .ADDR_1(net_routers_routeTable_6_rt_ifc_banks_banks_rf_3$ADDR_1),
										       .ADDR_IN(net_routers_routeTable_6_rt_ifc_banks_banks_rf_3$ADDR_IN),
										       .D_IN(net_routers_routeTable_6_rt_ifc_banks_banks_rf_3$D_IN),
										       .WE(net_routers_routeTable_6_rt_ifc_banks_banks_rf_3$WE),
										       .D_OUT_1());

  // submodule net_routers_routeTable_6_rt_ifc_banks_banks_rf_4
  RegFileLoadSyn #( /*file*/ "mesh_9RTs_2VCs_8BD_64DW_SepIFRoundRobinAlloc_3RTsPerRow_3RTsPerCol_routing_6.hex",
		    /*addr_width*/ 32'd4,
		    /*data_width*/ 32'd3,
		    /*lo*/ 32'd0,
		    /*hi*/ 32'd8,
		    /*binary*/ 32'd0) net_routers_routeTable_6_rt_ifc_banks_banks_rf_4(.CLK(CLK),
										       .RST_N(RST_N),
										       .ADDR_1(net_routers_routeTable_6_rt_ifc_banks_banks_rf_4$ADDR_1),
										       .ADDR_IN(net_routers_routeTable_6_rt_ifc_banks_banks_rf_4$ADDR_IN),
										       .D_IN(net_routers_routeTable_6_rt_ifc_banks_banks_rf_4$D_IN),
										       .WE(net_routers_routeTable_6_rt_ifc_banks_banks_rf_4$WE),
										       .D_OUT_1(net_routers_routeTable_6_rt_ifc_banks_banks_rf_4$D_OUT_1));

  // submodule net_routers_routeTable_7_rt_ifc_banks_banks_rf
  RegFileLoadSyn #( /*file*/ "mesh_9RTs_2VCs_8BD_64DW_SepIFRoundRobinAlloc_3RTsPerRow_3RTsPerCol_routing_7.hex",
		    /*addr_width*/ 32'd4,
		    /*data_width*/ 32'd3,
		    /*lo*/ 32'd0,
		    /*hi*/ 32'd8,
		    /*binary*/ 32'd0) net_routers_routeTable_7_rt_ifc_banks_banks_rf(.CLK(CLK),
										     .RST_N(RST_N),
										     .ADDR_1(net_routers_routeTable_7_rt_ifc_banks_banks_rf$ADDR_1),
										     .ADDR_IN(net_routers_routeTable_7_rt_ifc_banks_banks_rf$ADDR_IN),
										     .D_IN(net_routers_routeTable_7_rt_ifc_banks_banks_rf$D_IN),
										     .WE(net_routers_routeTable_7_rt_ifc_banks_banks_rf$WE),
										     .D_OUT_1(net_routers_routeTable_7_rt_ifc_banks_banks_rf$D_OUT_1));

  // submodule net_routers_routeTable_7_rt_ifc_banks_banks_rf_1
  RegFileLoadSyn #( /*file*/ "mesh_9RTs_2VCs_8BD_64DW_SepIFRoundRobinAlloc_3RTsPerRow_3RTsPerCol_routing_7.hex",
		    /*addr_width*/ 32'd4,
		    /*data_width*/ 32'd3,
		    /*lo*/ 32'd0,
		    /*hi*/ 32'd8,
		    /*binary*/ 32'd0) net_routers_routeTable_7_rt_ifc_banks_banks_rf_1(.CLK(CLK),
										       .RST_N(RST_N),
										       .ADDR_1(net_routers_routeTable_7_rt_ifc_banks_banks_rf_1$ADDR_1),
										       .ADDR_IN(net_routers_routeTable_7_rt_ifc_banks_banks_rf_1$ADDR_IN),
										       .D_IN(net_routers_routeTable_7_rt_ifc_banks_banks_rf_1$D_IN),
										       .WE(net_routers_routeTable_7_rt_ifc_banks_banks_rf_1$WE),
										       .D_OUT_1(net_routers_routeTable_7_rt_ifc_banks_banks_rf_1$D_OUT_1));

  // submodule net_routers_routeTable_7_rt_ifc_banks_banks_rf_2
  RegFileLoadSyn #( /*file*/ "mesh_9RTs_2VCs_8BD_64DW_SepIFRoundRobinAlloc_3RTsPerRow_3RTsPerCol_routing_7.hex",
		    /*addr_width*/ 32'd4,
		    /*data_width*/ 32'd3,
		    /*lo*/ 32'd0,
		    /*hi*/ 32'd8,
		    /*binary*/ 32'd0) net_routers_routeTable_7_rt_ifc_banks_banks_rf_2(.CLK(CLK),
										       .RST_N(RST_N),
										       .ADDR_1(net_routers_routeTable_7_rt_ifc_banks_banks_rf_2$ADDR_1),
										       .ADDR_IN(net_routers_routeTable_7_rt_ifc_banks_banks_rf_2$ADDR_IN),
										       .D_IN(net_routers_routeTable_7_rt_ifc_banks_banks_rf_2$D_IN),
										       .WE(net_routers_routeTable_7_rt_ifc_banks_banks_rf_2$WE),
										       .D_OUT_1());

  // submodule net_routers_routeTable_7_rt_ifc_banks_banks_rf_3
  RegFileLoadSyn #( /*file*/ "mesh_9RTs_2VCs_8BD_64DW_SepIFRoundRobinAlloc_3RTsPerRow_3RTsPerCol_routing_7.hex",
		    /*addr_width*/ 32'd4,
		    /*data_width*/ 32'd3,
		    /*lo*/ 32'd0,
		    /*hi*/ 32'd8,
		    /*binary*/ 32'd0) net_routers_routeTable_7_rt_ifc_banks_banks_rf_3(.CLK(CLK),
										       .RST_N(RST_N),
										       .ADDR_1(net_routers_routeTable_7_rt_ifc_banks_banks_rf_3$ADDR_1),
										       .ADDR_IN(net_routers_routeTable_7_rt_ifc_banks_banks_rf_3$ADDR_IN),
										       .D_IN(net_routers_routeTable_7_rt_ifc_banks_banks_rf_3$D_IN),
										       .WE(net_routers_routeTable_7_rt_ifc_banks_banks_rf_3$WE),
										       .D_OUT_1(net_routers_routeTable_7_rt_ifc_banks_banks_rf_3$D_OUT_1));

  // submodule net_routers_routeTable_7_rt_ifc_banks_banks_rf_4
  RegFileLoadSyn #( /*file*/ "mesh_9RTs_2VCs_8BD_64DW_SepIFRoundRobinAlloc_3RTsPerRow_3RTsPerCol_routing_7.hex",
		    /*addr_width*/ 32'd4,
		    /*data_width*/ 32'd3,
		    /*lo*/ 32'd0,
		    /*hi*/ 32'd8,
		    /*binary*/ 32'd0) net_routers_routeTable_7_rt_ifc_banks_banks_rf_4(.CLK(CLK),
										       .RST_N(RST_N),
										       .ADDR_1(net_routers_routeTable_7_rt_ifc_banks_banks_rf_4$ADDR_1),
										       .ADDR_IN(net_routers_routeTable_7_rt_ifc_banks_banks_rf_4$ADDR_IN),
										       .D_IN(net_routers_routeTable_7_rt_ifc_banks_banks_rf_4$D_IN),
										       .WE(net_routers_routeTable_7_rt_ifc_banks_banks_rf_4$WE),
										       .D_OUT_1(net_routers_routeTable_7_rt_ifc_banks_banks_rf_4$D_OUT_1));

  // submodule net_routers_routeTable_8_rt_ifc_banks_banks_rf
  RegFileLoadSyn #( /*file*/ "mesh_9RTs_2VCs_8BD_64DW_SepIFRoundRobinAlloc_3RTsPerRow_3RTsPerCol_routing_8.hex",
		    /*addr_width*/ 32'd4,
		    /*data_width*/ 32'd3,
		    /*lo*/ 32'd0,
		    /*hi*/ 32'd8,
		    /*binary*/ 32'd0) net_routers_routeTable_8_rt_ifc_banks_banks_rf(.CLK(CLK),
										     .RST_N(RST_N),
										     .ADDR_1(net_routers_routeTable_8_rt_ifc_banks_banks_rf$ADDR_1),
										     .ADDR_IN(net_routers_routeTable_8_rt_ifc_banks_banks_rf$ADDR_IN),
										     .D_IN(net_routers_routeTable_8_rt_ifc_banks_banks_rf$D_IN),
										     .WE(net_routers_routeTable_8_rt_ifc_banks_banks_rf$WE),
										     .D_OUT_1(net_routers_routeTable_8_rt_ifc_banks_banks_rf$D_OUT_1));

  // submodule net_routers_routeTable_8_rt_ifc_banks_banks_rf_1
  RegFileLoadSyn #( /*file*/ "mesh_9RTs_2VCs_8BD_64DW_SepIFRoundRobinAlloc_3RTsPerRow_3RTsPerCol_routing_8.hex",
		    /*addr_width*/ 32'd4,
		    /*data_width*/ 32'd3,
		    /*lo*/ 32'd0,
		    /*hi*/ 32'd8,
		    /*binary*/ 32'd0) net_routers_routeTable_8_rt_ifc_banks_banks_rf_1(.CLK(CLK),
										       .RST_N(RST_N),
										       .ADDR_1(net_routers_routeTable_8_rt_ifc_banks_banks_rf_1$ADDR_1),
										       .ADDR_IN(net_routers_routeTable_8_rt_ifc_banks_banks_rf_1$ADDR_IN),
										       .D_IN(net_routers_routeTable_8_rt_ifc_banks_banks_rf_1$D_IN),
										       .WE(net_routers_routeTable_8_rt_ifc_banks_banks_rf_1$WE),
										       .D_OUT_1());

  // submodule net_routers_routeTable_8_rt_ifc_banks_banks_rf_2
  RegFileLoadSyn #( /*file*/ "mesh_9RTs_2VCs_8BD_64DW_SepIFRoundRobinAlloc_3RTsPerRow_3RTsPerCol_routing_8.hex",
		    /*addr_width*/ 32'd4,
		    /*data_width*/ 32'd3,
		    /*lo*/ 32'd0,
		    /*hi*/ 32'd8,
		    /*binary*/ 32'd0) net_routers_routeTable_8_rt_ifc_banks_banks_rf_2(.CLK(CLK),
										       .RST_N(RST_N),
										       .ADDR_1(net_routers_routeTable_8_rt_ifc_banks_banks_rf_2$ADDR_1),
										       .ADDR_IN(net_routers_routeTable_8_rt_ifc_banks_banks_rf_2$ADDR_IN),
										       .D_IN(net_routers_routeTable_8_rt_ifc_banks_banks_rf_2$D_IN),
										       .WE(net_routers_routeTable_8_rt_ifc_banks_banks_rf_2$WE),
										       .D_OUT_1());

  // submodule net_routers_routeTable_8_rt_ifc_banks_banks_rf_3
  RegFileLoadSyn #( /*file*/ "mesh_9RTs_2VCs_8BD_64DW_SepIFRoundRobinAlloc_3RTsPerRow_3RTsPerCol_routing_8.hex",
		    /*addr_width*/ 32'd4,
		    /*data_width*/ 32'd3,
		    /*lo*/ 32'd0,
		    /*hi*/ 32'd8,
		    /*binary*/ 32'd0) net_routers_routeTable_8_rt_ifc_banks_banks_rf_3(.CLK(CLK),
										       .RST_N(RST_N),
										       .ADDR_1(net_routers_routeTable_8_rt_ifc_banks_banks_rf_3$ADDR_1),
										       .ADDR_IN(net_routers_routeTable_8_rt_ifc_banks_banks_rf_3$ADDR_IN),
										       .D_IN(net_routers_routeTable_8_rt_ifc_banks_banks_rf_3$D_IN),
										       .WE(net_routers_routeTable_8_rt_ifc_banks_banks_rf_3$WE),
										       .D_OUT_1(net_routers_routeTable_8_rt_ifc_banks_banks_rf_3$D_OUT_1));

  // submodule net_routers_routeTable_8_rt_ifc_banks_banks_rf_4
  RegFileLoadSyn #( /*file*/ "mesh_9RTs_2VCs_8BD_64DW_SepIFRoundRobinAlloc_3RTsPerRow_3RTsPerCol_routing_8.hex",
		    /*addr_width*/ 32'd4,
		    /*data_width*/ 32'd3,
		    /*lo*/ 32'd0,
		    /*hi*/ 32'd8,
		    /*binary*/ 32'd0) net_routers_routeTable_8_rt_ifc_banks_banks_rf_4(.CLK(CLK),
										       .RST_N(RST_N),
										       .ADDR_1(net_routers_routeTable_8_rt_ifc_banks_banks_rf_4$ADDR_1),
										       .ADDR_IN(net_routers_routeTable_8_rt_ifc_banks_banks_rf_4$ADDR_IN),
										       .D_IN(net_routers_routeTable_8_rt_ifc_banks_banks_rf_4$D_IN),
										       .WE(net_routers_routeTable_8_rt_ifc_banks_banks_rf_4$WE),
										       .D_OUT_1(net_routers_routeTable_8_rt_ifc_banks_banks_rf_4$D_OUT_1));

  // submodule net_routers_routeTable_rt_ifc_banks_banks_rf
  RegFileLoadSyn #( /*file*/ "mesh_9RTs_2VCs_8BD_64DW_SepIFRoundRobinAlloc_3RTsPerRow_3RTsPerCol_routing_0.hex",
		    /*addr_width*/ 32'd4,
		    /*data_width*/ 32'd3,
		    /*lo*/ 32'd0,
		    /*hi*/ 32'd8,
		    /*binary*/ 32'd0) net_routers_routeTable_rt_ifc_banks_banks_rf(.CLK(CLK),
										   .RST_N(RST_N),
										   .ADDR_1(net_routers_routeTable_rt_ifc_banks_banks_rf$ADDR_1),
										   .ADDR_IN(net_routers_routeTable_rt_ifc_banks_banks_rf$ADDR_IN),
										   .D_IN(net_routers_routeTable_rt_ifc_banks_banks_rf$D_IN),
										   .WE(net_routers_routeTable_rt_ifc_banks_banks_rf$WE),
										   .D_OUT_1(net_routers_routeTable_rt_ifc_banks_banks_rf$D_OUT_1));

  // submodule net_routers_routeTable_rt_ifc_banks_banks_rf_1
  RegFileLoadSyn #( /*file*/ "mesh_9RTs_2VCs_8BD_64DW_SepIFRoundRobinAlloc_3RTsPerRow_3RTsPerCol_routing_0.hex",
		    /*addr_width*/ 32'd4,
		    /*data_width*/ 32'd3,
		    /*lo*/ 32'd0,
		    /*hi*/ 32'd8,
		    /*binary*/ 32'd0) net_routers_routeTable_rt_ifc_banks_banks_rf_1(.CLK(CLK),
										     .RST_N(RST_N),
										     .ADDR_1(net_routers_routeTable_rt_ifc_banks_banks_rf_1$ADDR_1),
										     .ADDR_IN(net_routers_routeTable_rt_ifc_banks_banks_rf_1$ADDR_IN),
										     .D_IN(net_routers_routeTable_rt_ifc_banks_banks_rf_1$D_IN),
										     .WE(net_routers_routeTable_rt_ifc_banks_banks_rf_1$WE),
										     .D_OUT_1(net_routers_routeTable_rt_ifc_banks_banks_rf_1$D_OUT_1));

  // submodule net_routers_routeTable_rt_ifc_banks_banks_rf_2
  RegFileLoadSyn #( /*file*/ "mesh_9RTs_2VCs_8BD_64DW_SepIFRoundRobinAlloc_3RTsPerRow_3RTsPerCol_routing_0.hex",
		    /*addr_width*/ 32'd4,
		    /*data_width*/ 32'd3,
		    /*lo*/ 32'd0,
		    /*hi*/ 32'd8,
		    /*binary*/ 32'd0) net_routers_routeTable_rt_ifc_banks_banks_rf_2(.CLK(CLK),
										     .RST_N(RST_N),
										     .ADDR_1(net_routers_routeTable_rt_ifc_banks_banks_rf_2$ADDR_1),
										     .ADDR_IN(net_routers_routeTable_rt_ifc_banks_banks_rf_2$ADDR_IN),
										     .D_IN(net_routers_routeTable_rt_ifc_banks_banks_rf_2$D_IN),
										     .WE(net_routers_routeTable_rt_ifc_banks_banks_rf_2$WE),
										     .D_OUT_1(net_routers_routeTable_rt_ifc_banks_banks_rf_2$D_OUT_1));

  // submodule net_routers_routeTable_rt_ifc_banks_banks_rf_3
  RegFileLoadSyn #( /*file*/ "mesh_9RTs_2VCs_8BD_64DW_SepIFRoundRobinAlloc_3RTsPerRow_3RTsPerCol_routing_0.hex",
		    /*addr_width*/ 32'd4,
		    /*data_width*/ 32'd3,
		    /*lo*/ 32'd0,
		    /*hi*/ 32'd8,
		    /*binary*/ 32'd0) net_routers_routeTable_rt_ifc_banks_banks_rf_3(.CLK(CLK),
										     .RST_N(RST_N),
										     .ADDR_1(net_routers_routeTable_rt_ifc_banks_banks_rf_3$ADDR_1),
										     .ADDR_IN(net_routers_routeTable_rt_ifc_banks_banks_rf_3$ADDR_IN),
										     .D_IN(net_routers_routeTable_rt_ifc_banks_banks_rf_3$D_IN),
										     .WE(net_routers_routeTable_rt_ifc_banks_banks_rf_3$WE),
										     .D_OUT_1());

  // submodule net_routers_routeTable_rt_ifc_banks_banks_rf_4
  RegFileLoadSyn #( /*file*/ "mesh_9RTs_2VCs_8BD_64DW_SepIFRoundRobinAlloc_3RTsPerRow_3RTsPerCol_routing_0.hex",
		    /*addr_width*/ 32'd4,
		    /*data_width*/ 32'd3,
		    /*lo*/ 32'd0,
		    /*hi*/ 32'd8,
		    /*binary*/ 32'd0) net_routers_routeTable_rt_ifc_banks_banks_rf_4(.CLK(CLK),
										     .RST_N(RST_N),
										     .ADDR_1(net_routers_routeTable_rt_ifc_banks_banks_rf_4$ADDR_1),
										     .ADDR_IN(net_routers_routeTable_rt_ifc_banks_banks_rf_4$ADDR_IN),
										     .D_IN(net_routers_routeTable_rt_ifc_banks_banks_rf_4$D_IN),
										     .WE(net_routers_routeTable_rt_ifc_banks_banks_rf_4$WE),
										     .D_OUT_1());

  // submodule net_routers_router_core
  mkRouterCore net_routers_router_core(.CLK(CLK),
				       .RST_N(RST_N),
				       .in_ports_0_putRoutedFlit_flit_in(net_routers_router_core$in_ports_0_putRoutedFlit_flit_in),
				       .in_ports_1_putRoutedFlit_flit_in(net_routers_router_core$in_ports_1_putRoutedFlit_flit_in),
				       .in_ports_2_putRoutedFlit_flit_in(net_routers_router_core$in_ports_2_putRoutedFlit_flit_in),
				       .in_ports_3_putRoutedFlit_flit_in(net_routers_router_core$in_ports_3_putRoutedFlit_flit_in),
				       .in_ports_4_putRoutedFlit_flit_in(net_routers_router_core$in_ports_4_putRoutedFlit_flit_in),
				       .out_ports_0_putCredits_cr_in(net_routers_router_core$out_ports_0_putCredits_cr_in),
				       .out_ports_1_putCredits_cr_in(net_routers_router_core$out_ports_1_putCredits_cr_in),
				       .out_ports_2_putCredits_cr_in(net_routers_router_core$out_ports_2_putCredits_cr_in),
				       .out_ports_3_putCredits_cr_in(net_routers_router_core$out_ports_3_putCredits_cr_in),
				       .out_ports_4_putCredits_cr_in(net_routers_router_core$out_ports_4_putCredits_cr_in),
				       .EN_in_ports_0_putRoutedFlit(net_routers_router_core$EN_in_ports_0_putRoutedFlit),
				       .EN_in_ports_0_getCredits(net_routers_router_core$EN_in_ports_0_getCredits),
				       .EN_in_ports_1_putRoutedFlit(net_routers_router_core$EN_in_ports_1_putRoutedFlit),
				       .EN_in_ports_1_getCredits(net_routers_router_core$EN_in_ports_1_getCredits),
				       .EN_in_ports_2_putRoutedFlit(net_routers_router_core$EN_in_ports_2_putRoutedFlit),
				       .EN_in_ports_2_getCredits(net_routers_router_core$EN_in_ports_2_getCredits),
				       .EN_in_ports_3_putRoutedFlit(net_routers_router_core$EN_in_ports_3_putRoutedFlit),
				       .EN_in_ports_3_getCredits(net_routers_router_core$EN_in_ports_3_getCredits),
				       .EN_in_ports_4_putRoutedFlit(net_routers_router_core$EN_in_ports_4_putRoutedFlit),
				       .EN_in_ports_4_getCredits(net_routers_router_core$EN_in_ports_4_getCredits),
				       .EN_out_ports_0_getFlit(net_routers_router_core$EN_out_ports_0_getFlit),
				       .EN_out_ports_0_putCredits(net_routers_router_core$EN_out_ports_0_putCredits),
				       .EN_out_ports_1_getFlit(net_routers_router_core$EN_out_ports_1_getFlit),
				       .EN_out_ports_1_putCredits(net_routers_router_core$EN_out_ports_1_putCredits),
				       .EN_out_ports_2_getFlit(net_routers_router_core$EN_out_ports_2_getFlit),
				       .EN_out_ports_2_putCredits(net_routers_router_core$EN_out_ports_2_putCredits),
				       .EN_out_ports_3_getFlit(net_routers_router_core$EN_out_ports_3_getFlit),
				       .EN_out_ports_3_putCredits(net_routers_router_core$EN_out_ports_3_putCredits),
				       .EN_out_ports_4_getFlit(net_routers_router_core$EN_out_ports_4_getFlit),
				       .EN_out_ports_4_putCredits(net_routers_router_core$EN_out_ports_4_putCredits),
				       .in_ports_0_getCredits(net_routers_router_core$in_ports_0_getCredits),
				       .in_ports_1_getCredits(net_routers_router_core$in_ports_1_getCredits),
				       .in_ports_2_getCredits(net_routers_router_core$in_ports_2_getCredits),
				       .in_ports_3_getCredits(),
				       .in_ports_4_getCredits(),
				       .out_ports_0_getFlit(net_routers_router_core$out_ports_0_getFlit),
				       .out_ports_1_getFlit(),
				       .out_ports_2_getFlit(),
				       .out_ports_3_getFlit(net_routers_router_core$out_ports_3_getFlit),
				       .out_ports_4_getFlit(net_routers_router_core$out_ports_4_getFlit));

  // submodule net_routers_router_core_1
  mkRouterCore net_routers_router_core_1(.CLK(CLK),
					 .RST_N(RST_N),
					 .in_ports_0_putRoutedFlit_flit_in(net_routers_router_core_1$in_ports_0_putRoutedFlit_flit_in),
					 .in_ports_1_putRoutedFlit_flit_in(net_routers_router_core_1$in_ports_1_putRoutedFlit_flit_in),
					 .in_ports_2_putRoutedFlit_flit_in(net_routers_router_core_1$in_ports_2_putRoutedFlit_flit_in),
					 .in_ports_3_putRoutedFlit_flit_in(net_routers_router_core_1$in_ports_3_putRoutedFlit_flit_in),
					 .in_ports_4_putRoutedFlit_flit_in(net_routers_router_core_1$in_ports_4_putRoutedFlit_flit_in),
					 .out_ports_0_putCredits_cr_in(net_routers_router_core_1$out_ports_0_putCredits_cr_in),
					 .out_ports_1_putCredits_cr_in(net_routers_router_core_1$out_ports_1_putCredits_cr_in),
					 .out_ports_2_putCredits_cr_in(net_routers_router_core_1$out_ports_2_putCredits_cr_in),
					 .out_ports_3_putCredits_cr_in(net_routers_router_core_1$out_ports_3_putCredits_cr_in),
					 .out_ports_4_putCredits_cr_in(net_routers_router_core_1$out_ports_4_putCredits_cr_in),
					 .EN_in_ports_0_putRoutedFlit(net_routers_router_core_1$EN_in_ports_0_putRoutedFlit),
					 .EN_in_ports_0_getCredits(net_routers_router_core_1$EN_in_ports_0_getCredits),
					 .EN_in_ports_1_putRoutedFlit(net_routers_router_core_1$EN_in_ports_1_putRoutedFlit),
					 .EN_in_ports_1_getCredits(net_routers_router_core_1$EN_in_ports_1_getCredits),
					 .EN_in_ports_2_putRoutedFlit(net_routers_router_core_1$EN_in_ports_2_putRoutedFlit),
					 .EN_in_ports_2_getCredits(net_routers_router_core_1$EN_in_ports_2_getCredits),
					 .EN_in_ports_3_putRoutedFlit(net_routers_router_core_1$EN_in_ports_3_putRoutedFlit),
					 .EN_in_ports_3_getCredits(net_routers_router_core_1$EN_in_ports_3_getCredits),
					 .EN_in_ports_4_putRoutedFlit(net_routers_router_core_1$EN_in_ports_4_putRoutedFlit),
					 .EN_in_ports_4_getCredits(net_routers_router_core_1$EN_in_ports_4_getCredits),
					 .EN_out_ports_0_getFlit(net_routers_router_core_1$EN_out_ports_0_getFlit),
					 .EN_out_ports_0_putCredits(net_routers_router_core_1$EN_out_ports_0_putCredits),
					 .EN_out_ports_1_getFlit(net_routers_router_core_1$EN_out_ports_1_getFlit),
					 .EN_out_ports_1_putCredits(net_routers_router_core_1$EN_out_ports_1_putCredits),
					 .EN_out_ports_2_getFlit(net_routers_router_core_1$EN_out_ports_2_getFlit),
					 .EN_out_ports_2_putCredits(net_routers_router_core_1$EN_out_ports_2_putCredits),
					 .EN_out_ports_3_getFlit(net_routers_router_core_1$EN_out_ports_3_getFlit),
					 .EN_out_ports_3_putCredits(net_routers_router_core_1$EN_out_ports_3_putCredits),
					 .EN_out_ports_4_getFlit(net_routers_router_core_1$EN_out_ports_4_getFlit),
					 .EN_out_ports_4_putCredits(net_routers_router_core_1$EN_out_ports_4_putCredits),
					 .in_ports_0_getCredits(net_routers_router_core_1$in_ports_0_getCredits),
					 .in_ports_1_getCredits(net_routers_router_core_1$in_ports_1_getCredits),
					 .in_ports_2_getCredits(net_routers_router_core_1$in_ports_2_getCredits),
					 .in_ports_3_getCredits(net_routers_router_core_1$in_ports_3_getCredits),
					 .in_ports_4_getCredits(),
					 .out_ports_0_getFlit(net_routers_router_core_1$out_ports_0_getFlit),
					 .out_ports_1_getFlit(net_routers_router_core_1$out_ports_1_getFlit),
					 .out_ports_2_getFlit(),
					 .out_ports_3_getFlit(net_routers_router_core_1$out_ports_3_getFlit),
					 .out_ports_4_getFlit(net_routers_router_core_1$out_ports_4_getFlit));

  // submodule net_routers_router_core_2
  mkRouterCore net_routers_router_core_2(.CLK(CLK),
					 .RST_N(RST_N),
					 .in_ports_0_putRoutedFlit_flit_in(net_routers_router_core_2$in_ports_0_putRoutedFlit_flit_in),
					 .in_ports_1_putRoutedFlit_flit_in(net_routers_router_core_2$in_ports_1_putRoutedFlit_flit_in),
					 .in_ports_2_putRoutedFlit_flit_in(net_routers_router_core_2$in_ports_2_putRoutedFlit_flit_in),
					 .in_ports_3_putRoutedFlit_flit_in(net_routers_router_core_2$in_ports_3_putRoutedFlit_flit_in),
					 .in_ports_4_putRoutedFlit_flit_in(net_routers_router_core_2$in_ports_4_putRoutedFlit_flit_in),
					 .out_ports_0_putCredits_cr_in(net_routers_router_core_2$out_ports_0_putCredits_cr_in),
					 .out_ports_1_putCredits_cr_in(net_routers_router_core_2$out_ports_1_putCredits_cr_in),
					 .out_ports_2_putCredits_cr_in(net_routers_router_core_2$out_ports_2_putCredits_cr_in),
					 .out_ports_3_putCredits_cr_in(net_routers_router_core_2$out_ports_3_putCredits_cr_in),
					 .out_ports_4_putCredits_cr_in(net_routers_router_core_2$out_ports_4_putCredits_cr_in),
					 .EN_in_ports_0_putRoutedFlit(net_routers_router_core_2$EN_in_ports_0_putRoutedFlit),
					 .EN_in_ports_0_getCredits(net_routers_router_core_2$EN_in_ports_0_getCredits),
					 .EN_in_ports_1_putRoutedFlit(net_routers_router_core_2$EN_in_ports_1_putRoutedFlit),
					 .EN_in_ports_1_getCredits(net_routers_router_core_2$EN_in_ports_1_getCredits),
					 .EN_in_ports_2_putRoutedFlit(net_routers_router_core_2$EN_in_ports_2_putRoutedFlit),
					 .EN_in_ports_2_getCredits(net_routers_router_core_2$EN_in_ports_2_getCredits),
					 .EN_in_ports_3_putRoutedFlit(net_routers_router_core_2$EN_in_ports_3_putRoutedFlit),
					 .EN_in_ports_3_getCredits(net_routers_router_core_2$EN_in_ports_3_getCredits),
					 .EN_in_ports_4_putRoutedFlit(net_routers_router_core_2$EN_in_ports_4_putRoutedFlit),
					 .EN_in_ports_4_getCredits(net_routers_router_core_2$EN_in_ports_4_getCredits),
					 .EN_out_ports_0_getFlit(net_routers_router_core_2$EN_out_ports_0_getFlit),
					 .EN_out_ports_0_putCredits(net_routers_router_core_2$EN_out_ports_0_putCredits),
					 .EN_out_ports_1_getFlit(net_routers_router_core_2$EN_out_ports_1_getFlit),
					 .EN_out_ports_1_putCredits(net_routers_router_core_2$EN_out_ports_1_putCredits),
					 .EN_out_ports_2_getFlit(net_routers_router_core_2$EN_out_ports_2_getFlit),
					 .EN_out_ports_2_putCredits(net_routers_router_core_2$EN_out_ports_2_putCredits),
					 .EN_out_ports_3_getFlit(net_routers_router_core_2$EN_out_ports_3_getFlit),
					 .EN_out_ports_3_putCredits(net_routers_router_core_2$EN_out_ports_3_putCredits),
					 .EN_out_ports_4_getFlit(net_routers_router_core_2$EN_out_ports_4_getFlit),
					 .EN_out_ports_4_putCredits(net_routers_router_core_2$EN_out_ports_4_putCredits),
					 .in_ports_0_getCredits(net_routers_router_core_2$in_ports_0_getCredits),
					 .in_ports_1_getCredits(),
					 .in_ports_2_getCredits(net_routers_router_core_2$in_ports_2_getCredits),
					 .in_ports_3_getCredits(net_routers_router_core_2$in_ports_3_getCredits),
					 .in_ports_4_getCredits(),
					 .out_ports_0_getFlit(net_routers_router_core_2$out_ports_0_getFlit),
					 .out_ports_1_getFlit(net_routers_router_core_2$out_ports_1_getFlit),
					 .out_ports_2_getFlit(),
					 .out_ports_3_getFlit(),
					 .out_ports_4_getFlit(net_routers_router_core_2$out_ports_4_getFlit));



  // submodule net_routers_router_core_3
  mkRouterCore net_routers_router_core_3(.CLK(CLK),
					 .RST_N(RST_N),
					 .in_ports_0_putRoutedFlit_flit_in(net_routers_router_core_3$in_ports_0_putRoutedFlit_flit_in),
					 .in_ports_1_putRoutedFlit_flit_in(net_routers_router_core_3$in_ports_1_putRoutedFlit_flit_in),
					 .in_ports_2_putRoutedFlit_flit_in(net_routers_router_core_3$in_ports_2_putRoutedFlit_flit_in),
					 .in_ports_3_putRoutedFlit_flit_in(net_routers_router_core_3$in_ports_3_putRoutedFlit_flit_in),
					 .in_ports_4_putRoutedFlit_flit_in(net_routers_router_core_3$in_ports_4_putRoutedFlit_flit_in),
					 .out_ports_0_putCredits_cr_in(net_routers_router_core_3$out_ports_0_putCredits_cr_in),
					 .out_ports_1_putCredits_cr_in(net_routers_router_core_3$out_ports_1_putCredits_cr_in),
					 .out_ports_2_putCredits_cr_in(net_routers_router_core_3$out_ports_2_putCredits_cr_in),
					 .out_ports_3_putCredits_cr_in(net_routers_router_core_3$out_ports_3_putCredits_cr_in),
					 .out_ports_4_putCredits_cr_in(net_routers_router_core_3$out_ports_4_putCredits_cr_in),
					 .EN_in_ports_0_putRoutedFlit(net_routers_router_core_3$EN_in_ports_0_putRoutedFlit),
					 .EN_in_ports_0_getCredits(net_routers_router_core_3$EN_in_ports_0_getCredits),
					 .EN_in_ports_1_putRoutedFlit(net_routers_router_core_3$EN_in_ports_1_putRoutedFlit),
					 .EN_in_ports_1_getCredits(net_routers_router_core_3$EN_in_ports_1_getCredits),
					 .EN_in_ports_2_putRoutedFlit(net_routers_router_core_3$EN_in_ports_2_putRoutedFlit),
					 .EN_in_ports_2_getCredits(net_routers_router_core_3$EN_in_ports_2_getCredits),
					 .EN_in_ports_3_putRoutedFlit(net_routers_router_core_3$EN_in_ports_3_putRoutedFlit),
					 .EN_in_ports_3_getCredits(net_routers_router_core_3$EN_in_ports_3_getCredits),
					 .EN_in_ports_4_putRoutedFlit(net_routers_router_core_3$EN_in_ports_4_putRoutedFlit),
					 .EN_in_ports_4_getCredits(net_routers_router_core_3$EN_in_ports_4_getCredits),
					 .EN_out_ports_0_getFlit(net_routers_router_core_3$EN_out_ports_0_getFlit),
					 .EN_out_ports_0_putCredits(net_routers_router_core_3$EN_out_ports_0_putCredits),
					 .EN_out_ports_1_getFlit(net_routers_router_core_3$EN_out_ports_1_getFlit),
					 .EN_out_ports_1_putCredits(net_routers_router_core_3$EN_out_ports_1_putCredits),
					 .EN_out_ports_2_getFlit(net_routers_router_core_3$EN_out_ports_2_getFlit),
					 .EN_out_ports_2_putCredits(net_routers_router_core_3$EN_out_ports_2_putCredits),
					 .EN_out_ports_3_getFlit(net_routers_router_core_3$EN_out_ports_3_getFlit),
					 .EN_out_ports_3_putCredits(net_routers_router_core_3$EN_out_ports_3_putCredits),
					 .EN_out_ports_4_getFlit(net_routers_router_core_3$EN_out_ports_4_getFlit),
					 .EN_out_ports_4_putCredits(net_routers_router_core_3$EN_out_ports_4_putCredits),
					 .in_ports_0_getCredits(net_routers_router_core_3$in_ports_0_getCredits),
					 .in_ports_1_getCredits(net_routers_router_core_3$in_ports_1_getCredits),
					 .in_ports_2_getCredits(net_routers_router_core_3$in_ports_2_getCredits),
					 .in_ports_3_getCredits(),
					 .in_ports_4_getCredits(net_routers_router_core_3$in_ports_4_getCredits),
					 .out_ports_0_getFlit(net_routers_router_core_3$out_ports_0_getFlit),
					 .out_ports_1_getFlit(),
					 .out_ports_2_getFlit(net_routers_router_core_3$out_ports_2_getFlit),
					 .out_ports_3_getFlit(net_routers_router_core_3$out_ports_3_getFlit),
					 .out_ports_4_getFlit(net_routers_router_core_3$out_ports_4_getFlit));

  // submodule net_routers_router_core_4
  mkRouterCore net_routers_router_core_4(.CLK(CLK),
					 .RST_N(RST_N),
					 .in_ports_0_putRoutedFlit_flit_in(net_routers_router_core_4$in_ports_0_putRoutedFlit_flit_in),
					 .in_ports_1_putRoutedFlit_flit_in(net_routers_router_core_4$in_ports_1_putRoutedFlit_flit_in),
					 .in_ports_2_putRoutedFlit_flit_in(net_routers_router_core_4$in_ports_2_putRoutedFlit_flit_in),
					 .in_ports_3_putRoutedFlit_flit_in(net_routers_router_core_4$in_ports_3_putRoutedFlit_flit_in),
					 .in_ports_4_putRoutedFlit_flit_in(net_routers_router_core_4$in_ports_4_putRoutedFlit_flit_in),
					 .out_ports_0_putCredits_cr_in(net_routers_router_core_4$out_ports_0_putCredits_cr_in),
					 .out_ports_1_putCredits_cr_in(net_routers_router_core_4$out_ports_1_putCredits_cr_in),
					 .out_ports_2_putCredits_cr_in(net_routers_router_core_4$out_ports_2_putCredits_cr_in),
					 .out_ports_3_putCredits_cr_in(net_routers_router_core_4$out_ports_3_putCredits_cr_in),
					 .out_ports_4_putCredits_cr_in(net_routers_router_core_4$out_ports_4_putCredits_cr_in),
					 .EN_in_ports_0_putRoutedFlit(net_routers_router_core_4$EN_in_ports_0_putRoutedFlit),
					 .EN_in_ports_0_getCredits(net_routers_router_core_4$EN_in_ports_0_getCredits),
					 .EN_in_ports_1_putRoutedFlit(net_routers_router_core_4$EN_in_ports_1_putRoutedFlit),
					 .EN_in_ports_1_getCredits(net_routers_router_core_4$EN_in_ports_1_getCredits),
					 .EN_in_ports_2_putRoutedFlit(net_routers_router_core_4$EN_in_ports_2_putRoutedFlit),
					 .EN_in_ports_2_getCredits(net_routers_router_core_4$EN_in_ports_2_getCredits),
					 .EN_in_ports_3_putRoutedFlit(net_routers_router_core_4$EN_in_ports_3_putRoutedFlit),
					 .EN_in_ports_3_getCredits(net_routers_router_core_4$EN_in_ports_3_getCredits),
					 .EN_in_ports_4_putRoutedFlit(net_routers_router_core_4$EN_in_ports_4_putRoutedFlit),
					 .EN_in_ports_4_getCredits(net_routers_router_core_4$EN_in_ports_4_getCredits),
					 .EN_out_ports_0_getFlit(net_routers_router_core_4$EN_out_ports_0_getFlit),
					 .EN_out_ports_0_putCredits(net_routers_router_core_4$EN_out_ports_0_putCredits),
					 .EN_out_ports_1_getFlit(net_routers_router_core_4$EN_out_ports_1_getFlit),
					 .EN_out_ports_1_putCredits(net_routers_router_core_4$EN_out_ports_1_putCredits),
					 .EN_out_ports_2_getFlit(net_routers_router_core_4$EN_out_ports_2_getFlit),
					 .EN_out_ports_2_putCredits(net_routers_router_core_4$EN_out_ports_2_putCredits),
					 .EN_out_ports_3_getFlit(net_routers_router_core_4$EN_out_ports_3_getFlit),
					 .EN_out_ports_3_putCredits(net_routers_router_core_4$EN_out_ports_3_putCredits),
					 .EN_out_ports_4_getFlit(net_routers_router_core_4$EN_out_ports_4_getFlit),
					 .EN_out_ports_4_putCredits(net_routers_router_core_4$EN_out_ports_4_putCredits),
					 .in_ports_0_getCredits(net_routers_router_core_4$in_ports_0_getCredits),
					 .in_ports_1_getCredits(net_routers_router_core_4$in_ports_1_getCredits),
					 .in_ports_2_getCredits(net_routers_router_core_4$in_ports_2_getCredits),
					 .in_ports_3_getCredits(net_routers_router_core_4$in_ports_3_getCredits),
					 .in_ports_4_getCredits(net_routers_router_core_4$in_ports_4_getCredits),
					 .out_ports_0_getFlit(net_routers_router_core_4$out_ports_0_getFlit),
					 .out_ports_1_getFlit(net_routers_router_core_4$out_ports_1_getFlit),
					 .out_ports_2_getFlit(net_routers_router_core_4$out_ports_2_getFlit),
					 .out_ports_3_getFlit(net_routers_router_core_4$out_ports_3_getFlit),
					 .out_ports_4_getFlit(net_routers_router_core_4$out_ports_4_getFlit));

  // submodule net_routers_router_core_5
  mkRouterCore net_routers_router_core_5(.CLK(CLK),
					 .RST_N(RST_N),
					 .in_ports_0_putRoutedFlit_flit_in(net_routers_router_core_5$in_ports_0_putRoutedFlit_flit_in),
					 .in_ports_1_putRoutedFlit_flit_in(net_routers_router_core_5$in_ports_1_putRoutedFlit_flit_in),
					 .in_ports_2_putRoutedFlit_flit_in(net_routers_router_core_5$in_ports_2_putRoutedFlit_flit_in),
					 .in_ports_3_putRoutedFlit_flit_in(net_routers_router_core_5$in_ports_3_putRoutedFlit_flit_in),
					 .in_ports_4_putRoutedFlit_flit_in(net_routers_router_core_5$in_ports_4_putRoutedFlit_flit_in),
					 .out_ports_0_putCredits_cr_in(net_routers_router_core_5$out_ports_0_putCredits_cr_in),
					 .out_ports_1_putCredits_cr_in(net_routers_router_core_5$out_ports_1_putCredits_cr_in),
					 .out_ports_2_putCredits_cr_in(net_routers_router_core_5$out_ports_2_putCredits_cr_in),
					 .out_ports_3_putCredits_cr_in(net_routers_router_core_5$out_ports_3_putCredits_cr_in),
					 .out_ports_4_putCredits_cr_in(net_routers_router_core_5$out_ports_4_putCredits_cr_in),
					 .EN_in_ports_0_putRoutedFlit(net_routers_router_core_5$EN_in_ports_0_putRoutedFlit),
					 .EN_in_ports_0_getCredits(net_routers_router_core_5$EN_in_ports_0_getCredits),
					 .EN_in_ports_1_putRoutedFlit(net_routers_router_core_5$EN_in_ports_1_putRoutedFlit),
					 .EN_in_ports_1_getCredits(net_routers_router_core_5$EN_in_ports_1_getCredits),
					 .EN_in_ports_2_putRoutedFlit(net_routers_router_core_5$EN_in_ports_2_putRoutedFlit),
					 .EN_in_ports_2_getCredits(net_routers_router_core_5$EN_in_ports_2_getCredits),
					 .EN_in_ports_3_putRoutedFlit(net_routers_router_core_5$EN_in_ports_3_putRoutedFlit),
					 .EN_in_ports_3_getCredits(net_routers_router_core_5$EN_in_ports_3_getCredits),
					 .EN_in_ports_4_putRoutedFlit(net_routers_router_core_5$EN_in_ports_4_putRoutedFlit),
					 .EN_in_ports_4_getCredits(net_routers_router_core_5$EN_in_ports_4_getCredits),
					 .EN_out_ports_0_getFlit(net_routers_router_core_5$EN_out_ports_0_getFlit),
					 .EN_out_ports_0_putCredits(net_routers_router_core_5$EN_out_ports_0_putCredits),
					 .EN_out_ports_1_getFlit(net_routers_router_core_5$EN_out_ports_1_getFlit),
					 .EN_out_ports_1_putCredits(net_routers_router_core_5$EN_out_ports_1_putCredits),
					 .EN_out_ports_2_getFlit(net_routers_router_core_5$EN_out_ports_2_getFlit),
					 .EN_out_ports_2_putCredits(net_routers_router_core_5$EN_out_ports_2_putCredits),
					 .EN_out_ports_3_getFlit(net_routers_router_core_5$EN_out_ports_3_getFlit),
					 .EN_out_ports_3_putCredits(net_routers_router_core_5$EN_out_ports_3_putCredits),
					 .EN_out_ports_4_getFlit(net_routers_router_core_5$EN_out_ports_4_getFlit),
					 .EN_out_ports_4_putCredits(net_routers_router_core_5$EN_out_ports_4_putCredits),
					 .in_ports_0_getCredits(net_routers_router_core_5$in_ports_0_getCredits),
					 .in_ports_1_getCredits(),
					 .in_ports_2_getCredits(net_routers_router_core_5$in_ports_2_getCredits),
					 .in_ports_3_getCredits(net_routers_router_core_5$in_ports_3_getCredits),
					 .in_ports_4_getCredits(net_routers_router_core_5$in_ports_4_getCredits),
					 .out_ports_0_getFlit(net_routers_router_core_5$out_ports_0_getFlit),
					 .out_ports_1_getFlit(net_routers_router_core_5$out_ports_1_getFlit),
					 .out_ports_2_getFlit(net_routers_router_core_5$out_ports_2_getFlit),
					 .out_ports_3_getFlit(),
					 .out_ports_4_getFlit(net_routers_router_core_5$out_ports_4_getFlit));

  // submodule net_routers_router_core_6
  mkRouterCore net_routers_router_core_6(.CLK(CLK),
					 .RST_N(RST_N),
					 .in_ports_0_putRoutedFlit_flit_in(net_routers_router_core_6$in_ports_0_putRoutedFlit_flit_in),
					 .in_ports_1_putRoutedFlit_flit_in(net_routers_router_core_6$in_ports_1_putRoutedFlit_flit_in),
					 .in_ports_2_putRoutedFlit_flit_in(net_routers_router_core_6$in_ports_2_putRoutedFlit_flit_in),
					 .in_ports_3_putRoutedFlit_flit_in(net_routers_router_core_6$in_ports_3_putRoutedFlit_flit_in),
					 .in_ports_4_putRoutedFlit_flit_in(net_routers_router_core_6$in_ports_4_putRoutedFlit_flit_in),
					 .out_ports_0_putCredits_cr_in(net_routers_router_core_6$out_ports_0_putCredits_cr_in),
					 .out_ports_1_putCredits_cr_in(net_routers_router_core_6$out_ports_1_putCredits_cr_in),
					 .out_ports_2_putCredits_cr_in(net_routers_router_core_6$out_ports_2_putCredits_cr_in),
					 .out_ports_3_putCredits_cr_in(net_routers_router_core_6$out_ports_3_putCredits_cr_in),
					 .out_ports_4_putCredits_cr_in(net_routers_router_core_6$out_ports_4_putCredits_cr_in),
					 .EN_in_ports_0_putRoutedFlit(net_routers_router_core_6$EN_in_ports_0_putRoutedFlit),
					 .EN_in_ports_0_getCredits(net_routers_router_core_6$EN_in_ports_0_getCredits),
					 .EN_in_ports_1_putRoutedFlit(net_routers_router_core_6$EN_in_ports_1_putRoutedFlit),
					 .EN_in_ports_1_getCredits(net_routers_router_core_6$EN_in_ports_1_getCredits),
					 .EN_in_ports_2_putRoutedFlit(net_routers_router_core_6$EN_in_ports_2_putRoutedFlit),
					 .EN_in_ports_2_getCredits(net_routers_router_core_6$EN_in_ports_2_getCredits),
					 .EN_in_ports_3_putRoutedFlit(net_routers_router_core_6$EN_in_ports_3_putRoutedFlit),
					 .EN_in_ports_3_getCredits(net_routers_router_core_6$EN_in_ports_3_getCredits),
					 .EN_in_ports_4_putRoutedFlit(net_routers_router_core_6$EN_in_ports_4_putRoutedFlit),
					 .EN_in_ports_4_getCredits(net_routers_router_core_6$EN_in_ports_4_getCredits),
					 .EN_out_ports_0_getFlit(net_routers_router_core_6$EN_out_ports_0_getFlit),
					 .EN_out_ports_0_putCredits(net_routers_router_core_6$EN_out_ports_0_putCredits),
					 .EN_out_ports_1_getFlit(net_routers_router_core_6$EN_out_ports_1_getFlit),
					 .EN_out_ports_1_putCredits(net_routers_router_core_6$EN_out_ports_1_putCredits),
					 .EN_out_ports_2_getFlit(net_routers_router_core_6$EN_out_ports_2_getFlit),
					 .EN_out_ports_2_putCredits(net_routers_router_core_6$EN_out_ports_2_putCredits),
					 .EN_out_ports_3_getFlit(net_routers_router_core_6$EN_out_ports_3_getFlit),
					 .EN_out_ports_3_putCredits(net_routers_router_core_6$EN_out_ports_3_putCredits),
					 .EN_out_ports_4_getFlit(net_routers_router_core_6$EN_out_ports_4_getFlit),
					 .EN_out_ports_4_putCredits(net_routers_router_core_6$EN_out_ports_4_putCredits),
					 .in_ports_0_getCredits(net_routers_router_core_6$in_ports_0_getCredits),
					 .in_ports_1_getCredits(net_routers_router_core_6$in_ports_1_getCredits),
					 .in_ports_2_getCredits(),
					 .in_ports_3_getCredits(),
					 .in_ports_4_getCredits(net_routers_router_core_6$in_ports_4_getCredits),
					 .out_ports_0_getFlit(net_routers_router_core_6$out_ports_0_getFlit),
					 .out_ports_1_getFlit(),
					 .out_ports_2_getFlit(net_routers_router_core_6$out_ports_2_getFlit),
					 .out_ports_3_getFlit(net_routers_router_core_6$out_ports_3_getFlit),
					 .out_ports_4_getFlit());

  // submodule net_routers_router_core_7
  mkRouterCore net_routers_router_core_7(.CLK(CLK),
					 .RST_N(RST_N),
					 .in_ports_0_putRoutedFlit_flit_in(net_routers_router_core_7$in_ports_0_putRoutedFlit_flit_in),
					 .in_ports_1_putRoutedFlit_flit_in(net_routers_router_core_7$in_ports_1_putRoutedFlit_flit_in),
					 .in_ports_2_putRoutedFlit_flit_in(net_routers_router_core_7$in_ports_2_putRoutedFlit_flit_in),
					 .in_ports_3_putRoutedFlit_flit_in(net_routers_router_core_7$in_ports_3_putRoutedFlit_flit_in),
					 .in_ports_4_putRoutedFlit_flit_in(net_routers_router_core_7$in_ports_4_putRoutedFlit_flit_in),
					 .out_ports_0_putCredits_cr_in(net_routers_router_core_7$out_ports_0_putCredits_cr_in),
					 .out_ports_1_putCredits_cr_in(net_routers_router_core_7$out_ports_1_putCredits_cr_in),
					 .out_ports_2_putCredits_cr_in(net_routers_router_core_7$out_ports_2_putCredits_cr_in),
					 .out_ports_3_putCredits_cr_in(net_routers_router_core_7$out_ports_3_putCredits_cr_in),
					 .out_ports_4_putCredits_cr_in(net_routers_router_core_7$out_ports_4_putCredits_cr_in),
					 .EN_in_ports_0_putRoutedFlit(net_routers_router_core_7$EN_in_ports_0_putRoutedFlit),
					 .EN_in_ports_0_getCredits(net_routers_router_core_7$EN_in_ports_0_getCredits),
					 .EN_in_ports_1_putRoutedFlit(net_routers_router_core_7$EN_in_ports_1_putRoutedFlit),
					 .EN_in_ports_1_getCredits(net_routers_router_core_7$EN_in_ports_1_getCredits),
					 .EN_in_ports_2_putRoutedFlit(net_routers_router_core_7$EN_in_ports_2_putRoutedFlit),
					 .EN_in_ports_2_getCredits(net_routers_router_core_7$EN_in_ports_2_getCredits),
					 .EN_in_ports_3_putRoutedFlit(net_routers_router_core_7$EN_in_ports_3_putRoutedFlit),
					 .EN_in_ports_3_getCredits(net_routers_router_core_7$EN_in_ports_3_getCredits),
					 .EN_in_ports_4_putRoutedFlit(net_routers_router_core_7$EN_in_ports_4_putRoutedFlit),
					 .EN_in_ports_4_getCredits(net_routers_router_core_7$EN_in_ports_4_getCredits),
					 .EN_out_ports_0_getFlit(net_routers_router_core_7$EN_out_ports_0_getFlit),
					 .EN_out_ports_0_putCredits(net_routers_router_core_7$EN_out_ports_0_putCredits),
					 .EN_out_ports_1_getFlit(net_routers_router_core_7$EN_out_ports_1_getFlit),
					 .EN_out_ports_1_putCredits(net_routers_router_core_7$EN_out_ports_1_putCredits),
					 .EN_out_ports_2_getFlit(net_routers_router_core_7$EN_out_ports_2_getFlit),
					 .EN_out_ports_2_putCredits(net_routers_router_core_7$EN_out_ports_2_putCredits),
					 .EN_out_ports_3_getFlit(net_routers_router_core_7$EN_out_ports_3_getFlit),
					 .EN_out_ports_3_putCredits(net_routers_router_core_7$EN_out_ports_3_putCredits),
					 .EN_out_ports_4_getFlit(net_routers_router_core_7$EN_out_ports_4_getFlit),
					 .EN_out_ports_4_putCredits(net_routers_router_core_7$EN_out_ports_4_putCredits),
					 .in_ports_0_getCredits(net_routers_router_core_7$in_ports_0_getCredits),
					 .in_ports_1_getCredits(net_routers_router_core_7$in_ports_1_getCredits),
					 .in_ports_2_getCredits(),
					 .in_ports_3_getCredits(net_routers_router_core_7$in_ports_3_getCredits),
					 .in_ports_4_getCredits(net_routers_router_core_7$in_ports_4_getCredits),
					 .out_ports_0_getFlit(net_routers_router_core_7$out_ports_0_getFlit),
					 .out_ports_1_getFlit(net_routers_router_core_7$out_ports_1_getFlit),
					 .out_ports_2_getFlit(net_routers_router_core_7$out_ports_2_getFlit),
					 .out_ports_3_getFlit(net_routers_router_core_7$out_ports_3_getFlit),
					 .out_ports_4_getFlit());

  // submodule net_routers_router_core_8
  mkRouterCore net_routers_router_core_8(.CLK(CLK),
					 .RST_N(RST_N),
					 .in_ports_0_putRoutedFlit_flit_in(net_routers_router_core_8$in_ports_0_putRoutedFlit_flit_in),
					 .in_ports_1_putRoutedFlit_flit_in(net_routers_router_core_8$in_ports_1_putRoutedFlit_flit_in),
					 .in_ports_2_putRoutedFlit_flit_in(net_routers_router_core_8$in_ports_2_putRoutedFlit_flit_in),
					 .in_ports_3_putRoutedFlit_flit_in(net_routers_router_core_8$in_ports_3_putRoutedFlit_flit_in),
					 .in_ports_4_putRoutedFlit_flit_in(net_routers_router_core_8$in_ports_4_putRoutedFlit_flit_in),
					 .out_ports_0_putCredits_cr_in(net_routers_router_core_8$out_ports_0_putCredits_cr_in),
					 .out_ports_1_putCredits_cr_in(net_routers_router_core_8$out_ports_1_putCredits_cr_in),
					 .out_ports_2_putCredits_cr_in(net_routers_router_core_8$out_ports_2_putCredits_cr_in),
					 .out_ports_3_putCredits_cr_in(net_routers_router_core_8$out_ports_3_putCredits_cr_in),
					 .out_ports_4_putCredits_cr_in(net_routers_router_core_8$out_ports_4_putCredits_cr_in),
					 .EN_in_ports_0_putRoutedFlit(net_routers_router_core_8$EN_in_ports_0_putRoutedFlit),
					 .EN_in_ports_0_getCredits(net_routers_router_core_8$EN_in_ports_0_getCredits),
					 .EN_in_ports_1_putRoutedFlit(net_routers_router_core_8$EN_in_ports_1_putRoutedFlit),
					 .EN_in_ports_1_getCredits(net_routers_router_core_8$EN_in_ports_1_getCredits),
					 .EN_in_ports_2_putRoutedFlit(net_routers_router_core_8$EN_in_ports_2_putRoutedFlit),
					 .EN_in_ports_2_getCredits(net_routers_router_core_8$EN_in_ports_2_getCredits),
					 .EN_in_ports_3_putRoutedFlit(net_routers_router_core_8$EN_in_ports_3_putRoutedFlit),
					 .EN_in_ports_3_getCredits(net_routers_router_core_8$EN_in_ports_3_getCredits),
					 .EN_in_ports_4_putRoutedFlit(net_routers_router_core_8$EN_in_ports_4_putRoutedFlit),
					 .EN_in_ports_4_getCredits(net_routers_router_core_8$EN_in_ports_4_getCredits),
					 .EN_out_ports_0_getFlit(net_routers_router_core_8$EN_out_ports_0_getFlit),
					 .EN_out_ports_0_putCredits(net_routers_router_core_8$EN_out_ports_0_putCredits),
					 .EN_out_ports_1_getFlit(net_routers_router_core_8$EN_out_ports_1_getFlit),
					 .EN_out_ports_1_putCredits(net_routers_router_core_8$EN_out_ports_1_putCredits),
					 .EN_out_ports_2_getFlit(net_routers_router_core_8$EN_out_ports_2_getFlit),
					 .EN_out_ports_2_putCredits(net_routers_router_core_8$EN_out_ports_2_putCredits),
					 .EN_out_ports_3_getFlit(net_routers_router_core_8$EN_out_ports_3_getFlit),
					 .EN_out_ports_3_putCredits(net_routers_router_core_8$EN_out_ports_3_putCredits),
					 .EN_out_ports_4_getFlit(net_routers_router_core_8$EN_out_ports_4_getFlit),
					 .EN_out_ports_4_putCredits(net_routers_router_core_8$EN_out_ports_4_putCredits),
					 .in_ports_0_getCredits(net_routers_router_core_8$in_ports_0_getCredits),
					 .in_ports_1_getCredits(),
					 .in_ports_2_getCredits(),
					 .in_ports_3_getCredits(net_routers_router_core_8$in_ports_3_getCredits),
					 .in_ports_4_getCredits(net_routers_router_core_8$in_ports_4_getCredits),
					 .out_ports_0_getFlit(net_routers_router_core_8$out_ports_0_getFlit),
					 .out_ports_1_getFlit(net_routers_router_core_8$out_ports_1_getFlit),
					 .out_ports_2_getFlit(net_routers_router_core_8$out_ports_2_getFlit),
					 .out_ports_3_getFlit(),
					 .out_ports_4_getFlit());

     // submodule net_routers_router_core_21
  mkRouterCore net_routers_router_core_21(.CLK(CLK),
					 .RST_N(RST_N),
					 .in_ports_0_putRoutedFlit_flit_in(net_routers_router_core_2$in_ports_0_putRoutedFlit_flit_in),
					 .in_ports_1_putRoutedFlit_flit_in(net_routers_router_core_2$in_ports_1_putRoutedFlit_flit_in),
					 .in_ports_2_putRoutedFlit_flit_in(net_routers_router_core_2$in_ports_2_putRoutedFlit_flit_in),
					 .in_ports_3_putRoutedFlit_flit_in(net_routers_router_core_2$in_ports_3_putRoutedFlit_flit_in),
					 .in_ports_4_putRoutedFlit_flit_in(net_routers_router_core_2$in_ports_4_putRoutedFlit_flit_in),
					 .out_ports_0_putCredits_cr_in(net_routers_router_core_2$out_ports_0_putCredits_cr_in),
					 .out_ports_1_putCredits_cr_in(net_routers_router_core_2$out_ports_1_putCredits_cr_in),
					 .out_ports_2_putCredits_cr_in(net_routers_router_core_2$out_ports_2_putCredits_cr_in),
					 .out_ports_3_putCredits_cr_in(net_routers_router_core_2$out_ports_3_putCredits_cr_in),
					 .out_ports_4_putCredits_cr_in(net_routers_router_core_2$out_ports_4_putCredits_cr_in),
					 .EN_in_ports_0_putRoutedFlit(net_routers_router_core_2$EN_in_ports_0_putRoutedFlit),
					 .EN_in_ports_0_getCredits(net_routers_router_core_2$EN_in_ports_0_getCredits),
					 .EN_in_ports_1_putRoutedFlit(net_routers_router_core_2$EN_in_ports_1_putRoutedFlit),
					 .EN_in_ports_1_getCredits(net_routers_router_core_2$EN_in_ports_1_getCredits),
					 .EN_in_ports_2_putRoutedFlit(net_routers_router_core_2$EN_in_ports_2_putRoutedFlit),
					 .EN_in_ports_2_getCredits(net_routers_router_core_2$EN_in_ports_2_getCredits),
					 .EN_in_ports_3_putRoutedFlit(net_routers_router_core_2$EN_in_ports_3_putRoutedFlit),
					 .EN_in_ports_3_getCredits(net_routers_router_core_2$EN_in_ports_3_getCredits),
					 .EN_in_ports_4_putRoutedFlit(net_routers_router_core_2$EN_in_ports_4_putRoutedFlit),
					 .EN_in_ports_4_getCredits(net_routers_router_core_2$EN_in_ports_4_getCredits),
					 .EN_out_ports_0_getFlit(net_routers_router_core_2$EN_out_ports_0_getFlit),
					 .EN_out_ports_0_putCredits(net_routers_router_core_2$EN_out_ports_0_putCredits),
					 .EN_out_ports_1_getFlit(net_routers_router_core_2$EN_out_ports_1_getFlit),
					 .EN_out_ports_1_putCredits(net_routers_router_core_2$EN_out_ports_1_putCredits),
					 .EN_out_ports_2_getFlit(net_routers_router_core_2$EN_out_ports_2_getFlit),
					 .EN_out_ports_2_putCredits(net_routers_router_core_2$EN_out_ports_2_putCredits),
					 .EN_out_ports_3_getFlit(net_routers_router_core_2$EN_out_ports_3_getFlit),
					 .EN_out_ports_3_putCredits(net_routers_router_core_2$EN_out_ports_3_putCredits),
					 .EN_out_ports_4_getFlit(net_routers_router_core_2$EN_out_ports_4_getFlit),
					 .EN_out_ports_4_putCredits(net_routers_router_core_2$EN_out_ports_4_putCredits),
					 .in_ports_0_getCredits(net_routers_router_core_2$in_ports_0_getCredits),
					 .in_ports_1_getCredits(),
					 .in_ports_2_getCredits(net_routers_router_core_2$in_ports_2_getCredits),
					 .in_ports_3_getCredits(net_routers_router_core_2$in_ports_3_getCredits),
					 .in_ports_4_getCredits(),
					 .out_ports_0_getFlit(temp_out1),
					 .out_ports_1_getFlit(net_routers_router_core_2$out_ports_1_getFlit),
					 .out_ports_2_getFlit(),
					 .out_ports_3_getFlit(),
					 .out_ports_4_getFlit(net_routers_router_core_2$out_ports_4_getFlit));

     // submodule net_routers_router_core_22
  mkRouterCore net_routers_router_core_22(.CLK(CLK),
					 .RST_N(RST_N),
					 .in_ports_0_putRoutedFlit_flit_in(net_routers_router_core_2$in_ports_0_putRoutedFlit_flit_in),
					 .in_ports_1_putRoutedFlit_flit_in(net_routers_router_core_2$in_ports_1_putRoutedFlit_flit_in),
					 .in_ports_2_putRoutedFlit_flit_in(net_routers_router_core_2$in_ports_2_putRoutedFlit_flit_in),
					 .in_ports_3_putRoutedFlit_flit_in(net_routers_router_core_2$in_ports_3_putRoutedFlit_flit_in),
					 .in_ports_4_putRoutedFlit_flit_in(net_routers_router_core_2$in_ports_4_putRoutedFlit_flit_in),
					 .out_ports_0_putCredits_cr_in(net_routers_router_core_2$out_ports_0_putCredits_cr_in),
					 .out_ports_1_putCredits_cr_in(net_routers_router_core_2$out_ports_1_putCredits_cr_in),
					 .out_ports_2_putCredits_cr_in(net_routers_router_core_2$out_ports_2_putCredits_cr_in),
					 .out_ports_3_putCredits_cr_in(net_routers_router_core_2$out_ports_3_putCredits_cr_in),
					 .out_ports_4_putCredits_cr_in(net_routers_router_core_2$out_ports_4_putCredits_cr_in),
					 .EN_in_ports_0_putRoutedFlit(net_routers_router_core_2$EN_in_ports_0_putRoutedFlit),
					 .EN_in_ports_0_getCredits(net_routers_router_core_2$EN_in_ports_0_getCredits),
					 .EN_in_ports_1_putRoutedFlit(net_routers_router_core_2$EN_in_ports_1_putRoutedFlit),
					 .EN_in_ports_1_getCredits(net_routers_router_core_2$EN_in_ports_1_getCredits),
					 .EN_in_ports_2_putRoutedFlit(net_routers_router_core_2$EN_in_ports_2_putRoutedFlit),
					 .EN_in_ports_2_getCredits(net_routers_router_core_2$EN_in_ports_2_getCredits),
					 .EN_in_ports_3_putRoutedFlit(net_routers_router_core_2$EN_in_ports_3_putRoutedFlit),
					 .EN_in_ports_3_getCredits(net_routers_router_core_2$EN_in_ports_3_getCredits),
					 .EN_in_ports_4_putRoutedFlit(net_routers_router_core_2$EN_in_ports_4_putRoutedFlit),
					 .EN_in_ports_4_getCredits(net_routers_router_core_2$EN_in_ports_4_getCredits),
					 .EN_out_ports_0_getFlit(net_routers_router_core_2$EN_out_ports_0_getFlit),
					 .EN_out_ports_0_putCredits(net_routers_router_core_2$EN_out_ports_0_putCredits),
					 .EN_out_ports_1_getFlit(net_routers_router_core_2$EN_out_ports_1_getFlit),
					 .EN_out_ports_1_putCredits(net_routers_router_core_2$EN_out_ports_1_putCredits),
					 .EN_out_ports_2_getFlit(net_routers_router_core_2$EN_out_ports_2_getFlit),
					 .EN_out_ports_2_putCredits(net_routers_router_core_2$EN_out_ports_2_putCredits),
					 .EN_out_ports_3_getFlit(net_routers_router_core_2$EN_out_ports_3_getFlit),
					 .EN_out_ports_3_putCredits(net_routers_router_core_2$EN_out_ports_3_putCredits),
					 .EN_out_ports_4_getFlit(net_routers_router_core_2$EN_out_ports_4_getFlit),
					 .EN_out_ports_4_putCredits(net_routers_router_core_2$EN_out_ports_4_putCredits),
					 .in_ports_0_getCredits(net_routers_router_core_2$in_ports_0_getCredits),
					 .in_ports_1_getCredits(),
					 .in_ports_2_getCredits(net_routers_router_core_2$in_ports_2_getCredits),
					 .in_ports_3_getCredits(net_routers_router_core_2$in_ports_3_getCredits),
					 .in_ports_4_getCredits(),
					 .out_ports_0_getFlit(temp_out0),
					 .out_ports_1_getFlit(net_routers_router_core_2$out_ports_1_getFlit),
					 .out_ports_2_getFlit(),
					 .out_ports_3_getFlit(),
					 .out_ports_4_getFlit(net_routers_router_core_2$out_ports_4_getFlit));

 	always @(posedge CLK) begin
    		if (select == 1) begin
			out1 <= temp_out1;
			out0 <= 0;
		       
		end
    		if (select == 0) begin
			out0 <= temp_out0;
			out1 <= 0;
			
		end
	end
  // submodule net_routers_routeTable_1_rt_ifc_banks_banks_rf
  assign net_routers_routeTable_1_rt_ifc_banks_banks_rf$ADDR_1 =
	     send_ports_1_putFlit_flit_in[68:65] ;
  assign net_routers_routeTable_1_rt_ifc_banks_banks_rf$ADDR_IN = 4'h0 ;
  assign net_routers_routeTable_1_rt_ifc_banks_banks_rf$D_IN = 3'h0 ;
  assign net_routers_routeTable_1_rt_ifc_banks_banks_rf$WE = 1'b0 ;

  // submodule net_routers_routeTable_1_rt_ifc_banks_banks_rf_1
  assign net_routers_routeTable_1_rt_ifc_banks_banks_rf_1$ADDR_1 =
	     net_routers_router_core_2$out_ports_1_getFlit[68:65] ;
  assign net_routers_routeTable_1_rt_ifc_banks_banks_rf_1$ADDR_IN = 4'h0 ;
  assign net_routers_routeTable_1_rt_ifc_banks_banks_rf_1$D_IN = 3'h0 ;
  assign net_routers_routeTable_1_rt_ifc_banks_banks_rf_1$WE = 1'b0 ;

  // submodule net_routers_routeTable_1_rt_ifc_banks_banks_rf_2
  assign net_routers_routeTable_1_rt_ifc_banks_banks_rf_2$ADDR_1 =
	     net_routers_router_core_4$out_ports_2_getFlit[68:65] ;
  assign net_routers_routeTable_1_rt_ifc_banks_banks_rf_2$ADDR_IN = 4'h0 ;
  assign net_routers_routeTable_1_rt_ifc_banks_banks_rf_2$D_IN = 3'h0 ;
  assign net_routers_routeTable_1_rt_ifc_banks_banks_rf_2$WE = 1'b0 ;

  // submodule net_routers_routeTable_1_rt_ifc_banks_banks_rf_3
  assign net_routers_routeTable_1_rt_ifc_banks_banks_rf_3$ADDR_1 =
	     net_routers_router_core$out_ports_3_getFlit[68:65] ;
  assign net_routers_routeTable_1_rt_ifc_banks_banks_rf_3$ADDR_IN = 4'h0 ;
  assign net_routers_routeTable_1_rt_ifc_banks_banks_rf_3$D_IN = 3'h0 ;
  assign net_routers_routeTable_1_rt_ifc_banks_banks_rf_3$WE = 1'b0 ;

  // submodule net_routers_routeTable_1_rt_ifc_banks_banks_rf_4
  assign net_routers_routeTable_1_rt_ifc_banks_banks_rf_4$ADDR_1 = 4'h0 ;
  assign net_routers_routeTable_1_rt_ifc_banks_banks_rf_4$ADDR_IN = 4'h0 ;
  assign net_routers_routeTable_1_rt_ifc_banks_banks_rf_4$D_IN = 3'h0 ;
  assign net_routers_routeTable_1_rt_ifc_banks_banks_rf_4$WE = 1'b0 ;

  // submodule net_routers_routeTable_2_rt_ifc_banks_banks_rf
  assign net_routers_routeTable_2_rt_ifc_banks_banks_rf$ADDR_1 =
	     send_ports_2_putFlit_flit_in[68:65] ;
  assign net_routers_routeTable_2_rt_ifc_banks_banks_rf$ADDR_IN = 4'h0 ;
  assign net_routers_routeTable_2_rt_ifc_banks_banks_rf$D_IN = 3'h0 ;
  assign net_routers_routeTable_2_rt_ifc_banks_banks_rf$WE = 1'b0 ;

  // submodule net_routers_routeTable_2_rt_ifc_banks_banks_rf_1
  assign net_routers_routeTable_2_rt_ifc_banks_banks_rf_1$ADDR_1 = 4'h0 ;
  assign net_routers_routeTable_2_rt_ifc_banks_banks_rf_1$ADDR_IN = 4'h0 ;
  assign net_routers_routeTable_2_rt_ifc_banks_banks_rf_1$D_IN = 3'h0 ;
  assign net_routers_routeTable_2_rt_ifc_banks_banks_rf_1$WE = 1'b0 ;

  // submodule net_routers_routeTable_2_rt_ifc_banks_banks_rf_2
  assign net_routers_routeTable_2_rt_ifc_banks_banks_rf_2$ADDR_1 =
	     net_routers_router_core_5$out_ports_2_getFlit[68:65] ;
  assign net_routers_routeTable_2_rt_ifc_banks_banks_rf_2$ADDR_IN = 4'h0 ;
  assign net_routers_routeTable_2_rt_ifc_banks_banks_rf_2$D_IN = 3'h0 ;
  assign net_routers_routeTable_2_rt_ifc_banks_banks_rf_2$WE = 1'b0 ;

  // submodule net_routers_routeTable_2_rt_ifc_banks_banks_rf_3
  assign net_routers_routeTable_2_rt_ifc_banks_banks_rf_3$ADDR_1 =
	     net_routers_router_core_1$out_ports_3_getFlit[68:65] ;
  assign net_routers_routeTable_2_rt_ifc_banks_banks_rf_3$ADDR_IN = 4'h0 ;
  assign net_routers_routeTable_2_rt_ifc_banks_banks_rf_3$D_IN = 3'h0 ;
  assign net_routers_routeTable_2_rt_ifc_banks_banks_rf_3$WE = 1'b0 ;

  // submodule net_routers_routeTable_2_rt_ifc_banks_banks_rf_4
  assign net_routers_routeTable_2_rt_ifc_banks_banks_rf_4$ADDR_1 = 4'h0 ;
  assign net_routers_routeTable_2_rt_ifc_banks_banks_rf_4$ADDR_IN = 4'h0 ;
  assign net_routers_routeTable_2_rt_ifc_banks_banks_rf_4$D_IN = 3'h0 ;
  assign net_routers_routeTable_2_rt_ifc_banks_banks_rf_4$WE = 1'b0 ;

  // submodule net_routers_routeTable_3_rt_ifc_banks_banks_rf
  assign net_routers_routeTable_3_rt_ifc_banks_banks_rf$ADDR_1 =
	     send_ports_3_putFlit_flit_in[68:65] ;
  assign net_routers_routeTable_3_rt_ifc_banks_banks_rf$ADDR_IN = 4'h0 ;
  assign net_routers_routeTable_3_rt_ifc_banks_banks_rf$D_IN = 3'h0 ;
  assign net_routers_routeTable_3_rt_ifc_banks_banks_rf$WE = 1'b0 ;

  // submodule net_routers_routeTable_3_rt_ifc_banks_banks_rf_1
  assign net_routers_routeTable_3_rt_ifc_banks_banks_rf_1$ADDR_1 =
	     net_routers_router_core_4$out_ports_1_getFlit[68:65] ;
  assign net_routers_routeTable_3_rt_ifc_banks_banks_rf_1$ADDR_IN = 4'h0 ;
  assign net_routers_routeTable_3_rt_ifc_banks_banks_rf_1$D_IN = 3'h0 ;
  assign net_routers_routeTable_3_rt_ifc_banks_banks_rf_1$WE = 1'b0 ;

  // submodule net_routers_routeTable_3_rt_ifc_banks_banks_rf_2
  assign net_routers_routeTable_3_rt_ifc_banks_banks_rf_2$ADDR_1 =
	     net_routers_router_core_6$out_ports_2_getFlit[68:65] ;
  assign net_routers_routeTable_3_rt_ifc_banks_banks_rf_2$ADDR_IN = 4'h0 ;
  assign net_routers_routeTable_3_rt_ifc_banks_banks_rf_2$D_IN = 3'h0 ;
  assign net_routers_routeTable_3_rt_ifc_banks_banks_rf_2$WE = 1'b0 ;

  // submodule net_routers_routeTable_3_rt_ifc_banks_banks_rf_3
  assign net_routers_routeTable_3_rt_ifc_banks_banks_rf_3$ADDR_1 = 4'h0 ;
  assign net_routers_routeTable_3_rt_ifc_banks_banks_rf_3$ADDR_IN = 4'h0 ;
  assign net_routers_routeTable_3_rt_ifc_banks_banks_rf_3$D_IN = 3'h0 ;
  assign net_routers_routeTable_3_rt_ifc_banks_banks_rf_3$WE = 1'b0 ;

  // submodule net_routers_routeTable_3_rt_ifc_banks_banks_rf_4
  assign net_routers_routeTable_3_rt_ifc_banks_banks_rf_4$ADDR_1 =
	     net_routers_router_core$out_ports_4_getFlit[68:65] ;
  assign net_routers_routeTable_3_rt_ifc_banks_banks_rf_4$ADDR_IN = 4'h0 ;
  assign net_routers_routeTable_3_rt_ifc_banks_banks_rf_4$D_IN = 3'h0 ;
  assign net_routers_routeTable_3_rt_ifc_banks_banks_rf_4$WE = 1'b0 ;

  // submodule net_routers_routeTable_4_rt_ifc_banks_banks_rf
  assign net_routers_routeTable_4_rt_ifc_banks_banks_rf$ADDR_1 =
	     send_ports_4_putFlit_flit_in[68:65] ;
  assign net_routers_routeTable_4_rt_ifc_banks_banks_rf$ADDR_IN = 4'h0 ;
  assign net_routers_routeTable_4_rt_ifc_banks_banks_rf$D_IN = 3'h0 ;
  assign net_routers_routeTable_4_rt_ifc_banks_banks_rf$WE = 1'b0 ;

  // submodule net_routers_routeTable_4_rt_ifc_banks_banks_rf_1
  assign net_routers_routeTable_4_rt_ifc_banks_banks_rf_1$ADDR_1 =
	     net_routers_router_core_5$out_ports_1_getFlit[68:65] ;
  assign net_routers_routeTable_4_rt_ifc_banks_banks_rf_1$ADDR_IN = 4'h0 ;
  assign net_routers_routeTable_4_rt_ifc_banks_banks_rf_1$D_IN = 3'h0 ;
  assign net_routers_routeTable_4_rt_ifc_banks_banks_rf_1$WE = 1'b0 ;

  // submodule net_routers_routeTable_4_rt_ifc_banks_banks_rf_2
  assign net_routers_routeTable_4_rt_ifc_banks_banks_rf_2$ADDR_1 =
	     net_routers_router_core_7$out_ports_2_getFlit[68:65] ;
  assign net_routers_routeTable_4_rt_ifc_banks_banks_rf_2$ADDR_IN = 4'h0 ;
  assign net_routers_routeTable_4_rt_ifc_banks_banks_rf_2$D_IN = 3'h0 ;
  assign net_routers_routeTable_4_rt_ifc_banks_banks_rf_2$WE = 1'b0 ;

  // submodule net_routers_routeTable_4_rt_ifc_banks_banks_rf_3
  assign net_routers_routeTable_4_rt_ifc_banks_banks_rf_3$ADDR_1 =
	     net_routers_router_core_3$out_ports_3_getFlit[68:65] ;
  assign net_routers_routeTable_4_rt_ifc_banks_banks_rf_3$ADDR_IN = 4'h0 ;
  assign net_routers_routeTable_4_rt_ifc_banks_banks_rf_3$D_IN = 3'h0 ;
  assign net_routers_routeTable_4_rt_ifc_banks_banks_rf_3$WE = 1'b0 ;

  // submodule net_routers_routeTable_4_rt_ifc_banks_banks_rf_4
  assign net_routers_routeTable_4_rt_ifc_banks_banks_rf_4$ADDR_1 =
	     net_routers_router_core_1$out_ports_4_getFlit[68:65] ;
  assign net_routers_routeTable_4_rt_ifc_banks_banks_rf_4$ADDR_IN = 4'h0 ;
  assign net_routers_routeTable_4_rt_ifc_banks_banks_rf_4$D_IN = 3'h0 ;
  assign net_routers_routeTable_4_rt_ifc_banks_banks_rf_4$WE = 1'b0 ;

  // submodule net_routers_routeTable_5_rt_ifc_banks_banks_rf
  assign net_routers_routeTable_5_rt_ifc_banks_banks_rf$ADDR_1 =
	     send_ports_5_putFlit_flit_in[68:65] ;
  assign net_routers_routeTable_5_rt_ifc_banks_banks_rf$ADDR_IN = 4'h0 ;
  assign net_routers_routeTable_5_rt_ifc_banks_banks_rf$D_IN = 3'h0 ;
  assign net_routers_routeTable_5_rt_ifc_banks_banks_rf$WE = 1'b0 ;

  // submodule net_routers_routeTable_5_rt_ifc_banks_banks_rf_1
  assign net_routers_routeTable_5_rt_ifc_banks_banks_rf_1$ADDR_1 = 4'h0 ;
  assign net_routers_routeTable_5_rt_ifc_banks_banks_rf_1$ADDR_IN = 4'h0 ;
  assign net_routers_routeTable_5_rt_ifc_banks_banks_rf_1$D_IN = 3'h0 ;
  assign net_routers_routeTable_5_rt_ifc_banks_banks_rf_1$WE = 1'b0 ;

  // submodule net_routers_routeTable_5_rt_ifc_banks_banks_rf_2
  assign net_routers_routeTable_5_rt_ifc_banks_banks_rf_2$ADDR_1 =
	     net_routers_router_core_8$out_ports_2_getFlit[68:65] ;
  assign net_routers_routeTable_5_rt_ifc_banks_banks_rf_2$ADDR_IN = 4'h0 ;
  assign net_routers_routeTable_5_rt_ifc_banks_banks_rf_2$D_IN = 3'h0 ;
  assign net_routers_routeTable_5_rt_ifc_banks_banks_rf_2$WE = 1'b0 ;

  // submodule net_routers_routeTable_5_rt_ifc_banks_banks_rf_3
  assign net_routers_routeTable_5_rt_ifc_banks_banks_rf_3$ADDR_1 =
	     net_routers_router_core_4$out_ports_3_getFlit[68:65] ;
  assign net_routers_routeTable_5_rt_ifc_banks_banks_rf_3$ADDR_IN = 4'h0 ;
  assign net_routers_routeTable_5_rt_ifc_banks_banks_rf_3$D_IN = 3'h0 ;
  assign net_routers_routeTable_5_rt_ifc_banks_banks_rf_3$WE = 1'b0 ;

  // submodule net_routers_routeTable_5_rt_ifc_banks_banks_rf_4
  assign net_routers_routeTable_5_rt_ifc_banks_banks_rf_4$ADDR_1 =
	     net_routers_router_core_2$out_ports_4_getFlit[68:65] ;
  assign net_routers_routeTable_5_rt_ifc_banks_banks_rf_4$ADDR_IN = 4'h0 ;
  assign net_routers_routeTable_5_rt_ifc_banks_banks_rf_4$D_IN = 3'h0 ;
  assign net_routers_routeTable_5_rt_ifc_banks_banks_rf_4$WE = 1'b0 ;

  // submodule net_routers_routeTable_6_rt_ifc_banks_banks_rf
  assign net_routers_routeTable_6_rt_ifc_banks_banks_rf$ADDR_1 =
	     send_ports_6_putFlit_flit_in[68:65] ;
  assign net_routers_routeTable_6_rt_ifc_banks_banks_rf$ADDR_IN = 4'h0 ;
  assign net_routers_routeTable_6_rt_ifc_banks_banks_rf$D_IN = 3'h0 ;
  assign net_routers_routeTable_6_rt_ifc_banks_banks_rf$WE = 1'b0 ;

  // submodule net_routers_routeTable_6_rt_ifc_banks_banks_rf_1
  assign net_routers_routeTable_6_rt_ifc_banks_banks_rf_1$ADDR_1 =
	     net_routers_router_core_7$out_ports_1_getFlit[68:65] ;
  assign net_routers_routeTable_6_rt_ifc_banks_banks_rf_1$ADDR_IN = 4'h0 ;
  assign net_routers_routeTable_6_rt_ifc_banks_banks_rf_1$D_IN = 3'h0 ;
  assign net_routers_routeTable_6_rt_ifc_banks_banks_rf_1$WE = 1'b0 ;

  // submodule net_routers_routeTable_6_rt_ifc_banks_banks_rf_2
  assign net_routers_routeTable_6_rt_ifc_banks_banks_rf_2$ADDR_1 = 4'h0 ;
  assign net_routers_routeTable_6_rt_ifc_banks_banks_rf_2$ADDR_IN = 4'h0 ;
  assign net_routers_routeTable_6_rt_ifc_banks_banks_rf_2$D_IN = 3'h0 ;
  assign net_routers_routeTable_6_rt_ifc_banks_banks_rf_2$WE = 1'b0 ;

  // submodule net_routers_routeTable_6_rt_ifc_banks_banks_rf_3
  assign net_routers_routeTable_6_rt_ifc_banks_banks_rf_3$ADDR_1 = 4'h0 ;
  assign net_routers_routeTable_6_rt_ifc_banks_banks_rf_3$ADDR_IN = 4'h0 ;
  assign net_routers_routeTable_6_rt_ifc_banks_banks_rf_3$D_IN = 3'h0 ;
  assign net_routers_routeTable_6_rt_ifc_banks_banks_rf_3$WE = 1'b0 ;

  // submodule net_routers_routeTable_6_rt_ifc_banks_banks_rf_4
  assign net_routers_routeTable_6_rt_ifc_banks_banks_rf_4$ADDR_1 =
	     net_routers_router_core_3$out_ports_4_getFlit[68:65] ;
  assign net_routers_routeTable_6_rt_ifc_banks_banks_rf_4$ADDR_IN = 4'h0 ;
  assign net_routers_routeTable_6_rt_ifc_banks_banks_rf_4$D_IN = 3'h0 ;
  assign net_routers_routeTable_6_rt_ifc_banks_banks_rf_4$WE = 1'b0 ;

  // submodule net_routers_routeTable_7_rt_ifc_banks_banks_rf
  assign net_routers_routeTable_7_rt_ifc_banks_banks_rf$ADDR_1 =
	     send_ports_7_putFlit_flit_in[68:65] ;
  assign net_routers_routeTable_7_rt_ifc_banks_banks_rf$ADDR_IN = 4'h0 ;
  assign net_routers_routeTable_7_rt_ifc_banks_banks_rf$D_IN = 3'h0 ;
  assign net_routers_routeTable_7_rt_ifc_banks_banks_rf$WE = 1'b0 ;

  // submodule net_routers_routeTable_7_rt_ifc_banks_banks_rf_1
  assign net_routers_routeTable_7_rt_ifc_banks_banks_rf_1$ADDR_1 =
	     net_routers_router_core_8$out_ports_1_getFlit[68:65] ;
  assign net_routers_routeTable_7_rt_ifc_banks_banks_rf_1$ADDR_IN = 4'h0 ;
  assign net_routers_routeTable_7_rt_ifc_banks_banks_rf_1$D_IN = 3'h0 ;
  assign net_routers_routeTable_7_rt_ifc_banks_banks_rf_1$WE = 1'b0 ;

  // submodule net_routers_routeTable_7_rt_ifc_banks_banks_rf_2
  assign net_routers_routeTable_7_rt_ifc_banks_banks_rf_2$ADDR_1 = 4'h0 ;
  assign net_routers_routeTable_7_rt_ifc_banks_banks_rf_2$ADDR_IN = 4'h0 ;
  assign net_routers_routeTable_7_rt_ifc_banks_banks_rf_2$D_IN = 3'h0 ;
  assign net_routers_routeTable_7_rt_ifc_banks_banks_rf_2$WE = 1'b0 ;

  // submodule net_routers_routeTable_7_rt_ifc_banks_banks_rf_3
  assign net_routers_routeTable_7_rt_ifc_banks_banks_rf_3$ADDR_1 =
	     net_routers_router_core_6$out_ports_3_getFlit[68:65] ;
  assign net_routers_routeTable_7_rt_ifc_banks_banks_rf_3$ADDR_IN = 4'h0 ;
  assign net_routers_routeTable_7_rt_ifc_banks_banks_rf_3$D_IN = 3'h0 ;
  assign net_routers_routeTable_7_rt_ifc_banks_banks_rf_3$WE = 1'b0 ;

  // submodule net_routers_routeTable_7_rt_ifc_banks_banks_rf_4
  assign net_routers_routeTable_7_rt_ifc_banks_banks_rf_4$ADDR_1 =
	     net_routers_router_core_4$out_ports_4_getFlit[68:65] ;
  assign net_routers_routeTable_7_rt_ifc_banks_banks_rf_4$ADDR_IN = 4'h0 ;
  assign net_routers_routeTable_7_rt_ifc_banks_banks_rf_4$D_IN = 3'h0 ;
  assign net_routers_routeTable_7_rt_ifc_banks_banks_rf_4$WE = 1'b0 ;

  // submodule net_routers_routeTable_8_rt_ifc_banks_banks_rf
  assign net_routers_routeTable_8_rt_ifc_banks_banks_rf$ADDR_1 =
	     send_ports_8_putFlit_flit_in[68:65] ;
  assign net_routers_routeTable_8_rt_ifc_banks_banks_rf$ADDR_IN = 4'h0 ;
  assign net_routers_routeTable_8_rt_ifc_banks_banks_rf$D_IN = 3'h0 ;
  assign net_routers_routeTable_8_rt_ifc_banks_banks_rf$WE = 1'b0 ;

  // submodule net_routers_routeTable_8_rt_ifc_banks_banks_rf_1
  assign net_routers_routeTable_8_rt_ifc_banks_banks_rf_1$ADDR_1 = 4'h0 ;
  assign net_routers_routeTable_8_rt_ifc_banks_banks_rf_1$ADDR_IN = 4'h0 ;
  assign net_routers_routeTable_8_rt_ifc_banks_banks_rf_1$D_IN = 3'h0 ;
  assign net_routers_routeTable_8_rt_ifc_banks_banks_rf_1$WE = 1'b0 ;

  // submodule net_routers_routeTable_8_rt_ifc_banks_banks_rf_2
  assign net_routers_routeTable_8_rt_ifc_banks_banks_rf_2$ADDR_1 = 4'h0 ;
  assign net_routers_routeTable_8_rt_ifc_banks_banks_rf_2$ADDR_IN = 4'h0 ;
  assign net_routers_routeTable_8_rt_ifc_banks_banks_rf_2$D_IN = 3'h0 ;
  assign net_routers_routeTable_8_rt_ifc_banks_banks_rf_2$WE = 1'b0 ;

  // submodule net_routers_routeTable_8_rt_ifc_banks_banks_rf_3
  assign net_routers_routeTable_8_rt_ifc_banks_banks_rf_3$ADDR_1 =
	     net_routers_router_core_7$out_ports_3_getFlit[68:65] ;
  assign net_routers_routeTable_8_rt_ifc_banks_banks_rf_3$ADDR_IN = 4'h0 ;
  assign net_routers_routeTable_8_rt_ifc_banks_banks_rf_3$D_IN = 3'h0 ;
  assign net_routers_routeTable_8_rt_ifc_banks_banks_rf_3$WE = 1'b0 ;

  // submodule net_routers_routeTable_8_rt_ifc_banks_banks_rf_4
  assign net_routers_routeTable_8_rt_ifc_banks_banks_rf_4$ADDR_1 =
	     net_routers_router_core_5$out_ports_4_getFlit[68:65] ;
  assign net_routers_routeTable_8_rt_ifc_banks_banks_rf_4$ADDR_IN = 4'h0 ;
  assign net_routers_routeTable_8_rt_ifc_banks_banks_rf_4$D_IN = 3'h0 ;
  assign net_routers_routeTable_8_rt_ifc_banks_banks_rf_4$WE = 1'b0 ;

  // submodule net_routers_routeTable_rt_ifc_banks_banks_rf
  assign net_routers_routeTable_rt_ifc_banks_banks_rf$ADDR_1 =
	     send_ports_0_putFlit_flit_in[68:65] ;
  assign net_routers_routeTable_rt_ifc_banks_banks_rf$ADDR_IN = 4'h0 ;
  assign net_routers_routeTable_rt_ifc_banks_banks_rf$D_IN = 3'h0 ;
  assign net_routers_routeTable_rt_ifc_banks_banks_rf$WE = 1'b0 ;

  // submodule net_routers_routeTable_rt_ifc_banks_banks_rf_1
  assign net_routers_routeTable_rt_ifc_banks_banks_rf_1$ADDR_1 =
	     net_routers_router_core_1$out_ports_1_getFlit[68:65] ;
  assign net_routers_routeTable_rt_ifc_banks_banks_rf_1$ADDR_IN = 4'h0 ;
  assign net_routers_routeTable_rt_ifc_banks_banks_rf_1$D_IN = 3'h0 ;
  assign net_routers_routeTable_rt_ifc_banks_banks_rf_1$WE = 1'b0 ;

  // submodule net_routers_routeTable_rt_ifc_banks_banks_rf_2
  assign net_routers_routeTable_rt_ifc_banks_banks_rf_2$ADDR_1 =
	     net_routers_router_core_3$out_ports_2_getFlit[68:65] ;
  assign net_routers_routeTable_rt_ifc_banks_banks_rf_2$ADDR_IN = 4'h0 ;
  assign net_routers_routeTable_rt_ifc_banks_banks_rf_2$D_IN = 3'h0 ;
  assign net_routers_routeTable_rt_ifc_banks_banks_rf_2$WE = 1'b0 ;

  // submodule net_routers_routeTable_rt_ifc_banks_banks_rf_3
  assign net_routers_routeTable_rt_ifc_banks_banks_rf_3$ADDR_1 = 4'h0 ;
  assign net_routers_routeTable_rt_ifc_banks_banks_rf_3$ADDR_IN = 4'h0 ;
  assign net_routers_routeTable_rt_ifc_banks_banks_rf_3$D_IN = 3'h0 ;
  assign net_routers_routeTable_rt_ifc_banks_banks_rf_3$WE = 1'b0 ;

  // submodule net_routers_routeTable_rt_ifc_banks_banks_rf_4
  assign net_routers_routeTable_rt_ifc_banks_banks_rf_4$ADDR_1 = 4'h0 ;
  assign net_routers_routeTable_rt_ifc_banks_banks_rf_4$ADDR_IN = 4'h0 ;
  assign net_routers_routeTable_rt_ifc_banks_banks_rf_4$D_IN = 3'h0 ;
  assign net_routers_routeTable_rt_ifc_banks_banks_rf_4$WE = 1'b0 ;

  // submodule net_routers_router_core
  assign net_routers_router_core$in_ports_0_putRoutedFlit_flit_in =
	     { send_ports_0_putFlit_flit_in,
	       net_routers_routeTable_rt_ifc_banks_banks_rf$D_OUT_1 } ;
  assign net_routers_router_core$in_ports_1_putRoutedFlit_flit_in =
	     { net_routers_router_core_1$out_ports_1_getFlit,
	       net_routers_routeTable_rt_ifc_banks_banks_rf_1$D_OUT_1 } ;
  assign net_routers_router_core$in_ports_2_putRoutedFlit_flit_in =
	     { net_routers_router_core_3$out_ports_2_getFlit,
	       net_routers_routeTable_rt_ifc_banks_banks_rf_2$D_OUT_1 } ;
  assign net_routers_router_core$in_ports_3_putRoutedFlit_flit_in = 74'h0 ;
  assign net_routers_router_core$in_ports_4_putRoutedFlit_flit_in = 74'h0 ;
  assign net_routers_router_core$out_ports_0_putCredits_cr_in =
	     recv_ports_0_putCredits_cr_in ;
  assign net_routers_router_core$out_ports_1_putCredits_cr_in = 2'h0 ;
  assign net_routers_router_core$out_ports_2_putCredits_cr_in = 2'h0 ;
  assign net_routers_router_core$out_ports_3_putCredits_cr_in =
	     net_routers_router_core_1$in_ports_3_getCredits ;
  assign net_routers_router_core$out_ports_4_putCredits_cr_in =
	     net_routers_router_core_3$in_ports_4_getCredits ;
  assign net_routers_router_core$EN_in_ports_0_putRoutedFlit =
	     EN_send_ports_0_putFlit ;
  assign net_routers_router_core$EN_in_ports_0_getCredits =
	     EN_send_ports_0_getCredits ;
  assign net_routers_router_core$EN_in_ports_1_putRoutedFlit = 1'd1 ;
  assign net_routers_router_core$EN_in_ports_1_getCredits = 1'd1 ;
  assign net_routers_router_core$EN_in_ports_2_putRoutedFlit = 1'd1 ;
  assign net_routers_router_core$EN_in_ports_2_getCredits = 1'd1 ;
  assign net_routers_router_core$EN_in_ports_3_putRoutedFlit = 1'b0 ;
  assign net_routers_router_core$EN_in_ports_3_getCredits = 1'b0 ;
  assign net_routers_router_core$EN_in_ports_4_putRoutedFlit = 1'b0 ;
  assign net_routers_router_core$EN_in_ports_4_getCredits = 1'b0 ;
  assign net_routers_router_core$EN_out_ports_0_getFlit =
	     EN_recv_ports_0_getFlit ;
  assign net_routers_router_core$EN_out_ports_0_putCredits =
	     EN_recv_ports_0_putCredits ;
  assign net_routers_router_core$EN_out_ports_1_getFlit = 1'b0 ;
  assign net_routers_router_core$EN_out_ports_1_putCredits = 1'b0 ;
  assign net_routers_router_core$EN_out_ports_2_getFlit = 1'b0 ;
  assign net_routers_router_core$EN_out_ports_2_putCredits = 1'b0 ;
  assign net_routers_router_core$EN_out_ports_3_getFlit = 1'd1 ;
  assign net_routers_router_core$EN_out_ports_3_putCredits = 1'd1 ;
  assign net_routers_router_core$EN_out_ports_4_getFlit = 1'd1 ;
  assign net_routers_router_core$EN_out_ports_4_putCredits = 1'd1 ;

  // submodule net_routers_router_core_1
  assign net_routers_router_core_1$in_ports_0_putRoutedFlit_flit_in =
	     { send_ports_1_putFlit_flit_in,
	       net_routers_routeTable_1_rt_ifc_banks_banks_rf$D_OUT_1 } ;
  assign net_routers_router_core_1$in_ports_1_putRoutedFlit_flit_in =
	     { net_routers_router_core_2$out_ports_1_getFlit,
	       net_routers_routeTable_1_rt_ifc_banks_banks_rf_1$D_OUT_1 } ;
  assign net_routers_router_core_1$in_ports_2_putRoutedFlit_flit_in =
	     { net_routers_router_core_4$out_ports_2_getFlit,
	       net_routers_routeTable_1_rt_ifc_banks_banks_rf_2$D_OUT_1 } ;
  assign net_routers_router_core_1$in_ports_3_putRoutedFlit_flit_in =
	     { net_routers_router_core$out_ports_3_getFlit,
	       net_routers_routeTable_1_rt_ifc_banks_banks_rf_3$D_OUT_1 } ;
  assign net_routers_router_core_1$in_ports_4_putRoutedFlit_flit_in = 74'h0 ;
  assign net_routers_router_core_1$out_ports_0_putCredits_cr_in =
	     recv_ports_1_putCredits_cr_in ;
  assign net_routers_router_core_1$out_ports_1_putCredits_cr_in =
	     net_routers_router_core$in_ports_1_getCredits ;
  assign net_routers_router_core_1$out_ports_2_putCredits_cr_in = 2'h0 ;
  assign net_routers_router_core_1$out_ports_3_putCredits_cr_in =
	     net_routers_router_core_2$in_ports_3_getCredits ;
  assign net_routers_router_core_1$out_ports_4_putCredits_cr_in =
	     net_routers_router_core_4$in_ports_4_getCredits ;
  assign net_routers_router_core_1$EN_in_ports_0_putRoutedFlit =
	     EN_send_ports_1_putFlit ;
  assign net_routers_router_core_1$EN_in_ports_0_getCredits =
	     EN_send_ports_1_getCredits ;
  assign net_routers_router_core_1$EN_in_ports_1_putRoutedFlit = 1'd1 ;
  assign net_routers_router_core_1$EN_in_ports_1_getCredits = 1'd1 ;
  assign net_routers_router_core_1$EN_in_ports_2_putRoutedFlit = 1'd1 ;
  assign net_routers_router_core_1$EN_in_ports_2_getCredits = 1'd1 ;
  assign net_routers_router_core_1$EN_in_ports_3_putRoutedFlit = 1'd1 ;
  assign net_routers_router_core_1$EN_in_ports_3_getCredits = 1'd1 ;
  assign net_routers_router_core_1$EN_in_ports_4_putRoutedFlit = 1'b0 ;
  assign net_routers_router_core_1$EN_in_ports_4_getCredits = 1'b0 ;
  assign net_routers_router_core_1$EN_out_ports_0_getFlit =
	     EN_recv_ports_1_getFlit ;
  assign net_routers_router_core_1$EN_out_ports_0_putCredits =
	     EN_recv_ports_1_putCredits ;
  assign net_routers_router_core_1$EN_out_ports_1_getFlit = 1'd1 ;
  assign net_routers_router_core_1$EN_out_ports_1_putCredits = 1'd1 ;
  assign net_routers_router_core_1$EN_out_ports_2_getFlit = 1'b0 ;
  assign net_routers_router_core_1$EN_out_ports_2_putCredits = 1'b0 ;
  assign net_routers_router_core_1$EN_out_ports_3_getFlit = 1'd1 ;
  assign net_routers_router_core_1$EN_out_ports_3_putCredits = 1'd1 ;
  assign net_routers_router_core_1$EN_out_ports_4_getFlit = 1'd1 ;
  assign net_routers_router_core_1$EN_out_ports_4_putCredits = 1'd1 ;

  // submodule net_routers_router_core_2
  assign net_routers_router_core_2$in_ports_0_putRoutedFlit_flit_in =
	     { send_ports_2_putFlit_flit_in,
	       net_routers_routeTable_2_rt_ifc_banks_banks_rf$D_OUT_1 } ;
  assign net_routers_router_core_2$in_ports_1_putRoutedFlit_flit_in = 74'h0 ;
  assign net_routers_router_core_2$in_ports_2_putRoutedFlit_flit_in =
	     { net_routers_router_core_5$out_ports_2_getFlit,
	       net_routers_routeTable_2_rt_ifc_banks_banks_rf_2$D_OUT_1 } ;
  assign net_routers_router_core_2$in_ports_3_putRoutedFlit_flit_in =
	     { net_routers_router_core_1$out_ports_3_getFlit,
	       net_routers_routeTable_2_rt_ifc_banks_banks_rf_3$D_OUT_1 } ;
  assign net_routers_router_core_2$in_ports_4_putRoutedFlit_flit_in = 74'h0 ;
  assign net_routers_router_core_2$out_ports_0_putCredits_cr_in =
	     recv_ports_2_putCredits_cr_in ;
  assign net_routers_router_core_2$out_ports_1_putCredits_cr_in =
	     net_routers_router_core_1$in_ports_1_getCredits ;
  assign net_routers_router_core_2$out_ports_2_putCredits_cr_in = 2'h0 ;
  assign net_routers_router_core_2$out_ports_3_putCredits_cr_in = 2'h0 ;
  assign net_routers_router_core_2$out_ports_4_putCredits_cr_in =
	     net_routers_router_core_5$in_ports_4_getCredits ;
  assign net_routers_router_core_2$EN_in_ports_0_putRoutedFlit =
	     EN_send_ports_2_putFlit ;
  assign net_routers_router_core_2$EN_in_ports_0_getCredits =
	     EN_send_ports_2_getCredits ;
  assign net_routers_router_core_2$EN_in_ports_1_putRoutedFlit = 1'b0 ;
  assign net_routers_router_core_2$EN_in_ports_1_getCredits = 1'b0 ;
  assign net_routers_router_core_2$EN_in_ports_2_putRoutedFlit = 1'd1 ;
  assign net_routers_router_core_2$EN_in_ports_2_getCredits = 1'd1 ;
  assign net_routers_router_core_2$EN_in_ports_3_putRoutedFlit = 1'd1 ;
  assign net_routers_router_core_2$EN_in_ports_3_getCredits = 1'd1 ;
  assign net_routers_router_core_2$EN_in_ports_4_putRoutedFlit = 1'b0 ;
  assign net_routers_router_core_2$EN_in_ports_4_getCredits = 1'b0 ;
  assign net_routers_router_core_2$EN_out_ports_0_getFlit =
	     EN_recv_ports_2_getFlit ;
  assign net_routers_router_core_2$EN_out_ports_0_putCredits =
	     EN_recv_ports_2_putCredits ;
  assign net_routers_router_core_2$EN_out_ports_1_getFlit = 1'd1 ;
  assign net_routers_router_core_2$EN_out_ports_1_putCredits = 1'd1 ;
  assign net_routers_router_core_2$EN_out_ports_2_getFlit = 1'b0 ;
  assign net_routers_router_core_2$EN_out_ports_2_putCredits = 1'b0 ;
  assign net_routers_router_core_2$EN_out_ports_3_getFlit = 1'b0 ;
  assign net_routers_router_core_2$EN_out_ports_3_putCredits = 1'b0 ;
  assign net_routers_router_core_2$EN_out_ports_4_getFlit = 1'd1 ;
  assign net_routers_router_core_2$EN_out_ports_4_putCredits = 1'd1 ;

  // submodule net_routers_router_core_3
  assign net_routers_router_core_3$in_ports_0_putRoutedFlit_flit_in =
	     { send_ports_3_putFlit_flit_in,
	       net_routers_routeTable_3_rt_ifc_banks_banks_rf$D_OUT_1 } ;
  assign net_routers_router_core_3$in_ports_1_putRoutedFlit_flit_in =
	     { net_routers_router_core_4$out_ports_1_getFlit,
	       net_routers_routeTable_3_rt_ifc_banks_banks_rf_1$D_OUT_1 } ;
  assign net_routers_router_core_3$in_ports_2_putRoutedFlit_flit_in =
	     { net_routers_router_core_6$out_ports_2_getFlit,
	       net_routers_routeTable_3_rt_ifc_banks_banks_rf_2$D_OUT_1 } ;
  assign net_routers_router_core_3$in_ports_3_putRoutedFlit_flit_in = 74'h0 ;
  assign net_routers_router_core_3$in_ports_4_putRoutedFlit_flit_in =
	     { net_routers_router_core$out_ports_4_getFlit,
	       net_routers_routeTable_3_rt_ifc_banks_banks_rf_4$D_OUT_1 } ;
  assign net_routers_router_core_3$out_ports_0_putCredits_cr_in =
	     recv_ports_3_putCredits_cr_in ;
  assign net_routers_router_core_3$out_ports_1_putCredits_cr_in = 2'h0 ;
  assign net_routers_router_core_3$out_ports_2_putCredits_cr_in =
	     net_routers_router_core$in_ports_2_getCredits ;
  assign net_routers_router_core_3$out_ports_3_putCredits_cr_in =
	     net_routers_router_core_4$in_ports_3_getCredits ;
  assign net_routers_router_core_3$out_ports_4_putCredits_cr_in =
	     net_routers_router_core_6$in_ports_4_getCredits ;
  assign net_routers_router_core_3$EN_in_ports_0_putRoutedFlit =
	     EN_send_ports_3_putFlit ;
  assign net_routers_router_core_3$EN_in_ports_0_getCredits =
	     EN_send_ports_3_getCredits ;
  assign net_routers_router_core_3$EN_in_ports_1_putRoutedFlit = 1'd1 ;
  assign net_routers_router_core_3$EN_in_ports_1_getCredits = 1'd1 ;
  assign net_routers_router_core_3$EN_in_ports_2_putRoutedFlit = 1'd1 ;
  assign net_routers_router_core_3$EN_in_ports_2_getCredits = 1'd1 ;
  assign net_routers_router_core_3$EN_in_ports_3_putRoutedFlit = 1'b0 ;
  assign net_routers_router_core_3$EN_in_ports_3_getCredits = 1'b0 ;
  assign net_routers_router_core_3$EN_in_ports_4_putRoutedFlit = 1'd1 ;
  assign net_routers_router_core_3$EN_in_ports_4_getCredits = 1'd1 ;
  assign net_routers_router_core_3$EN_out_ports_0_getFlit =
	     EN_recv_ports_3_getFlit ;
  assign net_routers_router_core_3$EN_out_ports_0_putCredits =
	     EN_recv_ports_3_putCredits ;
  assign net_routers_router_core_3$EN_out_ports_1_getFlit = 1'b0 ;
  assign net_routers_router_core_3$EN_out_ports_1_putCredits = 1'b0 ;
  assign net_routers_router_core_3$EN_out_ports_2_getFlit = 1'd1 ;
  assign net_routers_router_core_3$EN_out_ports_2_putCredits = 1'd1 ;
  assign net_routers_router_core_3$EN_out_ports_3_getFlit = 1'd1 ;
  assign net_routers_router_core_3$EN_out_ports_3_putCredits = 1'd1 ;
  assign net_routers_router_core_3$EN_out_ports_4_getFlit = 1'd1 ;
  assign net_routers_router_core_3$EN_out_ports_4_putCredits = 1'd1 ;

  // submodule net_routers_router_core_4
  assign net_routers_router_core_4$in_ports_0_putRoutedFlit_flit_in =
	     { send_ports_4_putFlit_flit_in,
	       net_routers_routeTable_4_rt_ifc_banks_banks_rf$D_OUT_1 } ;
  assign net_routers_router_core_4$in_ports_1_putRoutedFlit_flit_in =
	     { net_routers_router_core_5$out_ports_1_getFlit,
	       net_routers_routeTable_4_rt_ifc_banks_banks_rf_1$D_OUT_1 } ;
  assign net_routers_router_core_4$in_ports_2_putRoutedFlit_flit_in =
	     { net_routers_router_core_7$out_ports_2_getFlit,
	       net_routers_routeTable_4_rt_ifc_banks_banks_rf_2$D_OUT_1 } ;
  assign net_routers_router_core_4$in_ports_3_putRoutedFlit_flit_in =
	     { net_routers_router_core_3$out_ports_3_getFlit,
	       net_routers_routeTable_4_rt_ifc_banks_banks_rf_3$D_OUT_1 } ;
  assign net_routers_router_core_4$in_ports_4_putRoutedFlit_flit_in =
	     { net_routers_router_core_1$out_ports_4_getFlit,
	       net_routers_routeTable_4_rt_ifc_banks_banks_rf_4$D_OUT_1 } ;
  assign net_routers_router_core_4$out_ports_0_putCredits_cr_in =
	     recv_ports_4_putCredits_cr_in ;
  assign net_routers_router_core_4$out_ports_1_putCredits_cr_in =
	     net_routers_router_core_3$in_ports_1_getCredits ;
  assign net_routers_router_core_4$out_ports_2_putCredits_cr_in =
	     net_routers_router_core_1$in_ports_2_getCredits ;
  assign net_routers_router_core_4$out_ports_3_putCredits_cr_in =
	     net_routers_router_core_5$in_ports_3_getCredits ;
  assign net_routers_router_core_4$out_ports_4_putCredits_cr_in =
	     net_routers_router_core_7$in_ports_4_getCredits ;
  assign net_routers_router_core_4$EN_in_ports_0_putRoutedFlit =
	     EN_send_ports_4_putFlit ;
  assign net_routers_router_core_4$EN_in_ports_0_getCredits =
	     EN_send_ports_4_getCredits ;
  assign net_routers_router_core_4$EN_in_ports_1_putRoutedFlit = 1'd1 ;
  assign net_routers_router_core_4$EN_in_ports_1_getCredits = 1'd1 ;
  assign net_routers_router_core_4$EN_in_ports_2_putRoutedFlit = 1'd1 ;
  assign net_routers_router_core_4$EN_in_ports_2_getCredits = 1'd1 ;
  assign net_routers_router_core_4$EN_in_ports_3_putRoutedFlit = 1'd1 ;
  assign net_routers_router_core_4$EN_in_ports_3_getCredits = 1'd1 ;
  assign net_routers_router_core_4$EN_in_ports_4_putRoutedFlit = 1'd1 ;
  assign net_routers_router_core_4$EN_in_ports_4_getCredits = 1'd1 ;
  assign net_routers_router_core_4$EN_out_ports_0_getFlit =
	     EN_recv_ports_4_getFlit ;
  assign net_routers_router_core_4$EN_out_ports_0_putCredits =
	     EN_recv_ports_4_putCredits ;
  assign net_routers_router_core_4$EN_out_ports_1_getFlit = 1'd1 ;
  assign net_routers_router_core_4$EN_out_ports_1_putCredits = 1'd1 ;
  assign net_routers_router_core_4$EN_out_ports_2_getFlit = 1'd1 ;
  assign net_routers_router_core_4$EN_out_ports_2_putCredits = 1'd1 ;
  assign net_routers_router_core_4$EN_out_ports_3_getFlit = 1'd1 ;
  assign net_routers_router_core_4$EN_out_ports_3_putCredits = 1'd1 ;
  assign net_routers_router_core_4$EN_out_ports_4_getFlit = 1'd1 ;
  assign net_routers_router_core_4$EN_out_ports_4_putCredits = 1'd1 ;

  // submodule net_routers_router_core_5
  assign net_routers_router_core_5$in_ports_0_putRoutedFlit_flit_in =
	     { send_ports_5_putFlit_flit_in,
	       net_routers_routeTable_5_rt_ifc_banks_banks_rf$D_OUT_1 } ;
  assign net_routers_router_core_5$in_ports_1_putRoutedFlit_flit_in = 74'h0 ;
  assign net_routers_router_core_5$in_ports_2_putRoutedFlit_flit_in =
	     { net_routers_router_core_8$out_ports_2_getFlit,
	       net_routers_routeTable_5_rt_ifc_banks_banks_rf_2$D_OUT_1 } ;
  assign net_routers_router_core_5$in_ports_3_putRoutedFlit_flit_in =
	     { net_routers_router_core_4$out_ports_3_getFlit,
	       net_routers_routeTable_5_rt_ifc_banks_banks_rf_3$D_OUT_1 } ;
  assign net_routers_router_core_5$in_ports_4_putRoutedFlit_flit_in =
	     { net_routers_router_core_2$out_ports_4_getFlit,
	       net_routers_routeTable_5_rt_ifc_banks_banks_rf_4$D_OUT_1 } ;
  assign net_routers_router_core_5$out_ports_0_putCredits_cr_in =
	     recv_ports_5_putCredits_cr_in ;
  assign net_routers_router_core_5$out_ports_1_putCredits_cr_in =
	     net_routers_router_core_4$in_ports_1_getCredits ;
  assign net_routers_router_core_5$out_ports_2_putCredits_cr_in =
	     net_routers_router_core_2$in_ports_2_getCredits ;
  assign net_routers_router_core_5$out_ports_3_putCredits_cr_in = 2'h0 ;
  assign net_routers_router_core_5$out_ports_4_putCredits_cr_in =
	     net_routers_router_core_8$in_ports_4_getCredits ;
  assign net_routers_router_core_5$EN_in_ports_0_putRoutedFlit =
	     EN_send_ports_5_putFlit ;
  assign net_routers_router_core_5$EN_in_ports_0_getCredits =
	     EN_send_ports_5_getCredits ;
  assign net_routers_router_core_5$EN_in_ports_1_putRoutedFlit = 1'b0 ;
  assign net_routers_router_core_5$EN_in_ports_1_getCredits = 1'b0 ;
  assign net_routers_router_core_5$EN_in_ports_2_putRoutedFlit = 1'd1 ;
  assign net_routers_router_core_5$EN_in_ports_2_getCredits = 1'd1 ;
  assign net_routers_router_core_5$EN_in_ports_3_putRoutedFlit = 1'd1 ;
  assign net_routers_router_core_5$EN_in_ports_3_getCredits = 1'd1 ;
  assign net_routers_router_core_5$EN_in_ports_4_putRoutedFlit = 1'd1 ;
  assign net_routers_router_core_5$EN_in_ports_4_getCredits = 1'd1 ;
  assign net_routers_router_core_5$EN_out_ports_0_getFlit =
	     EN_recv_ports_5_getFlit ;
  assign net_routers_router_core_5$EN_out_ports_0_putCredits =
	     EN_recv_ports_5_putCredits ;
  assign net_routers_router_core_5$EN_out_ports_1_getFlit = 1'd1 ;
  assign net_routers_router_core_5$EN_out_ports_1_putCredits = 1'd1 ;
  assign net_routers_router_core_5$EN_out_ports_2_getFlit = 1'd1 ;
  assign net_routers_router_core_5$EN_out_ports_2_putCredits = 1'd1 ;
  assign net_routers_router_core_5$EN_out_ports_3_getFlit = 1'b0 ;
  assign net_routers_router_core_5$EN_out_ports_3_putCredits = 1'b0 ;
  assign net_routers_router_core_5$EN_out_ports_4_getFlit = 1'd1 ;
  assign net_routers_router_core_5$EN_out_ports_4_putCredits = 1'd1 ;

  // submodule net_routers_router_core_6
  assign net_routers_router_core_6$in_ports_0_putRoutedFlit_flit_in =
	     { send_ports_6_putFlit_flit_in,
	       net_routers_routeTable_6_rt_ifc_banks_banks_rf$D_OUT_1 } ;
  assign net_routers_router_core_6$in_ports_1_putRoutedFlit_flit_in =
	     { net_routers_router_core_7$out_ports_1_getFlit,
	       net_routers_routeTable_6_rt_ifc_banks_banks_rf_1$D_OUT_1 } ;
  assign net_routers_router_core_6$in_ports_2_putRoutedFlit_flit_in = 74'h0 ;
  assign net_routers_router_core_6$in_ports_3_putRoutedFlit_flit_in = 74'h0 ;
  assign net_routers_router_core_6$in_ports_4_putRoutedFlit_flit_in =
	     { net_routers_router_core_3$out_ports_4_getFlit,
	       net_routers_routeTable_6_rt_ifc_banks_banks_rf_4$D_OUT_1 } ;
  assign net_routers_router_core_6$out_ports_0_putCredits_cr_in =
	     recv_ports_6_putCredits_cr_in ;
  assign net_routers_router_core_6$out_ports_1_putCredits_cr_in = 2'h0 ;
  assign net_routers_router_core_6$out_ports_2_putCredits_cr_in =
	     net_routers_router_core_3$in_ports_2_getCredits ;
  assign net_routers_router_core_6$out_ports_3_putCredits_cr_in =
	     net_routers_router_core_7$in_ports_3_getCredits ;
  assign net_routers_router_core_6$out_ports_4_putCredits_cr_in = 2'h0 ;
  assign net_routers_router_core_6$EN_in_ports_0_putRoutedFlit =
	     EN_send_ports_6_putFlit ;
  assign net_routers_router_core_6$EN_in_ports_0_getCredits =
	     EN_send_ports_6_getCredits ;
  assign net_routers_router_core_6$EN_in_ports_1_putRoutedFlit = 1'd1 ;
  assign net_routers_router_core_6$EN_in_ports_1_getCredits = 1'd1 ;
  assign net_routers_router_core_6$EN_in_ports_2_putRoutedFlit = 1'b0 ;
  assign net_routers_router_core_6$EN_in_ports_2_getCredits = 1'b0 ;
  assign net_routers_router_core_6$EN_in_ports_3_putRoutedFlit = 1'b0 ;
  assign net_routers_router_core_6$EN_in_ports_3_getCredits = 1'b0 ;
  assign net_routers_router_core_6$EN_in_ports_4_putRoutedFlit = 1'd1 ;
  assign net_routers_router_core_6$EN_in_ports_4_getCredits = 1'd1 ;
  assign net_routers_router_core_6$EN_out_ports_0_getFlit =
	     EN_recv_ports_6_getFlit ;
  assign net_routers_router_core_6$EN_out_ports_0_putCredits =
	     EN_recv_ports_6_putCredits ;
  assign net_routers_router_core_6$EN_out_ports_1_getFlit = 1'b0 ;
  assign net_routers_router_core_6$EN_out_ports_1_putCredits = 1'b0 ;
  assign net_routers_router_core_6$EN_out_ports_2_getFlit = 1'd1 ;
  assign net_routers_router_core_6$EN_out_ports_2_putCredits = 1'd1 ;
  assign net_routers_router_core_6$EN_out_ports_3_getFlit = 1'd1 ;
  assign net_routers_router_core_6$EN_out_ports_3_putCredits = 1'd1 ;
  assign net_routers_router_core_6$EN_out_ports_4_getFlit = 1'b0 ;
  assign net_routers_router_core_6$EN_out_ports_4_putCredits = 1'b0 ;

  // submodule net_routers_router_core_7
  assign net_routers_router_core_7$in_ports_0_putRoutedFlit_flit_in =
	     { send_ports_7_putFlit_flit_in,
	       net_routers_routeTable_7_rt_ifc_banks_banks_rf$D_OUT_1 } ;
  assign net_routers_router_core_7$in_ports_1_putRoutedFlit_flit_in =
	     { net_routers_router_core_8$out_ports_1_getFlit,
	       net_routers_routeTable_7_rt_ifc_banks_banks_rf_1$D_OUT_1 } ;
  assign net_routers_router_core_7$in_ports_2_putRoutedFlit_flit_in = 74'h0 ;
  assign net_routers_router_core_7$in_ports_3_putRoutedFlit_flit_in =
	     { net_routers_router_core_6$out_ports_3_getFlit,
	       net_routers_routeTable_7_rt_ifc_banks_banks_rf_3$D_OUT_1 } ;
  assign net_routers_router_core_7$in_ports_4_putRoutedFlit_flit_in =
	     { net_routers_router_core_4$out_ports_4_getFlit,
	       net_routers_routeTable_7_rt_ifc_banks_banks_rf_4$D_OUT_1 } ;
  assign net_routers_router_core_7$out_ports_0_putCredits_cr_in =
	     recv_ports_7_putCredits_cr_in ;
  assign net_routers_router_core_7$out_ports_1_putCredits_cr_in =
	     net_routers_router_core_6$in_ports_1_getCredits ;
  assign net_routers_router_core_7$out_ports_2_putCredits_cr_in =
	     net_routers_router_core_4$in_ports_2_getCredits ;
  assign net_routers_router_core_7$out_ports_3_putCredits_cr_in =
	     net_routers_router_core_8$in_ports_3_getCredits ;
  assign net_routers_router_core_7$out_ports_4_putCredits_cr_in = 2'h0 ;
  assign net_routers_router_core_7$EN_in_ports_0_putRoutedFlit =
	     EN_send_ports_7_putFlit ;
  assign net_routers_router_core_7$EN_in_ports_0_getCredits =
	     EN_send_ports_7_getCredits ;
  assign net_routers_router_core_7$EN_in_ports_1_putRoutedFlit = 1'd1 ;
  assign net_routers_router_core_7$EN_in_ports_1_getCredits = 1'd1 ;
  assign net_routers_router_core_7$EN_in_ports_2_putRoutedFlit = 1'b0 ;
  assign net_routers_router_core_7$EN_in_ports_2_getCredits = 1'b0 ;
  assign net_routers_router_core_7$EN_in_ports_3_putRoutedFlit = 1'd1 ;
  assign net_routers_router_core_7$EN_in_ports_3_getCredits = 1'd1 ;
  assign net_routers_router_core_7$EN_in_ports_4_putRoutedFlit = 1'd1 ;
  assign net_routers_router_core_7$EN_in_ports_4_getCredits = 1'd1 ;
  assign net_routers_router_core_7$EN_out_ports_0_getFlit =
	     EN_recv_ports_7_getFlit ;
  assign net_routers_router_core_7$EN_out_ports_0_putCredits =
	     EN_recv_ports_7_putCredits ;
  assign net_routers_router_core_7$EN_out_ports_1_getFlit = 1'd1 ;
  assign net_routers_router_core_7$EN_out_ports_1_putCredits = 1'd1 ;
  assign net_routers_router_core_7$EN_out_ports_2_getFlit = 1'd1 ;
  assign net_routers_router_core_7$EN_out_ports_2_putCredits = 1'd1 ;
  assign net_routers_router_core_7$EN_out_ports_3_getFlit = 1'd1 ;
  assign net_routers_router_core_7$EN_out_ports_3_putCredits = 1'd1 ;
  assign net_routers_router_core_7$EN_out_ports_4_getFlit = 1'b0 ;
  assign net_routers_router_core_7$EN_out_ports_4_putCredits = 1'b0 ;

  // submodule net_routers_router_core_8
  assign net_routers_router_core_8$in_ports_0_putRoutedFlit_flit_in =
	     { send_ports_8_putFlit_flit_in,
	       net_routers_routeTable_8_rt_ifc_banks_banks_rf$D_OUT_1 } ;
  assign net_routers_router_core_8$in_ports_1_putRoutedFlit_flit_in = 74'h0 ;
  assign net_routers_router_core_8$in_ports_2_putRoutedFlit_flit_in = 74'h0 ;
  assign net_routers_router_core_8$in_ports_3_putRoutedFlit_flit_in =
	     { net_routers_router_core_7$out_ports_3_getFlit,
	       net_routers_routeTable_8_rt_ifc_banks_banks_rf_3$D_OUT_1 } ;
  assign net_routers_router_core_8$in_ports_4_putRoutedFlit_flit_in =
	     { net_routers_router_core_5$out_ports_4_getFlit,
	       net_routers_routeTable_8_rt_ifc_banks_banks_rf_4$D_OUT_1 } ;
  assign net_routers_router_core_8$out_ports_0_putCredits_cr_in =
	     recv_ports_8_putCredits_cr_in ;
  assign net_routers_router_core_8$out_ports_1_putCredits_cr_in =
	     net_routers_router_core_7$in_ports_1_getCredits ;
  assign net_routers_router_core_8$out_ports_2_putCredits_cr_in =
	     net_routers_router_core_5$in_ports_2_getCredits ;
  assign net_routers_router_core_8$out_ports_3_putCredits_cr_in = 2'h0 ;
  assign net_routers_router_core_8$out_ports_4_putCredits_cr_in = 2'h0 ;
  assign net_routers_router_core_8$EN_in_ports_0_putRoutedFlit =
	     EN_send_ports_8_putFlit ;
  assign net_routers_router_core_8$EN_in_ports_0_getCredits =
	     EN_send_ports_8_getCredits ;
  assign net_routers_router_core_8$EN_in_ports_1_putRoutedFlit = 1'b0 ;
  assign net_routers_router_core_8$EN_in_ports_1_getCredits = 1'b0 ;
  assign net_routers_router_core_8$EN_in_ports_2_putRoutedFlit = 1'b0 ;
  assign net_routers_router_core_8$EN_in_ports_2_getCredits = 1'b0 ;
  assign net_routers_router_core_8$EN_in_ports_3_putRoutedFlit = 1'd1 ;
  assign net_routers_router_core_8$EN_in_ports_3_getCredits = 1'd1 ;
  assign net_routers_router_core_8$EN_in_ports_4_putRoutedFlit = 1'd1 ;
  assign net_routers_router_core_8$EN_in_ports_4_getCredits = 1'd1 ;
  assign net_routers_router_core_8$EN_out_ports_0_getFlit =
	     EN_recv_ports_8_getFlit ;
  assign net_routers_router_core_8$EN_out_ports_0_putCredits =
	     EN_recv_ports_8_putCredits ;
  assign net_routers_router_core_8$EN_out_ports_1_getFlit = 1'd1 ;
  assign net_routers_router_core_8$EN_out_ports_1_putCredits = 1'd1 ;
  assign net_routers_router_core_8$EN_out_ports_2_getFlit = 1'd1 ;
  assign net_routers_router_core_8$EN_out_ports_2_putCredits = 1'd1 ;
  assign net_routers_router_core_8$EN_out_ports_3_getFlit = 1'b0 ;
  assign net_routers_router_core_8$EN_out_ports_3_putCredits = 1'b0 ;
  assign net_routers_router_core_8$EN_out_ports_4_getFlit = 1'b0 ;
  assign net_routers_router_core_8$EN_out_ports_4_putCredits = 1'b0 ;

  // handling of system tasks

  // synopsys translate_off
  always@(negedge CLK)
  begin
    #0;
    if (RST_N)
      if (EN_send_ports_0_putFlit && send_ports_0_putFlit_flit_in[70])
	$write("");
    if (RST_N)
      if (EN_send_ports_1_putFlit && send_ports_1_putFlit_flit_in[70])
	$write("");
    if (RST_N)
      if (EN_send_ports_2_putFlit && send_ports_2_putFlit_flit_in[70])
	$write("");
    if (RST_N)
      if (EN_send_ports_3_putFlit && send_ports_3_putFlit_flit_in[70])
	$write("");
    if (RST_N)
      if (EN_send_ports_4_putFlit && send_ports_4_putFlit_flit_in[70])
	$write("");
    if (RST_N)
      if (EN_send_ports_5_putFlit && send_ports_5_putFlit_flit_in[70])
	$write("");
    if (RST_N)
      if (EN_send_ports_6_putFlit && send_ports_6_putFlit_flit_in[70])
	$write("");
    if (RST_N)
      if (EN_send_ports_7_putFlit && send_ports_7_putFlit_flit_in[70])
	$write("");
    if (RST_N)
      if (EN_send_ports_8_putFlit && send_ports_8_putFlit_flit_in[70])
	$write("");
    if (RST_N)
      if (net_routers_router_core_1$out_ports_1_getFlit[70]) $write("");
    if (RST_N)
      if (net_routers_router_core_4$out_ports_1_getFlit[70]) $write("");
    if (RST_N)
      if (net_routers_router_core_7$out_ports_1_getFlit[70]) $write("");
    if (RST_N)
      if (net_routers_router_core_2$out_ports_1_getFlit[70]) $write("");
    if (RST_N)
      if (net_routers_router_core_5$out_ports_1_getFlit[70]) $write("");
    if (RST_N)
      if (net_routers_router_core_8$out_ports_1_getFlit[70]) $write("");
    if (RST_N)
      if (net_routers_router_core_3$out_ports_2_getFlit[70]) $write("");
    if (RST_N)
      if (net_routers_router_core_6$out_ports_2_getFlit[70]) $write("");
    if (RST_N)
      if (net_routers_router_core_4$out_ports_2_getFlit[70]) $write("");
    if (RST_N)
      if (net_routers_router_core_7$out_ports_2_getFlit[70]) $write("");
    if (RST_N)
      if (net_routers_router_core_5$out_ports_2_getFlit[70]) $write("");
    if (RST_N)
      if (net_routers_router_core_8$out_ports_2_getFlit[70]) $write("");
    if (RST_N)
      if (net_routers_router_core$out_ports_3_getFlit[70]) $write("");
    if (RST_N)
      if (net_routers_router_core_3$out_ports_3_getFlit[70]) $write("");
    if (RST_N)
      if (net_routers_router_core_6$out_ports_3_getFlit[70]) $write("");
    if (RST_N)
      if (net_routers_router_core_1$out_ports_3_getFlit[70]) $write("");
    if (RST_N)
      if (net_routers_router_core_4$out_ports_3_getFlit[70]) $write("");
    if (RST_N)
      if (net_routers_router_core_7$out_ports_3_getFlit[70]) $write("");
    if (RST_N)
      if (net_routers_router_core$out_ports_4_getFlit[70]) $write("");
    if (RST_N)
      if (net_routers_router_core_3$out_ports_4_getFlit[70]) $write("");
    if (RST_N)
      if (net_routers_router_core_1$out_ports_4_getFlit[70]) $write("");
    if (RST_N)
      if (net_routers_router_core_4$out_ports_4_getFlit[70]) $write("");
    if (RST_N)
      if (net_routers_router_core_2$out_ports_4_getFlit[70]) $write("");
    if (RST_N)
      if (net_routers_router_core_5$out_ports_4_getFlit[70]) $write("");
  end
  // synopsys translate_on
endmodule : mkNetwork  // mkNetwork

