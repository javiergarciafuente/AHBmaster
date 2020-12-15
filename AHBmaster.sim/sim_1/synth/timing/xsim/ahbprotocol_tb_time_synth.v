// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Dec 15 19:55:48 2020
// Host        : Javier running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/Javier/Documents/GitHub/AHBmaster/AHBmaster.sim/sim_1/synth/timing/xsim/ahbprotocol_tb_time_synth.v
// Design      : ahbarbiter
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module LDCP_UNIQ_BASE_
   (Q,
    CLR,
    D,
    G,
    PRE);
  output Q;
  input CLR;
  input D;
  input G;
  input PRE;

  wire CLR;
  wire D;
  wire D0;
  wire G;
  wire G0;
  wire GND_1;
  wire PRE;
  wire Q;
  wire VCC_1;

  GND GND
       (.G(GND_1));
  LUT3 #(
    .INIT(8'h32)) 
    L3_1
       (.I0(PRE),
        .I1(CLR),
        .I2(D),
        .O(D0));
  LUT3 #(
    .INIT(8'hFE)) 
    L3_2
       (.I0(G),
        .I1(CLR),
        .I2(PRE),
        .O(G0));
  LDCE #(
    .INIT(1'b0)) 
    L7
       (.CLR(GND_1),
        .D(D0),
        .G(G0),
        .GE(VCC_1),
        .Q(Q));
  VCC VCC
       (.P(VCC_1));
endmodule

module LDCP_HD5
   (Q,
    CLR,
    D,
    G,
    PRE);
  output Q;
  input CLR;
  input D;
  input G;
  input PRE;

  wire CLR;
  wire D;
  wire D0;
  wire G;
  wire G0;
  wire GND_1;
  wire PRE;
  wire Q;
  wire VCC_1;

  GND GND
       (.G(GND_1));
  LUT3 #(
    .INIT(8'h32)) 
    L3_1
       (.I0(PRE),
        .I1(CLR),
        .I2(D),
        .O(D0));
  LUT3 #(
    .INIT(8'hFE)) 
    L3_2
       (.I0(G),
        .I1(CLR),
        .I2(PRE),
        .O(G0));
  LDCE #(
    .INIT(1'b0)) 
    L7
       (.CLR(GND_1),
        .D(D0),
        .G(G0),
        .GE(VCC_1),
        .Q(Q));
  VCC VCC
       (.P(VCC_1));
endmodule

module LDCP_HD6
   (Q,
    CLR,
    D,
    G,
    PRE);
  output Q;
  input CLR;
  input D;
  input G;
  input PRE;

  wire CLR;
  wire D;
  wire D0;
  wire G;
  wire G0;
  wire GND_1;
  wire PRE;
  wire Q;
  wire VCC_1;

  GND GND
       (.G(GND_1));
  LUT3 #(
    .INIT(8'h32)) 
    L3_1
       (.I0(PRE),
        .I1(CLR),
        .I2(D),
        .O(D0));
  LUT3 #(
    .INIT(8'hFE)) 
    L3_2
       (.I0(G),
        .I1(CLR),
        .I2(PRE),
        .O(G0));
  LDCE #(
    .INIT(1'b0)) 
    L7
       (.CLR(GND_1),
        .D(D0),
        .G(G0),
        .GE(VCC_1),
        .Q(Q));
  VCC VCC
       (.P(VCC_1));
endmodule

module LDCP_HD7
   (Q,
    CLR,
    D,
    G,
    PRE);
  output Q;
  input CLR;
  input D;
  input G;
  input PRE;

  wire CLR;
  wire D;
  wire D0;
  wire G;
  wire G0;
  wire GND_1;
  wire PRE;
  wire Q;
  wire VCC_1;

  GND GND
       (.G(GND_1));
  LUT3 #(
    .INIT(8'h32)) 
    L3_1
       (.I0(PRE),
        .I1(CLR),
        .I2(D),
        .O(D0));
  LUT3 #(
    .INIT(8'hFE)) 
    L3_2
       (.I0(G),
        .I1(CLR),
        .I2(PRE),
        .O(G0));
  LDCE #(
    .INIT(1'b0)) 
    L7
       (.CLR(GND_1),
        .D(D0),
        .G(G0),
        .GE(VCC_1),
        .Q(Q));
  VCC VCC
       (.P(VCC_1));
endmodule

module LDCP_HD8
   (Q,
    CLR,
    D,
    G,
    PRE);
  output Q;
  input CLR;
  input D;
  input G;
  input PRE;

  wire CLR;
  wire D;
  wire D0;
  wire G;
  wire G0;
  wire GND_1;
  wire PRE;
  wire Q;
  wire VCC_1;

  GND GND
       (.G(GND_1));
  LUT3 #(
    .INIT(8'h32)) 
    L3_1
       (.I0(PRE),
        .I1(CLR),
        .I2(D),
        .O(D0));
  LUT3 #(
    .INIT(8'hFE)) 
    L3_2
       (.I0(G),
        .I1(CLR),
        .I2(PRE),
        .O(G0));
  LDCE #(
    .INIT(1'b0)) 
    L7
       (.CLR(GND_1),
        .D(D0),
        .G(G0),
        .GE(VCC_1),
        .Q(Q));
  VCC VCC
       (.P(VCC_1));
endmodule

(* NotValidForBitStream *)
module ahbarbiter
   (rst,
    clk,
    hbusreqn,
    hlockn,
    hgrantn,
    hmaster);
  input rst;
  input clk;
  input [0:15]hbusreqn;
  input [0:15]hlockn;
  output [0:15]hgrantn;
  output [3:0]hmaster;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [0:15]hbusreqn;
  wire [0:15]hbusreqn_IBUF;
  wire [0:15]hgrantn;
  wire [0:15]hgrantn_OBUF;
  wire \hgrantn_reg[0]_i_1_n_0 ;
  wire \hgrantn_reg[0]_i_2_n_0 ;
  wire \hgrantn_reg[0]_i_3_n_0 ;
  wire \hgrantn_reg[0]_i_4_n_0 ;
  wire \hgrantn_reg[0]_i_5_n_0 ;
  wire \hgrantn_reg[0]_i_6_n_0 ;
  wire \hgrantn_reg[0]_i_7_n_0 ;
  wire \hgrantn_reg[10]_i_1_n_0 ;
  wire \hgrantn_reg[11]_i_1_n_0 ;
  wire \hgrantn_reg[12]_i_1_n_0 ;
  wire \hgrantn_reg[13]_i_1_n_0 ;
  wire \hgrantn_reg[14]_i_1_n_0 ;
  wire \hgrantn_reg[15]_i_1_n_0 ;
  wire \hgrantn_reg[1]_i_1_n_0 ;
  wire \hgrantn_reg[2]_i_1_n_0 ;
  wire \hgrantn_reg[3]_i_1_n_0 ;
  wire \hgrantn_reg[4]_i_1_n_0 ;
  wire \hgrantn_reg[5]_i_1_n_0 ;
  wire \hgrantn_reg[6]_i_1_n_0 ;
  wire \hgrantn_reg[7]_i_1_n_0 ;
  wire \hgrantn_reg[8]_i_1_n_0 ;
  wire \hgrantn_reg[9]_i_1_n_0 ;
  wire [0:15]hlockn;
  wire [0:15]hlockn_IBUF;
  wire [3:0]hmaster;
  wire [3:0]hmaster_OBUF;
  wire \index_reg[0]_i_1_n_0 ;
  wire \index_reg[0]_i_2_n_0 ;
  wire \index_reg[0]_i_3_n_0 ;
  wire \index_reg[1]_i_1_n_0 ;
  wire \index_reg[1]_i_2_n_0 ;
  wire \index_reg[1]_i_3_n_0 ;
  wire \index_reg[1]_i_4_n_0 ;
  wire \index_reg[2]_i_1_n_0 ;
  wire \index_reg[2]_i_2_n_0 ;
  wire \index_reg[2]_i_3_n_0 ;
  wire \index_reg[3]_i_1_n_0 ;
  wire \index_reg[3]_i_2_n_0 ;
  wire \index_reg[3]_i_3_n_0 ;
  wire \index_reg[3]_i_4_n_0 ;
  wire \index_reg[3]_i_5_n_0 ;
  wire \index_reg[3]_i_6_n_0 ;
  wire \index_reg[3]_i_7_n_0 ;
  wire \index_reg_n_0_[0] ;
  wire \index_reg_n_0_[1] ;
  wire \index_reg_n_0_[2] ;
  wire \index_reg_n_0_[3] ;
  wire locked;
  wire locked_reg_i_2_n_0;
  wire locked_reg_i_4_n_0;
  wire locked_reg_i_5_n_0;
  wire locked_reg_i_6_n_0;
  wire locked_reg_i_7_n_0;
  wire rst;
  wire rst_IBUF;
  wire sig_lock;
  wire sig_lock0_out;

initial begin
 $sdf_annotate("ahbprotocol_tb_time_synth.sdf",,,,"tool_control");
end
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF \hbusreqn_IBUF[0]_inst 
       (.I(hbusreqn[0]),
        .O(hbusreqn_IBUF[0]));
  IBUF \hbusreqn_IBUF[10]_inst 
       (.I(hbusreqn[10]),
        .O(hbusreqn_IBUF[10]));
  IBUF \hbusreqn_IBUF[11]_inst 
       (.I(hbusreqn[11]),
        .O(hbusreqn_IBUF[11]));
  IBUF \hbusreqn_IBUF[12]_inst 
       (.I(hbusreqn[12]),
        .O(hbusreqn_IBUF[12]));
  IBUF \hbusreqn_IBUF[13]_inst 
       (.I(hbusreqn[13]),
        .O(hbusreqn_IBUF[13]));
  IBUF \hbusreqn_IBUF[14]_inst 
       (.I(hbusreqn[14]),
        .O(hbusreqn_IBUF[14]));
  IBUF \hbusreqn_IBUF[15]_inst 
       (.I(hbusreqn[15]),
        .O(hbusreqn_IBUF[15]));
  IBUF \hbusreqn_IBUF[1]_inst 
       (.I(hbusreqn[1]),
        .O(hbusreqn_IBUF[1]));
  IBUF \hbusreqn_IBUF[2]_inst 
       (.I(hbusreqn[2]),
        .O(hbusreqn_IBUF[2]));
  IBUF \hbusreqn_IBUF[3]_inst 
       (.I(hbusreqn[3]),
        .O(hbusreqn_IBUF[3]));
  IBUF \hbusreqn_IBUF[4]_inst 
       (.I(hbusreqn[4]),
        .O(hbusreqn_IBUF[4]));
  IBUF \hbusreqn_IBUF[5]_inst 
       (.I(hbusreqn[5]),
        .O(hbusreqn_IBUF[5]));
  IBUF \hbusreqn_IBUF[6]_inst 
       (.I(hbusreqn[6]),
        .O(hbusreqn_IBUF[6]));
  IBUF \hbusreqn_IBUF[7]_inst 
       (.I(hbusreqn[7]),
        .O(hbusreqn_IBUF[7]));
  IBUF \hbusreqn_IBUF[8]_inst 
       (.I(hbusreqn[8]),
        .O(hbusreqn_IBUF[8]));
  IBUF \hbusreqn_IBUF[9]_inst 
       (.I(hbusreqn[9]),
        .O(hbusreqn_IBUF[9]));
  OBUF \hgrantn_OBUF[0]_inst 
       (.I(hgrantn_OBUF[0]),
        .O(hgrantn[0]));
  OBUF \hgrantn_OBUF[10]_inst 
       (.I(hgrantn_OBUF[10]),
        .O(hgrantn[10]));
  OBUF \hgrantn_OBUF[11]_inst 
       (.I(hgrantn_OBUF[11]),
        .O(hgrantn[11]));
  OBUF \hgrantn_OBUF[12]_inst 
       (.I(hgrantn_OBUF[12]),
        .O(hgrantn[12]));
  OBUF \hgrantn_OBUF[13]_inst 
       (.I(hgrantn_OBUF[13]),
        .O(hgrantn[13]));
  OBUF \hgrantn_OBUF[14]_inst 
       (.I(hgrantn_OBUF[14]),
        .O(hgrantn[14]));
  OBUF \hgrantn_OBUF[15]_inst 
       (.I(hgrantn_OBUF[15]),
        .O(hgrantn[15]));
  OBUF \hgrantn_OBUF[1]_inst 
       (.I(hgrantn_OBUF[1]),
        .O(hgrantn[1]));
  OBUF \hgrantn_OBUF[2]_inst 
       (.I(hgrantn_OBUF[2]),
        .O(hgrantn[2]));
  OBUF \hgrantn_OBUF[3]_inst 
       (.I(hgrantn_OBUF[3]),
        .O(hgrantn[3]));
  OBUF \hgrantn_OBUF[4]_inst 
       (.I(hgrantn_OBUF[4]),
        .O(hgrantn[4]));
  OBUF \hgrantn_OBUF[5]_inst 
       (.I(hgrantn_OBUF[5]),
        .O(hgrantn[5]));
  OBUF \hgrantn_OBUF[6]_inst 
       (.I(hgrantn_OBUF[6]),
        .O(hgrantn[6]));
  OBUF \hgrantn_OBUF[7]_inst 
       (.I(hgrantn_OBUF[7]),
        .O(hgrantn[7]));
  OBUF \hgrantn_OBUF[8]_inst 
       (.I(hgrantn_OBUF[8]),
        .O(hgrantn[8]));
  OBUF \hgrantn_OBUF[9]_inst 
       (.I(hgrantn_OBUF[9]),
        .O(hgrantn[9]));
  (* XILINX_LEGACY_PRIM = "LDP" *) 
  LDPE #(
    .INIT(1'b1)) 
    \hgrantn_reg[0] 
       (.D(\hgrantn_reg[0]_i_1_n_0 ),
        .G(\hgrantn_reg[0]_i_2_n_0 ),
        .GE(1'b1),
        .PRE(rst_IBUF),
        .Q(hgrantn_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \hgrantn_reg[0]_i_1 
       (.I0(\index_reg_n_0_[2] ),
        .I1(\index_reg_n_0_[0] ),
        .I2(\index_reg_n_0_[1] ),
        .I3(\index_reg_n_0_[3] ),
        .O(\hgrantn_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E2FFFFFFFF)) 
    \hgrantn_reg[0]_i_2 
       (.I0(\hgrantn_reg[0]_i_3_n_0 ),
        .I1(\index_reg_n_0_[3] ),
        .I2(\hgrantn_reg[0]_i_4_n_0 ),
        .I3(\index_reg_n_0_[2] ),
        .I4(\hgrantn_reg[0]_i_5_n_0 ),
        .I5(sig_lock),
        .O(\hgrantn_reg[0]_i_2_n_0 ));
  MUXF7 \hgrantn_reg[0]_i_3 
       (.I0(\hgrantn_reg[0]_i_6_n_0 ),
        .I1(\hgrantn_reg[0]_i_7_n_0 ),
        .O(\hgrantn_reg[0]_i_3_n_0 ),
        .S(\index_reg_n_0_[2] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \hgrantn_reg[0]_i_4 
       (.I0(hlockn_IBUF[11]),
        .I1(hlockn_IBUF[10]),
        .I2(\index_reg_n_0_[1] ),
        .I3(hlockn_IBUF[9]),
        .I4(\index_reg_n_0_[0] ),
        .I5(hlockn_IBUF[8]),
        .O(\hgrantn_reg[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \hgrantn_reg[0]_i_5 
       (.I0(hlockn_IBUF[15]),
        .I1(hlockn_IBUF[14]),
        .I2(\index_reg_n_0_[1] ),
        .I3(hlockn_IBUF[13]),
        .I4(\index_reg_n_0_[0] ),
        .I5(hlockn_IBUF[12]),
        .O(\hgrantn_reg[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \hgrantn_reg[0]_i_6 
       (.I0(hlockn_IBUF[3]),
        .I1(hlockn_IBUF[2]),
        .I2(\index_reg_n_0_[1] ),
        .I3(hlockn_IBUF[1]),
        .I4(\index_reg_n_0_[0] ),
        .I5(hlockn_IBUF[0]),
        .O(\hgrantn_reg[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \hgrantn_reg[0]_i_7 
       (.I0(hlockn_IBUF[7]),
        .I1(hlockn_IBUF[6]),
        .I2(\index_reg_n_0_[1] ),
        .I3(hlockn_IBUF[5]),
        .I4(\index_reg_n_0_[0] ),
        .I5(hlockn_IBUF[4]),
        .O(\hgrantn_reg[0]_i_7_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \hgrantn_reg[10] 
       (.CLR(rst_IBUF),
        .D(\hgrantn_reg[10]_i_1_n_0 ),
        .G(\hgrantn_reg[0]_i_2_n_0 ),
        .GE(1'b1),
        .Q(hgrantn_OBUF[10]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \hgrantn_reg[10]_i_1 
       (.I0(\index_reg_n_0_[2] ),
        .I1(\index_reg_n_0_[1] ),
        .I2(\index_reg_n_0_[0] ),
        .I3(\index_reg_n_0_[3] ),
        .O(\hgrantn_reg[10]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \hgrantn_reg[11] 
       (.CLR(rst_IBUF),
        .D(\hgrantn_reg[11]_i_1_n_0 ),
        .G(\hgrantn_reg[0]_i_2_n_0 ),
        .GE(1'b1),
        .Q(hgrantn_OBUF[11]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \hgrantn_reg[11]_i_1 
       (.I0(\index_reg_n_0_[2] ),
        .I1(\index_reg_n_0_[0] ),
        .I2(\index_reg_n_0_[1] ),
        .I3(\index_reg_n_0_[3] ),
        .O(\hgrantn_reg[11]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \hgrantn_reg[12] 
       (.CLR(rst_IBUF),
        .D(\hgrantn_reg[12]_i_1_n_0 ),
        .G(\hgrantn_reg[0]_i_2_n_0 ),
        .GE(1'b1),
        .Q(hgrantn_OBUF[12]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \hgrantn_reg[12]_i_1 
       (.I0(\index_reg_n_0_[2] ),
        .I1(\index_reg_n_0_[0] ),
        .I2(\index_reg_n_0_[1] ),
        .I3(\index_reg_n_0_[3] ),
        .O(\hgrantn_reg[12]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \hgrantn_reg[13] 
       (.CLR(rst_IBUF),
        .D(\hgrantn_reg[13]_i_1_n_0 ),
        .G(\hgrantn_reg[0]_i_2_n_0 ),
        .GE(1'b1),
        .Q(hgrantn_OBUF[13]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \hgrantn_reg[13]_i_1 
       (.I0(\index_reg_n_0_[2] ),
        .I1(\index_reg_n_0_[0] ),
        .I2(\index_reg_n_0_[1] ),
        .I3(\index_reg_n_0_[3] ),
        .O(\hgrantn_reg[13]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \hgrantn_reg[14] 
       (.CLR(rst_IBUF),
        .D(\hgrantn_reg[14]_i_1_n_0 ),
        .G(\hgrantn_reg[0]_i_2_n_0 ),
        .GE(1'b1),
        .Q(hgrantn_OBUF[14]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \hgrantn_reg[14]_i_1 
       (.I0(\index_reg_n_0_[2] ),
        .I1(\index_reg_n_0_[1] ),
        .I2(\index_reg_n_0_[0] ),
        .I3(\index_reg_n_0_[3] ),
        .O(\hgrantn_reg[14]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \hgrantn_reg[15] 
       (.CLR(rst_IBUF),
        .D(\hgrantn_reg[15]_i_1_n_0 ),
        .G(\hgrantn_reg[0]_i_2_n_0 ),
        .GE(1'b1),
        .Q(hgrantn_OBUF[15]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \hgrantn_reg[15]_i_1 
       (.I0(\index_reg_n_0_[2] ),
        .I1(\index_reg_n_0_[0] ),
        .I2(\index_reg_n_0_[1] ),
        .I3(\index_reg_n_0_[3] ),
        .O(\hgrantn_reg[15]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \hgrantn_reg[1] 
       (.CLR(rst_IBUF),
        .D(\hgrantn_reg[1]_i_1_n_0 ),
        .G(\hgrantn_reg[0]_i_2_n_0 ),
        .GE(1'b1),
        .Q(hgrantn_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \hgrantn_reg[1]_i_1 
       (.I0(\index_reg_n_0_[2] ),
        .I1(\index_reg_n_0_[0] ),
        .I2(\index_reg_n_0_[1] ),
        .I3(\index_reg_n_0_[3] ),
        .O(\hgrantn_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \hgrantn_reg[2] 
       (.CLR(rst_IBUF),
        .D(\hgrantn_reg[2]_i_1_n_0 ),
        .G(\hgrantn_reg[0]_i_2_n_0 ),
        .GE(1'b1),
        .Q(hgrantn_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \hgrantn_reg[2]_i_1 
       (.I0(\index_reg_n_0_[2] ),
        .I1(\index_reg_n_0_[1] ),
        .I2(\index_reg_n_0_[0] ),
        .I3(\index_reg_n_0_[3] ),
        .O(\hgrantn_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \hgrantn_reg[3] 
       (.CLR(rst_IBUF),
        .D(\hgrantn_reg[3]_i_1_n_0 ),
        .G(\hgrantn_reg[0]_i_2_n_0 ),
        .GE(1'b1),
        .Q(hgrantn_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \hgrantn_reg[3]_i_1 
       (.I0(\index_reg_n_0_[2] ),
        .I1(\index_reg_n_0_[0] ),
        .I2(\index_reg_n_0_[1] ),
        .I3(\index_reg_n_0_[3] ),
        .O(\hgrantn_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \hgrantn_reg[4] 
       (.CLR(rst_IBUF),
        .D(\hgrantn_reg[4]_i_1_n_0 ),
        .G(\hgrantn_reg[0]_i_2_n_0 ),
        .GE(1'b1),
        .Q(hgrantn_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \hgrantn_reg[4]_i_1 
       (.I0(\index_reg_n_0_[2] ),
        .I1(\index_reg_n_0_[0] ),
        .I2(\index_reg_n_0_[1] ),
        .I3(\index_reg_n_0_[3] ),
        .O(\hgrantn_reg[4]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \hgrantn_reg[5] 
       (.CLR(rst_IBUF),
        .D(\hgrantn_reg[5]_i_1_n_0 ),
        .G(\hgrantn_reg[0]_i_2_n_0 ),
        .GE(1'b1),
        .Q(hgrantn_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \hgrantn_reg[5]_i_1 
       (.I0(\index_reg_n_0_[2] ),
        .I1(\index_reg_n_0_[0] ),
        .I2(\index_reg_n_0_[1] ),
        .I3(\index_reg_n_0_[3] ),
        .O(\hgrantn_reg[5]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \hgrantn_reg[6] 
       (.CLR(rst_IBUF),
        .D(\hgrantn_reg[6]_i_1_n_0 ),
        .G(\hgrantn_reg[0]_i_2_n_0 ),
        .GE(1'b1),
        .Q(hgrantn_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \hgrantn_reg[6]_i_1 
       (.I0(\index_reg_n_0_[2] ),
        .I1(\index_reg_n_0_[1] ),
        .I2(\index_reg_n_0_[0] ),
        .I3(\index_reg_n_0_[3] ),
        .O(\hgrantn_reg[6]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \hgrantn_reg[7] 
       (.CLR(rst_IBUF),
        .D(\hgrantn_reg[7]_i_1_n_0 ),
        .G(\hgrantn_reg[0]_i_2_n_0 ),
        .GE(1'b1),
        .Q(hgrantn_OBUF[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \hgrantn_reg[7]_i_1 
       (.I0(\index_reg_n_0_[2] ),
        .I1(\index_reg_n_0_[0] ),
        .I2(\index_reg_n_0_[1] ),
        .I3(\index_reg_n_0_[3] ),
        .O(\hgrantn_reg[7]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \hgrantn_reg[8] 
       (.CLR(rst_IBUF),
        .D(\hgrantn_reg[8]_i_1_n_0 ),
        .G(\hgrantn_reg[0]_i_2_n_0 ),
        .GE(1'b1),
        .Q(hgrantn_OBUF[8]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \hgrantn_reg[8]_i_1 
       (.I0(\index_reg_n_0_[2] ),
        .I1(\index_reg_n_0_[0] ),
        .I2(\index_reg_n_0_[1] ),
        .I3(\index_reg_n_0_[3] ),
        .O(\hgrantn_reg[8]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \hgrantn_reg[9] 
       (.CLR(rst_IBUF),
        .D(\hgrantn_reg[9]_i_1_n_0 ),
        .G(\hgrantn_reg[0]_i_2_n_0 ),
        .GE(1'b1),
        .Q(hgrantn_OBUF[9]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \hgrantn_reg[9]_i_1 
       (.I0(\index_reg_n_0_[2] ),
        .I1(\index_reg_n_0_[0] ),
        .I2(\index_reg_n_0_[1] ),
        .I3(\index_reg_n_0_[3] ),
        .O(\hgrantn_reg[9]_i_1_n_0 ));
  IBUF \hlockn_IBUF[0]_inst 
       (.I(hlockn[0]),
        .O(hlockn_IBUF[0]));
  IBUF \hlockn_IBUF[10]_inst 
       (.I(hlockn[10]),
        .O(hlockn_IBUF[10]));
  IBUF \hlockn_IBUF[11]_inst 
       (.I(hlockn[11]),
        .O(hlockn_IBUF[11]));
  IBUF \hlockn_IBUF[12]_inst 
       (.I(hlockn[12]),
        .O(hlockn_IBUF[12]));
  IBUF \hlockn_IBUF[13]_inst 
       (.I(hlockn[13]),
        .O(hlockn_IBUF[13]));
  IBUF \hlockn_IBUF[14]_inst 
       (.I(hlockn[14]),
        .O(hlockn_IBUF[14]));
  IBUF \hlockn_IBUF[15]_inst 
       (.I(hlockn[15]),
        .O(hlockn_IBUF[15]));
  IBUF \hlockn_IBUF[1]_inst 
       (.I(hlockn[1]),
        .O(hlockn_IBUF[1]));
  IBUF \hlockn_IBUF[2]_inst 
       (.I(hlockn[2]),
        .O(hlockn_IBUF[2]));
  IBUF \hlockn_IBUF[3]_inst 
       (.I(hlockn[3]),
        .O(hlockn_IBUF[3]));
  IBUF \hlockn_IBUF[4]_inst 
       (.I(hlockn[4]),
        .O(hlockn_IBUF[4]));
  IBUF \hlockn_IBUF[5]_inst 
       (.I(hlockn[5]),
        .O(hlockn_IBUF[5]));
  IBUF \hlockn_IBUF[6]_inst 
       (.I(hlockn[6]),
        .O(hlockn_IBUF[6]));
  IBUF \hlockn_IBUF[7]_inst 
       (.I(hlockn[7]),
        .O(hlockn_IBUF[7]));
  IBUF \hlockn_IBUF[8]_inst 
       (.I(hlockn[8]),
        .O(hlockn_IBUF[8]));
  IBUF \hlockn_IBUF[9]_inst 
       (.I(hlockn[9]),
        .O(hlockn_IBUF[9]));
  OBUF \hmaster_OBUF[0]_inst 
       (.I(hmaster_OBUF[0]),
        .O(hmaster[0]));
  OBUF \hmaster_OBUF[1]_inst 
       (.I(hmaster_OBUF[1]),
        .O(hmaster[1]));
  OBUF \hmaster_OBUF[2]_inst 
       (.I(hmaster_OBUF[2]),
        .O(hmaster[2]));
  OBUF \hmaster_OBUF[3]_inst 
       (.I(hmaster_OBUF[3]),
        .O(hmaster[3]));
  FDCE #(
    .INIT(1'b0)) 
    \hmaster_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\hgrantn_reg[0]_i_2_n_0 ),
        .CLR(rst_IBUF),
        .D(\index_reg_n_0_[0] ),
        .Q(hmaster_OBUF[0]));
  FDCE #(
    .INIT(1'b0)) 
    \hmaster_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\hgrantn_reg[0]_i_2_n_0 ),
        .CLR(rst_IBUF),
        .D(\index_reg_n_0_[1] ),
        .Q(hmaster_OBUF[1]));
  FDCE #(
    .INIT(1'b0)) 
    \hmaster_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\hgrantn_reg[0]_i_2_n_0 ),
        .CLR(rst_IBUF),
        .D(\index_reg_n_0_[2] ),
        .Q(hmaster_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \hmaster_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\hgrantn_reg[0]_i_2_n_0 ),
        .CLR(rst_IBUF),
        .D(\index_reg_n_0_[3] ),
        .Q(hmaster_OBUF[3]));
  (* INIT = "1'b0" *) 
  LDCP_UNIQ_BASE_ \index_reg[0] 
       (.CLR(rst_IBUF),
        .D(\index_reg[0]_i_1_n_0 ),
        .G(\index_reg[3]_i_2_n_0 ),
        .PRE(\index_reg[3]_i_3_n_0 ),
        .Q(\index_reg_n_0_[0] ));
  LUT4 #(
    .INIT(16'h0F02)) 
    \index_reg[0]_i_1 
       (.I0(\index_reg[0]_i_2_n_0 ),
        .I1(hbusreqn_IBUF[2]),
        .I2(hbusreqn_IBUF[0]),
        .I3(hbusreqn_IBUF[1]),
        .O(\index_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55551110)) 
    \index_reg[0]_i_2 
       (.I0(hbusreqn_IBUF[4]),
        .I1(hbusreqn_IBUF[6]),
        .I2(\index_reg[0]_i_3_n_0 ),
        .I3(hbusreqn_IBUF[7]),
        .I4(hbusreqn_IBUF[5]),
        .I5(hbusreqn_IBUF[3]),
        .O(\index_reg[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAEEFE)) 
    \index_reg[0]_i_3 
       (.I0(hbusreqn_IBUF[9]),
        .I1(hbusreqn_IBUF[11]),
        .I2(hbusreqn_IBUF[13]),
        .I3(hbusreqn_IBUF[12]),
        .I4(hbusreqn_IBUF[10]),
        .I5(hbusreqn_IBUF[8]),
        .O(\index_reg[0]_i_3_n_0 ));
  (* INIT = "1'b0" *) 
  LDCP_HD5 \index_reg[1] 
       (.CLR(rst_IBUF),
        .D(\index_reg[1]_i_1_n_0 ),
        .G(\index_reg[3]_i_2_n_0 ),
        .PRE(\index_reg[3]_i_3_n_0 ),
        .Q(\index_reg_n_0_[1] ));
  LUT6 #(
    .INIT(64'hAAEEAAEEAAEEAAFE)) 
    \index_reg[1]_i_1 
       (.I0(\index_reg[1]_i_2_n_0 ),
        .I1(\index_reg[1]_i_3_n_0 ),
        .I2(\index_reg[1]_i_4_n_0 ),
        .I3(\index_reg[3]_i_5_n_0 ),
        .I4(hbusreqn_IBUF[8]),
        .I5(hbusreqn_IBUF[9]),
        .O(\index_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h000E)) 
    \index_reg[1]_i_2 
       (.I0(hbusreqn_IBUF[2]),
        .I1(hbusreqn_IBUF[3]),
        .I2(hbusreqn_IBUF[0]),
        .I3(hbusreqn_IBUF[1]),
        .O(\index_reg[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \index_reg[1]_i_3 
       (.I0(hbusreqn_IBUF[7]),
        .I1(hbusreqn_IBUF[6]),
        .O(\index_reg[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFFF10)) 
    \index_reg[1]_i_4 
       (.I0(hbusreqn_IBUF[13]),
        .I1(hbusreqn_IBUF[12]),
        .I2(hbusreqn_IBUF[14]),
        .I3(hbusreqn_IBUF[10]),
        .I4(hbusreqn_IBUF[11]),
        .O(\index_reg[1]_i_4_n_0 ));
  (* INIT = "1'b0" *) 
  LDCP_HD6 \index_reg[2] 
       (.CLR(rst_IBUF),
        .D(\index_reg[2]_i_1_n_0 ),
        .G(\index_reg[3]_i_2_n_0 ),
        .PRE(\index_reg[3]_i_3_n_0 ),
        .Q(\index_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \index_reg[2]_i_1 
       (.I0(hbusreqn_IBUF[1]),
        .I1(hbusreqn_IBUF[0]),
        .I2(hbusreqn_IBUF[3]),
        .I3(hbusreqn_IBUF[2]),
        .I4(\index_reg[2]_i_2_n_0 ),
        .O(\index_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF4)) 
    \index_reg[2]_i_2 
       (.I0(\index_reg[3]_i_7_n_0 ),
        .I1(\index_reg[2]_i_3_n_0 ),
        .I2(hbusreqn_IBUF[5]),
        .I3(hbusreqn_IBUF[4]),
        .I4(hbusreqn_IBUF[7]),
        .I5(hbusreqn_IBUF[6]),
        .O(\index_reg[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \index_reg[2]_i_3 
       (.I0(hbusreqn_IBUF[12]),
        .I1(hbusreqn_IBUF[13]),
        .I2(hbusreqn_IBUF[14]),
        .O(\index_reg[2]_i_3_n_0 ));
  (* INIT = "1'b0" *) 
  LDCP_HD7 \index_reg[3] 
       (.CLR(rst_IBUF),
        .D(\index_reg[3]_i_1_n_0 ),
        .G(\index_reg[3]_i_2_n_0 ),
        .PRE(\index_reg[3]_i_3_n_0 ),
        .Q(\index_reg_n_0_[3] ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \index_reg[3]_i_1 
       (.I0(\index_reg[3]_i_4_n_0 ),
        .I1(\index_reg[3]_i_5_n_0 ),
        .I2(hbusreqn_IBUF[2]),
        .I3(hbusreqn_IBUF[3]),
        .I4(hbusreqn_IBUF[6]),
        .I5(hbusreqn_IBUF[7]),
        .O(\index_reg[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \index_reg[3]_i_2 
       (.I0(\index_reg[3]_i_6_n_0 ),
        .I1(\index_reg[3]_i_4_n_0 ),
        .I2(hbusreqn_IBUF[15]),
        .O(\index_reg[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \index_reg[3]_i_3 
       (.I0(\index_reg[3]_i_4_n_0 ),
        .I1(hbusreqn_IBUF[15]),
        .I2(\index_reg[3]_i_6_n_0 ),
        .O(\index_reg[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \index_reg[3]_i_4 
       (.I0(\index_reg[3]_i_7_n_0 ),
        .I1(hbusreqn_IBUF[14]),
        .I2(hbusreqn_IBUF[13]),
        .I3(hbusreqn_IBUF[12]),
        .O(\index_reg[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \index_reg[3]_i_5 
       (.I0(hbusreqn_IBUF[4]),
        .I1(hbusreqn_IBUF[5]),
        .I2(hbusreqn_IBUF[0]),
        .I3(hbusreqn_IBUF[1]),
        .O(\index_reg[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \index_reg[3]_i_6 
       (.I0(hbusreqn_IBUF[7]),
        .I1(hbusreqn_IBUF[6]),
        .I2(hbusreqn_IBUF[3]),
        .I3(hbusreqn_IBUF[2]),
        .I4(\index_reg[3]_i_5_n_0 ),
        .O(\index_reg[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \index_reg[3]_i_7 
       (.I0(hbusreqn_IBUF[8]),
        .I1(hbusreqn_IBUF[9]),
        .I2(hbusreqn_IBUF[10]),
        .I3(hbusreqn_IBUF[11]),
        .O(\index_reg[3]_i_7_n_0 ));
  (* INIT = "1'b0" *) 
  LDCP_HD8 locked_reg
       (.CLR(rst_IBUF),
        .D(locked),
        .G(locked_reg_i_2_n_0),
        .PRE(sig_lock0_out),
        .Q(sig_lock));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    locked_reg_i_1
       (.I0(hlockn_IBUF[13]),
        .I1(hlockn_IBUF[11]),
        .I2(locked_reg_i_4_n_0),
        .I3(hlockn_IBUF[12]),
        .I4(hlockn_IBUF[14]),
        .O(locked));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    locked_reg_i_2
       (.I0(hlockn_IBUF[14]),
        .I1(hlockn_IBUF[12]),
        .I2(locked_reg_i_4_n_0),
        .I3(hlockn_IBUF[11]),
        .I4(hlockn_IBUF[13]),
        .I5(hlockn_IBUF[15]),
        .O(locked_reg_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    locked_reg_i_3
       (.I0(hlockn_IBUF[14]),
        .I1(hlockn_IBUF[12]),
        .I2(locked_reg_i_5_n_0),
        .I3(hlockn_IBUF[11]),
        .I4(hlockn_IBUF[13]),
        .I5(hlockn_IBUF[15]),
        .O(sig_lock0_out));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    locked_reg_i_4
       (.I0(hlockn_IBUF[9]),
        .I1(hlockn_IBUF[7]),
        .I2(locked_reg_i_6_n_0),
        .I3(hlockn_IBUF[6]),
        .I4(hlockn_IBUF[8]),
        .I5(hlockn_IBUF[10]),
        .O(locked_reg_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    locked_reg_i_5
       (.I0(hlockn_IBUF[9]),
        .I1(hlockn_IBUF[7]),
        .I2(locked_reg_i_7_n_0),
        .I3(hlockn_IBUF[6]),
        .I4(hlockn_IBUF[8]),
        .I5(hlockn_IBUF[10]),
        .O(locked_reg_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    locked_reg_i_6
       (.I0(hlockn_IBUF[4]),
        .I1(hlockn_IBUF[2]),
        .I2(hlockn_IBUF[1]),
        .I3(hlockn_IBUF[0]),
        .I4(hlockn_IBUF[3]),
        .I5(hlockn_IBUF[5]),
        .O(locked_reg_i_6_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    locked_reg_i_7
       (.I0(hlockn_IBUF[4]),
        .I1(hlockn_IBUF[2]),
        .I2(hlockn_IBUF[0]),
        .I3(hlockn_IBUF[1]),
        .I4(hlockn_IBUF[3]),
        .I5(hlockn_IBUF[5]),
        .O(locked_reg_i_7_n_0));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
