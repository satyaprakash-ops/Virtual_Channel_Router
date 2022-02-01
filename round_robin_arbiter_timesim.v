////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2005 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: H.38
//  \   \         Application: netgen
//  /   /         Filename: round_robin_arbiter_timesim.v
// /___/   /\     Timestamp: Mon Feb 08 12:19:30 2010
// \   \  /  \ 
//  \___\/\___\
//             
// Command: -intstyle ise -s 5 -pcf round_robin_arbiter.pcf -sdf_anno true -w -ofmt verilog -sim round_robin_arbiter.ncd round_robin_arbiter_timesim.v 
// Device: 3s5000fg1156-5 (ADVANCED 1.35 2005-01-22)
// Design Name: round_robin_arbiter
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Development System Reference Guide, Chapter 23
//     Synthesis and Verification Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module round_robin_arbiter (
  clk, reset, req1, req2, req3, req4, sh_p2_out0, sh_p2_out1, sh_p2_out2, sh_p2_out3, en1, en2, en3, en4, p1_out0, p1_out1, p1_out2, p1_out3, 
sh_p3_out0, sh_p3_out1, sh_p3_out2, sh_p3_out3, gnt4_pulse, gnt3_pulse, gnt2_pulse, p2_out0, p2_out1, gnt1, p2_out2, gnt2, p2_out3, gnt3, gnt4, 
gnt1_pulse, sh_p4_out0, sh_p4_out1, sh_p4_out2, sh_p4_out3, p3_out0, p3_out1, p3_out2, p3_out3, en1_reset, p4_out0, p4_out1, p4_out2, p4_out3, 
sh_p1_out0, sh_p1_out1, sh_p1_out2, sh_p1_out3
);
  input clk;
  input reset;
  input req1;
  input req2;
  input req3;
  input req4;
  output sh_p2_out0;
  output sh_p2_out1;
  output sh_p2_out2;
  output sh_p2_out3;
  output en1;
  output en2;
  output en3;
  output en4;
  output p1_out0;
  output p1_out1;
  output p1_out2;
  output p1_out3;
  output sh_p3_out0;
  output sh_p3_out1;
  output sh_p3_out2;
  output sh_p3_out3;
  output gnt4_pulse;
  output gnt3_pulse;
  output gnt2_pulse;
  output p2_out0;
  output p2_out1;
  output gnt1;
  output p2_out2;
  output gnt2;
  output p2_out3;
  output gnt3;
  output gnt4;
  output gnt1_pulse;
  output sh_p4_out0;
  output sh_p4_out1;
  output sh_p4_out2;
  output sh_p4_out3;
  output p3_out0;
  output p3_out1;
  output p3_out2;
  output p3_out3;
  output en1_reset;
  output p4_out0;
  output p4_out1;
  output p4_out2;
  output p4_out3;
  output sh_p1_out0;
  output sh_p1_out1;
  output sh_p1_out2;
  output sh_p1_out3;
  wire req3_IBUF;
  wire \d5/q ;
  wire \d7/q ;
  wire \d8/q ;
  wire req1_IBUF;
  wire \d6/q ;
  wire _n0006_0;
  wire _n0008_0;
  wire \pulse1/dff1/Q ;
  wire \pulse2/dff1/Q ;
  wire \pulse4/dff1/Q ;
  wire reset_IBUF;
  wire \pulse3/dff1/Q ;
  wire _n0023_0;
  wire _n0025_0;
  wire \d21/Q ;
  wire N9;
  wire \d18/Q ;
  wire \d19/Q ;
  wire \d20/Q ;
  wire _n0017_0;
  wire clk_BUFGP;
  wire _n0005;
  wire N8_0;
  wire \pulse1/dff2/Q ;
  wire \clk_BUFGP/IBUFG ;
  wire \pulse2/_n0001_0 ;
  wire _n0028_0;
  wire GLOBAL_LOGIC1;
  wire \d9/q ;
  wire \d10/q ;
  wire \d11/q ;
  wire \d12/q ;
  wire \pulse4/_n0001_0 ;
  wire _n0030_0;
  wire \d13/q ;
  wire \d14/q ;
  wire \pulse1/_n0001_0 ;
  wire _n0027_0;
  wire _n0019_0;
  wire \d15/q ;
  wire _n0021_0;
  wire \d16/q ;
  wire _n0029_0;
  wire \d1/q ;
  wire \d2/q ;
  wire \d3/q ;
  wire \d4/q ;
  wire req2_IBUF;
  wire req4_IBUF;
  wire \pulse3/_n0001_0 ;
  wire _n0001;
  wire \p1/out31/O ;
  wire \d17/Q ;
  wire _n0004_0;
  wire _n0003;
  wire _n0002_0;
  wire _n0009;
  wire _n0010_0;
  wire _n0011;
  wire N6_0;
  wire \p3/out31/O ;
  wire _n0012_0;
  wire _n0007;
  wire \p2/out31/O ;
  wire _n0013;
  wire _n0014_0;
  wire _n0015;
  wire N4_0;
  wire \p4/out31/O ;
  wire _n0016_0;
  wire _n0000_0;
  wire N10_0;
  wire \pulse2/dff2/Q ;
  wire \pulse3/dff2/Q ;
  wire \pulse4/dff2/Q ;
  wire GSR = glbl.GSR;
  wire GTS = glbl.GTS;
  wire _n0006;
  wire _n0008;
  wire _n0023;
  wire _n0025;
  wire _n0017;
  wire N9_pack_1;
  wire \d5/q/DXMUX ;
  wire \d5/q/FXMUX ;
  wire p2_out0_OBUF;
  wire N8;
  wire \d5/q/SRINV ;
  wire \d5/q/CLKINV ;
  wire \pulse1/dff2/Q/DYMUX ;
  wire \pulse1/dff2/Q/CLKINV ;
  wire \sh_p2_out0/ENABLE ;
  wire \sh_p2_out0/O ;
  wire \sh_p2_out1/ENABLE ;
  wire \sh_p2_out1/O ;
  wire \sh_p2_out2/ENABLE ;
  wire \sh_p2_out2/O ;
  wire \p2_out0/ENABLE ;
  wire \p2_out0/O ;
  wire \sh_p2_out3/ENABLE ;
  wire \sh_p2_out3/O ;
  wire \p2_out1/ENABLE ;
  wire \p2_out1/O ;
  wire \p2_out2/ENABLE ;
  wire \p2_out2/O ;
  wire \p2_out3/ENABLE ;
  wire \p2_out3/O ;
  wire \clk/INBUF ;
  wire \gnt1/ENABLE ;
  wire \gnt1/O ;
  wire \gnt2/ENABLE ;
  wire \gnt2/O ;
  wire \gnt2_pulse/ENABLE ;
  wire \gnt2_pulse/O ;
  wire \gnt2_pulse/OUTPUT/OTCLK1INV ;
  wire \en1_reset/ENABLE ;
  wire \en1_reset/O ;
  wire \en1_reset/OUTPUT/OTCLK1INV ;
  wire \gnt3/ENABLE ;
  wire \gnt3/O ;
  wire \gnt4/ENABLE ;
  wire \gnt4/O ;
  wire \sh_p3_out0/ENABLE ;
  wire \sh_p3_out0/O ;
  wire \pulse2/dff1/Q_1 ;
  wire \gnt2_pulse/OUTPUT/OFF/O1INV ;
  wire \d17/Q_1 ;
  wire \en1_reset/OUTPUT/OFF/O1INV ;
  wire \d17/Q/DYMUX ;
  wire \d17/Q/CLKINV ;
  wire \d18/Q/DYMUX ;
  wire \d18/Q/CLKINV ;
  wire \d19/Q/DYMUX ;
  wire \d19/Q/CLKINV ;
  wire \pulse4/dff1/Q/DYMUX ;
  wire \pulse4/dff1/Q/CLKINV ;
  wire \pulse4/dff2/Q/DYMUX ;
  wire \pulse4/dff2/Q/CLKINV ;
  wire _n0000;
  wire _n0012;
  wire _n0010;
  wire _n0004;
  wire _n0002;
  wire _n0016;
  wire _n0014;
  wire \pulse1/dff1/Q/DYMUX ;
  wire \pulse1/dff1/Q/CLKINV ;
  wire \d8/q/DXMUX ;
  wire \d8/q/FXMUX ;
  wire p2_out3_OBUF;
  wire \p2/out31/O_pack_1 ;
  wire \d8/q/SRINV ;
  wire \d8/q/CLKINV ;
  wire N6;
  wire \d9/q/DYMUX ;
  wire \d9/q/GYMUX ;
  wire p3_out0_OBUF;
  wire \d9/q/SRINV ;
  wire \d9/q/CLKINV ;
  wire \d14/q/DXMUX ;
  wire \d14/q/FXMUX ;
  wire p4_out1_OBUF;
  wire _n0013_pack_1;
  wire \d14/q/SRINV ;
  wire \d14/q/CLKINV ;
  wire \d15/q/DXMUX ;
  wire \d15/q/FXMUX ;
  wire p4_out2_OBUF;
  wire _n0015_pack_1;
  wire \d15/q/SRINV ;
  wire \d15/q/CLKINV ;
  wire \d16/q/DXMUX ;
  wire \d16/q/FXMUX ;
  wire p4_out3_OBUF;
  wire \p4/out31/O_pack_1 ;
  wire \d16/q/SRINV ;
  wire \d16/q/CLKINV ;
  wire \d2/q/DXMUX ;
  wire \d2/q/FXMUX ;
  wire p1_out1_OBUF;
  wire _n0001_pack_1;
  wire \d2/q/SRINV ;
  wire \d2/q/CLKINV ;
  wire N4;
  wire \d13/q/DYMUX ;
  wire \d13/q/GYMUX ;
  wire p4_out0_OBUF;
  wire \d13/q/SRINV ;
  wire \d13/q/CLKINV ;
  wire \d3/q/DXMUX ;
  wire \d3/q/FXMUX ;
  wire p1_out2_OBUF;
  wire _n0003_pack_1;
  wire \d3/q/SRINV ;
  wire \d3/q/CLKINV ;
  wire N10;
  wire \d1/q/DYMUX ;
  wire \d1/q/GYMUX ;
  wire p1_out0_OBUF;
  wire \d1/q/SRINV ;
  wire \d1/q/CLKINV ;
  wire gnt1_OBUF;
  wire _n0027;
  wire _n0021;
  wire _n0019;
  wire gnt2_OBUF;
  wire _n0028;
  wire gnt3_OBUF;
  wire _n0029;
  wire \pulse1/_n0001 ;
  wire \pulse2/_n0001 ;
  wire \pulse3/_n0001 ;
  wire \pulse4/_n0001 ;
  wire _n0030;
  wire gnt4_OBUF;
  wire \pulse2/dff1/Q/DYMUX ;
  wire \pulse2/dff1/Q/CLKINV ;
  wire \pulse2/dff2/Q/DYMUX ;
  wire \pulse2/dff2/Q/CLKINV ;
  wire \d20/Q/DYMUX ;
  wire \d20/Q/CLKINV ;
  wire \d21/Q/DYMUX ;
  wire \d21/Q/CLKINV ;
  wire \pulse3/dff1/Q/DYMUX ;
  wire \pulse3/dff1/Q/CLKINV ;
  wire \pulse3/dff2/Q/DYMUX ;
  wire \pulse3/dff2/Q/CLKINV ;
  wire \sh_p1_out1/ENABLE ;
  wire \sh_p1_out1/O ;
  wire \p4_out3/ENABLE ;
  wire \p4_out3/O ;
  wire \sh_p1_out2/ENABLE ;
  wire \sh_p1_out2/O ;
  wire \p1_out0/ENABLE ;
  wire \p1_out0/O ;
  wire \sh_p1_out3/ENABLE ;
  wire \sh_p1_out3/O ;
  wire \p1_out1/ENABLE ;
  wire \p1_out1/O ;
  wire \req1/INBUF ;
  wire \p1_out2/ENABLE ;
  wire \p1_out2/O ;
  wire \req2/INBUF ;
  wire \reset/INBUF ;
  wire \p1_out3/ENABLE ;
  wire \p1_out3/O ;
  wire \req3/INBUF ;
  wire \req4/INBUF ;
  wire \gnt3_pulse/ENABLE ;
  wire \gnt3_pulse/O ;
  wire \gnt3_pulse/OUTPUT/OTCLK1INV ;
  wire \clk_BUFGP/BUFG/S_INVNOT ;
  wire \d4/q/DXMUX ;
  wire \d4/q/FXMUX ;
  wire p1_out3_OBUF;
  wire \p1/out31/O_pack_1 ;
  wire \d4/q/SRINV ;
  wire \d4/q/CLKINV ;
  wire \d10/q/DXMUX ;
  wire \d10/q/FXMUX ;
  wire p3_out1_OBUF;
  wire _n0009_pack_1;
  wire \d10/q/SRINV ;
  wire \d10/q/CLKINV ;
  wire \d11/q/DXMUX ;
  wire \d11/q/FXMUX ;
  wire p3_out2_OBUF;
  wire _n0011_pack_1;
  wire \d11/q/SRINV ;
  wire \d11/q/CLKINV ;
  wire \d12/q/DXMUX ;
  wire \d12/q/FXMUX ;
  wire p3_out3_OBUF;
  wire \p3/out31/O_pack_1 ;
  wire \d12/q/SRINV ;
  wire \d12/q/CLKINV ;
  wire \d6/q/DXMUX ;
  wire \d6/q/FXMUX ;
  wire p2_out1_OBUF;
  wire _n0005_pack_1;
  wire \d6/q/SRINV ;
  wire \d6/q/CLKINV ;
  wire \d7/q/DXMUX ;
  wire \d7/q/FXMUX ;
  wire p2_out2_OBUF;
  wire _n0007_pack_1;
  wire \d7/q/SRINV ;
  wire \d7/q/CLKINV ;
  wire \sh_p3_out1/ENABLE ;
  wire \sh_p3_out1/O ;
  wire \sh_p3_out2/ENABLE ;
  wire \sh_p3_out2/O ;
  wire \p3_out0/ENABLE ;
  wire \p3_out0/O ;
  wire \sh_p3_out3/ENABLE ;
  wire \sh_p3_out3/O ;
  wire \p3_out1/ENABLE ;
  wire \p3_out1/O ;
  wire \p3_out2/ENABLE ;
  wire \p3_out2/O ;
  wire \p3_out3/ENABLE ;
  wire \p3_out3/O ;
  wire \gnt4_pulse/ENABLE ;
  wire \gnt4_pulse/O ;
  wire \gnt4_pulse/OUTPUT/OFF/O1INV ;
  wire \pulse4/dff1/Q_1 ;
  wire \gnt4_pulse/OUTPUT/OTCLK1INV ;
  wire \sh_p4_out0/ENABLE ;
  wire \sh_p4_out0/O ;
  wire \en1/ENABLE ;
  wire \en1/O ;
  wire \en1/OUTPUT/OFF/O1INV ;
  wire \d21/Q_1 ;
  wire \en1/OUTPUT/OTCLK1INV ;
  wire \sh_p4_out1/ENABLE ;
  wire \sh_p4_out1/O ;
  wire \gnt1_pulse/ENABLE ;
  wire \gnt1_pulse/O ;
  wire \gnt1_pulse/OUTPUT/OFF/O1INV ;
  wire \pulse1/dff1/Q_1 ;
  wire \gnt1_pulse/OUTPUT/OTCLK1INV ;
  wire \en2/ENABLE ;
  wire \en2/O ;
  wire \en2/OUTPUT/OFF/O1INV ;
  wire \d18/Q_1 ;
  wire \en2/OUTPUT/OTCLK1INV ;
  wire \sh_p4_out2/ENABLE ;
  wire \sh_p4_out2/O ;
  wire \en3/ENABLE ;
  wire \en3/O ;
  wire \en3/OUTPUT/OTCLK1INV ;
  wire \p4_out0/ENABLE ;
  wire \p4_out0/O ;
  wire \sh_p4_out3/ENABLE ;
  wire \sh_p4_out3/O ;
  wire \en4/ENABLE ;
  wire \en4/O ;
  wire \en4/OUTPUT/OTCLK1INV ;
  wire \p4_out1/ENABLE ;
  wire \p4_out1/O ;
  wire \sh_p1_out0/ENABLE ;
  wire \sh_p1_out0/O ;
  wire \p4_out2/ENABLE ;
  wire \p4_out2/O ;
  wire \gnt2_pulse/OUTPUT/OFF/OFF1/RST ;
  wire \gnt2_pulse/OUTPUT/OFF/OFF1/RSTAND ;
  wire \en1_reset/OUTPUT/OFF/OFF1/RST ;
  wire \en1_reset/OUTPUT/OFF/OFF1/RSTAND ;
  wire \d19/Q_1 ;
  wire \en3/OUTPUT/OFF/O1INV ;
  wire \d20/Q_1 ;
  wire \en4/OUTPUT/OFF/O1INV ;
  wire \pulse3/dff1/Q_1 ;
  wire \gnt3_pulse/OUTPUT/OFF/O1INV ;
  wire \en3/OUTPUT/OFF/OFF1/RST ;
  wire \en3/OUTPUT/OFF/OFF1/RSTAND ;
  wire \en4/OUTPUT/OFF/OFF1/RST ;
  wire \en4/OUTPUT/OFF/OFF1/RSTAND ;
  wire \gnt4_pulse/OUTPUT/OFF/OFF1/RST ;
  wire \gnt4_pulse/OUTPUT/OFF/OFF1/RSTAND ;
  wire \en1/OUTPUT/OFF/OFF1/RST ;
  wire \en1/OUTPUT/OFF/OFF1/RSTAND ;
  wire \gnt1_pulse/OUTPUT/OFF/OFF1/RST ;
  wire \gnt1_pulse/OUTPUT/OFF/OFF1/RSTAND ;
  wire \en2/OUTPUT/OFF/OFF1/RST ;
  wire \en2/OUTPUT/OFF/OFF1/RSTAND ;
  wire \pulse1/dff2/Q/FFY/RST ;
  wire \pulse1/dff2/Q/FFY/RSTAND ;
  wire \gnt3_pulse/OUTPUT/OFF/OFF1/RST ;
  wire \gnt3_pulse/OUTPUT/OFF/OFF1/RSTAND ;
  wire \pulse2/dff1/Q/FFY/RST ;
  wire \pulse2/dff1/Q/FFY/RSTAND ;
  wire \pulse2/dff2/Q/FFY/RST ;
  wire \pulse2/dff2/Q/FFY/RSTAND ;
  wire \d20/Q/FFY/RST ;
  wire \d20/Q/FFY/RSTAND ;
  wire \d21/Q/FFY/RST ;
  wire \d21/Q/FFY/RSTAND ;
  wire \pulse1/dff1/Q/FFY/RST ;
  wire \pulse1/dff1/Q/FFY/RSTAND ;
  wire \pulse3/dff1/Q/FFY/RST ;
  wire \pulse3/dff1/Q/FFY/RSTAND ;
  wire \pulse3/dff2/Q/FFY/RST ;
  wire \pulse3/dff2/Q/FFY/RSTAND ;
  wire \d17/Q/FFY/RST ;
  wire \d17/Q/FFY/RSTAND ;
  wire \d18/Q/FFY/RST ;
  wire \d18/Q/FFY/RSTAND ;
  wire \d19/Q/FFY/RST ;
  wire \d19/Q/FFY/RSTAND ;
  wire \pulse4/dff1/Q/FFY/RST ;
  wire \pulse4/dff1/Q/FFY/RSTAND ;
  wire \pulse4/dff2/Q/FFY/RST ;
  wire \pulse4/dff2/Q/FFY/RSTAND ;
  wire VCC;
  wire GND;
  initial $sdf_annotate("round_robin_arbiter_timesim.sdf");
  X_BUF \_n0006/XUSED  (
    .I(_n0006),
    .O(_n0006_0)
  );
  X_BUF \_n0006/YUSED  (
    .I(_n0008),
    .O(_n0008_0)
  );
  defparam _n00081.INIT = 16'h0010;
  X_LUT4 _n00081 (
    .ADR0(\d6/q ),
    .ADR1(\d7/q ),
    .ADR2(req1_IBUF),
    .ADR3(\d5/q ),
    .O(_n0008)
  );
  X_BUF \_n0023/XUSED  (
    .I(_n0023),
    .O(_n0023_0)
  );
  X_BUF \_n0023/YUSED  (
    .I(_n0025),
    .O(_n0025_0)
  );
  defparam _n00251.INIT = 16'hFFFE;
  X_LUT4 _n00251 (
    .ADR0(reset_IBUF),
    .ADR1(\pulse2/dff1/Q ),
    .ADR2(\pulse1/dff1/Q ),
    .ADR3(\pulse3/dff1/Q ),
    .O(_n0025)
  );
  X_BUF \_n0017/XUSED  (
    .I(_n0017),
    .O(_n0017_0)
  );
  X_BUF \_n0017/YUSED  (
    .I(N9_pack_1),
    .O(N9)
  );
  defparam _n00171.INIT = 16'hFFFE;
  X_LUT4 _n00171 (
    .ADR0(\d20/Q ),
    .ADR1(reset_IBUF),
    .ADR2(\d19/Q ),
    .ADR3(\d18/Q ),
    .O(N9_pack_1)
  );
  X_BUF \d5/q/DXMUX_0  (
    .I(\d5/q/FXMUX ),
    .O(\d5/q/DXMUX )
  );
  X_BUF \d5/q/FXMUX_1  (
    .I(p2_out0_OBUF),
    .O(\d5/q/FXMUX )
  );
  X_BUF \d5/q/YUSED  (
    .I(N8),
    .O(N8_0)
  );
  X_BUF \d5/q/SRINV_2  (
    .I(reset_IBUF),
    .O(\d5/q/SRINV )
  );
  X_BUF \d5/q/CLKINV_3  (
    .I(clk_BUFGP),
    .O(\d5/q/CLKINV )
  );
  X_BUF \pulse1/dff2/Q/DYMUX_4  (
    .I(\pulse1/dff1/Q ),
    .O(\pulse1/dff2/Q/DYMUX )
  );
  X_BUF \pulse1/dff2/Q/CLKINV_5  (
    .I(clk_BUFGP),
    .O(\pulse1/dff2/Q/CLKINV )
  );
  X_OPAD \sh_p2_out0/PAD  (
    .PAD(sh_p2_out0)
  );
  X_TRI sh_p2_out0_OBUF (
    .I(\sh_p2_out0/O ),
    .CTL(\sh_p2_out0/ENABLE ),
    .O(sh_p2_out0)
  );
  X_INV \sh_p2_out0/ENABLEINV  (
    .I(GTS),
    .O(\sh_p2_out0/ENABLE )
  );
  X_OPAD \sh_p2_out1/PAD  (
    .PAD(sh_p2_out1)
  );
  X_TRI sh_p2_out1_OBUF (
    .I(\sh_p2_out1/O ),
    .CTL(\sh_p2_out1/ENABLE ),
    .O(sh_p2_out1)
  );
  X_INV \sh_p2_out1/ENABLEINV  (
    .I(GTS),
    .O(\sh_p2_out1/ENABLE )
  );
  X_OPAD \sh_p2_out2/PAD  (
    .PAD(sh_p2_out2)
  );
  X_TRI sh_p2_out2_OBUF (
    .I(\sh_p2_out2/O ),
    .CTL(\sh_p2_out2/ENABLE ),
    .O(sh_p2_out2)
  );
  X_INV \sh_p2_out2/ENABLEINV  (
    .I(GTS),
    .O(\sh_p2_out2/ENABLE )
  );
  X_OPAD \p2_out0/PAD  (
    .PAD(p2_out0)
  );
  X_TRI p2_out0_OBUF_6 (
    .I(\p2_out0/O ),
    .CTL(\p2_out0/ENABLE ),
    .O(p2_out0)
  );
  X_INV \p2_out0/ENABLEINV  (
    .I(GTS),
    .O(\p2_out0/ENABLE )
  );
  X_OPAD \sh_p2_out3/PAD  (
    .PAD(sh_p2_out3)
  );
  X_TRI sh_p2_out3_OBUF (
    .I(\sh_p2_out3/O ),
    .CTL(\sh_p2_out3/ENABLE ),
    .O(sh_p2_out3)
  );
  X_INV \sh_p2_out3/ENABLEINV  (
    .I(GTS),
    .O(\sh_p2_out3/ENABLE )
  );
  X_OPAD \p2_out1/PAD  (
    .PAD(p2_out1)
  );
  X_TRI p2_out1_OBUF_7 (
    .I(\p2_out1/O ),
    .CTL(\p2_out1/ENABLE ),
    .O(p2_out1)
  );
  X_INV \p2_out1/ENABLEINV  (
    .I(GTS),
    .O(\p2_out1/ENABLE )
  );
  X_OPAD \p2_out2/PAD  (
    .PAD(p2_out2)
  );
  X_TRI p2_out2_OBUF_8 (
    .I(\p2_out2/O ),
    .CTL(\p2_out2/ENABLE ),
    .O(p2_out2)
  );
  X_INV \p2_out2/ENABLEINV  (
    .I(GTS),
    .O(\p2_out2/ENABLE )
  );
  X_OPAD \p2_out3/PAD  (
    .PAD(p2_out3)
  );
  X_TRI p2_out3_OBUF_9 (
    .I(\p2_out3/O ),
    .CTL(\p2_out3/ENABLE ),
    .O(p2_out3)
  );
  X_INV \p2_out3/ENABLEINV  (
    .I(GTS),
    .O(\p2_out3/ENABLE )
  );
  X_IPAD \clk/PAD  (
    .PAD(clk)
  );
  X_BUF \clk_BUFGP/IBUFG_10  (
    .I(clk),
    .O(\clk/INBUF )
  );
  X_BUF \clk/IFF/IMUX  (
    .I(\clk/INBUF ),
    .O(\clk_BUFGP/IBUFG )
  );
  X_OPAD \gnt1/PAD  (
    .PAD(gnt1)
  );
  X_TRI gnt1_OBUF_11 (
    .I(\gnt1/O ),
    .CTL(\gnt1/ENABLE ),
    .O(gnt1)
  );
  X_INV \gnt1/ENABLEINV  (
    .I(GTS),
    .O(\gnt1/ENABLE )
  );
  X_OPAD \gnt2/PAD  (
    .PAD(gnt2)
  );
  X_TRI gnt2_OBUF_12 (
    .I(\gnt2/O ),
    .CTL(\gnt2/ENABLE ),
    .O(gnt2)
  );
  X_INV \gnt2/ENABLEINV  (
    .I(GTS),
    .O(\gnt2/ENABLE )
  );
  X_OPAD \gnt2_pulse/PAD  (
    .PAD(gnt2_pulse)
  );
  X_TRI gnt2_pulse_OBUF (
    .I(\gnt2_pulse/O ),
    .CTL(\gnt2_pulse/ENABLE ),
    .O(gnt2_pulse)
  );
  X_INV \gnt2_pulse/ENABLEINV  (
    .I(GTS),
    .O(\gnt2_pulse/ENABLE )
  );
  X_BUF \gnt2_pulse/OUTPUT/OTCLK1INV_13  (
    .I(_n0028_0),
    .O(\gnt2_pulse/OUTPUT/OTCLK1INV )
  );
  X_OPAD \en1_reset/PAD  (
    .PAD(en1_reset)
  );
  X_TRI en1_reset_OBUF (
    .I(\en1_reset/O ),
    .CTL(\en1_reset/ENABLE ),
    .O(en1_reset)
  );
  X_INV \en1_reset/ENABLEINV  (
    .I(GTS),
    .O(\en1_reset/ENABLE )
  );
  X_BUF \en1_reset/OUTPUT/OTCLK1INV_14  (
    .I(clk_BUFGP),
    .O(\en1_reset/OUTPUT/OTCLK1INV )
  );
  X_OPAD \gnt3/PAD  (
    .PAD(gnt3)
  );
  X_TRI gnt3_OBUF_15 (
    .I(\gnt3/O ),
    .CTL(\gnt3/ENABLE ),
    .O(gnt3)
  );
  X_INV \gnt3/ENABLEINV  (
    .I(GTS),
    .O(\gnt3/ENABLE )
  );
  X_OPAD \gnt4/PAD  (
    .PAD(gnt4)
  );
  X_TRI gnt4_OBUF_16 (
    .I(\gnt4/O ),
    .CTL(\gnt4/ENABLE ),
    .O(gnt4)
  );
  X_INV \gnt4/ENABLEINV  (
    .I(GTS),
    .O(\gnt4/ENABLE )
  );
  X_OPAD \sh_p3_out0/PAD  (
    .PAD(sh_p3_out0)
  );
  X_TRI sh_p3_out0_OBUF (
    .I(\sh_p3_out0/O ),
    .CTL(\sh_p3_out0/ENABLE ),
    .O(sh_p3_out0)
  );
  X_INV \sh_p3_out0/ENABLEINV  (
    .I(GTS),
    .O(\sh_p3_out0/ENABLE )
  );
  defparam \p2/out21_SW0 .INIT = 16'hCFCF;
  X_LUT4 \p2/out21_SW0  (
    .ADR0(VCC),
    .ADR1(reset_IBUF),
    .ADR2(\d18/Q ),
    .ADR3(VCC),
    .O(N8)
  );
  X_BUF \gnt2_pulse/OUTPUT/OFF/OMUX  (
    .I(\pulse2/dff1/Q_1 ),
    .O(\gnt2_pulse/O )
  );
  X_BUF \gnt2_pulse/OUTPUT/OFF/O1INV_17  (
    .I(GLOBAL_LOGIC1),
    .O(\gnt2_pulse/OUTPUT/OFF/O1INV )
  );
  X_BUF \en1_reset/OUTPUT/OFF/OMUX  (
    .I(\d17/Q_1 ),
    .O(\en1_reset/O )
  );
  X_BUF \en1_reset/OUTPUT/OFF/O1INV_18  (
    .I(GLOBAL_LOGIC1),
    .O(\en1_reset/OUTPUT/OFF/O1INV )
  );
  X_BUF \d17/Q/DYMUX_19  (
    .I(GLOBAL_LOGIC1),
    .O(\d17/Q/DYMUX )
  );
  X_BUF \d17/Q/CLKINV_20  (
    .I(clk_BUFGP),
    .O(\d17/Q/CLKINV )
  );
  X_BUF \d18/Q/DYMUX_21  (
    .I(GLOBAL_LOGIC1),
    .O(\d18/Q/DYMUX )
  );
  X_BUF \d18/Q/CLKINV_22  (
    .I(_n0027_0),
    .O(\d18/Q/CLKINV )
  );
  X_BUF \d19/Q/DYMUX_23  (
    .I(GLOBAL_LOGIC1),
    .O(\d19/Q/DYMUX )
  );
  X_BUF \d19/Q/CLKINV_24  (
    .I(_n0028_0),
    .O(\d19/Q/CLKINV )
  );
  X_BUF \pulse4/dff1/Q/DYMUX_25  (
    .I(GLOBAL_LOGIC1),
    .O(\pulse4/dff1/Q/DYMUX )
  );
  X_BUF \pulse4/dff1/Q/CLKINV_26  (
    .I(_n0030_0),
    .O(\pulse4/dff1/Q/CLKINV )
  );
  X_BUF \pulse4/dff2/Q/DYMUX_27  (
    .I(\pulse4/dff1/Q ),
    .O(\pulse4/dff2/Q/DYMUX )
  );
  X_BUF \pulse4/dff2/Q/CLKINV_28  (
    .I(clk_BUFGP),
    .O(\pulse4/dff2/Q/CLKINV )
  );
  X_BUF \_n0000/XUSED  (
    .I(_n0000),
    .O(_n0000_0)
  );
  defparam _n00001.INIT = 16'hFFF0;
  X_LUT4 _n00001 (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\d17/Q ),
    .ADR3(\d21/Q ),
    .O(_n0000)
  );
  X_BUF \_n0012/XUSED  (
    .I(_n0012),
    .O(_n0012_0)
  );
  X_BUF \_n0012/YUSED  (
    .I(_n0010),
    .O(_n0010_0)
  );
  defparam _n00101.INIT = 16'h0002;
  X_LUT4 _n00101 (
    .ADR0(req4_IBUF),
    .ADR1(\d12/q ),
    .ADR2(\d11/q ),
    .ADR3(\d9/q ),
    .O(_n0010)
  );
  X_BUF \_n0004/XUSED  (
    .I(_n0004),
    .O(_n0004_0)
  );
  X_BUF \_n0004/YUSED  (
    .I(_n0002),
    .O(_n0002_0)
  );
  defparam _n00021.INIT = 16'h0004;
  X_LUT4 _n00021 (
    .ADR0(\d4/q ),
    .ADR1(req2_IBUF),
    .ADR2(\d1/q ),
    .ADR3(\d3/q ),
    .O(_n0002)
  );
  X_BUF \_n0016/XUSED  (
    .I(_n0016),
    .O(_n0016_0)
  );
  X_BUF \_n0016/YUSED  (
    .I(_n0014),
    .O(_n0014_0)
  );
  defparam _n00141.INIT = 16'h0010;
  X_LUT4 _n00141 (
    .ADR0(\d15/q ),
    .ADR1(\d16/q ),
    .ADR2(req1_IBUF),
    .ADR3(\d13/q ),
    .O(_n0014)
  );
  X_BUF \pulse1/dff1/Q/DYMUX_29  (
    .I(GLOBAL_LOGIC1),
    .O(\pulse1/dff1/Q/DYMUX )
  );
  X_BUF \pulse1/dff1/Q/CLKINV_30  (
    .I(_n0027_0),
    .O(\pulse1/dff1/Q/CLKINV )
  );
  X_BUF \d8/q/DXMUX_31  (
    .I(\d8/q/FXMUX ),
    .O(\d8/q/DXMUX )
  );
  X_BUF \d8/q/FXMUX_32  (
    .I(p2_out3_OBUF),
    .O(\d8/q/FXMUX )
  );
  X_BUF \d8/q/YUSED  (
    .I(\p2/out31/O_pack_1 ),
    .O(\p2/out31/O )
  );
  X_BUF \d8/q/SRINV_33  (
    .I(reset_IBUF),
    .O(\d8/q/SRINV )
  );
  X_BUF \d8/q/CLKINV_34  (
    .I(clk_BUFGP),
    .O(\d8/q/CLKINV )
  );
  X_BUF \d9/q/XUSED  (
    .I(N6),
    .O(N6_0)
  );
  X_BUF \d9/q/DYMUX_35  (
    .I(\d9/q/GYMUX ),
    .O(\d9/q/DYMUX )
  );
  X_BUF \d9/q/GYMUX_36  (
    .I(p3_out0_OBUF),
    .O(\d9/q/GYMUX )
  );
  X_BUF \d9/q/SRINV_37  (
    .I(reset_IBUF),
    .O(\d9/q/SRINV )
  );
  X_BUF \d9/q/CLKINV_38  (
    .I(clk_BUFGP),
    .O(\d9/q/CLKINV )
  );
  X_BUF \d14/q/DXMUX_39  (
    .I(\d14/q/FXMUX ),
    .O(\d14/q/DXMUX )
  );
  X_BUF \d14/q/FXMUX_40  (
    .I(p4_out1_OBUF),
    .O(\d14/q/FXMUX )
  );
  X_BUF \d14/q/YUSED  (
    .I(_n0013_pack_1),
    .O(_n0013)
  );
  X_BUF \d14/q/SRINV_41  (
    .I(reset_IBUF),
    .O(\d14/q/SRINV )
  );
  X_BUF \d14/q/CLKINV_42  (
    .I(clk_BUFGP),
    .O(\d14/q/CLKINV )
  );
  X_BUF \d15/q/DXMUX_43  (
    .I(\d15/q/FXMUX ),
    .O(\d15/q/DXMUX )
  );
  X_BUF \d15/q/FXMUX_44  (
    .I(p4_out2_OBUF),
    .O(\d15/q/FXMUX )
  );
  X_BUF \d15/q/YUSED  (
    .I(_n0015_pack_1),
    .O(_n0015)
  );
  X_BUF \d15/q/SRINV_45  (
    .I(reset_IBUF),
    .O(\d15/q/SRINV )
  );
  X_BUF \d15/q/CLKINV_46  (
    .I(clk_BUFGP),
    .O(\d15/q/CLKINV )
  );
  X_BUF \d16/q/DXMUX_47  (
    .I(\d16/q/FXMUX ),
    .O(\d16/q/DXMUX )
  );
  X_BUF \d16/q/FXMUX_48  (
    .I(p4_out3_OBUF),
    .O(\d16/q/FXMUX )
  );
  X_BUF \d16/q/YUSED  (
    .I(\p4/out31/O_pack_1 ),
    .O(\p4/out31/O )
  );
  X_BUF \d16/q/SRINV_49  (
    .I(reset_IBUF),
    .O(\d16/q/SRINV )
  );
  X_BUF \d16/q/CLKINV_50  (
    .I(clk_BUFGP),
    .O(\d16/q/CLKINV )
  );
  X_BUF \d2/q/DXMUX_51  (
    .I(\d2/q/FXMUX ),
    .O(\d2/q/DXMUX )
  );
  X_BUF \d2/q/FXMUX_52  (
    .I(p1_out1_OBUF),
    .O(\d2/q/FXMUX )
  );
  X_BUF \d2/q/YUSED  (
    .I(_n0001_pack_1),
    .O(_n0001)
  );
  X_BUF \d2/q/SRINV_53  (
    .I(reset_IBUF),
    .O(\d2/q/SRINV )
  );
  X_BUF \d2/q/CLKINV_54  (
    .I(clk_BUFGP),
    .O(\d2/q/CLKINV )
  );
  X_BUF \d13/q/XUSED  (
    .I(N4),
    .O(N4_0)
  );
  X_BUF \d13/q/DYMUX_55  (
    .I(\d13/q/GYMUX ),
    .O(\d13/q/DYMUX )
  );
  X_BUF \d13/q/GYMUX_56  (
    .I(p4_out0_OBUF),
    .O(\d13/q/GYMUX )
  );
  X_BUF \d13/q/SRINV_57  (
    .I(reset_IBUF),
    .O(\d13/q/SRINV )
  );
  X_BUF \d13/q/CLKINV_58  (
    .I(clk_BUFGP),
    .O(\d13/q/CLKINV )
  );
  X_BUF \d3/q/DXMUX_59  (
    .I(\d3/q/FXMUX ),
    .O(\d3/q/DXMUX )
  );
  X_BUF \d3/q/FXMUX_60  (
    .I(p1_out2_OBUF),
    .O(\d3/q/FXMUX )
  );
  X_BUF \d3/q/YUSED  (
    .I(_n0003_pack_1),
    .O(_n0003)
  );
  X_BUF \d3/q/SRINV_61  (
    .I(reset_IBUF),
    .O(\d3/q/SRINV )
  );
  X_BUF \d3/q/CLKINV_62  (
    .I(clk_BUFGP),
    .O(\d3/q/CLKINV )
  );
  X_BUF \d1/q/XUSED  (
    .I(N10),
    .O(N10_0)
  );
  X_BUF \d1/q/DYMUX_63  (
    .I(\d1/q/GYMUX ),
    .O(\d1/q/DYMUX )
  );
  X_BUF \d1/q/GYMUX_64  (
    .I(p1_out0_OBUF),
    .O(\d1/q/GYMUX )
  );
  X_BUF \d1/q/SRINV_65  (
    .I(reset_IBUF),
    .O(\d1/q/SRINV )
  );
  X_BUF \d1/q/CLKINV_66  (
    .I(clk_BUFGP),
    .O(\d1/q/CLKINV )
  );
  X_BUF \gnt1_OBUF/YUSED  (
    .I(_n0027),
    .O(_n0027_0)
  );
  defparam _n00271.INIT = 16'h0001;
  X_LUT4 _n00271 (
    .ADR0(\d8/q ),
    .ADR1(\d1/q ),
    .ADR2(\d14/q ),
    .ADR3(\d11/q ),
    .O(_n0027)
  );
  X_BUF \_n0021/XUSED  (
    .I(_n0021),
    .O(_n0021_0)
  );
  X_BUF \_n0021/YUSED  (
    .I(_n0019),
    .O(_n0019_0)
  );
  defparam _n00191.INIT = 16'hFFFE;
  X_LUT4 _n00191 (
    .ADR0(\pulse2/dff1/Q ),
    .ADR1(reset_IBUF),
    .ADR2(\pulse4/dff1/Q ),
    .ADR3(\pulse3/dff1/Q ),
    .O(_n0019)
  );
  X_BUF \gnt2_OBUF/YUSED  (
    .I(_n0028),
    .O(_n0028_0)
  );
  defparam _n00281.INIT = 16'h0001;
  X_LUT4 _n00281 (
    .ADR0(\d15/q ),
    .ADR1(\d12/q ),
    .ADR2(\d5/q ),
    .ADR3(\d2/q ),
    .O(_n0028)
  );
  X_BUF \gnt3_OBUF/YUSED  (
    .I(_n0029),
    .O(_n0029_0)
  );
  defparam _n00291.INIT = 16'h0001;
  X_LUT4 _n00291 (
    .ADR0(\d3/q ),
    .ADR1(\d16/q ),
    .ADR2(\d6/q ),
    .ADR3(\d9/q ),
    .O(_n0029)
  );
  X_BUF \pulse1/_n0001/XUSED  (
    .I(\pulse1/_n0001 ),
    .O(\pulse1/_n0001_0 )
  );
  X_BUF \pulse1/_n0001/YUSED  (
    .I(\pulse2/_n0001 ),
    .O(\pulse2/_n0001_0 )
  );
  defparam \pulse2/_n00011 .INIT = 16'hFFCC;
  X_LUT4 \pulse2/_n00011  (
    .ADR0(VCC),
    .ADR1(\pulse2/dff2/Q ),
    .ADR2(VCC),
    .ADR3(reset_IBUF),
    .O(\pulse2/_n0001 )
  );
  X_BUF \pulse3/_n0001/XUSED  (
    .I(\pulse3/_n0001 ),
    .O(\pulse3/_n0001_0 )
  );
  X_BUF \pulse3/_n0001/YUSED  (
    .I(\pulse4/_n0001 ),
    .O(\pulse4/_n0001_0 )
  );
  defparam \pulse4/_n00011 .INIT = 16'hFFF0;
  X_LUT4 \pulse4/_n00011  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\pulse4/dff2/Q ),
    .ADR3(reset_IBUF),
    .O(\pulse4/_n0001 )
  );
  X_BUF \_n0030/XUSED  (
    .I(_n0030),
    .O(_n0030_0)
  );
  defparam gnt41.INIT = 16'hFFFE;
  X_LUT4 gnt41 (
    .ADR0(\d10/q ),
    .ADR1(\d13/q ),
    .ADR2(\d7/q ),
    .ADR3(\d4/q ),
    .O(gnt4_OBUF)
  );
  X_BUF \pulse2/dff1/Q/DYMUX_67  (
    .I(GLOBAL_LOGIC1),
    .O(\pulse2/dff1/Q/DYMUX )
  );
  X_BUF \pulse2/dff1/Q/CLKINV_68  (
    .I(_n0028_0),
    .O(\pulse2/dff1/Q/CLKINV )
  );
  X_BUF \pulse2/dff2/Q/DYMUX_69  (
    .I(\pulse2/dff1/Q ),
    .O(\pulse2/dff2/Q/DYMUX )
  );
  X_BUF \pulse2/dff2/Q/CLKINV_70  (
    .I(clk_BUFGP),
    .O(\pulse2/dff2/Q/CLKINV )
  );
  X_BUF \d20/Q/DYMUX_71  (
    .I(GLOBAL_LOGIC1),
    .O(\d20/Q/DYMUX )
  );
  X_BUF \d20/Q/CLKINV_72  (
    .I(_n0029_0),
    .O(\d20/Q/CLKINV )
  );
  X_BUF \d21/Q/DYMUX_73  (
    .I(GLOBAL_LOGIC1),
    .O(\d21/Q/DYMUX )
  );
  X_BUF \d21/Q/CLKINV_74  (
    .I(_n0030_0),
    .O(\d21/Q/CLKINV )
  );
  X_BUF \pulse3/dff1/Q/DYMUX_75  (
    .I(GLOBAL_LOGIC1),
    .O(\pulse3/dff1/Q/DYMUX )
  );
  X_BUF \pulse3/dff1/Q/CLKINV_76  (
    .I(_n0029_0),
    .O(\pulse3/dff1/Q/CLKINV )
  );
  X_BUF \pulse3/dff2/Q/DYMUX_77  (
    .I(\pulse3/dff1/Q ),
    .O(\pulse3/dff2/Q/DYMUX )
  );
  X_BUF \pulse3/dff2/Q/CLKINV_78  (
    .I(clk_BUFGP),
    .O(\pulse3/dff2/Q/CLKINV )
  );
  X_OPAD \sh_p1_out1/PAD  (
    .PAD(sh_p1_out1)
  );
  X_TRI sh_p1_out1_OBUF (
    .I(\sh_p1_out1/O ),
    .CTL(\sh_p1_out1/ENABLE ),
    .O(sh_p1_out1)
  );
  X_INV \sh_p1_out1/ENABLEINV  (
    .I(GTS),
    .O(\sh_p1_out1/ENABLE )
  );
  X_OPAD \p4_out3/PAD  (
    .PAD(p4_out3)
  );
  X_TRI p4_out3_OBUF_79 (
    .I(\p4_out3/O ),
    .CTL(\p4_out3/ENABLE ),
    .O(p4_out3)
  );
  X_INV \p4_out3/ENABLEINV  (
    .I(GTS),
    .O(\p4_out3/ENABLE )
  );
  X_OPAD \sh_p1_out2/PAD  (
    .PAD(sh_p1_out2)
  );
  X_TRI sh_p1_out2_OBUF (
    .I(\sh_p1_out2/O ),
    .CTL(\sh_p1_out2/ENABLE ),
    .O(sh_p1_out2)
  );
  X_INV \sh_p1_out2/ENABLEINV  (
    .I(GTS),
    .O(\sh_p1_out2/ENABLE )
  );
  X_OPAD \p1_out0/PAD  (
    .PAD(p1_out0)
  );
  X_TRI p1_out0_OBUF_80 (
    .I(\p1_out0/O ),
    .CTL(\p1_out0/ENABLE ),
    .O(p1_out0)
  );
  X_INV \p1_out0/ENABLEINV  (
    .I(GTS),
    .O(\p1_out0/ENABLE )
  );
  X_OPAD \sh_p1_out3/PAD  (
    .PAD(sh_p1_out3)
  );
  X_TRI sh_p1_out3_OBUF (
    .I(\sh_p1_out3/O ),
    .CTL(\sh_p1_out3/ENABLE ),
    .O(sh_p1_out3)
  );
  X_INV \sh_p1_out3/ENABLEINV  (
    .I(GTS),
    .O(\sh_p1_out3/ENABLE )
  );
  X_OPAD \p1_out1/PAD  (
    .PAD(p1_out1)
  );
  X_TRI p1_out1_OBUF_81 (
    .I(\p1_out1/O ),
    .CTL(\p1_out1/ENABLE ),
    .O(p1_out1)
  );
  X_INV \p1_out1/ENABLEINV  (
    .I(GTS),
    .O(\p1_out1/ENABLE )
  );
  X_IPAD \req1/PAD  (
    .PAD(req1)
  );
  X_BUF req1_IBUF_82 (
    .I(req1),
    .O(\req1/INBUF )
  );
  X_BUF \req1/IFF/IMUX  (
    .I(\req1/INBUF ),
    .O(req1_IBUF)
  );
  X_OPAD \p1_out2/PAD  (
    .PAD(p1_out2)
  );
  X_TRI p1_out2_OBUF_83 (
    .I(\p1_out2/O ),
    .CTL(\p1_out2/ENABLE ),
    .O(p1_out2)
  );
  X_INV \p1_out2/ENABLEINV  (
    .I(GTS),
    .O(\p1_out2/ENABLE )
  );
  X_IPAD \req2/PAD  (
    .PAD(req2)
  );
  X_BUF req2_IBUF_84 (
    .I(req2),
    .O(\req2/INBUF )
  );
  X_BUF \req2/IFF/IMUX  (
    .I(\req2/INBUF ),
    .O(req2_IBUF)
  );
  X_IPAD \reset/PAD  (
    .PAD(reset)
  );
  X_BUF reset_IBUF_85 (
    .I(reset),
    .O(\reset/INBUF )
  );
  X_BUF \reset/IFF/IMUX  (
    .I(\reset/INBUF ),
    .O(reset_IBUF)
  );
  X_OPAD \p1_out3/PAD  (
    .PAD(p1_out3)
  );
  X_TRI p1_out3_OBUF_86 (
    .I(\p1_out3/O ),
    .CTL(\p1_out3/ENABLE ),
    .O(p1_out3)
  );
  X_INV \p1_out3/ENABLEINV  (
    .I(GTS),
    .O(\p1_out3/ENABLE )
  );
  X_IPAD \req3/PAD  (
    .PAD(req3)
  );
  X_BUF req3_IBUF_87 (
    .I(req3),
    .O(\req3/INBUF )
  );
  X_BUF \req3/IFF/IMUX  (
    .I(\req3/INBUF ),
    .O(req3_IBUF)
  );
  X_IPAD \req4/PAD  (
    .PAD(req4)
  );
  X_BUF req4_IBUF_88 (
    .I(req4),
    .O(\req4/INBUF )
  );
  X_BUF \req4/IFF/IMUX  (
    .I(\req4/INBUF ),
    .O(req4_IBUF)
  );
  X_OPAD \gnt3_pulse/PAD  (
    .PAD(gnt3_pulse)
  );
  X_TRI gnt3_pulse_OBUF (
    .I(\gnt3_pulse/O ),
    .CTL(\gnt3_pulse/ENABLE ),
    .O(gnt3_pulse)
  );
  X_INV \gnt3_pulse/ENABLEINV  (
    .I(GTS),
    .O(\gnt3_pulse/ENABLE )
  );
  X_BUF \gnt3_pulse/OUTPUT/OTCLK1INV_89  (
    .I(_n0029_0),
    .O(\gnt3_pulse/OUTPUT/OTCLK1INV )
  );
  X_BUFGMUX \clk_BUFGP/BUFG  (
    .I0(\clk_BUFGP/IBUFG ),
    .I1(GND),
    .S(\clk_BUFGP/BUFG/S_INVNOT ),
    .O(clk_BUFGP),
    .GSR(GSR)
  );
  X_INV \clk_BUFGP/BUFG/SINV  (
    .I(GLOBAL_LOGIC1),
    .O(\clk_BUFGP/BUFG/S_INVNOT )
  );
  X_BUF \d4/q/DXMUX_90  (
    .I(\d4/q/FXMUX ),
    .O(\d4/q/DXMUX )
  );
  X_BUF \d4/q/FXMUX_91  (
    .I(p1_out3_OBUF),
    .O(\d4/q/FXMUX )
  );
  X_BUF \d4/q/YUSED  (
    .I(\p1/out31/O_pack_1 ),
    .O(\p1/out31/O )
  );
  X_BUF \d4/q/SRINV_92  (
    .I(reset_IBUF),
    .O(\d4/q/SRINV )
  );
  X_BUF \d4/q/CLKINV_93  (
    .I(clk_BUFGP),
    .O(\d4/q/CLKINV )
  );
  X_BUF \d10/q/DXMUX_94  (
    .I(\d10/q/FXMUX ),
    .O(\d10/q/DXMUX )
  );
  X_BUF \d10/q/FXMUX_95  (
    .I(p3_out1_OBUF),
    .O(\d10/q/FXMUX )
  );
  X_BUF \d10/q/YUSED  (
    .I(_n0009_pack_1),
    .O(_n0009)
  );
  X_BUF \d10/q/SRINV_96  (
    .I(reset_IBUF),
    .O(\d10/q/SRINV )
  );
  X_BUF \d10/q/CLKINV_97  (
    .I(clk_BUFGP),
    .O(\d10/q/CLKINV )
  );
  X_BUF \d11/q/DXMUX_98  (
    .I(\d11/q/FXMUX ),
    .O(\d11/q/DXMUX )
  );
  X_BUF \d11/q/FXMUX_99  (
    .I(p3_out2_OBUF),
    .O(\d11/q/FXMUX )
  );
  X_BUF \d11/q/YUSED  (
    .I(_n0011_pack_1),
    .O(_n0011)
  );
  X_BUF \d11/q/SRINV_100  (
    .I(reset_IBUF),
    .O(\d11/q/SRINV )
  );
  X_BUF \d11/q/CLKINV_101  (
    .I(clk_BUFGP),
    .O(\d11/q/CLKINV )
  );
  X_BUF \d12/q/DXMUX_102  (
    .I(\d12/q/FXMUX ),
    .O(\d12/q/DXMUX )
  );
  X_BUF \d12/q/FXMUX_103  (
    .I(p3_out3_OBUF),
    .O(\d12/q/FXMUX )
  );
  X_BUF \d12/q/YUSED  (
    .I(\p3/out31/O_pack_1 ),
    .O(\p3/out31/O )
  );
  X_BUF \d12/q/SRINV_104  (
    .I(reset_IBUF),
    .O(\d12/q/SRINV )
  );
  X_BUF \d12/q/CLKINV_105  (
    .I(clk_BUFGP),
    .O(\d12/q/CLKINV )
  );
  X_BUF \d6/q/DXMUX_106  (
    .I(\d6/q/FXMUX ),
    .O(\d6/q/DXMUX )
  );
  X_BUF \d6/q/FXMUX_107  (
    .I(p2_out1_OBUF),
    .O(\d6/q/FXMUX )
  );
  X_BUF \d6/q/YUSED  (
    .I(_n0005_pack_1),
    .O(_n0005)
  );
  X_BUF \d6/q/SRINV_108  (
    .I(reset_IBUF),
    .O(\d6/q/SRINV )
  );
  X_BUF \d6/q/CLKINV_109  (
    .I(clk_BUFGP),
    .O(\d6/q/CLKINV )
  );
  X_BUF \d7/q/DXMUX_110  (
    .I(\d7/q/FXMUX ),
    .O(\d7/q/DXMUX )
  );
  X_BUF \d7/q/FXMUX_111  (
    .I(p2_out2_OBUF),
    .O(\d7/q/FXMUX )
  );
  X_BUF \d7/q/YUSED  (
    .I(_n0007_pack_1),
    .O(_n0007)
  );
  X_BUF \d7/q/SRINV_112  (
    .I(reset_IBUF),
    .O(\d7/q/SRINV )
  );
  X_BUF \d7/q/CLKINV_113  (
    .I(clk_BUFGP),
    .O(\d7/q/CLKINV )
  );
  X_OPAD \sh_p3_out1/PAD  (
    .PAD(sh_p3_out1)
  );
  X_TRI sh_p3_out1_OBUF (
    .I(\sh_p3_out1/O ),
    .CTL(\sh_p3_out1/ENABLE ),
    .O(sh_p3_out1)
  );
  X_INV \sh_p3_out1/ENABLEINV  (
    .I(GTS),
    .O(\sh_p3_out1/ENABLE )
  );
  X_OPAD \sh_p3_out2/PAD  (
    .PAD(sh_p3_out2)
  );
  X_TRI sh_p3_out2_OBUF (
    .I(\sh_p3_out2/O ),
    .CTL(\sh_p3_out2/ENABLE ),
    .O(sh_p3_out2)
  );
  X_INV \sh_p3_out2/ENABLEINV  (
    .I(GTS),
    .O(\sh_p3_out2/ENABLE )
  );
  X_OPAD \p3_out0/PAD  (
    .PAD(p3_out0)
  );
  X_TRI p3_out0_OBUF_114 (
    .I(\p3_out0/O ),
    .CTL(\p3_out0/ENABLE ),
    .O(p3_out0)
  );
  X_INV \p3_out0/ENABLEINV  (
    .I(GTS),
    .O(\p3_out0/ENABLE )
  );
  X_OPAD \sh_p3_out3/PAD  (
    .PAD(sh_p3_out3)
  );
  X_TRI sh_p3_out3_OBUF (
    .I(\sh_p3_out3/O ),
    .CTL(\sh_p3_out3/ENABLE ),
    .O(sh_p3_out3)
  );
  X_INV \sh_p3_out3/ENABLEINV  (
    .I(GTS),
    .O(\sh_p3_out3/ENABLE )
  );
  X_OPAD \p3_out1/PAD  (
    .PAD(p3_out1)
  );
  X_TRI p3_out1_OBUF_115 (
    .I(\p3_out1/O ),
    .CTL(\p3_out1/ENABLE ),
    .O(p3_out1)
  );
  X_INV \p3_out1/ENABLEINV  (
    .I(GTS),
    .O(\p3_out1/ENABLE )
  );
  X_OPAD \p3_out2/PAD  (
    .PAD(p3_out2)
  );
  X_TRI p3_out2_OBUF_116 (
    .I(\p3_out2/O ),
    .CTL(\p3_out2/ENABLE ),
    .O(p3_out2)
  );
  X_INV \p3_out2/ENABLEINV  (
    .I(GTS),
    .O(\p3_out2/ENABLE )
  );
  X_OPAD \p3_out3/PAD  (
    .PAD(p3_out3)
  );
  X_TRI p3_out3_OBUF_117 (
    .I(\p3_out3/O ),
    .CTL(\p3_out3/ENABLE ),
    .O(p3_out3)
  );
  X_INV \p3_out3/ENABLEINV  (
    .I(GTS),
    .O(\p3_out3/ENABLE )
  );
  X_OPAD \gnt4_pulse/PAD  (
    .PAD(gnt4_pulse)
  );
  X_TRI gnt4_pulse_OBUF (
    .I(\gnt4_pulse/O ),
    .CTL(\gnt4_pulse/ENABLE ),
    .O(gnt4_pulse)
  );
  X_INV \gnt4_pulse/ENABLEINV  (
    .I(GTS),
    .O(\gnt4_pulse/ENABLE )
  );
  X_BUF \gnt4_pulse/OUTPUT/OFF/O1INV_118  (
    .I(GLOBAL_LOGIC1),
    .O(\gnt4_pulse/OUTPUT/OFF/O1INV )
  );
  X_BUF \gnt4_pulse/OUTPUT/OFF/OMUX  (
    .I(\pulse4/dff1/Q_1 ),
    .O(\gnt4_pulse/O )
  );
  X_BUF \gnt4_pulse/OUTPUT/OTCLK1INV_119  (
    .I(_n0030_0),
    .O(\gnt4_pulse/OUTPUT/OTCLK1INV )
  );
  X_OPAD \sh_p4_out0/PAD  (
    .PAD(sh_p4_out0)
  );
  X_TRI sh_p4_out0_OBUF (
    .I(\sh_p4_out0/O ),
    .CTL(\sh_p4_out0/ENABLE ),
    .O(sh_p4_out0)
  );
  X_INV \sh_p4_out0/ENABLEINV  (
    .I(GTS),
    .O(\sh_p4_out0/ENABLE )
  );
  X_OPAD \en1/PAD  (
    .PAD(en1)
  );
  X_TRI en1_OBUF (
    .I(\en1/O ),
    .CTL(\en1/ENABLE ),
    .O(en1)
  );
  X_INV \en1/ENABLEINV  (
    .I(GTS),
    .O(\en1/ENABLE )
  );
  X_BUF \en1/OUTPUT/OFF/O1INV_120  (
    .I(GLOBAL_LOGIC1),
    .O(\en1/OUTPUT/OFF/O1INV )
  );
  X_BUF \en1/OUTPUT/OFF/OMUX  (
    .I(\d21/Q_1 ),
    .O(\en1/O )
  );
  X_BUF \en1/OUTPUT/OTCLK1INV_121  (
    .I(_n0030_0),
    .O(\en1/OUTPUT/OTCLK1INV )
  );
  X_OPAD \sh_p4_out1/PAD  (
    .PAD(sh_p4_out1)
  );
  X_TRI sh_p4_out1_OBUF (
    .I(\sh_p4_out1/O ),
    .CTL(\sh_p4_out1/ENABLE ),
    .O(sh_p4_out1)
  );
  X_INV \sh_p4_out1/ENABLEINV  (
    .I(GTS),
    .O(\sh_p4_out1/ENABLE )
  );
  X_OPAD \gnt1_pulse/PAD  (
    .PAD(gnt1_pulse)
  );
  X_TRI gnt1_pulse_OBUF (
    .I(\gnt1_pulse/O ),
    .CTL(\gnt1_pulse/ENABLE ),
    .O(gnt1_pulse)
  );
  X_INV \gnt1_pulse/ENABLEINV  (
    .I(GTS),
    .O(\gnt1_pulse/ENABLE )
  );
  X_BUF \gnt1_pulse/OUTPUT/OFF/O1INV_122  (
    .I(GLOBAL_LOGIC1),
    .O(\gnt1_pulse/OUTPUT/OFF/O1INV )
  );
  X_BUF \gnt1_pulse/OUTPUT/OFF/OMUX  (
    .I(\pulse1/dff1/Q_1 ),
    .O(\gnt1_pulse/O )
  );
  X_BUF \gnt1_pulse/OUTPUT/OTCLK1INV_123  (
    .I(_n0027_0),
    .O(\gnt1_pulse/OUTPUT/OTCLK1INV )
  );
  X_OPAD \en2/PAD  (
    .PAD(en2)
  );
  X_TRI en2_OBUF (
    .I(\en2/O ),
    .CTL(\en2/ENABLE ),
    .O(en2)
  );
  X_INV \en2/ENABLEINV  (
    .I(GTS),
    .O(\en2/ENABLE )
  );
  X_BUF \en2/OUTPUT/OFF/O1INV_124  (
    .I(GLOBAL_LOGIC1),
    .O(\en2/OUTPUT/OFF/O1INV )
  );
  X_BUF \en2/OUTPUT/OFF/OMUX  (
    .I(\d18/Q_1 ),
    .O(\en2/O )
  );
  X_BUF \en2/OUTPUT/OTCLK1INV_125  (
    .I(_n0027_0),
    .O(\en2/OUTPUT/OTCLK1INV )
  );
  X_OPAD \sh_p4_out2/PAD  (
    .PAD(sh_p4_out2)
  );
  X_TRI sh_p4_out2_OBUF (
    .I(\sh_p4_out2/O ),
    .CTL(\sh_p4_out2/ENABLE ),
    .O(sh_p4_out2)
  );
  X_INV \sh_p4_out2/ENABLEINV  (
    .I(GTS),
    .O(\sh_p4_out2/ENABLE )
  );
  X_OPAD \en3/PAD  (
    .PAD(en3)
  );
  X_TRI en3_OBUF (
    .I(\en3/O ),
    .CTL(\en3/ENABLE ),
    .O(en3)
  );
  X_INV \en3/ENABLEINV  (
    .I(GTS),
    .O(\en3/ENABLE )
  );
  X_BUF \en3/OUTPUT/OTCLK1INV_126  (
    .I(_n0028_0),
    .O(\en3/OUTPUT/OTCLK1INV )
  );
  X_OPAD \p4_out0/PAD  (
    .PAD(p4_out0)
  );
  X_TRI p4_out0_OBUF_127 (
    .I(\p4_out0/O ),
    .CTL(\p4_out0/ENABLE ),
    .O(p4_out0)
  );
  X_INV \p4_out0/ENABLEINV  (
    .I(GTS),
    .O(\p4_out0/ENABLE )
  );
  X_OPAD \sh_p4_out3/PAD  (
    .PAD(sh_p4_out3)
  );
  X_TRI sh_p4_out3_OBUF (
    .I(\sh_p4_out3/O ),
    .CTL(\sh_p4_out3/ENABLE ),
    .O(sh_p4_out3)
  );
  X_INV \sh_p4_out3/ENABLEINV  (
    .I(GTS),
    .O(\sh_p4_out3/ENABLE )
  );
  X_OPAD \en4/PAD  (
    .PAD(en4)
  );
  X_TRI en4_OBUF (
    .I(\en4/O ),
    .CTL(\en4/ENABLE ),
    .O(en4)
  );
  X_INV \en4/ENABLEINV  (
    .I(GTS),
    .O(\en4/ENABLE )
  );
  X_BUF \en4/OUTPUT/OTCLK1INV_128  (
    .I(_n0029_0),
    .O(\en4/OUTPUT/OTCLK1INV )
  );
  X_OPAD \p4_out1/PAD  (
    .PAD(p4_out1)
  );
  X_TRI p4_out1_OBUF_129 (
    .I(\p4_out1/O ),
    .CTL(\p4_out1/ENABLE ),
    .O(p4_out1)
  );
  X_INV \p4_out1/ENABLEINV  (
    .I(GTS),
    .O(\p4_out1/ENABLE )
  );
  X_OPAD \sh_p1_out0/PAD  (
    .PAD(sh_p1_out0)
  );
  X_TRI sh_p1_out0_OBUF (
    .I(\sh_p1_out0/O ),
    .CTL(\sh_p1_out0/ENABLE ),
    .O(sh_p1_out0)
  );
  X_INV \sh_p1_out0/ENABLEINV  (
    .I(GTS),
    .O(\sh_p1_out0/ENABLE )
  );
  X_OPAD \p4_out2/PAD  (
    .PAD(p4_out2)
  );
  X_TRI p4_out2_OBUF_130 (
    .I(\p4_out2/O ),
    .CTL(\p4_out2/ENABLE ),
    .O(p4_out2)
  );
  X_INV \p4_out2/ENABLEINV  (
    .I(GTS),
    .O(\p4_out2/ENABLE )
  );
  defparam \pulse2/dff1/Q_1_131 .INIT = 1'b0;
  X_FF \pulse2/dff1/Q_1_131  (
    .I(\gnt2_pulse/OUTPUT/OFF/O1INV ),
    .CE(VCC),
    .CLK(\gnt2_pulse/OUTPUT/OTCLK1INV ),
    .SET(GND),
    .RST(\gnt2_pulse/OUTPUT/OFF/OFF1/RST ),
    .O(\pulse2/dff1/Q_1 )
  );
  X_OR2 \gnt2_pulse/OUTPUT/OFF/OFF1/RSTOR  (
    .I0(\gnt2_pulse/OUTPUT/OFF/OFF1/RSTAND ),
    .I1(GSR),
    .O(\gnt2_pulse/OUTPUT/OFF/OFF1/RST )
  );
  X_BUF \gnt2_pulse/OUTPUT/OFF/OFF1/RSTAND_132  (
    .I(\pulse2/_n0001_0 ),
    .O(\gnt2_pulse/OUTPUT/OFF/OFF1/RSTAND )
  );
  defparam \d17/Q_1_133 .INIT = 1'b0;
  X_FF \d17/Q_1_133  (
    .I(\en1_reset/OUTPUT/OFF/O1INV ),
    .CE(VCC),
    .CLK(\en1_reset/OUTPUT/OTCLK1INV ),
    .SET(GND),
    .RST(\en1_reset/OUTPUT/OFF/OFF1/RST ),
    .O(\d17/Q_1 )
  );
  X_OR2 \en1_reset/OUTPUT/OFF/OFF1/RSTOR  (
    .I0(\en1_reset/OUTPUT/OFF/OFF1/RSTAND ),
    .I1(GSR),
    .O(\en1_reset/OUTPUT/OFF/OFF1/RST )
  );
  X_BUF \en1_reset/OUTPUT/OFF/OFF1/RSTAND_134  (
    .I(_n0017_0),
    .O(\en1_reset/OUTPUT/OFF/OFF1/RSTAND )
  );
  defparam \p1/out01 .INIT = 16'h00E0;
  X_LUT4 \p1/out01  (
    .ADR0(\d21/Q ),
    .ADR1(\d17/Q ),
    .ADR2(_n0001),
    .ADR3(reset_IBUF),
    .O(p1_out0_OBUF)
  );
  defparam _n00061.INIT = 16'h0010;
  X_LUT4 _n00061 (
    .ADR0(\d8/q ),
    .ADR1(\d7/q ),
    .ADR2(req3_IBUF),
    .ADR3(\d5/q ),
    .O(_n0006)
  );
  defparam _n00231.INIT = 16'hFFFE;
  X_LUT4 _n00231 (
    .ADR0(reset_IBUF),
    .ADR1(\pulse2/dff1/Q ),
    .ADR2(\pulse1/dff1/Q ),
    .ADR3(\pulse4/dff1/Q ),
    .O(_n0023)
  );
  defparam _n00172.INIT = 16'hFCFC;
  X_LUT4 _n00172 (
    .ADR0(VCC),
    .ADR1(\d21/Q ),
    .ADR2(N9),
    .ADR3(VCC),
    .O(_n0017)
  );
  defparam \p2/out01 .INIT = 16'h3000;
  X_LUT4 \p2/out01  (
    .ADR0(VCC),
    .ADR1(reset_IBUF),
    .ADR2(\d18/Q ),
    .ADR3(_n0005),
    .O(p2_out0_OBUF)
  );
  defparam \d5/q_135 .INIT = 1'b0;
  X_SFF \d5/q_135  (
    .I(\d5/q/DXMUX ),
    .CE(VCC),
    .CLK(\d5/q/CLKINV ),
    .SET(GND),
    .RST(GSR),
    .SSET(GND),
    .SRST(\d5/q/SRINV ),
    .O(\d5/q )
  );
  X_BUF \en3/OUTPUT/OFF/OMUX  (
    .I(\d19/Q_1 ),
    .O(\en3/O )
  );
  X_BUF \en3/OUTPUT/OFF/O1INV_136  (
    .I(GLOBAL_LOGIC1),
    .O(\en3/OUTPUT/OFF/O1INV )
  );
  X_BUF \en4/OUTPUT/OFF/OMUX  (
    .I(\d20/Q_1 ),
    .O(\en4/O )
  );
  X_BUF \en4/OUTPUT/OFF/O1INV_137  (
    .I(GLOBAL_LOGIC1),
    .O(\en4/OUTPUT/OFF/O1INV )
  );
  X_BUF \gnt3_pulse/OUTPUT/OFF/OMUX  (
    .I(\pulse3/dff1/Q_1 ),
    .O(\gnt3_pulse/O )
  );
  X_BUF \gnt3_pulse/OUTPUT/OFF/O1INV_138  (
    .I(GLOBAL_LOGIC1),
    .O(\gnt3_pulse/OUTPUT/OFF/O1INV )
  );
  defparam \p1/out31 .INIT = 16'hFFEF;
  X_LUT4 \p1/out31  (
    .ADR0(reset_IBUF),
    .ADR1(_n0003),
    .ADR2(_n0004_0),
    .ADR3(_n0002_0),
    .O(\p1/out31/O_pack_1 )
  );
  defparam _n00091.INIT = 16'h0004;
  X_LUT4 _n00091 (
    .ADR0(\d11/q ),
    .ADR1(req3_IBUF),
    .ADR2(\d12/q ),
    .ADR3(\d10/q ),
    .O(_n0009_pack_1)
  );
  defparam _n00111.INIT = 16'h0002;
  X_LUT4 _n00111 (
    .ADR0(req1_IBUF),
    .ADR1(\d12/q ),
    .ADR2(\d10/q ),
    .ADR3(\d9/q ),
    .O(_n0011_pack_1)
  );
  defparam \p3/out31 .INIT = 16'hFFFD;
  X_LUT4 \p3/out31  (
    .ADR0(_n0012_0),
    .ADR1(_n0011),
    .ADR2(_n0010_0),
    .ADR3(reset_IBUF),
    .O(\p3/out31/O_pack_1 )
  );
  defparam _n00051.INIT = 16'h0002;
  X_LUT4 _n00051 (
    .ADR0(req2_IBUF),
    .ADR1(\d8/q ),
    .ADR2(\d7/q ),
    .ADR3(\d6/q ),
    .O(_n0005_pack_1)
  );
  defparam _n00071.INIT = 16'h0002;
  X_LUT4 _n00071 (
    .ADR0(req4_IBUF),
    .ADR1(\d8/q ),
    .ADR2(\d6/q ),
    .ADR3(\d5/q ),
    .O(_n0007_pack_1)
  );
  defparam \p2/out31 .INIT = 16'hFFFB;
  X_LUT4 \p2/out31  (
    .ADR0(_n0007),
    .ADR1(_n0008_0),
    .ADR2(reset_IBUF),
    .ADR3(_n0006_0),
    .O(\p2/out31/O_pack_1 )
  );
  defparam \p3/out01 .INIT = 16'h0A00;
  X_LUT4 \p3/out01  (
    .ADR0(_n0009),
    .ADR1(VCC),
    .ADR2(reset_IBUF),
    .ADR3(\d19/Q ),
    .O(p3_out0_OBUF)
  );
  defparam _n00131.INIT = 16'h0004;
  X_LUT4 _n00131 (
    .ADR0(\d15/q ),
    .ADR1(req4_IBUF),
    .ADR2(\d16/q ),
    .ADR3(\d14/q ),
    .O(_n0013_pack_1)
  );
  defparam _n00151.INIT = 16'h0010;
  X_LUT4 _n00151 (
    .ADR0(\d14/q ),
    .ADR1(\d16/q ),
    .ADR2(req2_IBUF),
    .ADR3(\d13/q ),
    .O(_n0015_pack_1)
  );
  defparam \p4/out31 .INIT = 16'hFEFF;
  X_LUT4 \p4/out31  (
    .ADR0(_n0015),
    .ADR1(_n0014_0),
    .ADR2(reset_IBUF),
    .ADR3(_n0016_0),
    .O(\p4/out31/O_pack_1 )
  );
  defparam _n00011.INIT = 16'h0004;
  X_LUT4 _n00011 (
    .ADR0(\d3/q ),
    .ADR1(req1_IBUF),
    .ADR2(\d4/q ),
    .ADR3(\d2/q ),
    .O(_n0001_pack_1)
  );
  defparam \p4/out01 .INIT = 16'h3000;
  X_LUT4 \p4/out01  (
    .ADR0(VCC),
    .ADR1(reset_IBUF),
    .ADR2(_n0013),
    .ADR3(\d20/Q ),
    .O(p4_out0_OBUF)
  );
  defparam _n00031.INIT = 16'h0010;
  X_LUT4 _n00031 (
    .ADR0(\d2/q ),
    .ADR1(\d4/q ),
    .ADR2(req3_IBUF),
    .ADR3(\d1/q ),
    .O(_n0003_pack_1)
  );
  defparam \d19/Q_1_139 .INIT = 1'b0;
  X_FF \d19/Q_1_139  (
    .I(\en3/OUTPUT/OFF/O1INV ),
    .CE(VCC),
    .CLK(\en3/OUTPUT/OTCLK1INV ),
    .SET(GND),
    .RST(\en3/OUTPUT/OFF/OFF1/RST ),
    .O(\d19/Q_1 )
  );
  X_OR2 \en3/OUTPUT/OFF/OFF1/RSTOR  (
    .I0(\en3/OUTPUT/OFF/OFF1/RSTAND ),
    .I1(GSR),
    .O(\en3/OUTPUT/OFF/OFF1/RST )
  );
  X_BUF \en3/OUTPUT/OFF/OFF1/RSTAND_140  (
    .I(_n0021_0),
    .O(\en3/OUTPUT/OFF/OFF1/RSTAND )
  );
  defparam \d20/Q_1_141 .INIT = 1'b0;
  X_FF \d20/Q_1_141  (
    .I(\en4/OUTPUT/OFF/O1INV ),
    .CE(VCC),
    .CLK(\en4/OUTPUT/OTCLK1INV ),
    .SET(GND),
    .RST(\en4/OUTPUT/OFF/OFF1/RST ),
    .O(\d20/Q_1 )
  );
  X_OR2 \en4/OUTPUT/OFF/OFF1/RSTOR  (
    .I0(\en4/OUTPUT/OFF/OFF1/RSTAND ),
    .I1(GSR),
    .O(\en4/OUTPUT/OFF/OFF1/RST )
  );
  X_BUF \en4/OUTPUT/OFF/OFF1/RSTAND_142  (
    .I(_n0023_0),
    .O(\en4/OUTPUT/OFF/OFF1/RSTAND )
  );
  defparam \pulse4/dff1/Q_1_143 .INIT = 1'b0;
  X_FF \pulse4/dff1/Q_1_143  (
    .I(\gnt4_pulse/OUTPUT/OFF/O1INV ),
    .CE(VCC),
    .CLK(\gnt4_pulse/OUTPUT/OTCLK1INV ),
    .SET(GND),
    .RST(\gnt4_pulse/OUTPUT/OFF/OFF1/RST ),
    .O(\pulse4/dff1/Q_1 )
  );
  X_OR2 \gnt4_pulse/OUTPUT/OFF/OFF1/RSTOR  (
    .I0(\gnt4_pulse/OUTPUT/OFF/OFF1/RSTAND ),
    .I1(GSR),
    .O(\gnt4_pulse/OUTPUT/OFF/OFF1/RST )
  );
  X_BUF \gnt4_pulse/OUTPUT/OFF/OFF1/RSTAND_144  (
    .I(\pulse4/_n0001_0 ),
    .O(\gnt4_pulse/OUTPUT/OFF/OFF1/RSTAND )
  );
  defparam \d21/Q_1_145 .INIT = 1'b0;
  X_FF \d21/Q_1_145  (
    .I(\en1/OUTPUT/OFF/O1INV ),
    .CE(VCC),
    .CLK(\en1/OUTPUT/OTCLK1INV ),
    .SET(GND),
    .RST(\en1/OUTPUT/OFF/OFF1/RST ),
    .O(\d21/Q_1 )
  );
  X_OR2 \en1/OUTPUT/OFF/OFF1/RSTOR  (
    .I0(\en1/OUTPUT/OFF/OFF1/RSTAND ),
    .I1(GSR),
    .O(\en1/OUTPUT/OFF/OFF1/RST )
  );
  X_BUF \en1/OUTPUT/OFF/OFF1/RSTAND_146  (
    .I(_n0025_0),
    .O(\en1/OUTPUT/OFF/OFF1/RSTAND )
  );
  defparam \pulse1/dff1/Q_1_147 .INIT = 1'b0;
  X_FF \pulse1/dff1/Q_1_147  (
    .I(\gnt1_pulse/OUTPUT/OFF/O1INV ),
    .CE(VCC),
    .CLK(\gnt1_pulse/OUTPUT/OTCLK1INV ),
    .SET(GND),
    .RST(\gnt1_pulse/OUTPUT/OFF/OFF1/RST ),
    .O(\pulse1/dff1/Q_1 )
  );
  X_OR2 \gnt1_pulse/OUTPUT/OFF/OFF1/RSTOR  (
    .I0(\gnt1_pulse/OUTPUT/OFF/OFF1/RSTAND ),
    .I1(GSR),
    .O(\gnt1_pulse/OUTPUT/OFF/OFF1/RST )
  );
  X_BUF \gnt1_pulse/OUTPUT/OFF/OFF1/RSTAND_148  (
    .I(\pulse1/_n0001_0 ),
    .O(\gnt1_pulse/OUTPUT/OFF/OFF1/RSTAND )
  );
  defparam \d18/Q_1_149 .INIT = 1'b0;
  X_FF \d18/Q_1_149  (
    .I(\en2/OUTPUT/OFF/O1INV ),
    .CE(VCC),
    .CLK(\en2/OUTPUT/OTCLK1INV ),
    .SET(GND),
    .RST(\en2/OUTPUT/OFF/OFF1/RST ),
    .O(\d18/Q_1 )
  );
  X_OR2 \en2/OUTPUT/OFF/OFF1/RSTOR  (
    .I0(\en2/OUTPUT/OFF/OFF1/RSTAND ),
    .I1(GSR),
    .O(\en2/OUTPUT/OFF/OFF1/RST )
  );
  X_BUF \en2/OUTPUT/OFF/OFF1/RSTAND_150  (
    .I(_n0019_0),
    .O(\en2/OUTPUT/OFF/OFF1/RSTAND )
  );
  defparam \pulse1/dff2/Q_151 .INIT = 1'b0;
  X_FF \pulse1/dff2/Q_151  (
    .I(\pulse1/dff2/Q/DYMUX ),
    .CE(VCC),
    .CLK(\pulse1/dff2/Q/CLKINV ),
    .SET(GND),
    .RST(\pulse1/dff2/Q/FFY/RST ),
    .O(\pulse1/dff2/Q )
  );
  X_OR2 \pulse1/dff2/Q/FFY/RSTOR  (
    .I0(\pulse1/dff2/Q/FFY/RSTAND ),
    .I1(GSR),
    .O(\pulse1/dff2/Q/FFY/RST )
  );
  X_BUF \pulse1/dff2/Q/FFY/RSTAND_152  (
    .I(reset_IBUF),
    .O(\pulse1/dff2/Q/FFY/RSTAND )
  );
  defparam \p3/out22 .INIT = 16'h0010;
  X_LUT4 \p3/out22  (
    .ADR0(_n0009),
    .ADR1(_n0010_0),
    .ADR2(_n0011),
    .ADR3(N6_0),
    .O(p3_out2_OBUF)
  );
  defparam \d11/q_153 .INIT = 1'b0;
  X_SFF \d11/q_153  (
    .I(\d11/q/DXMUX ),
    .CE(VCC),
    .CLK(\d11/q/CLKINV ),
    .SET(GND),
    .RST(GSR),
    .SSET(GND),
    .SRST(\d11/q/SRINV ),
    .O(\d11/q )
  );
  defparam \p3/out32 .INIT = 16'h000A;
  X_LUT4 \p3/out32  (
    .ADR0(\d19/Q ),
    .ADR1(VCC),
    .ADR2(\p3/out31/O ),
    .ADR3(_n0009),
    .O(p3_out3_OBUF)
  );
  defparam \d12/q_154 .INIT = 1'b0;
  X_SFF \d12/q_154  (
    .I(\d12/q/DXMUX ),
    .CE(VCC),
    .CLK(\d12/q/CLKINV ),
    .SET(GND),
    .RST(GSR),
    .SSET(GND),
    .SRST(\d12/q/SRINV ),
    .O(\d12/q )
  );
  defparam \p2/out11 .INIT = 16'h1000;
  X_LUT4 \p2/out11  (
    .ADR0(reset_IBUF),
    .ADR1(_n0005),
    .ADR2(\d18/Q ),
    .ADR3(_n0006_0),
    .O(p2_out1_OBUF)
  );
  defparam \d6/q_155 .INIT = 1'b0;
  X_SFF \d6/q_155  (
    .I(\d6/q/DXMUX ),
    .CE(VCC),
    .CLK(\d6/q/CLKINV ),
    .SET(GND),
    .RST(GSR),
    .SSET(GND),
    .SRST(\d6/q/SRINV ),
    .O(\d6/q )
  );
  defparam \p2/out22 .INIT = 16'h0010;
  X_LUT4 \p2/out22  (
    .ADR0(_n0005),
    .ADR1(N8_0),
    .ADR2(_n0007),
    .ADR3(_n0006_0),
    .O(p2_out2_OBUF)
  );
  defparam \d7/q_156 .INIT = 1'b0;
  X_SFF \d7/q_156  (
    .I(\d7/q/DXMUX ),
    .CE(VCC),
    .CLK(\d7/q/CLKINV ),
    .SET(GND),
    .RST(GSR),
    .SSET(GND),
    .SRST(\d7/q/SRINV ),
    .O(\d7/q )
  );
  defparam \p2/out32 .INIT = 16'h0404;
  X_LUT4 \p2/out32  (
    .ADR0(_n0005),
    .ADR1(\d18/Q ),
    .ADR2(\p2/out31/O ),
    .ADR3(VCC),
    .O(p2_out3_OBUF)
  );
  defparam \d8/q_157 .INIT = 1'b0;
  X_SFF \d8/q_157  (
    .I(\d8/q/DXMUX ),
    .CE(VCC),
    .CLK(\d8/q/CLKINV ),
    .SET(GND),
    .RST(GSR),
    .SSET(GND),
    .SRST(\d8/q/SRINV ),
    .O(\d8/q )
  );
  defparam \pulse3/dff1/Q_1_158 .INIT = 1'b0;
  X_FF \pulse3/dff1/Q_1_158  (
    .I(\gnt3_pulse/OUTPUT/OFF/O1INV ),
    .CE(VCC),
    .CLK(\gnt3_pulse/OUTPUT/OTCLK1INV ),
    .SET(GND),
    .RST(\gnt3_pulse/OUTPUT/OFF/OFF1/RST ),
    .O(\pulse3/dff1/Q_1 )
  );
  X_OR2 \gnt3_pulse/OUTPUT/OFF/OFF1/RSTOR  (
    .I0(\gnt3_pulse/OUTPUT/OFF/OFF1/RSTAND ),
    .I1(GSR),
    .O(\gnt3_pulse/OUTPUT/OFF/OFF1/RST )
  );
  X_BUF \gnt3_pulse/OUTPUT/OFF/OFF1/RSTAND_159  (
    .I(\pulse3/_n0001_0 ),
    .O(\gnt3_pulse/OUTPUT/OFF/OFF1/RSTAND )
  );
  defparam \p1/out32 .INIT = 16'h000E;
  X_LUT4 \p1/out32  (
    .ADR0(\d21/Q ),
    .ADR1(\d17/Q ),
    .ADR2(_n0001),
    .ADR3(\p1/out31/O ),
    .O(p1_out3_OBUF)
  );
  defparam \d4/q_160 .INIT = 1'b0;
  X_SFF \d4/q_160  (
    .I(\d4/q/DXMUX ),
    .CE(VCC),
    .CLK(\d4/q/CLKINV ),
    .SET(GND),
    .RST(GSR),
    .SSET(GND),
    .SRST(\d4/q/SRINV ),
    .O(\d4/q )
  );
  defparam \p3/out11 .INIT = 16'h0020;
  X_LUT4 \p3/out11  (
    .ADR0(\d19/Q ),
    .ADR1(reset_IBUF),
    .ADR2(_n0010_0),
    .ADR3(_n0009),
    .O(p3_out1_OBUF)
  );
  defparam \d10/q_161 .INIT = 1'b0;
  X_SFF \d10/q_161  (
    .I(\d10/q/DXMUX ),
    .CE(VCC),
    .CLK(\d10/q/CLKINV ),
    .SET(GND),
    .RST(GSR),
    .SSET(GND),
    .SRST(\d10/q/SRINV ),
    .O(\d10/q )
  );
  defparam \d13/q_162 .INIT = 1'b0;
  X_SFF \d13/q_162  (
    .I(\d13/q/DYMUX ),
    .CE(VCC),
    .CLK(\d13/q/CLKINV ),
    .SET(GND),
    .RST(GSR),
    .SSET(GND),
    .SRST(\d13/q/SRINV ),
    .O(\d13/q )
  );
  defparam \p4/out21_SW0 .INIT = 16'hCCFF;
  X_LUT4 \p4/out21_SW0  (
    .ADR0(VCC),
    .ADR1(reset_IBUF),
    .ADR2(VCC),
    .ADR3(\d20/Q ),
    .O(N4)
  );
  defparam \p1/out22 .INIT = 16'h0010;
  X_LUT4 \p1/out22  (
    .ADR0(N10_0),
    .ADR1(_n0001),
    .ADR2(_n0003),
    .ADR3(_n0002_0),
    .O(p1_out2_OBUF)
  );
  defparam \d3/q_163 .INIT = 1'b0;
  X_SFF \d3/q_163  (
    .I(\d3/q/DXMUX ),
    .CE(VCC),
    .CLK(\d3/q/CLKINV ),
    .SET(GND),
    .RST(GSR),
    .SSET(GND),
    .SRST(\d3/q/SRINV ),
    .O(\d3/q )
  );
  defparam \d1/q_164 .INIT = 1'b0;
  X_SFF \d1/q_164  (
    .I(\d1/q/DYMUX ),
    .CE(VCC),
    .CLK(\d1/q/CLKINV ),
    .SET(GND),
    .RST(GSR),
    .SSET(GND),
    .SRST(\d1/q/SRINV ),
    .O(\d1/q )
  );
  defparam \p1/out21_SW0 .INIT = 16'hFF11;
  X_LUT4 \p1/out21_SW0  (
    .ADR0(\d21/Q ),
    .ADR1(\d17/Q ),
    .ADR2(VCC),
    .ADR3(reset_IBUF),
    .O(N10)
  );
  defparam gnt11.INIT = 16'hFFFE;
  X_LUT4 gnt11 (
    .ADR0(\d8/q ),
    .ADR1(\d1/q ),
    .ADR2(\d14/q ),
    .ADR3(\d11/q ),
    .O(gnt1_OBUF)
  );
  defparam _n00211.INIT = 16'hFFFE;
  X_LUT4 _n00211 (
    .ADR0(\pulse1/dff1/Q ),
    .ADR1(reset_IBUF),
    .ADR2(\pulse4/dff1/Q ),
    .ADR3(\pulse3/dff1/Q ),
    .O(_n0021)
  );
  defparam gnt21.INIT = 16'hFFFE;
  X_LUT4 gnt21 (
    .ADR0(\d15/q ),
    .ADR1(\d12/q ),
    .ADR2(\d5/q ),
    .ADR3(\d2/q ),
    .O(gnt2_OBUF)
  );
  defparam gnt31.INIT = 16'hFFFE;
  X_LUT4 gnt31 (
    .ADR0(\d3/q ),
    .ADR1(\d16/q ),
    .ADR2(\d6/q ),
    .ADR3(\d9/q ),
    .O(gnt3_OBUF)
  );
  defparam \pulse1/_n00011 .INIT = 16'hFFCC;
  X_LUT4 \pulse1/_n00011  (
    .ADR0(VCC),
    .ADR1(reset_IBUF),
    .ADR2(VCC),
    .ADR3(\pulse1/dff2/Q ),
    .O(\pulse1/_n0001 )
  );
  defparam \pulse3/_n00011 .INIT = 16'hFAFA;
  X_LUT4 \pulse3/_n00011  (
    .ADR0(\pulse3/dff2/Q ),
    .ADR1(VCC),
    .ADR2(reset_IBUF),
    .ADR3(VCC),
    .O(\pulse3/_n0001 )
  );
  defparam _n00301.INIT = 16'h0001;
  X_LUT4 _n00301 (
    .ADR0(\d10/q ),
    .ADR1(\d13/q ),
    .ADR2(\d7/q ),
    .ADR3(\d4/q ),
    .O(_n0030)
  );
  defparam \pulse2/dff1/Q_165 .INIT = 1'b0;
  X_FF \pulse2/dff1/Q_165  (
    .I(\pulse2/dff1/Q/DYMUX ),
    .CE(VCC),
    .CLK(\pulse2/dff1/Q/CLKINV ),
    .SET(GND),
    .RST(\pulse2/dff1/Q/FFY/RST ),
    .O(\pulse2/dff1/Q )
  );
  X_OR2 \pulse2/dff1/Q/FFY/RSTOR  (
    .I0(\pulse2/dff1/Q/FFY/RSTAND ),
    .I1(GSR),
    .O(\pulse2/dff1/Q/FFY/RST )
  );
  X_BUF \pulse2/dff1/Q/FFY/RSTAND_166  (
    .I(\pulse2/_n0001_0 ),
    .O(\pulse2/dff1/Q/FFY/RSTAND )
  );
  defparam \pulse2/dff2/Q_167 .INIT = 1'b0;
  X_FF \pulse2/dff2/Q_167  (
    .I(\pulse2/dff2/Q/DYMUX ),
    .CE(VCC),
    .CLK(\pulse2/dff2/Q/CLKINV ),
    .SET(GND),
    .RST(\pulse2/dff2/Q/FFY/RST ),
    .O(\pulse2/dff2/Q )
  );
  X_OR2 \pulse2/dff2/Q/FFY/RSTOR  (
    .I0(\pulse2/dff2/Q/FFY/RSTAND ),
    .I1(GSR),
    .O(\pulse2/dff2/Q/FFY/RST )
  );
  X_BUF \pulse2/dff2/Q/FFY/RSTAND_168  (
    .I(reset_IBUF),
    .O(\pulse2/dff2/Q/FFY/RSTAND )
  );
  defparam \d20/Q_169 .INIT = 1'b0;
  X_FF \d20/Q_169  (
    .I(\d20/Q/DYMUX ),
    .CE(VCC),
    .CLK(\d20/Q/CLKINV ),
    .SET(GND),
    .RST(\d20/Q/FFY/RST ),
    .O(\d20/Q )
  );
  X_OR2 \d20/Q/FFY/RSTOR  (
    .I0(\d20/Q/FFY/RSTAND ),
    .I1(GSR),
    .O(\d20/Q/FFY/RST )
  );
  X_BUF \d20/Q/FFY/RSTAND_170  (
    .I(_n0023_0),
    .O(\d20/Q/FFY/RSTAND )
  );
  defparam \d21/Q_171 .INIT = 1'b0;
  X_FF \d21/Q_171  (
    .I(\d21/Q/DYMUX ),
    .CE(VCC),
    .CLK(\d21/Q/CLKINV ),
    .SET(GND),
    .RST(\d21/Q/FFY/RST ),
    .O(\d21/Q )
  );
  X_OR2 \d21/Q/FFY/RSTOR  (
    .I0(\d21/Q/FFY/RSTAND ),
    .I1(GSR),
    .O(\d21/Q/FFY/RST )
  );
  X_BUF \d21/Q/FFY/RSTAND_172  (
    .I(_n0025_0),
    .O(\d21/Q/FFY/RSTAND )
  );
  defparam \d9/q_173 .INIT = 1'b0;
  X_SFF \d9/q_173  (
    .I(\d9/q/DYMUX ),
    .CE(VCC),
    .CLK(\d9/q/CLKINV ),
    .SET(GND),
    .RST(GSR),
    .SSET(GND),
    .SRST(\d9/q/SRINV ),
    .O(\d9/q )
  );
  defparam \p3/out21_SW0 .INIT = 16'hF0FF;
  X_LUT4 \p3/out21_SW0  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(reset_IBUF),
    .ADR3(\d19/Q ),
    .O(N6)
  );
  defparam \p4/out11 .INIT = 16'h0020;
  X_LUT4 \p4/out11  (
    .ADR0(\d20/Q ),
    .ADR1(reset_IBUF),
    .ADR2(_n0014_0),
    .ADR3(_n0013),
    .O(p4_out1_OBUF)
  );
  defparam \d14/q_174 .INIT = 1'b0;
  X_SFF \d14/q_174  (
    .I(\d14/q/DXMUX ),
    .CE(VCC),
    .CLK(\d14/q/CLKINV ),
    .SET(GND),
    .RST(GSR),
    .SSET(GND),
    .SRST(\d14/q/SRINV ),
    .O(\d14/q )
  );
  defparam \p4/out22 .INIT = 16'h0010;
  X_LUT4 \p4/out22  (
    .ADR0(N4_0),
    .ADR1(_n0013),
    .ADR2(_n0015),
    .ADR3(_n0014_0),
    .O(p4_out2_OBUF)
  );
  defparam \d15/q_175 .INIT = 1'b0;
  X_SFF \d15/q_175  (
    .I(\d15/q/DXMUX ),
    .CE(VCC),
    .CLK(\d15/q/CLKINV ),
    .SET(GND),
    .RST(GSR),
    .SSET(GND),
    .SRST(\d15/q/SRINV ),
    .O(\d15/q )
  );
  defparam \p4/out32 .INIT = 16'h0050;
  X_LUT4 \p4/out32  (
    .ADR0(_n0013),
    .ADR1(VCC),
    .ADR2(\d20/Q ),
    .ADR3(\p4/out31/O ),
    .O(p4_out3_OBUF)
  );
  defparam \d16/q_176 .INIT = 1'b0;
  X_SFF \d16/q_176  (
    .I(\d16/q/DXMUX ),
    .CE(VCC),
    .CLK(\d16/q/CLKINV ),
    .SET(GND),
    .RST(GSR),
    .SSET(GND),
    .SRST(\d16/q/SRINV ),
    .O(\d16/q )
  );
  defparam \p1/out11 .INIT = 16'h0400;
  X_LUT4 \p1/out11  (
    .ADR0(reset_IBUF),
    .ADR1(_n0002_0),
    .ADR2(_n0001),
    .ADR3(_n0000_0),
    .O(p1_out1_OBUF)
  );
  defparam \d2/q_177 .INIT = 1'b0;
  X_SFF \d2/q_177  (
    .I(\d2/q/DXMUX ),
    .CE(VCC),
    .CLK(\d2/q/CLKINV ),
    .SET(GND),
    .RST(GSR),
    .SSET(GND),
    .SRST(\d2/q/SRINV ),
    .O(\d2/q )
  );
  defparam _n00121.INIT = 16'h0002;
  X_LUT4 _n00121 (
    .ADR0(req2_IBUF),
    .ADR1(\d10/q ),
    .ADR2(\d11/q ),
    .ADR3(\d9/q ),
    .O(_n0012)
  );
  defparam _n00041.INIT = 16'h0002;
  X_LUT4 _n00041 (
    .ADR0(req4_IBUF),
    .ADR1(\d1/q ),
    .ADR2(\d2/q ),
    .ADR3(\d3/q ),
    .O(_n0004)
  );
  defparam _n00161.INIT = 16'h0010;
  X_LUT4 _n00161 (
    .ADR0(\d15/q ),
    .ADR1(\d14/q ),
    .ADR2(req3_IBUF),
    .ADR3(\d13/q ),
    .O(_n0016)
  );
  defparam \pulse1/dff1/Q_178 .INIT = 1'b0;
  X_FF \pulse1/dff1/Q_178  (
    .I(\pulse1/dff1/Q/DYMUX ),
    .CE(VCC),
    .CLK(\pulse1/dff1/Q/CLKINV ),
    .SET(GND),
    .RST(\pulse1/dff1/Q/FFY/RST ),
    .O(\pulse1/dff1/Q )
  );
  X_OR2 \pulse1/dff1/Q/FFY/RSTOR  (
    .I0(\pulse1/dff1/Q/FFY/RSTAND ),
    .I1(GSR),
    .O(\pulse1/dff1/Q/FFY/RST )
  );
  X_BUF \pulse1/dff1/Q/FFY/RSTAND_179  (
    .I(\pulse1/_n0001_0 ),
    .O(\pulse1/dff1/Q/FFY/RSTAND )
  );
  defparam \pulse3/dff1/Q_180 .INIT = 1'b0;
  X_FF \pulse3/dff1/Q_180  (
    .I(\pulse3/dff1/Q/DYMUX ),
    .CE(VCC),
    .CLK(\pulse3/dff1/Q/CLKINV ),
    .SET(GND),
    .RST(\pulse3/dff1/Q/FFY/RST ),
    .O(\pulse3/dff1/Q )
  );
  X_OR2 \pulse3/dff1/Q/FFY/RSTOR  (
    .I0(\pulse3/dff1/Q/FFY/RSTAND ),
    .I1(GSR),
    .O(\pulse3/dff1/Q/FFY/RST )
  );
  X_BUF \pulse3/dff1/Q/FFY/RSTAND_181  (
    .I(\pulse3/_n0001_0 ),
    .O(\pulse3/dff1/Q/FFY/RSTAND )
  );
  defparam \pulse3/dff2/Q_182 .INIT = 1'b0;
  X_FF \pulse3/dff2/Q_182  (
    .I(\pulse3/dff2/Q/DYMUX ),
    .CE(VCC),
    .CLK(\pulse3/dff2/Q/CLKINV ),
    .SET(GND),
    .RST(\pulse3/dff2/Q/FFY/RST ),
    .O(\pulse3/dff2/Q )
  );
  X_OR2 \pulse3/dff2/Q/FFY/RSTOR  (
    .I0(\pulse3/dff2/Q/FFY/RSTAND ),
    .I1(GSR),
    .O(\pulse3/dff2/Q/FFY/RST )
  );
  X_BUF \pulse3/dff2/Q/FFY/RSTAND_183  (
    .I(reset_IBUF),
    .O(\pulse3/dff2/Q/FFY/RSTAND )
  );
  defparam \d17/Q_184 .INIT = 1'b0;
  X_FF \d17/Q_184  (
    .I(\d17/Q/DYMUX ),
    .CE(VCC),
    .CLK(\d17/Q/CLKINV ),
    .SET(GND),
    .RST(\d17/Q/FFY/RST ),
    .O(\d17/Q )
  );
  X_OR2 \d17/Q/FFY/RSTOR  (
    .I0(\d17/Q/FFY/RSTAND ),
    .I1(GSR),
    .O(\d17/Q/FFY/RST )
  );
  X_BUF \d17/Q/FFY/RSTAND_185  (
    .I(_n0017_0),
    .O(\d17/Q/FFY/RSTAND )
  );
  defparam \d18/Q_186 .INIT = 1'b0;
  X_FF \d18/Q_186  (
    .I(\d18/Q/DYMUX ),
    .CE(VCC),
    .CLK(\d18/Q/CLKINV ),
    .SET(GND),
    .RST(\d18/Q/FFY/RST ),
    .O(\d18/Q )
  );
  X_OR2 \d18/Q/FFY/RSTOR  (
    .I0(\d18/Q/FFY/RSTAND ),
    .I1(GSR),
    .O(\d18/Q/FFY/RST )
  );
  X_BUF \d18/Q/FFY/RSTAND_187  (
    .I(_n0019_0),
    .O(\d18/Q/FFY/RSTAND )
  );
  defparam \d19/Q_188 .INIT = 1'b0;
  X_FF \d19/Q_188  (
    .I(\d19/Q/DYMUX ),
    .CE(VCC),
    .CLK(\d19/Q/CLKINV ),
    .SET(GND),
    .RST(\d19/Q/FFY/RST ),
    .O(\d19/Q )
  );
  X_OR2 \d19/Q/FFY/RSTOR  (
    .I0(\d19/Q/FFY/RSTAND ),
    .I1(GSR),
    .O(\d19/Q/FFY/RST )
  );
  X_BUF \d19/Q/FFY/RSTAND_189  (
    .I(_n0021_0),
    .O(\d19/Q/FFY/RSTAND )
  );
  defparam \pulse4/dff1/Q_190 .INIT = 1'b0;
  X_FF \pulse4/dff1/Q_190  (
    .I(\pulse4/dff1/Q/DYMUX ),
    .CE(VCC),
    .CLK(\pulse4/dff1/Q/CLKINV ),
    .SET(GND),
    .RST(\pulse4/dff1/Q/FFY/RST ),
    .O(\pulse4/dff1/Q )
  );
  X_OR2 \pulse4/dff1/Q/FFY/RSTOR  (
    .I0(\pulse4/dff1/Q/FFY/RSTAND ),
    .I1(GSR),
    .O(\pulse4/dff1/Q/FFY/RST )
  );
  X_BUF \pulse4/dff1/Q/FFY/RSTAND_191  (
    .I(\pulse4/_n0001_0 ),
    .O(\pulse4/dff1/Q/FFY/RSTAND )
  );
  defparam \pulse4/dff2/Q_192 .INIT = 1'b0;
  X_FF \pulse4/dff2/Q_192  (
    .I(\pulse4/dff2/Q/DYMUX ),
    .CE(VCC),
    .CLK(\pulse4/dff2/Q/CLKINV ),
    .SET(GND),
    .RST(\pulse4/dff2/Q/FFY/RST ),
    .O(\pulse4/dff2/Q )
  );
  X_OR2 \pulse4/dff2/Q/FFY/RSTOR  (
    .I0(\pulse4/dff2/Q/FFY/RSTAND ),
    .I1(GSR),
    .O(\pulse4/dff2/Q/FFY/RST )
  );
  X_BUF \pulse4/dff2/Q/FFY/RSTAND_193  (
    .I(reset_IBUF),
    .O(\pulse4/dff2/Q/FFY/RSTAND )
  );
  X_ONE GLOBAL_LOGIC1_VCC (
    .O(GLOBAL_LOGIC1)
  );
  X_BUF \sh_p2_out0/OUTPUT/OFF/OMUX  (
    .I(\d5/q ),
    .O(\sh_p2_out0/O )
  );
  X_BUF \sh_p2_out1/OUTPUT/OFF/OMUX  (
    .I(\d6/q ),
    .O(\sh_p2_out1/O )
  );
  X_BUF \sh_p2_out2/OUTPUT/OFF/OMUX  (
    .I(\d7/q ),
    .O(\sh_p2_out2/O )
  );
  X_BUF \p2_out0/OUTPUT/OFF/OMUX  (
    .I(\d5/q/FXMUX ),
    .O(\p2_out0/O )
  );
  X_BUF \sh_p2_out3/OUTPUT/OFF/OMUX  (
    .I(\d8/q ),
    .O(\sh_p2_out3/O )
  );
  X_BUF \p2_out1/OUTPUT/OFF/OMUX  (
    .I(\d6/q/FXMUX ),
    .O(\p2_out1/O )
  );
  X_BUF \p2_out2/OUTPUT/OFF/OMUX  (
    .I(\d7/q/FXMUX ),
    .O(\p2_out2/O )
  );
  X_BUF \p2_out3/OUTPUT/OFF/OMUX  (
    .I(\d8/q/FXMUX ),
    .O(\p2_out3/O )
  );
  X_BUF \gnt1/OUTPUT/OFF/OMUX  (
    .I(gnt1_OBUF),
    .O(\gnt1/O )
  );
  X_BUF \gnt2/OUTPUT/OFF/OMUX  (
    .I(gnt2_OBUF),
    .O(\gnt2/O )
  );
  X_BUF \gnt3/OUTPUT/OFF/OMUX  (
    .I(gnt3_OBUF),
    .O(\gnt3/O )
  );
  X_BUF \gnt4/OUTPUT/OFF/OMUX  (
    .I(gnt4_OBUF),
    .O(\gnt4/O )
  );
  X_BUF \sh_p3_out0/OUTPUT/OFF/OMUX  (
    .I(\d9/q ),
    .O(\sh_p3_out0/O )
  );
  X_BUF \sh_p1_out1/OUTPUT/OFF/OMUX  (
    .I(\d2/q ),
    .O(\sh_p1_out1/O )
  );
  X_BUF \p4_out3/OUTPUT/OFF/OMUX  (
    .I(\d16/q/FXMUX ),
    .O(\p4_out3/O )
  );
  X_BUF \sh_p1_out2/OUTPUT/OFF/OMUX  (
    .I(\d3/q ),
    .O(\sh_p1_out2/O )
  );
  X_BUF \p1_out0/OUTPUT/OFF/OMUX  (
    .I(\d1/q/GYMUX ),
    .O(\p1_out0/O )
  );
  X_BUF \sh_p1_out3/OUTPUT/OFF/OMUX  (
    .I(\d4/q ),
    .O(\sh_p1_out3/O )
  );
  X_BUF \p1_out1/OUTPUT/OFF/OMUX  (
    .I(\d2/q/FXMUX ),
    .O(\p1_out1/O )
  );
  X_BUF \p1_out2/OUTPUT/OFF/OMUX  (
    .I(\d3/q/FXMUX ),
    .O(\p1_out2/O )
  );
  X_BUF \p1_out3/OUTPUT/OFF/OMUX  (
    .I(\d4/q/FXMUX ),
    .O(\p1_out3/O )
  );
  X_BUF \sh_p3_out1/OUTPUT/OFF/OMUX  (
    .I(\d10/q ),
    .O(\sh_p3_out1/O )
  );
  X_BUF \sh_p3_out2/OUTPUT/OFF/OMUX  (
    .I(\d11/q ),
    .O(\sh_p3_out2/O )
  );
  X_BUF \p3_out0/OUTPUT/OFF/OMUX  (
    .I(\d9/q/GYMUX ),
    .O(\p3_out0/O )
  );
  X_BUF \sh_p3_out3/OUTPUT/OFF/OMUX  (
    .I(\d12/q ),
    .O(\sh_p3_out3/O )
  );
  X_BUF \p3_out1/OUTPUT/OFF/OMUX  (
    .I(\d10/q/FXMUX ),
    .O(\p3_out1/O )
  );
  X_BUF \p3_out2/OUTPUT/OFF/OMUX  (
    .I(\d11/q/FXMUX ),
    .O(\p3_out2/O )
  );
  X_BUF \p3_out3/OUTPUT/OFF/OMUX  (
    .I(\d12/q/FXMUX ),
    .O(\p3_out3/O )
  );
  X_BUF \sh_p4_out0/OUTPUT/OFF/OMUX  (
    .I(\d13/q ),
    .O(\sh_p4_out0/O )
  );
  X_BUF \sh_p4_out1/OUTPUT/OFF/OMUX  (
    .I(\d14/q ),
    .O(\sh_p4_out1/O )
  );
  X_BUF \sh_p4_out2/OUTPUT/OFF/OMUX  (
    .I(\d15/q ),
    .O(\sh_p4_out2/O )
  );
  X_BUF \p4_out0/OUTPUT/OFF/OMUX  (
    .I(\d13/q/GYMUX ),
    .O(\p4_out0/O )
  );
  X_BUF \sh_p4_out3/OUTPUT/OFF/OMUX  (
    .I(\d16/q ),
    .O(\sh_p4_out3/O )
  );
  X_BUF \p4_out1/OUTPUT/OFF/OMUX  (
    .I(\d14/q/FXMUX ),
    .O(\p4_out1/O )
  );
  X_BUF \sh_p1_out0/OUTPUT/OFF/OMUX  (
    .I(\d1/q ),
    .O(\sh_p1_out0/O )
  );
  X_BUF \p4_out2/OUTPUT/OFF/OMUX  (
    .I(\d15/q/FXMUX ),
    .O(\p4_out2/O )
  );
  X_ONE NlwBlock_round_robin_arbiter_VCC (
    .O(VCC)
  );
  X_ZERO NlwBlock_round_robin_arbiter_GND (
    .O(GND)
  );
endmodule

