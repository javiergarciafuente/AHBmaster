// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Dec  2 19:06:49 2020
// Host        : Javier running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/Javier/Documents/maestro_amba/maestro_amba.sim/sim_1/synth/timing/xsim/ahbarbiter_tb_time_synth.v
// Design      : ahbarbiter
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

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
  wire \hgrantn[0]_i_10_n_0 ;
  wire \hgrantn[0]_i_11_n_0 ;
  wire \hgrantn[0]_i_12_n_0 ;
  wire \hgrantn[0]_i_1_n_0 ;
  wire \hgrantn[0]_i_4_n_0 ;
  wire \hgrantn[0]_i_5_n_0 ;
  wire \hgrantn[0]_i_6_n_0 ;
  wire \hgrantn[0]_i_9_n_0 ;
  wire [0:15]hgrantn_OBUF;
  wire \hgrantn_reg[0]_i_3_n_0 ;
  wire \hgrantn_reg[0]_i_7_n_0 ;
  wire \hgrantn_reg[0]_i_8_n_0 ;
  wire [0:15]hlockn;
  wire [0:15]hlockn_IBUF;
  wire [3:0]hmaster;
  wire \hmaster[3]_i_1_n_0 ;
  wire [3:0]hmaster_OBUF;
  wire [3:0]index;
  wire \index[0]_i_2_n_0 ;
  wire \index[0]_i_3_n_0 ;
  wire \index[0]_i_4_n_0 ;
  wire \index[0]_i_5_n_0 ;
  wire \index[1]_i_2_n_0 ;
  wire \index[1]_i_3_n_0 ;
  wire \index[1]_i_4_n_0 ;
  wire \index[3]_i_2_n_0 ;
  wire \index[3]_i_3_n_0 ;
  wire \index[3]_i_4_n_0 ;
  wire \index[3]_i_5_n_0 ;
  wire \index_reg_n_0_[0] ;
  wire \index_reg_n_0_[1] ;
  wire \index_reg_n_0_[2] ;
  wire \index_reg_n_0_[3] ;
  wire locked_reg_i_1_n_0;
  wire locked_reg_i_3_n_0;
  wire locked_reg_i_4_n_0;
  wire [15:0]p_0_in;
  wire rst;
  wire rst_IBUF;
  wire rst_IBUF_BUFG;
  wire sig_lock;

initial begin
 $sdf_annotate("ahbarbiter_tb_time_synth.sdf",,,,"tool_control");
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
  LUT5 #(
    .INIT(32'hAAAAAAAE)) 
    \hgrantn[0]_i_1 
       (.I0(\hgrantn_reg[0]_i_3_n_0 ),
        .I1(\hgrantn[0]_i_4_n_0 ),
        .I2(\hgrantn[0]_i_5_n_0 ),
        .I3(\hgrantn[0]_i_6_n_0 ),
        .I4(locked_reg_i_3_n_0),
        .O(\hgrantn[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \hgrantn[0]_i_10 
       (.I0(hlockn_IBUF[7]),
        .I1(hlockn_IBUF[6]),
        .I2(\index_reg_n_0_[1] ),
        .I3(hlockn_IBUF[5]),
        .I4(\index_reg_n_0_[0] ),
        .I5(hlockn_IBUF[4]),
        .O(\hgrantn[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \hgrantn[0]_i_11 
       (.I0(hlockn_IBUF[11]),
        .I1(hlockn_IBUF[10]),
        .I2(\index_reg_n_0_[1] ),
        .I3(hlockn_IBUF[9]),
        .I4(\index_reg_n_0_[0] ),
        .I5(hlockn_IBUF[8]),
        .O(\hgrantn[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \hgrantn[0]_i_12 
       (.I0(hlockn_IBUF[15]),
        .I1(hlockn_IBUF[14]),
        .I2(\index_reg_n_0_[1] ),
        .I3(hlockn_IBUF[13]),
        .I4(\index_reg_n_0_[0] ),
        .I5(hlockn_IBUF[12]),
        .O(\hgrantn[0]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \hgrantn[0]_i_2 
       (.I0(\index_reg_n_0_[1] ),
        .I1(\index_reg_n_0_[0] ),
        .I2(\index_reg_n_0_[3] ),
        .I3(\index_reg_n_0_[2] ),
        .O(p_0_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \hgrantn[0]_i_4 
       (.I0(hlockn_IBUF[6]),
        .I1(hlockn_IBUF[5]),
        .I2(hlockn_IBUF[7]),
        .I3(hlockn_IBUF[4]),
        .O(\hgrantn[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \hgrantn[0]_i_5 
       (.I0(hlockn_IBUF[2]),
        .I1(hlockn_IBUF[1]),
        .I2(hlockn_IBUF[3]),
        .I3(hlockn_IBUF[15]),
        .O(\hgrantn[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \hgrantn[0]_i_6 
       (.I0(hlockn_IBUF[13]),
        .I1(hlockn_IBUF[12]),
        .I2(hlockn_IBUF[10]),
        .I3(hlockn_IBUF[9]),
        .O(\hgrantn[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \hgrantn[0]_i_9 
       (.I0(hlockn_IBUF[3]),
        .I1(hlockn_IBUF[2]),
        .I2(\index_reg_n_0_[1] ),
        .I3(hlockn_IBUF[1]),
        .I4(\index_reg_n_0_[0] ),
        .I5(hlockn_IBUF[0]),
        .O(\hgrantn[0]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \hgrantn[10]_i_1 
       (.I0(\index_reg_n_0_[0] ),
        .I1(\index_reg_n_0_[1] ),
        .I2(\index_reg_n_0_[3] ),
        .I3(\index_reg_n_0_[2] ),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \hgrantn[11]_i_1 
       (.I0(\index_reg_n_0_[1] ),
        .I1(\index_reg_n_0_[0] ),
        .I2(\index_reg_n_0_[3] ),
        .I3(\index_reg_n_0_[2] ),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \hgrantn[12]_i_1 
       (.I0(\index_reg_n_0_[1] ),
        .I1(\index_reg_n_0_[0] ),
        .I2(\index_reg_n_0_[3] ),
        .I3(\index_reg_n_0_[2] ),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \hgrantn[13]_i_1 
       (.I0(\index_reg_n_0_[1] ),
        .I1(\index_reg_n_0_[0] ),
        .I2(\index_reg_n_0_[3] ),
        .I3(\index_reg_n_0_[2] ),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \hgrantn[14]_i_1 
       (.I0(\index_reg_n_0_[0] ),
        .I1(\index_reg_n_0_[1] ),
        .I2(\index_reg_n_0_[3] ),
        .I3(\index_reg_n_0_[2] ),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \hgrantn[15]_i_1 
       (.I0(\index_reg_n_0_[1] ),
        .I1(\index_reg_n_0_[0] ),
        .I2(\index_reg_n_0_[3] ),
        .I3(\index_reg_n_0_[2] ),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \hgrantn[1]_i_1 
       (.I0(\index_reg_n_0_[1] ),
        .I1(\index_reg_n_0_[0] ),
        .I2(\index_reg_n_0_[3] ),
        .I3(\index_reg_n_0_[2] ),
        .O(p_0_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \hgrantn[2]_i_1 
       (.I0(\index_reg_n_0_[0] ),
        .I1(\index_reg_n_0_[1] ),
        .I2(\index_reg_n_0_[3] ),
        .I3(\index_reg_n_0_[2] ),
        .O(p_0_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \hgrantn[3]_i_1 
       (.I0(\index_reg_n_0_[1] ),
        .I1(\index_reg_n_0_[0] ),
        .I2(\index_reg_n_0_[3] ),
        .I3(\index_reg_n_0_[2] ),
        .O(p_0_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \hgrantn[4]_i_1 
       (.I0(\index_reg_n_0_[1] ),
        .I1(\index_reg_n_0_[0] ),
        .I2(\index_reg_n_0_[2] ),
        .I3(\index_reg_n_0_[3] ),
        .O(p_0_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \hgrantn[5]_i_1 
       (.I0(\index_reg_n_0_[1] ),
        .I1(\index_reg_n_0_[0] ),
        .I2(\index_reg_n_0_[2] ),
        .I3(\index_reg_n_0_[3] ),
        .O(p_0_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \hgrantn[6]_i_1 
       (.I0(\index_reg_n_0_[0] ),
        .I1(\index_reg_n_0_[1] ),
        .I2(\index_reg_n_0_[2] ),
        .I3(\index_reg_n_0_[3] ),
        .O(p_0_in[9]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \hgrantn[7]_i_1 
       (.I0(\index_reg_n_0_[1] ),
        .I1(\index_reg_n_0_[0] ),
        .I2(\index_reg_n_0_[2] ),
        .I3(\index_reg_n_0_[3] ),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \hgrantn[8]_i_1 
       (.I0(\index_reg_n_0_[1] ),
        .I1(\index_reg_n_0_[0] ),
        .I2(\index_reg_n_0_[3] ),
        .I3(\index_reg_n_0_[2] ),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \hgrantn[9]_i_1 
       (.I0(\index_reg_n_0_[1] ),
        .I1(\index_reg_n_0_[0] ),
        .I2(\index_reg_n_0_[3] ),
        .I3(\index_reg_n_0_[2] ),
        .O(p_0_in[6]));
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
  FDCE #(
    .INIT(1'b0)) 
    \hgrantn_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\hgrantn[0]_i_1_n_0 ),
        .CLR(rst_IBUF_BUFG),
        .D(p_0_in[15]),
        .Q(hgrantn_OBUF[0]));
  MUXF8 \hgrantn_reg[0]_i_3 
       (.I0(\hgrantn_reg[0]_i_7_n_0 ),
        .I1(\hgrantn_reg[0]_i_8_n_0 ),
        .O(\hgrantn_reg[0]_i_3_n_0 ),
        .S(\index_reg_n_0_[3] ));
  MUXF7 \hgrantn_reg[0]_i_7 
       (.I0(\hgrantn[0]_i_9_n_0 ),
        .I1(\hgrantn[0]_i_10_n_0 ),
        .O(\hgrantn_reg[0]_i_7_n_0 ),
        .S(\index_reg_n_0_[2] ));
  MUXF7 \hgrantn_reg[0]_i_8 
       (.I0(\hgrantn[0]_i_11_n_0 ),
        .I1(\hgrantn[0]_i_12_n_0 ),
        .O(\hgrantn_reg[0]_i_8_n_0 ),
        .S(\index_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \hgrantn_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\hgrantn[0]_i_1_n_0 ),
        .CLR(rst_IBUF_BUFG),
        .D(p_0_in[5]),
        .Q(hgrantn_OBUF[10]));
  FDCE #(
    .INIT(1'b0)) 
    \hgrantn_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\hgrantn[0]_i_1_n_0 ),
        .CLR(rst_IBUF_BUFG),
        .D(p_0_in[4]),
        .Q(hgrantn_OBUF[11]));
  FDCE #(
    .INIT(1'b0)) 
    \hgrantn_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\hgrantn[0]_i_1_n_0 ),
        .CLR(rst_IBUF_BUFG),
        .D(p_0_in[3]),
        .Q(hgrantn_OBUF[12]));
  FDCE #(
    .INIT(1'b0)) 
    \hgrantn_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\hgrantn[0]_i_1_n_0 ),
        .CLR(rst_IBUF_BUFG),
        .D(p_0_in[2]),
        .Q(hgrantn_OBUF[13]));
  FDCE #(
    .INIT(1'b0)) 
    \hgrantn_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\hgrantn[0]_i_1_n_0 ),
        .CLR(rst_IBUF_BUFG),
        .D(p_0_in[1]),
        .Q(hgrantn_OBUF[14]));
  FDCE #(
    .INIT(1'b0)) 
    \hgrantn_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\hgrantn[0]_i_1_n_0 ),
        .CLR(rst_IBUF_BUFG),
        .D(p_0_in[0]),
        .Q(hgrantn_OBUF[15]));
  FDCE #(
    .INIT(1'b0)) 
    \hgrantn_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\hgrantn[0]_i_1_n_0 ),
        .CLR(rst_IBUF_BUFG),
        .D(p_0_in[14]),
        .Q(hgrantn_OBUF[1]));
  FDCE #(
    .INIT(1'b0)) 
    \hgrantn_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\hgrantn[0]_i_1_n_0 ),
        .CLR(rst_IBUF_BUFG),
        .D(p_0_in[13]),
        .Q(hgrantn_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \hgrantn_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\hgrantn[0]_i_1_n_0 ),
        .CLR(rst_IBUF_BUFG),
        .D(p_0_in[12]),
        .Q(hgrantn_OBUF[3]));
  FDCE #(
    .INIT(1'b0)) 
    \hgrantn_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\hgrantn[0]_i_1_n_0 ),
        .CLR(rst_IBUF_BUFG),
        .D(p_0_in[11]),
        .Q(hgrantn_OBUF[4]));
  FDCE #(
    .INIT(1'b0)) 
    \hgrantn_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\hgrantn[0]_i_1_n_0 ),
        .CLR(rst_IBUF_BUFG),
        .D(p_0_in[10]),
        .Q(hgrantn_OBUF[5]));
  FDCE #(
    .INIT(1'b0)) 
    \hgrantn_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\hgrantn[0]_i_1_n_0 ),
        .CLR(rst_IBUF_BUFG),
        .D(p_0_in[9]),
        .Q(hgrantn_OBUF[6]));
  FDCE #(
    .INIT(1'b0)) 
    \hgrantn_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\hgrantn[0]_i_1_n_0 ),
        .CLR(rst_IBUF_BUFG),
        .D(p_0_in[8]),
        .Q(hgrantn_OBUF[7]));
  FDCE #(
    .INIT(1'b0)) 
    \hgrantn_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\hgrantn[0]_i_1_n_0 ),
        .CLR(rst_IBUF_BUFG),
        .D(p_0_in[7]),
        .Q(hgrantn_OBUF[8]));
  FDCE #(
    .INIT(1'b0)) 
    \hgrantn_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\hgrantn[0]_i_1_n_0 ),
        .CLR(rst_IBUF_BUFG),
        .D(p_0_in[6]),
        .Q(hgrantn_OBUF[9]));
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
  LUT2 #(
    .INIT(4'hB)) 
    \hmaster[3]_i_1 
       (.I0(\hgrantn_reg[0]_i_3_n_0 ),
        .I1(sig_lock),
        .O(\hmaster[3]_i_1_n_0 ));
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
        .CE(\hmaster[3]_i_1_n_0 ),
        .CLR(rst_IBUF_BUFG),
        .D(\index_reg_n_0_[0] ),
        .Q(hmaster_OBUF[0]));
  FDCE #(
    .INIT(1'b0)) 
    \hmaster_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\hmaster[3]_i_1_n_0 ),
        .CLR(rst_IBUF_BUFG),
        .D(\index_reg_n_0_[1] ),
        .Q(hmaster_OBUF[1]));
  FDCE #(
    .INIT(1'b0)) 
    \hmaster_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\hmaster[3]_i_1_n_0 ),
        .CLR(rst_IBUF_BUFG),
        .D(\index_reg_n_0_[2] ),
        .Q(hmaster_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \hmaster_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\hmaster[3]_i_1_n_0 ),
        .CLR(rst_IBUF_BUFG),
        .D(\index_reg_n_0_[3] ),
        .Q(hmaster_OBUF[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00AB00AA)) 
    \index[0]_i_1 
       (.I0(hbusreqn_IBUF[1]),
        .I1(\index[0]_i_2_n_0 ),
        .I2(hbusreqn_IBUF[2]),
        .I3(hbusreqn_IBUF[0]),
        .I4(\index[0]_i_3_n_0 ),
        .I5(\index[0]_i_4_n_0 ),
        .O(index[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \index[0]_i_2 
       (.I0(hbusreqn_IBUF[6]),
        .I1(hbusreqn_IBUF[4]),
        .O(\index[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFF54)) 
    \index[0]_i_3 
       (.I0(hbusreqn_IBUF[8]),
        .I1(\index[0]_i_5_n_0 ),
        .I2(hbusreqn_IBUF[9]),
        .I3(hbusreqn_IBUF[7]),
        .O(\index[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h02020302)) 
    \index[0]_i_4 
       (.I0(hbusreqn_IBUF[3]),
        .I1(hbusreqn_IBUF[2]),
        .I2(hbusreqn_IBUF[0]),
        .I3(hbusreqn_IBUF[5]),
        .I4(hbusreqn_IBUF[4]),
        .O(\index[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAEEFE)) 
    \index[0]_i_5 
       (.I0(hbusreqn_IBUF[11]),
        .I1(hbusreqn_IBUF[13]),
        .I2(hbusreqn_IBUF[15]),
        .I3(hbusreqn_IBUF[14]),
        .I4(hbusreqn_IBUF[12]),
        .I5(hbusreqn_IBUF[10]),
        .O(\index[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h11111110)) 
    \index[1]_i_1 
       (.I0(hbusreqn_IBUF[0]),
        .I1(hbusreqn_IBUF[1]),
        .I2(hbusreqn_IBUF[3]),
        .I3(hbusreqn_IBUF[2]),
        .I4(\index[1]_i_2_n_0 ),
        .O(index[1]));
  LUT6 #(
    .INIT(64'h1110111011111110)) 
    \index[1]_i_2 
       (.I0(hbusreqn_IBUF[4]),
        .I1(hbusreqn_IBUF[5]),
        .I2(hbusreqn_IBUF[7]),
        .I3(hbusreqn_IBUF[6]),
        .I4(\index[1]_i_3_n_0 ),
        .I5(\index[1]_i_4_n_0 ),
        .O(\index[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF1110)) 
    \index[1]_i_3 
       (.I0(hbusreqn_IBUF[13]),
        .I1(hbusreqn_IBUF[12]),
        .I2(hbusreqn_IBUF[15]),
        .I3(hbusreqn_IBUF[14]),
        .I4(hbusreqn_IBUF[10]),
        .I5(hbusreqn_IBUF[11]),
        .O(\index[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \index[1]_i_4 
       (.I0(hbusreqn_IBUF[9]),
        .I1(hbusreqn_IBUF[8]),
        .O(\index[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0200020002020200)) 
    \index[2]_i_1 
       (.I0(\index[3]_i_3_n_0 ),
        .I1(hbusreqn_IBUF[3]),
        .I2(hbusreqn_IBUF[1]),
        .I3(\index[3]_i_2_n_0 ),
        .I4(\index[3]_i_4_n_0 ),
        .I5(\index[3]_i_5_n_0 ),
        .O(index[2]));
  LUT6 #(
    .INIT(64'h0100010001000000)) 
    \index[3]_i_1 
       (.I0(\index[3]_i_2_n_0 ),
        .I1(hbusreqn_IBUF[1]),
        .I2(hbusreqn_IBUF[3]),
        .I3(\index[3]_i_3_n_0 ),
        .I4(\index[3]_i_4_n_0 ),
        .I5(\index[3]_i_5_n_0 ),
        .O(index[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \index[3]_i_2 
       (.I0(hbusreqn_IBUF[5]),
        .I1(hbusreqn_IBUF[7]),
        .I2(hbusreqn_IBUF[4]),
        .I3(hbusreqn_IBUF[6]),
        .O(\index[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \index[3]_i_3 
       (.I0(hbusreqn_IBUF[2]),
        .I1(hbusreqn_IBUF[0]),
        .O(\index[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \index[3]_i_4 
       (.I0(hbusreqn_IBUF[12]),
        .I1(hbusreqn_IBUF[13]),
        .I2(hbusreqn_IBUF[14]),
        .I3(hbusreqn_IBUF[15]),
        .O(\index[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \index[3]_i_5 
       (.I0(hbusreqn_IBUF[8]),
        .I1(hbusreqn_IBUF[9]),
        .I2(hbusreqn_IBUF[10]),
        .I3(hbusreqn_IBUF[11]),
        .O(\index[3]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \index_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF_BUFG),
        .D(index[0]),
        .Q(\index_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \index_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF_BUFG),
        .D(index[1]),
        .Q(\index_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \index_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF_BUFG),
        .D(index[2]),
        .Q(\index_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \index_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF_BUFG),
        .D(index[3]),
        .Q(\index_reg_n_0_[3] ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    locked_reg
       (.CLR(1'b0),
        .D(locked_reg_i_1_n_0),
        .G(rst_IBUF_BUFG),
        .GE(1'b1),
        .Q(sig_lock));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    locked_reg_i_1
       (.I0(locked_reg_i_3_n_0),
        .I1(hlockn_IBUF[13]),
        .I2(hlockn_IBUF[12]),
        .I3(hlockn_IBUF[10]),
        .I4(hlockn_IBUF[9]),
        .I5(locked_reg_i_4_n_0),
        .O(locked_reg_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    locked_reg_i_3
       (.I0(hlockn_IBUF[14]),
        .I1(hlockn_IBUF[11]),
        .I2(hlockn_IBUF[8]),
        .I3(hlockn_IBUF[0]),
        .O(locked_reg_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    locked_reg_i_4
       (.I0(hlockn_IBUF[4]),
        .I1(hlockn_IBUF[7]),
        .I2(hlockn_IBUF[5]),
        .I3(hlockn_IBUF[6]),
        .I4(\hgrantn[0]_i_5_n_0 ),
        .O(locked_reg_i_4_n_0));
  BUFG rst_IBUF_BUFG_inst
       (.I(rst_IBUF),
        .O(rst_IBUF_BUFG));
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
