// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Dec  3 19:57:16 2020
// Host        : Javier running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/Javier/Documents/GitHub/AHBmaster/maestro_amba.sim/sim_1/synth/timing/xsim/ahbmaster_tb_time_synth.v
// Design      : ahbmaster
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
    .INIT(8'hFD)) 
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

(* hindex = "0" *) 
(* NotValidForBitStream *)
module ahbmaster
   (rst,
    clk,
    \ahbmi[hgrant] ,
    \ahbmi[hready] ,
    \ahbmi[hresp] ,
    \ahbmi[hrdata] ,
    \ahbmi[hirq] ,
    \ahbmi[testen] ,
    \ahbmi[testrst] ,
    \ahbmi[scanen] ,
    \ahbmi[testoen] ,
    \ahbmi[testin] ,
    \ahbmo[hbusreq] ,
    \ahbmo[hlock] ,
    \ahbmo[htrans] ,
    \ahbmo[haddr] ,
    \ahbmo[hwrite] ,
    \ahbmo[hsize] ,
    \ahbmo[hburst] ,
    \ahbmo[hprot] ,
    \ahbmo[hwdata] ,
    \ahbmo[hirq] ,
    \ahbmo[hconfig][0] ,
    \ahbmo[hconfig][1] ,
    \ahbmo[hconfig][2] ,
    \ahbmo[hconfig][3] ,
    \ahbmo[hconfig][4] ,
    \ahbmo[hconfig][5] ,
    \ahbmo[hconfig][6] ,
    \ahbmo[hconfig][7] ,
    \ahbmo[hindex] ,
    \dmai[start] ,
    \dmai[size] ,
    \dmai[write] ,
    \dmai[wdata] ,
    \dmai[address] ,
    \dmai[burst] ,
    \dmai[atomic] ,
    \dmao[rdata] ,
    \dmao[finish] );
  input rst;
  input clk;
  input [0:15]\ahbmi[hgrant] ;
  input \ahbmi[hready] ;
  input [1:0]\ahbmi[hresp] ;
  input [31:0]\ahbmi[hrdata] ;
  input [31:0]\ahbmi[hirq] ;
  input \ahbmi[testen] ;
  input \ahbmi[testrst] ;
  input \ahbmi[scanen] ;
  input \ahbmi[testoen] ;
  input [3:0]\ahbmi[testin] ;
  output \ahbmo[hbusreq] ;
  output \ahbmo[hlock] ;
  output [1:0]\ahbmo[htrans] ;
  output [31:0]\ahbmo[haddr] ;
  output \ahbmo[hwrite] ;
  output [2:0]\ahbmo[hsize] ;
  output [2:0]\ahbmo[hburst] ;
  output [3:0]\ahbmo[hprot] ;
  output [31:0]\ahbmo[hwdata] ;
  output [31:0]\ahbmo[hirq] ;
  output [31:0]\ahbmo[hconfig][0] ;
  output [31:0]\ahbmo[hconfig][1] ;
  output [31:0]\ahbmo[hconfig][2] ;
  output [31:0]\ahbmo[hconfig][3] ;
  output [31:0]\ahbmo[hconfig][4] ;
  output [31:0]\ahbmo[hconfig][5] ;
  output [31:0]\ahbmo[hconfig][6] ;
  output [31:0]\ahbmo[hconfig][7] ;
  output [3:0]\ahbmo[hindex] ;
  input \dmai[start] ;
  input [2:0]\dmai[size] ;
  input \dmai[write] ;
  input [31:0]\dmai[wdata] ;
  input [31:0]\dmai[address] ;
  input \dmai[burst] ;
  input \dmai[atomic] ;
  output [31:0]\dmao[rdata] ;
  output \dmao[finish] ;

  wire addr_grant;
  wire [31:0]addr_salida;
  wire addr_salida0;
  wire \addr_salida_reg[0]_i_1_n_2 ;
  wire \addr_salida_reg[10]_i_1_n_2 ;
  wire \addr_salida_reg[11]_i_1_n_2 ;
  wire \addr_salida_reg[12]_i_1_n_2 ;
  wire \addr_salida_reg[13]_i_1_n_2 ;
  wire \addr_salida_reg[14]_i_1_n_2 ;
  wire \addr_salida_reg[15]_i_1_n_2 ;
  wire \addr_salida_reg[16]_i_1_n_2 ;
  wire \addr_salida_reg[17]_i_1_n_2 ;
  wire \addr_salida_reg[18]_i_1_n_2 ;
  wire \addr_salida_reg[19]_i_1_n_2 ;
  wire \addr_salida_reg[1]_i_1_n_2 ;
  wire \addr_salida_reg[20]_i_1_n_2 ;
  wire \addr_salida_reg[21]_i_1_n_2 ;
  wire \addr_salida_reg[22]_i_1_n_2 ;
  wire \addr_salida_reg[23]_i_1_n_2 ;
  wire \addr_salida_reg[24]_i_1_n_2 ;
  wire \addr_salida_reg[25]_i_1_n_2 ;
  wire \addr_salida_reg[26]_i_1_n_2 ;
  wire \addr_salida_reg[27]_i_1_n_2 ;
  wire \addr_salida_reg[28]_i_1_n_2 ;
  wire \addr_salida_reg[29]_i_1_n_2 ;
  wire \addr_salida_reg[2]_i_1_n_2 ;
  wire \addr_salida_reg[30]_i_1_n_2 ;
  wire \addr_salida_reg[31]_i_2_n_2 ;
  wire \addr_salida_reg[31]_i_3_n_2 ;
  wire \addr_salida_reg[3]_i_1_n_2 ;
  wire \addr_salida_reg[4]_i_1_n_2 ;
  wire \addr_salida_reg[5]_i_1_n_2 ;
  wire \addr_salida_reg[6]_i_1_n_2 ;
  wire \addr_salida_reg[7]_i_1_n_2 ;
  wire \addr_salida_reg[8]_i_1_n_2 ;
  wire \addr_salida_reg[9]_i_1_n_2 ;
  wire [0:15]\ahbmi[hgrant] ;
  wire [31:0]\ahbmi[hrdata] ;
  wire \ahbmi[hready] ;
  wire [31:0]\ahbmo[haddr] ;
  wire [31:0]\ahbmo[haddr]_OBUF ;
  wire [2:0]\ahbmo[hburst] ;
  wire \ahbmo[hbusreq] ;
  wire \ahbmo[hbusreq]_INST_0_i_1_n_2 ;
  wire [31:0]\ahbmo[hconfig][0] ;
  wire [31:0]\ahbmo[hconfig][1] ;
  wire [31:0]\ahbmo[hconfig][2] ;
  wire [31:0]\ahbmo[hconfig][3] ;
  wire [31:0]\ahbmo[hconfig][4] ;
  wire [31:0]\ahbmo[hconfig][5] ;
  wire [31:0]\ahbmo[hconfig][6] ;
  wire [31:0]\ahbmo[hconfig][7] ;
  wire [3:0]\ahbmo[hindex] ;
  wire [31:0]\ahbmo[hirq] ;
  wire \ahbmo[hlock] ;
  wire [3:0]\ahbmo[hprot] ;
  wire [2:0]\ahbmo[hsize] ;
  wire [2:0]\ahbmo[hsize]_OBUF ;
  wire [1:0]\ahbmo[htrans] ;
  wire [31:0]\ahbmo[hwdata] ;
  wire [31:0]\ahbmo[hwdata]_OBUF ;
  wire \ahbmo[hwrite] ;
  wire \ahbmo[hwrite]_INST_0_i_1_n_2 ;
  wire \ahbmo_reg[hwdata]0 ;
  wire \ahbmo_reg[hwdata][31]_i_2_n_2 ;
  wire busreq_salida;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire data_buffer;
  wire \data_buffer[0]_i_1_n_2 ;
  wire \data_buffer[10]_i_1_n_2 ;
  wire \data_buffer[11]_i_1_n_2 ;
  wire \data_buffer[12]_i_1_n_2 ;
  wire \data_buffer[13]_i_1_n_2 ;
  wire \data_buffer[14]_i_1_n_2 ;
  wire \data_buffer[15]_i_1_n_2 ;
  wire \data_buffer[16]_i_1_n_2 ;
  wire \data_buffer[17]_i_1_n_2 ;
  wire \data_buffer[18]_i_1_n_2 ;
  wire \data_buffer[19]_i_1_n_2 ;
  wire \data_buffer[1]_i_1_n_2 ;
  wire \data_buffer[20]_i_1_n_2 ;
  wire \data_buffer[21]_i_1_n_2 ;
  wire \data_buffer[22]_i_1_n_2 ;
  wire \data_buffer[23]_i_1_n_2 ;
  wire \data_buffer[24]_i_1_n_2 ;
  wire \data_buffer[25]_i_1_n_2 ;
  wire \data_buffer[26]_i_1_n_2 ;
  wire \data_buffer[27]_i_1_n_2 ;
  wire \data_buffer[28]_i_1_n_2 ;
  wire \data_buffer[29]_i_1_n_2 ;
  wire \data_buffer[2]_i_1_n_2 ;
  wire \data_buffer[30]_i_1_n_2 ;
  wire \data_buffer[31]_i_2_n_2 ;
  wire \data_buffer[3]_i_1_n_2 ;
  wire \data_buffer[4]_i_1_n_2 ;
  wire \data_buffer[5]_i_1_n_2 ;
  wire \data_buffer[6]_i_1_n_2 ;
  wire \data_buffer[7]_i_1_n_2 ;
  wire \data_buffer[8]_i_1_n_2 ;
  wire \data_buffer[9]_i_1_n_2 ;
  wire \data_buffer_reg[0]_i_2_n_2 ;
  wire \data_buffer_reg[0]_i_3_n_2 ;
  wire \data_buffer_reg[10]_i_2_n_2 ;
  wire \data_buffer_reg[10]_i_3_n_2 ;
  wire \data_buffer_reg[11]_i_2_n_2 ;
  wire \data_buffer_reg[11]_i_3_n_2 ;
  wire \data_buffer_reg[12]_i_2_n_2 ;
  wire \data_buffer_reg[12]_i_3_n_2 ;
  wire \data_buffer_reg[13]_i_2_n_2 ;
  wire \data_buffer_reg[13]_i_3_n_2 ;
  wire \data_buffer_reg[14]_i_2_n_2 ;
  wire \data_buffer_reg[14]_i_3_n_2 ;
  wire \data_buffer_reg[15]_i_2_n_2 ;
  wire \data_buffer_reg[15]_i_3_n_2 ;
  wire \data_buffer_reg[16]_i_2_n_2 ;
  wire \data_buffer_reg[16]_i_3_n_2 ;
  wire \data_buffer_reg[17]_i_2_n_2 ;
  wire \data_buffer_reg[17]_i_3_n_2 ;
  wire \data_buffer_reg[18]_i_2_n_2 ;
  wire \data_buffer_reg[18]_i_3_n_2 ;
  wire \data_buffer_reg[19]_i_2_n_2 ;
  wire \data_buffer_reg[19]_i_3_n_2 ;
  wire \data_buffer_reg[1]_i_2_n_2 ;
  wire \data_buffer_reg[1]_i_3_n_2 ;
  wire \data_buffer_reg[20]_i_2_n_2 ;
  wire \data_buffer_reg[20]_i_3_n_2 ;
  wire \data_buffer_reg[21]_i_2_n_2 ;
  wire \data_buffer_reg[21]_i_3_n_2 ;
  wire \data_buffer_reg[22]_i_2_n_2 ;
  wire \data_buffer_reg[22]_i_3_n_2 ;
  wire \data_buffer_reg[23]_i_2_n_2 ;
  wire \data_buffer_reg[23]_i_3_n_2 ;
  wire \data_buffer_reg[24]_i_2_n_2 ;
  wire \data_buffer_reg[24]_i_3_n_2 ;
  wire \data_buffer_reg[25]_i_2_n_2 ;
  wire \data_buffer_reg[25]_i_3_n_2 ;
  wire \data_buffer_reg[26]_i_2_n_2 ;
  wire \data_buffer_reg[26]_i_3_n_2 ;
  wire \data_buffer_reg[27]_i_2_n_2 ;
  wire \data_buffer_reg[27]_i_3_n_2 ;
  wire \data_buffer_reg[28]_i_2_n_2 ;
  wire \data_buffer_reg[28]_i_3_n_2 ;
  wire \data_buffer_reg[29]_i_2_n_2 ;
  wire \data_buffer_reg[29]_i_3_n_2 ;
  wire \data_buffer_reg[2]_i_2_n_2 ;
  wire \data_buffer_reg[2]_i_3_n_2 ;
  wire \data_buffer_reg[30]_i_2_n_2 ;
  wire \data_buffer_reg[30]_i_3_n_2 ;
  wire \data_buffer_reg[31]_i_3_n_2 ;
  wire \data_buffer_reg[31]_i_4_n_2 ;
  wire \data_buffer_reg[3]_i_2_n_2 ;
  wire \data_buffer_reg[3]_i_3_n_2 ;
  wire \data_buffer_reg[4]_i_2_n_2 ;
  wire \data_buffer_reg[4]_i_3_n_2 ;
  wire \data_buffer_reg[5]_i_2_n_2 ;
  wire \data_buffer_reg[5]_i_3_n_2 ;
  wire \data_buffer_reg[6]_i_2_n_2 ;
  wire \data_buffer_reg[6]_i_3_n_2 ;
  wire \data_buffer_reg[7]_i_2_n_2 ;
  wire \data_buffer_reg[7]_i_3_n_2 ;
  wire \data_buffer_reg[8]_i_2_n_2 ;
  wire \data_buffer_reg[8]_i_3_n_2 ;
  wire \data_buffer_reg[9]_i_2_n_2 ;
  wire \data_buffer_reg[9]_i_3_n_2 ;
  wire \data_buffer_reg_n_2_[0] ;
  wire \data_buffer_reg_n_2_[10] ;
  wire \data_buffer_reg_n_2_[11] ;
  wire \data_buffer_reg_n_2_[12] ;
  wire \data_buffer_reg_n_2_[13] ;
  wire \data_buffer_reg_n_2_[14] ;
  wire \data_buffer_reg_n_2_[15] ;
  wire \data_buffer_reg_n_2_[16] ;
  wire \data_buffer_reg_n_2_[17] ;
  wire \data_buffer_reg_n_2_[18] ;
  wire \data_buffer_reg_n_2_[19] ;
  wire \data_buffer_reg_n_2_[1] ;
  wire \data_buffer_reg_n_2_[20] ;
  wire \data_buffer_reg_n_2_[21] ;
  wire \data_buffer_reg_n_2_[22] ;
  wire \data_buffer_reg_n_2_[23] ;
  wire \data_buffer_reg_n_2_[24] ;
  wire \data_buffer_reg_n_2_[25] ;
  wire \data_buffer_reg_n_2_[26] ;
  wire \data_buffer_reg_n_2_[27] ;
  wire \data_buffer_reg_n_2_[28] ;
  wire \data_buffer_reg_n_2_[29] ;
  wire \data_buffer_reg_n_2_[2] ;
  wire \data_buffer_reg_n_2_[30] ;
  wire \data_buffer_reg_n_2_[31] ;
  wire \data_buffer_reg_n_2_[3] ;
  wire \data_buffer_reg_n_2_[4] ;
  wire \data_buffer_reg_n_2_[5] ;
  wire \data_buffer_reg_n_2_[6] ;
  wire \data_buffer_reg_n_2_[7] ;
  wire \data_buffer_reg_n_2_[8] ;
  wire \data_buffer_reg_n_2_[9] ;
  wire [31:0]\dmai[address] ;
  wire [2:0]\dmai[size] ;
  wire \dmai[start] ;
  wire [31:0]\dmai[wdata] ;
  wire \dmai[write] ;
  wire \dmao[finish] ;
  wire \dmao[finish]_INST_0_i_1_n_2 ;
  wire [31:0]\dmao[rdata] ;
  wire [31:0]\dmao[rdata]_OBUF ;
  wire \dmao_reg[rdata]0 ;
  wire \dmao_reg[rdata][31]_i_2_n_2 ;
  wire escritura;
  wire escritura_reg_i_1_n_2;
  wire finish;
  wire finish_i_1_n_2;
  wire lectura;
  wire lectura_reg_i_1_n_2;
  wire n_0_112_BUFG;
  wire n_0_112_BUFG_inst_n_1;
  wire n_1_78_BUFG;
  wire n_1_78_BUFG_inst_n_2;
  wire rst;
  wire rst_IBUF;
  wire rst_IBUF_BUFG;
  wire [2:0]size_salida;
  wire \size_salida_reg[0]_i_1_n_2 ;
  wire \size_salida_reg[1]_i_1_n_2 ;
  wire \size_salida_reg[2]_i_1_n_2 ;
  wire write_salida;

initial begin
 $sdf_annotate("ahbmaster_tb_time_synth.sdf",,,,"tool_control");
end
  LUT2 #(
    .INIT(4'h8)) 
    \addr_salida[31]_i_1 
       (.I0(\addr_salida_reg[31]_i_3_n_2 ),
        .I1(addr_grant),
        .O(addr_salida0));
  FDCE #(
    .INIT(1'b0)) 
    \addr_salida_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(addr_salida0),
        .CLR(rst_IBUF_BUFG),
        .D(\addr_salida_reg[0]_i_1_n_2 ),
        .Q(addr_salida[0]));
  IBUF \addr_salida_reg[0]_i_1 
       (.I(\dmai[address] [0]),
        .O(\addr_salida_reg[0]_i_1_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_salida_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(addr_salida0),
        .CLR(rst_IBUF_BUFG),
        .D(\addr_salida_reg[10]_i_1_n_2 ),
        .Q(addr_salida[10]));
  IBUF \addr_salida_reg[10]_i_1 
       (.I(\dmai[address] [10]),
        .O(\addr_salida_reg[10]_i_1_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_salida_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(addr_salida0),
        .CLR(rst_IBUF_BUFG),
        .D(\addr_salida_reg[11]_i_1_n_2 ),
        .Q(addr_salida[11]));
  IBUF \addr_salida_reg[11]_i_1 
       (.I(\dmai[address] [11]),
        .O(\addr_salida_reg[11]_i_1_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_salida_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(addr_salida0),
        .CLR(rst_IBUF_BUFG),
        .D(\addr_salida_reg[12]_i_1_n_2 ),
        .Q(addr_salida[12]));
  IBUF \addr_salida_reg[12]_i_1 
       (.I(\dmai[address] [12]),
        .O(\addr_salida_reg[12]_i_1_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_salida_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(addr_salida0),
        .CLR(rst_IBUF_BUFG),
        .D(\addr_salida_reg[13]_i_1_n_2 ),
        .Q(addr_salida[13]));
  IBUF \addr_salida_reg[13]_i_1 
       (.I(\dmai[address] [13]),
        .O(\addr_salida_reg[13]_i_1_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_salida_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(addr_salida0),
        .CLR(rst_IBUF_BUFG),
        .D(\addr_salida_reg[14]_i_1_n_2 ),
        .Q(addr_salida[14]));
  IBUF \addr_salida_reg[14]_i_1 
       (.I(\dmai[address] [14]),
        .O(\addr_salida_reg[14]_i_1_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_salida_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(addr_salida0),
        .CLR(rst_IBUF_BUFG),
        .D(\addr_salida_reg[15]_i_1_n_2 ),
        .Q(addr_salida[15]));
  IBUF \addr_salida_reg[15]_i_1 
       (.I(\dmai[address] [15]),
        .O(\addr_salida_reg[15]_i_1_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_salida_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(addr_salida0),
        .CLR(rst_IBUF_BUFG),
        .D(\addr_salida_reg[16]_i_1_n_2 ),
        .Q(addr_salida[16]));
  IBUF \addr_salida_reg[16]_i_1 
       (.I(\dmai[address] [16]),
        .O(\addr_salida_reg[16]_i_1_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_salida_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(addr_salida0),
        .CLR(rst_IBUF_BUFG),
        .D(\addr_salida_reg[17]_i_1_n_2 ),
        .Q(addr_salida[17]));
  IBUF \addr_salida_reg[17]_i_1 
       (.I(\dmai[address] [17]),
        .O(\addr_salida_reg[17]_i_1_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_salida_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(addr_salida0),
        .CLR(rst_IBUF_BUFG),
        .D(\addr_salida_reg[18]_i_1_n_2 ),
        .Q(addr_salida[18]));
  IBUF \addr_salida_reg[18]_i_1 
       (.I(\dmai[address] [18]),
        .O(\addr_salida_reg[18]_i_1_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_salida_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(addr_salida0),
        .CLR(rst_IBUF_BUFG),
        .D(\addr_salida_reg[19]_i_1_n_2 ),
        .Q(addr_salida[19]));
  IBUF \addr_salida_reg[19]_i_1 
       (.I(\dmai[address] [19]),
        .O(\addr_salida_reg[19]_i_1_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_salida_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(addr_salida0),
        .CLR(rst_IBUF_BUFG),
        .D(\addr_salida_reg[1]_i_1_n_2 ),
        .Q(addr_salida[1]));
  IBUF \addr_salida_reg[1]_i_1 
       (.I(\dmai[address] [1]),
        .O(\addr_salida_reg[1]_i_1_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_salida_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(addr_salida0),
        .CLR(rst_IBUF_BUFG),
        .D(\addr_salida_reg[20]_i_1_n_2 ),
        .Q(addr_salida[20]));
  IBUF \addr_salida_reg[20]_i_1 
       (.I(\dmai[address] [20]),
        .O(\addr_salida_reg[20]_i_1_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_salida_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(addr_salida0),
        .CLR(rst_IBUF_BUFG),
        .D(\addr_salida_reg[21]_i_1_n_2 ),
        .Q(addr_salida[21]));
  IBUF \addr_salida_reg[21]_i_1 
       (.I(\dmai[address] [21]),
        .O(\addr_salida_reg[21]_i_1_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_salida_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(addr_salida0),
        .CLR(rst_IBUF_BUFG),
        .D(\addr_salida_reg[22]_i_1_n_2 ),
        .Q(addr_salida[22]));
  IBUF \addr_salida_reg[22]_i_1 
       (.I(\dmai[address] [22]),
        .O(\addr_salida_reg[22]_i_1_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_salida_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(addr_salida0),
        .CLR(rst_IBUF_BUFG),
        .D(\addr_salida_reg[23]_i_1_n_2 ),
        .Q(addr_salida[23]));
  IBUF \addr_salida_reg[23]_i_1 
       (.I(\dmai[address] [23]),
        .O(\addr_salida_reg[23]_i_1_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_salida_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(addr_salida0),
        .CLR(rst_IBUF_BUFG),
        .D(\addr_salida_reg[24]_i_1_n_2 ),
        .Q(addr_salida[24]));
  IBUF \addr_salida_reg[24]_i_1 
       (.I(\dmai[address] [24]),
        .O(\addr_salida_reg[24]_i_1_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_salida_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(addr_salida0),
        .CLR(rst_IBUF_BUFG),
        .D(\addr_salida_reg[25]_i_1_n_2 ),
        .Q(addr_salida[25]));
  IBUF \addr_salida_reg[25]_i_1 
       (.I(\dmai[address] [25]),
        .O(\addr_salida_reg[25]_i_1_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_salida_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(addr_salida0),
        .CLR(rst_IBUF_BUFG),
        .D(\addr_salida_reg[26]_i_1_n_2 ),
        .Q(addr_salida[26]));
  IBUF \addr_salida_reg[26]_i_1 
       (.I(\dmai[address] [26]),
        .O(\addr_salida_reg[26]_i_1_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_salida_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(addr_salida0),
        .CLR(rst_IBUF_BUFG),
        .D(\addr_salida_reg[27]_i_1_n_2 ),
        .Q(addr_salida[27]));
  IBUF \addr_salida_reg[27]_i_1 
       (.I(\dmai[address] [27]),
        .O(\addr_salida_reg[27]_i_1_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_salida_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(addr_salida0),
        .CLR(rst_IBUF_BUFG),
        .D(\addr_salida_reg[28]_i_1_n_2 ),
        .Q(addr_salida[28]));
  IBUF \addr_salida_reg[28]_i_1 
       (.I(\dmai[address] [28]),
        .O(\addr_salida_reg[28]_i_1_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_salida_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(addr_salida0),
        .CLR(rst_IBUF_BUFG),
        .D(\addr_salida_reg[29]_i_1_n_2 ),
        .Q(addr_salida[29]));
  IBUF \addr_salida_reg[29]_i_1 
       (.I(\dmai[address] [29]),
        .O(\addr_salida_reg[29]_i_1_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_salida_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(addr_salida0),
        .CLR(rst_IBUF_BUFG),
        .D(\addr_salida_reg[2]_i_1_n_2 ),
        .Q(addr_salida[2]));
  IBUF \addr_salida_reg[2]_i_1 
       (.I(\dmai[address] [2]),
        .O(\addr_salida_reg[2]_i_1_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_salida_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(addr_salida0),
        .CLR(rst_IBUF_BUFG),
        .D(\addr_salida_reg[30]_i_1_n_2 ),
        .Q(addr_salida[30]));
  IBUF \addr_salida_reg[30]_i_1 
       (.I(\dmai[address] [30]),
        .O(\addr_salida_reg[30]_i_1_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_salida_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(addr_salida0),
        .CLR(rst_IBUF_BUFG),
        .D(\addr_salida_reg[31]_i_2_n_2 ),
        .Q(addr_salida[31]));
  IBUF \addr_salida_reg[31]_i_2 
       (.I(\dmai[address] [31]),
        .O(\addr_salida_reg[31]_i_2_n_2 ));
  IBUF \addr_salida_reg[31]_i_3 
       (.I(\ahbmi[hready] ),
        .O(\addr_salida_reg[31]_i_3_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_salida_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(addr_salida0),
        .CLR(rst_IBUF_BUFG),
        .D(\addr_salida_reg[3]_i_1_n_2 ),
        .Q(addr_salida[3]));
  IBUF \addr_salida_reg[3]_i_1 
       (.I(\dmai[address] [3]),
        .O(\addr_salida_reg[3]_i_1_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_salida_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(addr_salida0),
        .CLR(rst_IBUF_BUFG),
        .D(\addr_salida_reg[4]_i_1_n_2 ),
        .Q(addr_salida[4]));
  IBUF \addr_salida_reg[4]_i_1 
       (.I(\dmai[address] [4]),
        .O(\addr_salida_reg[4]_i_1_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_salida_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(addr_salida0),
        .CLR(rst_IBUF_BUFG),
        .D(\addr_salida_reg[5]_i_1_n_2 ),
        .Q(addr_salida[5]));
  IBUF \addr_salida_reg[5]_i_1 
       (.I(\dmai[address] [5]),
        .O(\addr_salida_reg[5]_i_1_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_salida_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(addr_salida0),
        .CLR(rst_IBUF_BUFG),
        .D(\addr_salida_reg[6]_i_1_n_2 ),
        .Q(addr_salida[6]));
  IBUF \addr_salida_reg[6]_i_1 
       (.I(\dmai[address] [6]),
        .O(\addr_salida_reg[6]_i_1_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_salida_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(addr_salida0),
        .CLR(rst_IBUF_BUFG),
        .D(\addr_salida_reg[7]_i_1_n_2 ),
        .Q(addr_salida[7]));
  IBUF \addr_salida_reg[7]_i_1 
       (.I(\dmai[address] [7]),
        .O(\addr_salida_reg[7]_i_1_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_salida_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(addr_salida0),
        .CLR(rst_IBUF_BUFG),
        .D(\addr_salida_reg[8]_i_1_n_2 ),
        .Q(addr_salida[8]));
  IBUF \addr_salida_reg[8]_i_1 
       (.I(\dmai[address] [8]),
        .O(\addr_salida_reg[8]_i_1_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_salida_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(addr_salida0),
        .CLR(rst_IBUF_BUFG),
        .D(\addr_salida_reg[9]_i_1_n_2 ),
        .Q(addr_salida[9]));
  IBUF \addr_salida_reg[9]_i_1 
       (.I(\dmai[address] [9]),
        .O(\addr_salida_reg[9]_i_1_n_2 ));
  OBUF \ahbmo[haddr][0]_INST_0 
       (.I(\ahbmo[haddr]_OBUF [0]),
        .O(\ahbmo[haddr] [0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ahbmo[haddr][0]_INST_0_i_1 
       (.I0(addr_salida[0]),
        .I1(rst_IBUF),
        .O(\ahbmo[haddr]_OBUF [0]));
  OBUF \ahbmo[haddr][10]_INST_0 
       (.I(\ahbmo[haddr]_OBUF [10]),
        .O(\ahbmo[haddr] [10]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ahbmo[haddr][10]_INST_0_i_1 
       (.I0(addr_salida[10]),
        .I1(rst_IBUF),
        .O(\ahbmo[haddr]_OBUF [10]));
  OBUF \ahbmo[haddr][11]_INST_0 
       (.I(\ahbmo[haddr]_OBUF [11]),
        .O(\ahbmo[haddr] [11]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ahbmo[haddr][11]_INST_0_i_1 
       (.I0(addr_salida[11]),
        .I1(rst_IBUF),
        .O(\ahbmo[haddr]_OBUF [11]));
  OBUF \ahbmo[haddr][12]_INST_0 
       (.I(\ahbmo[haddr]_OBUF [12]),
        .O(\ahbmo[haddr] [12]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ahbmo[haddr][12]_INST_0_i_1 
       (.I0(addr_salida[12]),
        .I1(rst_IBUF),
        .O(\ahbmo[haddr]_OBUF [12]));
  OBUF \ahbmo[haddr][13]_INST_0 
       (.I(\ahbmo[haddr]_OBUF [13]),
        .O(\ahbmo[haddr] [13]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ahbmo[haddr][13]_INST_0_i_1 
       (.I0(addr_salida[13]),
        .I1(rst_IBUF),
        .O(\ahbmo[haddr]_OBUF [13]));
  OBUF \ahbmo[haddr][14]_INST_0 
       (.I(\ahbmo[haddr]_OBUF [14]),
        .O(\ahbmo[haddr] [14]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ahbmo[haddr][14]_INST_0_i_1 
       (.I0(addr_salida[14]),
        .I1(rst_IBUF),
        .O(\ahbmo[haddr]_OBUF [14]));
  OBUF \ahbmo[haddr][15]_INST_0 
       (.I(\ahbmo[haddr]_OBUF [15]),
        .O(\ahbmo[haddr] [15]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ahbmo[haddr][15]_INST_0_i_1 
       (.I0(addr_salida[15]),
        .I1(rst_IBUF),
        .O(\ahbmo[haddr]_OBUF [15]));
  OBUF \ahbmo[haddr][16]_INST_0 
       (.I(\ahbmo[haddr]_OBUF [16]),
        .O(\ahbmo[haddr] [16]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ahbmo[haddr][16]_INST_0_i_1 
       (.I0(addr_salida[16]),
        .I1(rst_IBUF),
        .O(\ahbmo[haddr]_OBUF [16]));
  OBUF \ahbmo[haddr][17]_INST_0 
       (.I(\ahbmo[haddr]_OBUF [17]),
        .O(\ahbmo[haddr] [17]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ahbmo[haddr][17]_INST_0_i_1 
       (.I0(addr_salida[17]),
        .I1(rst_IBUF),
        .O(\ahbmo[haddr]_OBUF [17]));
  OBUF \ahbmo[haddr][18]_INST_0 
       (.I(\ahbmo[haddr]_OBUF [18]),
        .O(\ahbmo[haddr] [18]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ahbmo[haddr][18]_INST_0_i_1 
       (.I0(addr_salida[18]),
        .I1(rst_IBUF),
        .O(\ahbmo[haddr]_OBUF [18]));
  OBUF \ahbmo[haddr][19]_INST_0 
       (.I(\ahbmo[haddr]_OBUF [19]),
        .O(\ahbmo[haddr] [19]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ahbmo[haddr][19]_INST_0_i_1 
       (.I0(addr_salida[19]),
        .I1(rst_IBUF),
        .O(\ahbmo[haddr]_OBUF [19]));
  OBUF \ahbmo[haddr][1]_INST_0 
       (.I(\ahbmo[haddr]_OBUF [1]),
        .O(\ahbmo[haddr] [1]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ahbmo[haddr][1]_INST_0_i_1 
       (.I0(addr_salida[1]),
        .I1(rst_IBUF),
        .O(\ahbmo[haddr]_OBUF [1]));
  OBUF \ahbmo[haddr][20]_INST_0 
       (.I(\ahbmo[haddr]_OBUF [20]),
        .O(\ahbmo[haddr] [20]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ahbmo[haddr][20]_INST_0_i_1 
       (.I0(addr_salida[20]),
        .I1(rst_IBUF),
        .O(\ahbmo[haddr]_OBUF [20]));
  OBUF \ahbmo[haddr][21]_INST_0 
       (.I(\ahbmo[haddr]_OBUF [21]),
        .O(\ahbmo[haddr] [21]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ahbmo[haddr][21]_INST_0_i_1 
       (.I0(addr_salida[21]),
        .I1(rst_IBUF),
        .O(\ahbmo[haddr]_OBUF [21]));
  OBUF \ahbmo[haddr][22]_INST_0 
       (.I(\ahbmo[haddr]_OBUF [22]),
        .O(\ahbmo[haddr] [22]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ahbmo[haddr][22]_INST_0_i_1 
       (.I0(addr_salida[22]),
        .I1(rst_IBUF),
        .O(\ahbmo[haddr]_OBUF [22]));
  OBUF \ahbmo[haddr][23]_INST_0 
       (.I(\ahbmo[haddr]_OBUF [23]),
        .O(\ahbmo[haddr] [23]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ahbmo[haddr][23]_INST_0_i_1 
       (.I0(addr_salida[23]),
        .I1(rst_IBUF),
        .O(\ahbmo[haddr]_OBUF [23]));
  OBUF \ahbmo[haddr][24]_INST_0 
       (.I(\ahbmo[haddr]_OBUF [24]),
        .O(\ahbmo[haddr] [24]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ahbmo[haddr][24]_INST_0_i_1 
       (.I0(addr_salida[24]),
        .I1(rst_IBUF),
        .O(\ahbmo[haddr]_OBUF [24]));
  OBUF \ahbmo[haddr][25]_INST_0 
       (.I(\ahbmo[haddr]_OBUF [25]),
        .O(\ahbmo[haddr] [25]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ahbmo[haddr][25]_INST_0_i_1 
       (.I0(addr_salida[25]),
        .I1(rst_IBUF),
        .O(\ahbmo[haddr]_OBUF [25]));
  OBUF \ahbmo[haddr][26]_INST_0 
       (.I(\ahbmo[haddr]_OBUF [26]),
        .O(\ahbmo[haddr] [26]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ahbmo[haddr][26]_INST_0_i_1 
       (.I0(addr_salida[26]),
        .I1(rst_IBUF),
        .O(\ahbmo[haddr]_OBUF [26]));
  OBUF \ahbmo[haddr][27]_INST_0 
       (.I(\ahbmo[haddr]_OBUF [27]),
        .O(\ahbmo[haddr] [27]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ahbmo[haddr][27]_INST_0_i_1 
       (.I0(addr_salida[27]),
        .I1(rst_IBUF),
        .O(\ahbmo[haddr]_OBUF [27]));
  OBUF \ahbmo[haddr][28]_INST_0 
       (.I(\ahbmo[haddr]_OBUF [28]),
        .O(\ahbmo[haddr] [28]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ahbmo[haddr][28]_INST_0_i_1 
       (.I0(addr_salida[28]),
        .I1(rst_IBUF),
        .O(\ahbmo[haddr]_OBUF [28]));
  OBUF \ahbmo[haddr][29]_INST_0 
       (.I(\ahbmo[haddr]_OBUF [29]),
        .O(\ahbmo[haddr] [29]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ahbmo[haddr][29]_INST_0_i_1 
       (.I0(addr_salida[29]),
        .I1(rst_IBUF),
        .O(\ahbmo[haddr]_OBUF [29]));
  OBUF \ahbmo[haddr][2]_INST_0 
       (.I(\ahbmo[haddr]_OBUF [2]),
        .O(\ahbmo[haddr] [2]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ahbmo[haddr][2]_INST_0_i_1 
       (.I0(addr_salida[2]),
        .I1(rst_IBUF),
        .O(\ahbmo[haddr]_OBUF [2]));
  OBUF \ahbmo[haddr][30]_INST_0 
       (.I(\ahbmo[haddr]_OBUF [30]),
        .O(\ahbmo[haddr] [30]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ahbmo[haddr][30]_INST_0_i_1 
       (.I0(addr_salida[30]),
        .I1(rst_IBUF),
        .O(\ahbmo[haddr]_OBUF [30]));
  OBUF \ahbmo[haddr][31]_INST_0 
       (.I(\ahbmo[haddr]_OBUF [31]),
        .O(\ahbmo[haddr] [31]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ahbmo[haddr][31]_INST_0_i_1 
       (.I0(addr_salida[31]),
        .I1(rst_IBUF),
        .O(\ahbmo[haddr]_OBUF [31]));
  OBUF \ahbmo[haddr][3]_INST_0 
       (.I(\ahbmo[haddr]_OBUF [3]),
        .O(\ahbmo[haddr] [3]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ahbmo[haddr][3]_INST_0_i_1 
       (.I0(addr_salida[3]),
        .I1(rst_IBUF),
        .O(\ahbmo[haddr]_OBUF [3]));
  OBUF \ahbmo[haddr][4]_INST_0 
       (.I(\ahbmo[haddr]_OBUF [4]),
        .O(\ahbmo[haddr] [4]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ahbmo[haddr][4]_INST_0_i_1 
       (.I0(addr_salida[4]),
        .I1(rst_IBUF),
        .O(\ahbmo[haddr]_OBUF [4]));
  OBUF \ahbmo[haddr][5]_INST_0 
       (.I(\ahbmo[haddr]_OBUF [5]),
        .O(\ahbmo[haddr] [5]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ahbmo[haddr][5]_INST_0_i_1 
       (.I0(addr_salida[5]),
        .I1(rst_IBUF),
        .O(\ahbmo[haddr]_OBUF [5]));
  OBUF \ahbmo[haddr][6]_INST_0 
       (.I(\ahbmo[haddr]_OBUF [6]),
        .O(\ahbmo[haddr] [6]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ahbmo[haddr][6]_INST_0_i_1 
       (.I0(addr_salida[6]),
        .I1(rst_IBUF),
        .O(\ahbmo[haddr]_OBUF [6]));
  OBUF \ahbmo[haddr][7]_INST_0 
       (.I(\ahbmo[haddr]_OBUF [7]),
        .O(\ahbmo[haddr] [7]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ahbmo[haddr][7]_INST_0_i_1 
       (.I0(addr_salida[7]),
        .I1(rst_IBUF),
        .O(\ahbmo[haddr]_OBUF [7]));
  OBUF \ahbmo[haddr][8]_INST_0 
       (.I(\ahbmo[haddr]_OBUF [8]),
        .O(\ahbmo[haddr] [8]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ahbmo[haddr][8]_INST_0_i_1 
       (.I0(addr_salida[8]),
        .I1(rst_IBUF),
        .O(\ahbmo[haddr]_OBUF [8]));
  OBUF \ahbmo[haddr][9]_INST_0 
       (.I(\ahbmo[haddr]_OBUF [9]),
        .O(\ahbmo[haddr] [9]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ahbmo[haddr][9]_INST_0_i_1 
       (.I0(addr_salida[9]),
        .I1(rst_IBUF),
        .O(\ahbmo[haddr]_OBUF [9]));
  OBUF \ahbmo[hburst][0]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hburst] [0]));
  OBUF \ahbmo[hburst][1]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hburst] [1]));
  OBUF \ahbmo[hburst][2]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hburst] [2]));
  OBUF \ahbmo[hbusreq]_INST_0 
       (.I(\ahbmo[hbusreq]_INST_0_i_1_n_2 ),
        .O(\ahbmo[hbusreq] ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ahbmo[hbusreq]_INST_0_i_1 
       (.I0(busreq_salida),
        .I1(rst_IBUF),
        .O(\ahbmo[hbusreq]_INST_0_i_1_n_2 ));
  OBUF \ahbmo[hconfig][0][0]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][0] [0]));
  OBUF \ahbmo[hconfig][0][10]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][0] [10]));
  OBUF \ahbmo[hconfig][0][11]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][0] [11]));
  OBUF \ahbmo[hconfig][0][12]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][0] [12]));
  OBUF \ahbmo[hconfig][0][13]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][0] [13]));
  OBUF \ahbmo[hconfig][0][14]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][0] [14]));
  OBUF \ahbmo[hconfig][0][15]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][0] [15]));
  OBUF \ahbmo[hconfig][0][16]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][0] [16]));
  OBUF \ahbmo[hconfig][0][17]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][0] [17]));
  OBUF \ahbmo[hconfig][0][18]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][0] [18]));
  OBUF \ahbmo[hconfig][0][19]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][0] [19]));
  OBUF \ahbmo[hconfig][0][1]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][0] [1]));
  OBUF \ahbmo[hconfig][0][20]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][0] [20]));
  OBUF \ahbmo[hconfig][0][21]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][0] [21]));
  OBUF \ahbmo[hconfig][0][22]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][0] [22]));
  OBUF \ahbmo[hconfig][0][23]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][0] [23]));
  OBUF \ahbmo[hconfig][0][24]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][0] [24]));
  OBUF \ahbmo[hconfig][0][25]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][0] [25]));
  OBUF \ahbmo[hconfig][0][26]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][0] [26]));
  OBUF \ahbmo[hconfig][0][27]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][0] [27]));
  OBUF \ahbmo[hconfig][0][28]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][0] [28]));
  OBUF \ahbmo[hconfig][0][29]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][0] [29]));
  OBUF \ahbmo[hconfig][0][2]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][0] [2]));
  OBUF \ahbmo[hconfig][0][30]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][0] [30]));
  OBUF \ahbmo[hconfig][0][31]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][0] [31]));
  OBUF \ahbmo[hconfig][0][3]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][0] [3]));
  OBUF \ahbmo[hconfig][0][4]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][0] [4]));
  OBUF \ahbmo[hconfig][0][5]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][0] [5]));
  OBUF \ahbmo[hconfig][0][6]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][0] [6]));
  OBUF \ahbmo[hconfig][0][7]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][0] [7]));
  OBUF \ahbmo[hconfig][0][8]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][0] [8]));
  OBUF \ahbmo[hconfig][0][9]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][0] [9]));
  OBUF \ahbmo[hconfig][1][0]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][1] [0]));
  OBUF \ahbmo[hconfig][1][10]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][1] [10]));
  OBUF \ahbmo[hconfig][1][11]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][1] [11]));
  OBUF \ahbmo[hconfig][1][12]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][1] [12]));
  OBUF \ahbmo[hconfig][1][13]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][1] [13]));
  OBUF \ahbmo[hconfig][1][14]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][1] [14]));
  OBUF \ahbmo[hconfig][1][15]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][1] [15]));
  OBUF \ahbmo[hconfig][1][16]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][1] [16]));
  OBUF \ahbmo[hconfig][1][17]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][1] [17]));
  OBUF \ahbmo[hconfig][1][18]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][1] [18]));
  OBUF \ahbmo[hconfig][1][19]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][1] [19]));
  OBUF \ahbmo[hconfig][1][1]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][1] [1]));
  OBUF \ahbmo[hconfig][1][20]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][1] [20]));
  OBUF \ahbmo[hconfig][1][21]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][1] [21]));
  OBUF \ahbmo[hconfig][1][22]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][1] [22]));
  OBUF \ahbmo[hconfig][1][23]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][1] [23]));
  OBUF \ahbmo[hconfig][1][24]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][1] [24]));
  OBUF \ahbmo[hconfig][1][25]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][1] [25]));
  OBUF \ahbmo[hconfig][1][26]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][1] [26]));
  OBUF \ahbmo[hconfig][1][27]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][1] [27]));
  OBUF \ahbmo[hconfig][1][28]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][1] [28]));
  OBUF \ahbmo[hconfig][1][29]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][1] [29]));
  OBUF \ahbmo[hconfig][1][2]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][1] [2]));
  OBUF \ahbmo[hconfig][1][30]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][1] [30]));
  OBUF \ahbmo[hconfig][1][31]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][1] [31]));
  OBUF \ahbmo[hconfig][1][3]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][1] [3]));
  OBUF \ahbmo[hconfig][1][4]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][1] [4]));
  OBUF \ahbmo[hconfig][1][5]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][1] [5]));
  OBUF \ahbmo[hconfig][1][6]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][1] [6]));
  OBUF \ahbmo[hconfig][1][7]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][1] [7]));
  OBUF \ahbmo[hconfig][1][8]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][1] [8]));
  OBUF \ahbmo[hconfig][1][9]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][1] [9]));
  OBUF \ahbmo[hconfig][2][0]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][2] [0]));
  OBUF \ahbmo[hconfig][2][10]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][2] [10]));
  OBUF \ahbmo[hconfig][2][11]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][2] [11]));
  OBUF \ahbmo[hconfig][2][12]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][2] [12]));
  OBUF \ahbmo[hconfig][2][13]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][2] [13]));
  OBUF \ahbmo[hconfig][2][14]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][2] [14]));
  OBUF \ahbmo[hconfig][2][15]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][2] [15]));
  OBUF \ahbmo[hconfig][2][16]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][2] [16]));
  OBUF \ahbmo[hconfig][2][17]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][2] [17]));
  OBUF \ahbmo[hconfig][2][18]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][2] [18]));
  OBUF \ahbmo[hconfig][2][19]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][2] [19]));
  OBUF \ahbmo[hconfig][2][1]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][2] [1]));
  OBUF \ahbmo[hconfig][2][20]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][2] [20]));
  OBUF \ahbmo[hconfig][2][21]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][2] [21]));
  OBUF \ahbmo[hconfig][2][22]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][2] [22]));
  OBUF \ahbmo[hconfig][2][23]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][2] [23]));
  OBUF \ahbmo[hconfig][2][24]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][2] [24]));
  OBUF \ahbmo[hconfig][2][25]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][2] [25]));
  OBUF \ahbmo[hconfig][2][26]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][2] [26]));
  OBUF \ahbmo[hconfig][2][27]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][2] [27]));
  OBUF \ahbmo[hconfig][2][28]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][2] [28]));
  OBUF \ahbmo[hconfig][2][29]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][2] [29]));
  OBUF \ahbmo[hconfig][2][2]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][2] [2]));
  OBUF \ahbmo[hconfig][2][30]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][2] [30]));
  OBUF \ahbmo[hconfig][2][31]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][2] [31]));
  OBUF \ahbmo[hconfig][2][3]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][2] [3]));
  OBUF \ahbmo[hconfig][2][4]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][2] [4]));
  OBUF \ahbmo[hconfig][2][5]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][2] [5]));
  OBUF \ahbmo[hconfig][2][6]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][2] [6]));
  OBUF \ahbmo[hconfig][2][7]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][2] [7]));
  OBUF \ahbmo[hconfig][2][8]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][2] [8]));
  OBUF \ahbmo[hconfig][2][9]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][2] [9]));
  OBUF \ahbmo[hconfig][3][0]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][3] [0]));
  OBUF \ahbmo[hconfig][3][10]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][3] [10]));
  OBUF \ahbmo[hconfig][3][11]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][3] [11]));
  OBUF \ahbmo[hconfig][3][12]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][3] [12]));
  OBUF \ahbmo[hconfig][3][13]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][3] [13]));
  OBUF \ahbmo[hconfig][3][14]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][3] [14]));
  OBUF \ahbmo[hconfig][3][15]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][3] [15]));
  OBUF \ahbmo[hconfig][3][16]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][3] [16]));
  OBUF \ahbmo[hconfig][3][17]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][3] [17]));
  OBUF \ahbmo[hconfig][3][18]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][3] [18]));
  OBUF \ahbmo[hconfig][3][19]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][3] [19]));
  OBUF \ahbmo[hconfig][3][1]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][3] [1]));
  OBUF \ahbmo[hconfig][3][20]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][3] [20]));
  OBUF \ahbmo[hconfig][3][21]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][3] [21]));
  OBUF \ahbmo[hconfig][3][22]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][3] [22]));
  OBUF \ahbmo[hconfig][3][23]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][3] [23]));
  OBUF \ahbmo[hconfig][3][24]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][3] [24]));
  OBUF \ahbmo[hconfig][3][25]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][3] [25]));
  OBUF \ahbmo[hconfig][3][26]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][3] [26]));
  OBUF \ahbmo[hconfig][3][27]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][3] [27]));
  OBUF \ahbmo[hconfig][3][28]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][3] [28]));
  OBUF \ahbmo[hconfig][3][29]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][3] [29]));
  OBUF \ahbmo[hconfig][3][2]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][3] [2]));
  OBUF \ahbmo[hconfig][3][30]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][3] [30]));
  OBUF \ahbmo[hconfig][3][31]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][3] [31]));
  OBUF \ahbmo[hconfig][3][3]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][3] [3]));
  OBUF \ahbmo[hconfig][3][4]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][3] [4]));
  OBUF \ahbmo[hconfig][3][5]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][3] [5]));
  OBUF \ahbmo[hconfig][3][6]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][3] [6]));
  OBUF \ahbmo[hconfig][3][7]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][3] [7]));
  OBUF \ahbmo[hconfig][3][8]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][3] [8]));
  OBUF \ahbmo[hconfig][3][9]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][3] [9]));
  OBUF \ahbmo[hconfig][4][0]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][4] [0]));
  OBUF \ahbmo[hconfig][4][10]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][4] [10]));
  OBUF \ahbmo[hconfig][4][11]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][4] [11]));
  OBUF \ahbmo[hconfig][4][12]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][4] [12]));
  OBUF \ahbmo[hconfig][4][13]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][4] [13]));
  OBUF \ahbmo[hconfig][4][14]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][4] [14]));
  OBUF \ahbmo[hconfig][4][15]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][4] [15]));
  OBUF \ahbmo[hconfig][4][16]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][4] [16]));
  OBUF \ahbmo[hconfig][4][17]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][4] [17]));
  OBUF \ahbmo[hconfig][4][18]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][4] [18]));
  OBUF \ahbmo[hconfig][4][19]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][4] [19]));
  OBUF \ahbmo[hconfig][4][1]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][4] [1]));
  OBUF \ahbmo[hconfig][4][20]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][4] [20]));
  OBUF \ahbmo[hconfig][4][21]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][4] [21]));
  OBUF \ahbmo[hconfig][4][22]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][4] [22]));
  OBUF \ahbmo[hconfig][4][23]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][4] [23]));
  OBUF \ahbmo[hconfig][4][24]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][4] [24]));
  OBUF \ahbmo[hconfig][4][25]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][4] [25]));
  OBUF \ahbmo[hconfig][4][26]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][4] [26]));
  OBUF \ahbmo[hconfig][4][27]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][4] [27]));
  OBUF \ahbmo[hconfig][4][28]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][4] [28]));
  OBUF \ahbmo[hconfig][4][29]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][4] [29]));
  OBUF \ahbmo[hconfig][4][2]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][4] [2]));
  OBUF \ahbmo[hconfig][4][30]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][4] [30]));
  OBUF \ahbmo[hconfig][4][31]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][4] [31]));
  OBUF \ahbmo[hconfig][4][3]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][4] [3]));
  OBUF \ahbmo[hconfig][4][4]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][4] [4]));
  OBUF \ahbmo[hconfig][4][5]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][4] [5]));
  OBUF \ahbmo[hconfig][4][6]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][4] [6]));
  OBUF \ahbmo[hconfig][4][7]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][4] [7]));
  OBUF \ahbmo[hconfig][4][8]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][4] [8]));
  OBUF \ahbmo[hconfig][4][9]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][4] [9]));
  OBUF \ahbmo[hconfig][5][0]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][5] [0]));
  OBUF \ahbmo[hconfig][5][10]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][5] [10]));
  OBUF \ahbmo[hconfig][5][11]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][5] [11]));
  OBUF \ahbmo[hconfig][5][12]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][5] [12]));
  OBUF \ahbmo[hconfig][5][13]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][5] [13]));
  OBUF \ahbmo[hconfig][5][14]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][5] [14]));
  OBUF \ahbmo[hconfig][5][15]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][5] [15]));
  OBUF \ahbmo[hconfig][5][16]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][5] [16]));
  OBUF \ahbmo[hconfig][5][17]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][5] [17]));
  OBUF \ahbmo[hconfig][5][18]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][5] [18]));
  OBUF \ahbmo[hconfig][5][19]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][5] [19]));
  OBUF \ahbmo[hconfig][5][1]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][5] [1]));
  OBUF \ahbmo[hconfig][5][20]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][5] [20]));
  OBUF \ahbmo[hconfig][5][21]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][5] [21]));
  OBUF \ahbmo[hconfig][5][22]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][5] [22]));
  OBUF \ahbmo[hconfig][5][23]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][5] [23]));
  OBUF \ahbmo[hconfig][5][24]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][5] [24]));
  OBUF \ahbmo[hconfig][5][25]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][5] [25]));
  OBUF \ahbmo[hconfig][5][26]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][5] [26]));
  OBUF \ahbmo[hconfig][5][27]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][5] [27]));
  OBUF \ahbmo[hconfig][5][28]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][5] [28]));
  OBUF \ahbmo[hconfig][5][29]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][5] [29]));
  OBUF \ahbmo[hconfig][5][2]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][5] [2]));
  OBUF \ahbmo[hconfig][5][30]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][5] [30]));
  OBUF \ahbmo[hconfig][5][31]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][5] [31]));
  OBUF \ahbmo[hconfig][5][3]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][5] [3]));
  OBUF \ahbmo[hconfig][5][4]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][5] [4]));
  OBUF \ahbmo[hconfig][5][5]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][5] [5]));
  OBUF \ahbmo[hconfig][5][6]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][5] [6]));
  OBUF \ahbmo[hconfig][5][7]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][5] [7]));
  OBUF \ahbmo[hconfig][5][8]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][5] [8]));
  OBUF \ahbmo[hconfig][5][9]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][5] [9]));
  OBUF \ahbmo[hconfig][6][0]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][6] [0]));
  OBUF \ahbmo[hconfig][6][10]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][6] [10]));
  OBUF \ahbmo[hconfig][6][11]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][6] [11]));
  OBUF \ahbmo[hconfig][6][12]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][6] [12]));
  OBUF \ahbmo[hconfig][6][13]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][6] [13]));
  OBUF \ahbmo[hconfig][6][14]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][6] [14]));
  OBUF \ahbmo[hconfig][6][15]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][6] [15]));
  OBUF \ahbmo[hconfig][6][16]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][6] [16]));
  OBUF \ahbmo[hconfig][6][17]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][6] [17]));
  OBUF \ahbmo[hconfig][6][18]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][6] [18]));
  OBUF \ahbmo[hconfig][6][19]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][6] [19]));
  OBUF \ahbmo[hconfig][6][1]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][6] [1]));
  OBUF \ahbmo[hconfig][6][20]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][6] [20]));
  OBUF \ahbmo[hconfig][6][21]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][6] [21]));
  OBUF \ahbmo[hconfig][6][22]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][6] [22]));
  OBUF \ahbmo[hconfig][6][23]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][6] [23]));
  OBUF \ahbmo[hconfig][6][24]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][6] [24]));
  OBUF \ahbmo[hconfig][6][25]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][6] [25]));
  OBUF \ahbmo[hconfig][6][26]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][6] [26]));
  OBUF \ahbmo[hconfig][6][27]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][6] [27]));
  OBUF \ahbmo[hconfig][6][28]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][6] [28]));
  OBUF \ahbmo[hconfig][6][29]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][6] [29]));
  OBUF \ahbmo[hconfig][6][2]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][6] [2]));
  OBUF \ahbmo[hconfig][6][30]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][6] [30]));
  OBUF \ahbmo[hconfig][6][31]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][6] [31]));
  OBUF \ahbmo[hconfig][6][3]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][6] [3]));
  OBUF \ahbmo[hconfig][6][4]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][6] [4]));
  OBUF \ahbmo[hconfig][6][5]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][6] [5]));
  OBUF \ahbmo[hconfig][6][6]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][6] [6]));
  OBUF \ahbmo[hconfig][6][7]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][6] [7]));
  OBUF \ahbmo[hconfig][6][8]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][6] [8]));
  OBUF \ahbmo[hconfig][6][9]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][6] [9]));
  OBUF \ahbmo[hconfig][7][0]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][7] [0]));
  OBUF \ahbmo[hconfig][7][10]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][7] [10]));
  OBUF \ahbmo[hconfig][7][11]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][7] [11]));
  OBUF \ahbmo[hconfig][7][12]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][7] [12]));
  OBUF \ahbmo[hconfig][7][13]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][7] [13]));
  OBUF \ahbmo[hconfig][7][14]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][7] [14]));
  OBUF \ahbmo[hconfig][7][15]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][7] [15]));
  OBUF \ahbmo[hconfig][7][16]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][7] [16]));
  OBUF \ahbmo[hconfig][7][17]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][7] [17]));
  OBUF \ahbmo[hconfig][7][18]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][7] [18]));
  OBUF \ahbmo[hconfig][7][19]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][7] [19]));
  OBUF \ahbmo[hconfig][7][1]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][7] [1]));
  OBUF \ahbmo[hconfig][7][20]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][7] [20]));
  OBUF \ahbmo[hconfig][7][21]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][7] [21]));
  OBUF \ahbmo[hconfig][7][22]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][7] [22]));
  OBUF \ahbmo[hconfig][7][23]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][7] [23]));
  OBUF \ahbmo[hconfig][7][24]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][7] [24]));
  OBUF \ahbmo[hconfig][7][25]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][7] [25]));
  OBUF \ahbmo[hconfig][7][26]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][7] [26]));
  OBUF \ahbmo[hconfig][7][27]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][7] [27]));
  OBUF \ahbmo[hconfig][7][28]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][7] [28]));
  OBUF \ahbmo[hconfig][7][29]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][7] [29]));
  OBUF \ahbmo[hconfig][7][2]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][7] [2]));
  OBUF \ahbmo[hconfig][7][30]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][7] [30]));
  OBUF \ahbmo[hconfig][7][31]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][7] [31]));
  OBUF \ahbmo[hconfig][7][3]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][7] [3]));
  OBUF \ahbmo[hconfig][7][4]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][7] [4]));
  OBUF \ahbmo[hconfig][7][5]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][7] [5]));
  OBUF \ahbmo[hconfig][7][6]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][7] [6]));
  OBUF \ahbmo[hconfig][7][7]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][7] [7]));
  OBUF \ahbmo[hconfig][7][8]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][7] [8]));
  OBUF \ahbmo[hconfig][7][9]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hconfig][7] [9]));
  OBUF \ahbmo[hindex][0]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hindex] [0]));
  OBUF \ahbmo[hindex][1]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hindex] [1]));
  OBUF \ahbmo[hindex][2]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hindex] [2]));
  OBUF \ahbmo[hindex][3]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hindex] [3]));
  OBUF \ahbmo[hirq][0]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hirq] [0]));
  OBUF \ahbmo[hirq][10]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hirq] [10]));
  OBUF \ahbmo[hirq][11]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hirq] [11]));
  OBUF \ahbmo[hirq][12]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hirq] [12]));
  OBUF \ahbmo[hirq][13]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hirq] [13]));
  OBUF \ahbmo[hirq][14]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hirq] [14]));
  OBUF \ahbmo[hirq][15]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hirq] [15]));
  OBUF \ahbmo[hirq][16]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hirq] [16]));
  OBUF \ahbmo[hirq][17]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hirq] [17]));
  OBUF \ahbmo[hirq][18]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hirq] [18]));
  OBUF \ahbmo[hirq][19]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hirq] [19]));
  OBUF \ahbmo[hirq][1]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hirq] [1]));
  OBUF \ahbmo[hirq][20]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hirq] [20]));
  OBUF \ahbmo[hirq][21]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hirq] [21]));
  OBUF \ahbmo[hirq][22]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hirq] [22]));
  OBUF \ahbmo[hirq][23]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hirq] [23]));
  OBUF \ahbmo[hirq][24]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hirq] [24]));
  OBUF \ahbmo[hirq][25]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hirq] [25]));
  OBUF \ahbmo[hirq][26]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hirq] [26]));
  OBUF \ahbmo[hirq][27]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hirq] [27]));
  OBUF \ahbmo[hirq][28]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hirq] [28]));
  OBUF \ahbmo[hirq][29]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hirq] [29]));
  OBUF \ahbmo[hirq][2]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hirq] [2]));
  OBUF \ahbmo[hirq][30]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hirq] [30]));
  OBUF \ahbmo[hirq][31]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hirq] [31]));
  OBUF \ahbmo[hirq][3]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hirq] [3]));
  OBUF \ahbmo[hirq][4]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hirq] [4]));
  OBUF \ahbmo[hirq][5]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hirq] [5]));
  OBUF \ahbmo[hirq][6]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hirq] [6]));
  OBUF \ahbmo[hirq][7]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hirq] [7]));
  OBUF \ahbmo[hirq][8]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hirq] [8]));
  OBUF \ahbmo[hirq][9]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hirq] [9]));
  OBUF \ahbmo[hlock]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hlock] ));
  OBUF \ahbmo[hprot][0]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hprot] [0]));
  OBUF \ahbmo[hprot][1]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hprot] [1]));
  OBUF \ahbmo[hprot][2]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hprot] [2]));
  OBUF \ahbmo[hprot][3]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[hprot] [3]));
  OBUF \ahbmo[hsize][0]_INST_0 
       (.I(\ahbmo[hsize]_OBUF [0]),
        .O(\ahbmo[hsize] [0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ahbmo[hsize][0]_INST_0_i_1 
       (.I0(size_salida[0]),
        .I1(rst_IBUF),
        .O(\ahbmo[hsize]_OBUF [0]));
  OBUF \ahbmo[hsize][1]_INST_0 
       (.I(\ahbmo[hsize]_OBUF [1]),
        .O(\ahbmo[hsize] [1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ahbmo[hsize][1]_INST_0_i_1 
       (.I0(size_salida[1]),
        .I1(rst_IBUF),
        .O(\ahbmo[hsize]_OBUF [1]));
  OBUF \ahbmo[hsize][2]_INST_0 
       (.I(\ahbmo[hsize]_OBUF [2]),
        .O(\ahbmo[hsize] [2]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ahbmo[hsize][2]_INST_0_i_1 
       (.I0(size_salida[2]),
        .I1(rst_IBUF),
        .O(\ahbmo[hsize]_OBUF [2]));
  OBUF \ahbmo[htrans][0]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[htrans] [0]));
  OBUF \ahbmo[htrans][1]_INST_0 
       (.I(1'b0),
        .O(\ahbmo[htrans] [1]));
  OBUF \ahbmo[hwdata][0]_INST_0 
       (.I(\ahbmo[hwdata]_OBUF [0]),
        .O(\ahbmo[hwdata] [0]));
  OBUF \ahbmo[hwdata][10]_INST_0 
       (.I(\ahbmo[hwdata]_OBUF [10]),
        .O(\ahbmo[hwdata] [10]));
  OBUF \ahbmo[hwdata][11]_INST_0 
       (.I(\ahbmo[hwdata]_OBUF [11]),
        .O(\ahbmo[hwdata] [11]));
  OBUF \ahbmo[hwdata][12]_INST_0 
       (.I(\ahbmo[hwdata]_OBUF [12]),
        .O(\ahbmo[hwdata] [12]));
  OBUF \ahbmo[hwdata][13]_INST_0 
       (.I(\ahbmo[hwdata]_OBUF [13]),
        .O(\ahbmo[hwdata] [13]));
  OBUF \ahbmo[hwdata][14]_INST_0 
       (.I(\ahbmo[hwdata]_OBUF [14]),
        .O(\ahbmo[hwdata] [14]));
  OBUF \ahbmo[hwdata][15]_INST_0 
       (.I(\ahbmo[hwdata]_OBUF [15]),
        .O(\ahbmo[hwdata] [15]));
  OBUF \ahbmo[hwdata][16]_INST_0 
       (.I(\ahbmo[hwdata]_OBUF [16]),
        .O(\ahbmo[hwdata] [16]));
  OBUF \ahbmo[hwdata][17]_INST_0 
       (.I(\ahbmo[hwdata]_OBUF [17]),
        .O(\ahbmo[hwdata] [17]));
  OBUF \ahbmo[hwdata][18]_INST_0 
       (.I(\ahbmo[hwdata]_OBUF [18]),
        .O(\ahbmo[hwdata] [18]));
  OBUF \ahbmo[hwdata][19]_INST_0 
       (.I(\ahbmo[hwdata]_OBUF [19]),
        .O(\ahbmo[hwdata] [19]));
  OBUF \ahbmo[hwdata][1]_INST_0 
       (.I(\ahbmo[hwdata]_OBUF [1]),
        .O(\ahbmo[hwdata] [1]));
  OBUF \ahbmo[hwdata][20]_INST_0 
       (.I(\ahbmo[hwdata]_OBUF [20]),
        .O(\ahbmo[hwdata] [20]));
  OBUF \ahbmo[hwdata][21]_INST_0 
       (.I(\ahbmo[hwdata]_OBUF [21]),
        .O(\ahbmo[hwdata] [21]));
  OBUF \ahbmo[hwdata][22]_INST_0 
       (.I(\ahbmo[hwdata]_OBUF [22]),
        .O(\ahbmo[hwdata] [22]));
  OBUF \ahbmo[hwdata][23]_INST_0 
       (.I(\ahbmo[hwdata]_OBUF [23]),
        .O(\ahbmo[hwdata] [23]));
  OBUF \ahbmo[hwdata][24]_INST_0 
       (.I(\ahbmo[hwdata]_OBUF [24]),
        .O(\ahbmo[hwdata] [24]));
  OBUF \ahbmo[hwdata][25]_INST_0 
       (.I(\ahbmo[hwdata]_OBUF [25]),
        .O(\ahbmo[hwdata] [25]));
  OBUF \ahbmo[hwdata][26]_INST_0 
       (.I(\ahbmo[hwdata]_OBUF [26]),
        .O(\ahbmo[hwdata] [26]));
  OBUF \ahbmo[hwdata][27]_INST_0 
       (.I(\ahbmo[hwdata]_OBUF [27]),
        .O(\ahbmo[hwdata] [27]));
  OBUF \ahbmo[hwdata][28]_INST_0 
       (.I(\ahbmo[hwdata]_OBUF [28]),
        .O(\ahbmo[hwdata] [28]));
  OBUF \ahbmo[hwdata][29]_INST_0 
       (.I(\ahbmo[hwdata]_OBUF [29]),
        .O(\ahbmo[hwdata] [29]));
  OBUF \ahbmo[hwdata][2]_INST_0 
       (.I(\ahbmo[hwdata]_OBUF [2]),
        .O(\ahbmo[hwdata] [2]));
  OBUF \ahbmo[hwdata][30]_INST_0 
       (.I(\ahbmo[hwdata]_OBUF [30]),
        .O(\ahbmo[hwdata] [30]));
  OBUF \ahbmo[hwdata][31]_INST_0 
       (.I(\ahbmo[hwdata]_OBUF [31]),
        .O(\ahbmo[hwdata] [31]));
  OBUF \ahbmo[hwdata][3]_INST_0 
       (.I(\ahbmo[hwdata]_OBUF [3]),
        .O(\ahbmo[hwdata] [3]));
  OBUF \ahbmo[hwdata][4]_INST_0 
       (.I(\ahbmo[hwdata]_OBUF [4]),
        .O(\ahbmo[hwdata] [4]));
  OBUF \ahbmo[hwdata][5]_INST_0 
       (.I(\ahbmo[hwdata]_OBUF [5]),
        .O(\ahbmo[hwdata] [5]));
  OBUF \ahbmo[hwdata][6]_INST_0 
       (.I(\ahbmo[hwdata]_OBUF [6]),
        .O(\ahbmo[hwdata] [6]));
  OBUF \ahbmo[hwdata][7]_INST_0 
       (.I(\ahbmo[hwdata]_OBUF [7]),
        .O(\ahbmo[hwdata] [7]));
  OBUF \ahbmo[hwdata][8]_INST_0 
       (.I(\ahbmo[hwdata]_OBUF [8]),
        .O(\ahbmo[hwdata] [8]));
  OBUF \ahbmo[hwdata][9]_INST_0 
       (.I(\ahbmo[hwdata]_OBUF [9]),
        .O(\ahbmo[hwdata] [9]));
  OBUF \ahbmo[hwrite]_INST_0 
       (.I(\ahbmo[hwrite]_INST_0_i_1_n_2 ),
        .O(\ahbmo[hwrite] ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ahbmo[hwrite]_INST_0_i_1 
       (.I0(write_salida),
        .I1(rst_IBUF),
        .O(\ahbmo[hwrite]_INST_0_i_1_n_2 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ahbmo_reg[hwdata][0] 
       (.CLR(rst_IBUF_BUFG),
        .D(\data_buffer_reg_n_2_[0] ),
        .G(\ahbmo_reg[hwdata]0 ),
        .GE(1'b1),
        .Q(\ahbmo[hwdata]_OBUF [0]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ahbmo_reg[hwdata][10] 
       (.CLR(rst_IBUF_BUFG),
        .D(\data_buffer_reg_n_2_[10] ),
        .G(\ahbmo_reg[hwdata]0 ),
        .GE(1'b1),
        .Q(\ahbmo[hwdata]_OBUF [10]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ahbmo_reg[hwdata][11] 
       (.CLR(rst_IBUF_BUFG),
        .D(\data_buffer_reg_n_2_[11] ),
        .G(\ahbmo_reg[hwdata]0 ),
        .GE(1'b1),
        .Q(\ahbmo[hwdata]_OBUF [11]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ahbmo_reg[hwdata][12] 
       (.CLR(rst_IBUF_BUFG),
        .D(\data_buffer_reg_n_2_[12] ),
        .G(\ahbmo_reg[hwdata]0 ),
        .GE(1'b1),
        .Q(\ahbmo[hwdata]_OBUF [12]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ahbmo_reg[hwdata][13] 
       (.CLR(rst_IBUF_BUFG),
        .D(\data_buffer_reg_n_2_[13] ),
        .G(\ahbmo_reg[hwdata]0 ),
        .GE(1'b1),
        .Q(\ahbmo[hwdata]_OBUF [13]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ahbmo_reg[hwdata][14] 
       (.CLR(rst_IBUF_BUFG),
        .D(\data_buffer_reg_n_2_[14] ),
        .G(\ahbmo_reg[hwdata]0 ),
        .GE(1'b1),
        .Q(\ahbmo[hwdata]_OBUF [14]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ahbmo_reg[hwdata][15] 
       (.CLR(rst_IBUF_BUFG),
        .D(\data_buffer_reg_n_2_[15] ),
        .G(\ahbmo_reg[hwdata]0 ),
        .GE(1'b1),
        .Q(\ahbmo[hwdata]_OBUF [15]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ahbmo_reg[hwdata][16] 
       (.CLR(rst_IBUF_BUFG),
        .D(\data_buffer_reg_n_2_[16] ),
        .G(\ahbmo_reg[hwdata]0 ),
        .GE(1'b1),
        .Q(\ahbmo[hwdata]_OBUF [16]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ahbmo_reg[hwdata][17] 
       (.CLR(rst_IBUF_BUFG),
        .D(\data_buffer_reg_n_2_[17] ),
        .G(\ahbmo_reg[hwdata]0 ),
        .GE(1'b1),
        .Q(\ahbmo[hwdata]_OBUF [17]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ahbmo_reg[hwdata][18] 
       (.CLR(rst_IBUF_BUFG),
        .D(\data_buffer_reg_n_2_[18] ),
        .G(\ahbmo_reg[hwdata]0 ),
        .GE(1'b1),
        .Q(\ahbmo[hwdata]_OBUF [18]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ahbmo_reg[hwdata][19] 
       (.CLR(rst_IBUF_BUFG),
        .D(\data_buffer_reg_n_2_[19] ),
        .G(\ahbmo_reg[hwdata]0 ),
        .GE(1'b1),
        .Q(\ahbmo[hwdata]_OBUF [19]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ahbmo_reg[hwdata][1] 
       (.CLR(rst_IBUF_BUFG),
        .D(\data_buffer_reg_n_2_[1] ),
        .G(\ahbmo_reg[hwdata]0 ),
        .GE(1'b1),
        .Q(\ahbmo[hwdata]_OBUF [1]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ahbmo_reg[hwdata][20] 
       (.CLR(rst_IBUF_BUFG),
        .D(\data_buffer_reg_n_2_[20] ),
        .G(\ahbmo_reg[hwdata]0 ),
        .GE(1'b1),
        .Q(\ahbmo[hwdata]_OBUF [20]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ahbmo_reg[hwdata][21] 
       (.CLR(rst_IBUF_BUFG),
        .D(\data_buffer_reg_n_2_[21] ),
        .G(\ahbmo_reg[hwdata]0 ),
        .GE(1'b1),
        .Q(\ahbmo[hwdata]_OBUF [21]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ahbmo_reg[hwdata][22] 
       (.CLR(rst_IBUF_BUFG),
        .D(\data_buffer_reg_n_2_[22] ),
        .G(\ahbmo_reg[hwdata]0 ),
        .GE(1'b1),
        .Q(\ahbmo[hwdata]_OBUF [22]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ahbmo_reg[hwdata][23] 
       (.CLR(rst_IBUF_BUFG),
        .D(\data_buffer_reg_n_2_[23] ),
        .G(\ahbmo_reg[hwdata]0 ),
        .GE(1'b1),
        .Q(\ahbmo[hwdata]_OBUF [23]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ahbmo_reg[hwdata][24] 
       (.CLR(rst_IBUF_BUFG),
        .D(\data_buffer_reg_n_2_[24] ),
        .G(\ahbmo_reg[hwdata]0 ),
        .GE(1'b1),
        .Q(\ahbmo[hwdata]_OBUF [24]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ahbmo_reg[hwdata][25] 
       (.CLR(rst_IBUF_BUFG),
        .D(\data_buffer_reg_n_2_[25] ),
        .G(\ahbmo_reg[hwdata]0 ),
        .GE(1'b1),
        .Q(\ahbmo[hwdata]_OBUF [25]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ahbmo_reg[hwdata][26] 
       (.CLR(rst_IBUF_BUFG),
        .D(\data_buffer_reg_n_2_[26] ),
        .G(\ahbmo_reg[hwdata]0 ),
        .GE(1'b1),
        .Q(\ahbmo[hwdata]_OBUF [26]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ahbmo_reg[hwdata][27] 
       (.CLR(rst_IBUF_BUFG),
        .D(\data_buffer_reg_n_2_[27] ),
        .G(\ahbmo_reg[hwdata]0 ),
        .GE(1'b1),
        .Q(\ahbmo[hwdata]_OBUF [27]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ahbmo_reg[hwdata][28] 
       (.CLR(rst_IBUF_BUFG),
        .D(\data_buffer_reg_n_2_[28] ),
        .G(\ahbmo_reg[hwdata]0 ),
        .GE(1'b1),
        .Q(\ahbmo[hwdata]_OBUF [28]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ahbmo_reg[hwdata][29] 
       (.CLR(rst_IBUF_BUFG),
        .D(\data_buffer_reg_n_2_[29] ),
        .G(\ahbmo_reg[hwdata]0 ),
        .GE(1'b1),
        .Q(\ahbmo[hwdata]_OBUF [29]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ahbmo_reg[hwdata][2] 
       (.CLR(rst_IBUF_BUFG),
        .D(\data_buffer_reg_n_2_[2] ),
        .G(\ahbmo_reg[hwdata]0 ),
        .GE(1'b1),
        .Q(\ahbmo[hwdata]_OBUF [2]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ahbmo_reg[hwdata][30] 
       (.CLR(rst_IBUF_BUFG),
        .D(\data_buffer_reg_n_2_[30] ),
        .G(\ahbmo_reg[hwdata]0 ),
        .GE(1'b1),
        .Q(\ahbmo[hwdata]_OBUF [30]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ahbmo_reg[hwdata][31] 
       (.CLR(rst_IBUF_BUFG),
        .D(\data_buffer_reg_n_2_[31] ),
        .G(\ahbmo_reg[hwdata]0 ),
        .GE(1'b1),
        .Q(\ahbmo[hwdata]_OBUF [31]));
  BUFG \ahbmo_reg[hwdata][31]_i_1 
       (.I(\ahbmo_reg[hwdata][31]_i_2_n_2 ),
        .O(\ahbmo_reg[hwdata]0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ahbmo_reg[hwdata][31]_i_2 
       (.I0(addr_grant),
        .I1(write_salida),
        .O(\ahbmo_reg[hwdata][31]_i_2_n_2 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ahbmo_reg[hwdata][3] 
       (.CLR(rst_IBUF_BUFG),
        .D(\data_buffer_reg_n_2_[3] ),
        .G(\ahbmo_reg[hwdata]0 ),
        .GE(1'b1),
        .Q(\ahbmo[hwdata]_OBUF [3]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ahbmo_reg[hwdata][4] 
       (.CLR(rst_IBUF_BUFG),
        .D(\data_buffer_reg_n_2_[4] ),
        .G(\ahbmo_reg[hwdata]0 ),
        .GE(1'b1),
        .Q(\ahbmo[hwdata]_OBUF [4]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ahbmo_reg[hwdata][5] 
       (.CLR(rst_IBUF_BUFG),
        .D(\data_buffer_reg_n_2_[5] ),
        .G(\ahbmo_reg[hwdata]0 ),
        .GE(1'b1),
        .Q(\ahbmo[hwdata]_OBUF [5]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ahbmo_reg[hwdata][6] 
       (.CLR(rst_IBUF_BUFG),
        .D(\data_buffer_reg_n_2_[6] ),
        .G(\ahbmo_reg[hwdata]0 ),
        .GE(1'b1),
        .Q(\ahbmo[hwdata]_OBUF [6]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ahbmo_reg[hwdata][7] 
       (.CLR(rst_IBUF_BUFG),
        .D(\data_buffer_reg_n_2_[7] ),
        .G(\ahbmo_reg[hwdata]0 ),
        .GE(1'b1),
        .Q(\ahbmo[hwdata]_OBUF [7]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ahbmo_reg[hwdata][8] 
       (.CLR(rst_IBUF_BUFG),
        .D(\data_buffer_reg_n_2_[8] ),
        .G(\ahbmo_reg[hwdata]0 ),
        .GE(1'b1),
        .Q(\ahbmo[hwdata]_OBUF [8]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ahbmo_reg[hwdata][9] 
       (.CLR(rst_IBUF_BUFG),
        .D(\data_buffer_reg_n_2_[9] ),
        .G(\ahbmo_reg[hwdata]0 ),
        .GE(1'b1),
        .Q(\ahbmo[hwdata]_OBUF [9]));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    busreq_salida_reg
       (.CLR(1'b0),
        .D(n_0_112_BUFG),
        .G(rst_IBUF_BUFG),
        .GE(1'b1),
        .Q(busreq_salida));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_buffer[0]_i_1 
       (.I0(\data_buffer_reg[0]_i_2_n_2 ),
        .I1(\data_buffer_reg[0]_i_3_n_2 ),
        .I2(escritura),
        .O(\data_buffer[0]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_buffer[10]_i_1 
       (.I0(\data_buffer_reg[10]_i_2_n_2 ),
        .I1(\data_buffer_reg[10]_i_3_n_2 ),
        .I2(escritura),
        .O(\data_buffer[10]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_buffer[11]_i_1 
       (.I0(\data_buffer_reg[11]_i_2_n_2 ),
        .I1(\data_buffer_reg[11]_i_3_n_2 ),
        .I2(escritura),
        .O(\data_buffer[11]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_buffer[12]_i_1 
       (.I0(\data_buffer_reg[12]_i_2_n_2 ),
        .I1(\data_buffer_reg[12]_i_3_n_2 ),
        .I2(escritura),
        .O(\data_buffer[12]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_buffer[13]_i_1 
       (.I0(\data_buffer_reg[13]_i_2_n_2 ),
        .I1(\data_buffer_reg[13]_i_3_n_2 ),
        .I2(escritura),
        .O(\data_buffer[13]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_buffer[14]_i_1 
       (.I0(\data_buffer_reg[14]_i_2_n_2 ),
        .I1(\data_buffer_reg[14]_i_3_n_2 ),
        .I2(escritura),
        .O(\data_buffer[14]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_buffer[15]_i_1 
       (.I0(\data_buffer_reg[15]_i_2_n_2 ),
        .I1(\data_buffer_reg[15]_i_3_n_2 ),
        .I2(escritura),
        .O(\data_buffer[15]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_buffer[16]_i_1 
       (.I0(\data_buffer_reg[16]_i_2_n_2 ),
        .I1(\data_buffer_reg[16]_i_3_n_2 ),
        .I2(escritura),
        .O(\data_buffer[16]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_buffer[17]_i_1 
       (.I0(\data_buffer_reg[17]_i_2_n_2 ),
        .I1(\data_buffer_reg[17]_i_3_n_2 ),
        .I2(escritura),
        .O(\data_buffer[17]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_buffer[18]_i_1 
       (.I0(\data_buffer_reg[18]_i_2_n_2 ),
        .I1(\data_buffer_reg[18]_i_3_n_2 ),
        .I2(escritura),
        .O(\data_buffer[18]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_buffer[19]_i_1 
       (.I0(\data_buffer_reg[19]_i_2_n_2 ),
        .I1(\data_buffer_reg[19]_i_3_n_2 ),
        .I2(escritura),
        .O(\data_buffer[19]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_buffer[1]_i_1 
       (.I0(\data_buffer_reg[1]_i_2_n_2 ),
        .I1(\data_buffer_reg[1]_i_3_n_2 ),
        .I2(escritura),
        .O(\data_buffer[1]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_buffer[20]_i_1 
       (.I0(\data_buffer_reg[20]_i_2_n_2 ),
        .I1(\data_buffer_reg[20]_i_3_n_2 ),
        .I2(escritura),
        .O(\data_buffer[20]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_buffer[21]_i_1 
       (.I0(\data_buffer_reg[21]_i_2_n_2 ),
        .I1(\data_buffer_reg[21]_i_3_n_2 ),
        .I2(escritura),
        .O(\data_buffer[21]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_buffer[22]_i_1 
       (.I0(\data_buffer_reg[22]_i_2_n_2 ),
        .I1(\data_buffer_reg[22]_i_3_n_2 ),
        .I2(escritura),
        .O(\data_buffer[22]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_buffer[23]_i_1 
       (.I0(\data_buffer_reg[23]_i_2_n_2 ),
        .I1(\data_buffer_reg[23]_i_3_n_2 ),
        .I2(escritura),
        .O(\data_buffer[23]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_buffer[24]_i_1 
       (.I0(\data_buffer_reg[24]_i_2_n_2 ),
        .I1(\data_buffer_reg[24]_i_3_n_2 ),
        .I2(escritura),
        .O(\data_buffer[24]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_buffer[25]_i_1 
       (.I0(\data_buffer_reg[25]_i_2_n_2 ),
        .I1(\data_buffer_reg[25]_i_3_n_2 ),
        .I2(escritura),
        .O(\data_buffer[25]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_buffer[26]_i_1 
       (.I0(\data_buffer_reg[26]_i_2_n_2 ),
        .I1(\data_buffer_reg[26]_i_3_n_2 ),
        .I2(escritura),
        .O(\data_buffer[26]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_buffer[27]_i_1 
       (.I0(\data_buffer_reg[27]_i_2_n_2 ),
        .I1(\data_buffer_reg[27]_i_3_n_2 ),
        .I2(escritura),
        .O(\data_buffer[27]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_buffer[28]_i_1 
       (.I0(\data_buffer_reg[28]_i_2_n_2 ),
        .I1(\data_buffer_reg[28]_i_3_n_2 ),
        .I2(escritura),
        .O(\data_buffer[28]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_buffer[29]_i_1 
       (.I0(\data_buffer_reg[29]_i_2_n_2 ),
        .I1(\data_buffer_reg[29]_i_3_n_2 ),
        .I2(escritura),
        .O(\data_buffer[29]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_buffer[2]_i_1 
       (.I0(\data_buffer_reg[2]_i_2_n_2 ),
        .I1(\data_buffer_reg[2]_i_3_n_2 ),
        .I2(escritura),
        .O(\data_buffer[2]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_buffer[30]_i_1 
       (.I0(\data_buffer_reg[30]_i_2_n_2 ),
        .I1(\data_buffer_reg[30]_i_3_n_2 ),
        .I2(escritura),
        .O(\data_buffer[30]_i_1_n_2 ));
  LUT4 #(
    .INIT(16'h8880)) 
    \data_buffer[31]_i_1 
       (.I0(addr_grant),
        .I1(\addr_salida_reg[31]_i_3_n_2 ),
        .I2(escritura),
        .I3(lectura),
        .O(data_buffer));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_buffer[31]_i_2 
       (.I0(\data_buffer_reg[31]_i_3_n_2 ),
        .I1(\data_buffer_reg[31]_i_4_n_2 ),
        .I2(escritura),
        .O(\data_buffer[31]_i_2_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_buffer[3]_i_1 
       (.I0(\data_buffer_reg[3]_i_2_n_2 ),
        .I1(\data_buffer_reg[3]_i_3_n_2 ),
        .I2(escritura),
        .O(\data_buffer[3]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_buffer[4]_i_1 
       (.I0(\data_buffer_reg[4]_i_2_n_2 ),
        .I1(\data_buffer_reg[4]_i_3_n_2 ),
        .I2(escritura),
        .O(\data_buffer[4]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_buffer[5]_i_1 
       (.I0(\data_buffer_reg[5]_i_2_n_2 ),
        .I1(\data_buffer_reg[5]_i_3_n_2 ),
        .I2(escritura),
        .O(\data_buffer[5]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_buffer[6]_i_1 
       (.I0(\data_buffer_reg[6]_i_2_n_2 ),
        .I1(\data_buffer_reg[6]_i_3_n_2 ),
        .I2(escritura),
        .O(\data_buffer[6]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_buffer[7]_i_1 
       (.I0(\data_buffer_reg[7]_i_2_n_2 ),
        .I1(\data_buffer_reg[7]_i_3_n_2 ),
        .I2(escritura),
        .O(\data_buffer[7]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_buffer[8]_i_1 
       (.I0(\data_buffer_reg[8]_i_2_n_2 ),
        .I1(\data_buffer_reg[8]_i_3_n_2 ),
        .I2(escritura),
        .O(\data_buffer[8]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_buffer[9]_i_1 
       (.I0(\data_buffer_reg[9]_i_2_n_2 ),
        .I1(\data_buffer_reg[9]_i_3_n_2 ),
        .I2(escritura),
        .O(\data_buffer[9]_i_1_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buffer_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buffer),
        .CLR(rst_IBUF_BUFG),
        .D(\data_buffer[0]_i_1_n_2 ),
        .Q(\data_buffer_reg_n_2_[0] ));
  IBUF \data_buffer_reg[0]_i_2 
       (.I(\dmai[wdata] [0]),
        .O(\data_buffer_reg[0]_i_2_n_2 ));
  IBUF \data_buffer_reg[0]_i_3 
       (.I(\ahbmi[hrdata] [0]),
        .O(\data_buffer_reg[0]_i_3_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buffer_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buffer),
        .CLR(rst_IBUF_BUFG),
        .D(\data_buffer[10]_i_1_n_2 ),
        .Q(\data_buffer_reg_n_2_[10] ));
  IBUF \data_buffer_reg[10]_i_2 
       (.I(\dmai[wdata] [10]),
        .O(\data_buffer_reg[10]_i_2_n_2 ));
  IBUF \data_buffer_reg[10]_i_3 
       (.I(\ahbmi[hrdata] [10]),
        .O(\data_buffer_reg[10]_i_3_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buffer_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buffer),
        .CLR(rst_IBUF_BUFG),
        .D(\data_buffer[11]_i_1_n_2 ),
        .Q(\data_buffer_reg_n_2_[11] ));
  IBUF \data_buffer_reg[11]_i_2 
       (.I(\dmai[wdata] [11]),
        .O(\data_buffer_reg[11]_i_2_n_2 ));
  IBUF \data_buffer_reg[11]_i_3 
       (.I(\ahbmi[hrdata] [11]),
        .O(\data_buffer_reg[11]_i_3_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buffer_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buffer),
        .CLR(rst_IBUF_BUFG),
        .D(\data_buffer[12]_i_1_n_2 ),
        .Q(\data_buffer_reg_n_2_[12] ));
  IBUF \data_buffer_reg[12]_i_2 
       (.I(\dmai[wdata] [12]),
        .O(\data_buffer_reg[12]_i_2_n_2 ));
  IBUF \data_buffer_reg[12]_i_3 
       (.I(\ahbmi[hrdata] [12]),
        .O(\data_buffer_reg[12]_i_3_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buffer_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buffer),
        .CLR(rst_IBUF_BUFG),
        .D(\data_buffer[13]_i_1_n_2 ),
        .Q(\data_buffer_reg_n_2_[13] ));
  IBUF \data_buffer_reg[13]_i_2 
       (.I(\dmai[wdata] [13]),
        .O(\data_buffer_reg[13]_i_2_n_2 ));
  IBUF \data_buffer_reg[13]_i_3 
       (.I(\ahbmi[hrdata] [13]),
        .O(\data_buffer_reg[13]_i_3_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buffer_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buffer),
        .CLR(rst_IBUF_BUFG),
        .D(\data_buffer[14]_i_1_n_2 ),
        .Q(\data_buffer_reg_n_2_[14] ));
  IBUF \data_buffer_reg[14]_i_2 
       (.I(\dmai[wdata] [14]),
        .O(\data_buffer_reg[14]_i_2_n_2 ));
  IBUF \data_buffer_reg[14]_i_3 
       (.I(\ahbmi[hrdata] [14]),
        .O(\data_buffer_reg[14]_i_3_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buffer_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buffer),
        .CLR(rst_IBUF_BUFG),
        .D(\data_buffer[15]_i_1_n_2 ),
        .Q(\data_buffer_reg_n_2_[15] ));
  IBUF \data_buffer_reg[15]_i_2 
       (.I(\dmai[wdata] [15]),
        .O(\data_buffer_reg[15]_i_2_n_2 ));
  IBUF \data_buffer_reg[15]_i_3 
       (.I(\ahbmi[hrdata] [15]),
        .O(\data_buffer_reg[15]_i_3_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buffer_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buffer),
        .CLR(rst_IBUF_BUFG),
        .D(\data_buffer[16]_i_1_n_2 ),
        .Q(\data_buffer_reg_n_2_[16] ));
  IBUF \data_buffer_reg[16]_i_2 
       (.I(\dmai[wdata] [16]),
        .O(\data_buffer_reg[16]_i_2_n_2 ));
  IBUF \data_buffer_reg[16]_i_3 
       (.I(\ahbmi[hrdata] [16]),
        .O(\data_buffer_reg[16]_i_3_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buffer_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buffer),
        .CLR(rst_IBUF_BUFG),
        .D(\data_buffer[17]_i_1_n_2 ),
        .Q(\data_buffer_reg_n_2_[17] ));
  IBUF \data_buffer_reg[17]_i_2 
       (.I(\dmai[wdata] [17]),
        .O(\data_buffer_reg[17]_i_2_n_2 ));
  IBUF \data_buffer_reg[17]_i_3 
       (.I(\ahbmi[hrdata] [17]),
        .O(\data_buffer_reg[17]_i_3_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buffer_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buffer),
        .CLR(rst_IBUF_BUFG),
        .D(\data_buffer[18]_i_1_n_2 ),
        .Q(\data_buffer_reg_n_2_[18] ));
  IBUF \data_buffer_reg[18]_i_2 
       (.I(\dmai[wdata] [18]),
        .O(\data_buffer_reg[18]_i_2_n_2 ));
  IBUF \data_buffer_reg[18]_i_3 
       (.I(\ahbmi[hrdata] [18]),
        .O(\data_buffer_reg[18]_i_3_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buffer_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buffer),
        .CLR(rst_IBUF_BUFG),
        .D(\data_buffer[19]_i_1_n_2 ),
        .Q(\data_buffer_reg_n_2_[19] ));
  IBUF \data_buffer_reg[19]_i_2 
       (.I(\dmai[wdata] [19]),
        .O(\data_buffer_reg[19]_i_2_n_2 ));
  IBUF \data_buffer_reg[19]_i_3 
       (.I(\ahbmi[hrdata] [19]),
        .O(\data_buffer_reg[19]_i_3_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buffer_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buffer),
        .CLR(rst_IBUF_BUFG),
        .D(\data_buffer[1]_i_1_n_2 ),
        .Q(\data_buffer_reg_n_2_[1] ));
  IBUF \data_buffer_reg[1]_i_2 
       (.I(\dmai[wdata] [1]),
        .O(\data_buffer_reg[1]_i_2_n_2 ));
  IBUF \data_buffer_reg[1]_i_3 
       (.I(\ahbmi[hrdata] [1]),
        .O(\data_buffer_reg[1]_i_3_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buffer_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buffer),
        .CLR(rst_IBUF_BUFG),
        .D(\data_buffer[20]_i_1_n_2 ),
        .Q(\data_buffer_reg_n_2_[20] ));
  IBUF \data_buffer_reg[20]_i_2 
       (.I(\dmai[wdata] [20]),
        .O(\data_buffer_reg[20]_i_2_n_2 ));
  IBUF \data_buffer_reg[20]_i_3 
       (.I(\ahbmi[hrdata] [20]),
        .O(\data_buffer_reg[20]_i_3_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buffer_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buffer),
        .CLR(rst_IBUF_BUFG),
        .D(\data_buffer[21]_i_1_n_2 ),
        .Q(\data_buffer_reg_n_2_[21] ));
  IBUF \data_buffer_reg[21]_i_2 
       (.I(\dmai[wdata] [21]),
        .O(\data_buffer_reg[21]_i_2_n_2 ));
  IBUF \data_buffer_reg[21]_i_3 
       (.I(\ahbmi[hrdata] [21]),
        .O(\data_buffer_reg[21]_i_3_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buffer_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buffer),
        .CLR(rst_IBUF_BUFG),
        .D(\data_buffer[22]_i_1_n_2 ),
        .Q(\data_buffer_reg_n_2_[22] ));
  IBUF \data_buffer_reg[22]_i_2 
       (.I(\dmai[wdata] [22]),
        .O(\data_buffer_reg[22]_i_2_n_2 ));
  IBUF \data_buffer_reg[22]_i_3 
       (.I(\ahbmi[hrdata] [22]),
        .O(\data_buffer_reg[22]_i_3_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buffer_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buffer),
        .CLR(rst_IBUF_BUFG),
        .D(\data_buffer[23]_i_1_n_2 ),
        .Q(\data_buffer_reg_n_2_[23] ));
  IBUF \data_buffer_reg[23]_i_2 
       (.I(\dmai[wdata] [23]),
        .O(\data_buffer_reg[23]_i_2_n_2 ));
  IBUF \data_buffer_reg[23]_i_3 
       (.I(\ahbmi[hrdata] [23]),
        .O(\data_buffer_reg[23]_i_3_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buffer_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buffer),
        .CLR(rst_IBUF_BUFG),
        .D(\data_buffer[24]_i_1_n_2 ),
        .Q(\data_buffer_reg_n_2_[24] ));
  IBUF \data_buffer_reg[24]_i_2 
       (.I(\dmai[wdata] [24]),
        .O(\data_buffer_reg[24]_i_2_n_2 ));
  IBUF \data_buffer_reg[24]_i_3 
       (.I(\ahbmi[hrdata] [24]),
        .O(\data_buffer_reg[24]_i_3_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buffer_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buffer),
        .CLR(rst_IBUF_BUFG),
        .D(\data_buffer[25]_i_1_n_2 ),
        .Q(\data_buffer_reg_n_2_[25] ));
  IBUF \data_buffer_reg[25]_i_2 
       (.I(\dmai[wdata] [25]),
        .O(\data_buffer_reg[25]_i_2_n_2 ));
  IBUF \data_buffer_reg[25]_i_3 
       (.I(\ahbmi[hrdata] [25]),
        .O(\data_buffer_reg[25]_i_3_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buffer_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buffer),
        .CLR(rst_IBUF_BUFG),
        .D(\data_buffer[26]_i_1_n_2 ),
        .Q(\data_buffer_reg_n_2_[26] ));
  IBUF \data_buffer_reg[26]_i_2 
       (.I(\dmai[wdata] [26]),
        .O(\data_buffer_reg[26]_i_2_n_2 ));
  IBUF \data_buffer_reg[26]_i_3 
       (.I(\ahbmi[hrdata] [26]),
        .O(\data_buffer_reg[26]_i_3_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buffer_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buffer),
        .CLR(rst_IBUF_BUFG),
        .D(\data_buffer[27]_i_1_n_2 ),
        .Q(\data_buffer_reg_n_2_[27] ));
  IBUF \data_buffer_reg[27]_i_2 
       (.I(\dmai[wdata] [27]),
        .O(\data_buffer_reg[27]_i_2_n_2 ));
  IBUF \data_buffer_reg[27]_i_3 
       (.I(\ahbmi[hrdata] [27]),
        .O(\data_buffer_reg[27]_i_3_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buffer_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buffer),
        .CLR(rst_IBUF_BUFG),
        .D(\data_buffer[28]_i_1_n_2 ),
        .Q(\data_buffer_reg_n_2_[28] ));
  IBUF \data_buffer_reg[28]_i_2 
       (.I(\dmai[wdata] [28]),
        .O(\data_buffer_reg[28]_i_2_n_2 ));
  IBUF \data_buffer_reg[28]_i_3 
       (.I(\ahbmi[hrdata] [28]),
        .O(\data_buffer_reg[28]_i_3_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buffer_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buffer),
        .CLR(rst_IBUF_BUFG),
        .D(\data_buffer[29]_i_1_n_2 ),
        .Q(\data_buffer_reg_n_2_[29] ));
  IBUF \data_buffer_reg[29]_i_2 
       (.I(\dmai[wdata] [29]),
        .O(\data_buffer_reg[29]_i_2_n_2 ));
  IBUF \data_buffer_reg[29]_i_3 
       (.I(\ahbmi[hrdata] [29]),
        .O(\data_buffer_reg[29]_i_3_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buffer_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buffer),
        .CLR(rst_IBUF_BUFG),
        .D(\data_buffer[2]_i_1_n_2 ),
        .Q(\data_buffer_reg_n_2_[2] ));
  IBUF \data_buffer_reg[2]_i_2 
       (.I(\dmai[wdata] [2]),
        .O(\data_buffer_reg[2]_i_2_n_2 ));
  IBUF \data_buffer_reg[2]_i_3 
       (.I(\ahbmi[hrdata] [2]),
        .O(\data_buffer_reg[2]_i_3_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buffer_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buffer),
        .CLR(rst_IBUF_BUFG),
        .D(\data_buffer[30]_i_1_n_2 ),
        .Q(\data_buffer_reg_n_2_[30] ));
  IBUF \data_buffer_reg[30]_i_2 
       (.I(\dmai[wdata] [30]),
        .O(\data_buffer_reg[30]_i_2_n_2 ));
  IBUF \data_buffer_reg[30]_i_3 
       (.I(\ahbmi[hrdata] [30]),
        .O(\data_buffer_reg[30]_i_3_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buffer_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buffer),
        .CLR(rst_IBUF_BUFG),
        .D(\data_buffer[31]_i_2_n_2 ),
        .Q(\data_buffer_reg_n_2_[31] ));
  IBUF \data_buffer_reg[31]_i_3 
       (.I(\dmai[wdata] [31]),
        .O(\data_buffer_reg[31]_i_3_n_2 ));
  IBUF \data_buffer_reg[31]_i_4 
       (.I(\ahbmi[hrdata] [31]),
        .O(\data_buffer_reg[31]_i_4_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buffer_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buffer),
        .CLR(rst_IBUF_BUFG),
        .D(\data_buffer[3]_i_1_n_2 ),
        .Q(\data_buffer_reg_n_2_[3] ));
  IBUF \data_buffer_reg[3]_i_2 
       (.I(\dmai[wdata] [3]),
        .O(\data_buffer_reg[3]_i_2_n_2 ));
  IBUF \data_buffer_reg[3]_i_3 
       (.I(\ahbmi[hrdata] [3]),
        .O(\data_buffer_reg[3]_i_3_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buffer_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buffer),
        .CLR(rst_IBUF_BUFG),
        .D(\data_buffer[4]_i_1_n_2 ),
        .Q(\data_buffer_reg_n_2_[4] ));
  IBUF \data_buffer_reg[4]_i_2 
       (.I(\dmai[wdata] [4]),
        .O(\data_buffer_reg[4]_i_2_n_2 ));
  IBUF \data_buffer_reg[4]_i_3 
       (.I(\ahbmi[hrdata] [4]),
        .O(\data_buffer_reg[4]_i_3_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buffer_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buffer),
        .CLR(rst_IBUF_BUFG),
        .D(\data_buffer[5]_i_1_n_2 ),
        .Q(\data_buffer_reg_n_2_[5] ));
  IBUF \data_buffer_reg[5]_i_2 
       (.I(\dmai[wdata] [5]),
        .O(\data_buffer_reg[5]_i_2_n_2 ));
  IBUF \data_buffer_reg[5]_i_3 
       (.I(\ahbmi[hrdata] [5]),
        .O(\data_buffer_reg[5]_i_3_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buffer_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buffer),
        .CLR(rst_IBUF_BUFG),
        .D(\data_buffer[6]_i_1_n_2 ),
        .Q(\data_buffer_reg_n_2_[6] ));
  IBUF \data_buffer_reg[6]_i_2 
       (.I(\dmai[wdata] [6]),
        .O(\data_buffer_reg[6]_i_2_n_2 ));
  IBUF \data_buffer_reg[6]_i_3 
       (.I(\ahbmi[hrdata] [6]),
        .O(\data_buffer_reg[6]_i_3_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buffer_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buffer),
        .CLR(rst_IBUF_BUFG),
        .D(\data_buffer[7]_i_1_n_2 ),
        .Q(\data_buffer_reg_n_2_[7] ));
  IBUF \data_buffer_reg[7]_i_2 
       (.I(\dmai[wdata] [7]),
        .O(\data_buffer_reg[7]_i_2_n_2 ));
  IBUF \data_buffer_reg[7]_i_3 
       (.I(\ahbmi[hrdata] [7]),
        .O(\data_buffer_reg[7]_i_3_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buffer_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buffer),
        .CLR(rst_IBUF_BUFG),
        .D(\data_buffer[8]_i_1_n_2 ),
        .Q(\data_buffer_reg_n_2_[8] ));
  IBUF \data_buffer_reg[8]_i_2 
       (.I(\dmai[wdata] [8]),
        .O(\data_buffer_reg[8]_i_2_n_2 ));
  IBUF \data_buffer_reg[8]_i_3 
       (.I(\ahbmi[hrdata] [8]),
        .O(\data_buffer_reg[8]_i_3_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_buffer_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(data_buffer),
        .CLR(rst_IBUF_BUFG),
        .D(\data_buffer[9]_i_1_n_2 ),
        .Q(\data_buffer_reg_n_2_[9] ));
  IBUF \data_buffer_reg[9]_i_2 
       (.I(\dmai[wdata] [9]),
        .O(\data_buffer_reg[9]_i_2_n_2 ));
  IBUF \data_buffer_reg[9]_i_3 
       (.I(\ahbmi[hrdata] [9]),
        .O(\data_buffer_reg[9]_i_3_n_2 ));
  (* INIT = "1'b0" *) 
  (* IS_G_INVERTED = "1'b1" *) 
  (* OPT_MODIFIED = "MLO " *) 
  LDCP_UNIQ_BASE_ data_grant_reg
       (.CLR(rst_IBUF_BUFG),
        .D(n_1_78_BUFG),
        .G(n_1_78_BUFG),
        .PRE(n_1_78_BUFG),
        .Q(addr_grant));
  OBUF \dmao[finish]_INST_0 
       (.I(\dmao[finish]_INST_0_i_1_n_2 ),
        .O(\dmao[finish] ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \dmao[finish]_INST_0_i_1 
       (.I0(finish),
        .I1(rst_IBUF),
        .O(\dmao[finish]_INST_0_i_1_n_2 ));
  OBUF \dmao[rdata][0]_INST_0 
       (.I(\dmao[rdata]_OBUF [0]),
        .O(\dmao[rdata] [0]));
  OBUF \dmao[rdata][10]_INST_0 
       (.I(\dmao[rdata]_OBUF [10]),
        .O(\dmao[rdata] [10]));
  OBUF \dmao[rdata][11]_INST_0 
       (.I(\dmao[rdata]_OBUF [11]),
        .O(\dmao[rdata] [11]));
  OBUF \dmao[rdata][12]_INST_0 
       (.I(\dmao[rdata]_OBUF [12]),
        .O(\dmao[rdata] [12]));
  OBUF \dmao[rdata][13]_INST_0 
       (.I(\dmao[rdata]_OBUF [13]),
        .O(\dmao[rdata] [13]));
  OBUF \dmao[rdata][14]_INST_0 
       (.I(\dmao[rdata]_OBUF [14]),
        .O(\dmao[rdata] [14]));
  OBUF \dmao[rdata][15]_INST_0 
       (.I(\dmao[rdata]_OBUF [15]),
        .O(\dmao[rdata] [15]));
  OBUF \dmao[rdata][16]_INST_0 
       (.I(\dmao[rdata]_OBUF [16]),
        .O(\dmao[rdata] [16]));
  OBUF \dmao[rdata][17]_INST_0 
       (.I(\dmao[rdata]_OBUF [17]),
        .O(\dmao[rdata] [17]));
  OBUF \dmao[rdata][18]_INST_0 
       (.I(\dmao[rdata]_OBUF [18]),
        .O(\dmao[rdata] [18]));
  OBUF \dmao[rdata][19]_INST_0 
       (.I(\dmao[rdata]_OBUF [19]),
        .O(\dmao[rdata] [19]));
  OBUF \dmao[rdata][1]_INST_0 
       (.I(\dmao[rdata]_OBUF [1]),
        .O(\dmao[rdata] [1]));
  OBUF \dmao[rdata][20]_INST_0 
       (.I(\dmao[rdata]_OBUF [20]),
        .O(\dmao[rdata] [20]));
  OBUF \dmao[rdata][21]_INST_0 
       (.I(\dmao[rdata]_OBUF [21]),
        .O(\dmao[rdata] [21]));
  OBUF \dmao[rdata][22]_INST_0 
       (.I(\dmao[rdata]_OBUF [22]),
        .O(\dmao[rdata] [22]));
  OBUF \dmao[rdata][23]_INST_0 
       (.I(\dmao[rdata]_OBUF [23]),
        .O(\dmao[rdata] [23]));
  OBUF \dmao[rdata][24]_INST_0 
       (.I(\dmao[rdata]_OBUF [24]),
        .O(\dmao[rdata] [24]));
  OBUF \dmao[rdata][25]_INST_0 
       (.I(\dmao[rdata]_OBUF [25]),
        .O(\dmao[rdata] [25]));
  OBUF \dmao[rdata][26]_INST_0 
       (.I(\dmao[rdata]_OBUF [26]),
        .O(\dmao[rdata] [26]));
  OBUF \dmao[rdata][27]_INST_0 
       (.I(\dmao[rdata]_OBUF [27]),
        .O(\dmao[rdata] [27]));
  OBUF \dmao[rdata][28]_INST_0 
       (.I(\dmao[rdata]_OBUF [28]),
        .O(\dmao[rdata] [28]));
  OBUF \dmao[rdata][29]_INST_0 
       (.I(\dmao[rdata]_OBUF [29]),
        .O(\dmao[rdata] [29]));
  OBUF \dmao[rdata][2]_INST_0 
       (.I(\dmao[rdata]_OBUF [2]),
        .O(\dmao[rdata] [2]));
  OBUF \dmao[rdata][30]_INST_0 
       (.I(\dmao[rdata]_OBUF [30]),
        .O(\dmao[rdata] [30]));
  OBUF \dmao[rdata][31]_INST_0 
       (.I(\dmao[rdata]_OBUF [31]),
        .O(\dmao[rdata] [31]));
  OBUF \dmao[rdata][3]_INST_0 
       (.I(\dmao[rdata]_OBUF [3]),
        .O(\dmao[rdata] [3]));
  OBUF \dmao[rdata][4]_INST_0 
       (.I(\dmao[rdata]_OBUF [4]),
        .O(\dmao[rdata] [4]));
  OBUF \dmao[rdata][5]_INST_0 
       (.I(\dmao[rdata]_OBUF [5]),
        .O(\dmao[rdata] [5]));
  OBUF \dmao[rdata][6]_INST_0 
       (.I(\dmao[rdata]_OBUF [6]),
        .O(\dmao[rdata] [6]));
  OBUF \dmao[rdata][7]_INST_0 
       (.I(\dmao[rdata]_OBUF [7]),
        .O(\dmao[rdata] [7]));
  OBUF \dmao[rdata][8]_INST_0 
       (.I(\dmao[rdata]_OBUF [8]),
        .O(\dmao[rdata] [8]));
  OBUF \dmao[rdata][9]_INST_0 
       (.I(\dmao[rdata]_OBUF [9]),
        .O(\dmao[rdata] [9]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dmao_reg[rdata][0] 
       (.CLR(rst_IBUF_BUFG),
        .D(\data_buffer_reg_n_2_[0] ),
        .G(\dmao_reg[rdata]0 ),
        .GE(1'b1),
        .Q(\dmao[rdata]_OBUF [0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dmao_reg[rdata][0]__0 
       (.CLR(1'b0),
        .D(1'b0),
        .G(rst_IBUF_BUFG),
        .GE(1'b1),
        .Q(\dmao[rdata]_OBUF [0]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dmao_reg[rdata][10] 
       (.CLR(rst_IBUF_BUFG),
        .D(\data_buffer_reg_n_2_[10] ),
        .G(\dmao_reg[rdata]0 ),
        .GE(1'b1),
        .Q(\dmao[rdata]_OBUF [10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dmao_reg[rdata][10]__0 
       (.CLR(1'b0),
        .D(1'b0),
        .G(rst_IBUF_BUFG),
        .GE(1'b1),
        .Q(\dmao[rdata]_OBUF [10]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dmao_reg[rdata][11] 
       (.CLR(rst_IBUF_BUFG),
        .D(\data_buffer_reg_n_2_[11] ),
        .G(\dmao_reg[rdata]0 ),
        .GE(1'b1),
        .Q(\dmao[rdata]_OBUF [11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dmao_reg[rdata][11]__0 
       (.CLR(1'b0),
        .D(1'b0),
        .G(rst_IBUF_BUFG),
        .GE(1'b1),
        .Q(\dmao[rdata]_OBUF [11]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dmao_reg[rdata][12] 
       (.CLR(rst_IBUF_BUFG),
        .D(\data_buffer_reg_n_2_[12] ),
        .G(\dmao_reg[rdata]0 ),
        .GE(1'b1),
        .Q(\dmao[rdata]_OBUF [12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dmao_reg[rdata][12]__0 
       (.CLR(1'b0),
        .D(1'b0),
        .G(rst_IBUF_BUFG),
        .GE(1'b1),
        .Q(\dmao[rdata]_OBUF [12]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dmao_reg[rdata][13] 
       (.CLR(rst_IBUF_BUFG),
        .D(\data_buffer_reg_n_2_[13] ),
        .G(\dmao_reg[rdata]0 ),
        .GE(1'b1),
        .Q(\dmao[rdata]_OBUF [13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dmao_reg[rdata][13]__0 
       (.CLR(1'b0),
        .D(1'b0),
        .G(rst_IBUF_BUFG),
        .GE(1'b1),
        .Q(\dmao[rdata]_OBUF [13]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dmao_reg[rdata][14] 
       (.CLR(rst_IBUF_BUFG),
        .D(\data_buffer_reg_n_2_[14] ),
        .G(\dmao_reg[rdata]0 ),
        .GE(1'b1),
        .Q(\dmao[rdata]_OBUF [14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dmao_reg[rdata][14]__0 
       (.CLR(1'b0),
        .D(1'b0),
        .G(rst_IBUF_BUFG),
        .GE(1'b1),
        .Q(\dmao[rdata]_OBUF [14]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dmao_reg[rdata][15] 
       (.CLR(rst_IBUF_BUFG),
        .D(\data_buffer_reg_n_2_[15] ),
        .G(\dmao_reg[rdata]0 ),
        .GE(1'b1),
        .Q(\dmao[rdata]_OBUF [15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dmao_reg[rdata][15]__0 
       (.CLR(1'b0),
        .D(1'b0),
        .G(rst_IBUF_BUFG),
        .GE(1'b1),
        .Q(\dmao[rdata]_OBUF [15]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dmao_reg[rdata][16] 
       (.CLR(rst_IBUF_BUFG),
        .D(\data_buffer_reg_n_2_[16] ),
        .G(\dmao_reg[rdata]0 ),
        .GE(1'b1),
        .Q(\dmao[rdata]_OBUF [16]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dmao_reg[rdata][16]__0 
       (.CLR(1'b0),
        .D(1'b0),
        .G(rst_IBUF_BUFG),
        .GE(1'b1),
        .Q(\dmao[rdata]_OBUF [16]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dmao_reg[rdata][17] 
       (.CLR(rst_IBUF_BUFG),
        .D(\data_buffer_reg_n_2_[17] ),
        .G(\dmao_reg[rdata]0 ),
        .GE(1'b1),
        .Q(\dmao[rdata]_OBUF [17]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dmao_reg[rdata][17]__0 
       (.CLR(1'b0),
        .D(1'b0),
        .G(rst_IBUF_BUFG),
        .GE(1'b1),
        .Q(\dmao[rdata]_OBUF [17]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dmao_reg[rdata][18] 
       (.CLR(rst_IBUF_BUFG),
        .D(\data_buffer_reg_n_2_[18] ),
        .G(\dmao_reg[rdata]0 ),
        .GE(1'b1),
        .Q(\dmao[rdata]_OBUF [18]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dmao_reg[rdata][18]__0 
       (.CLR(1'b0),
        .D(1'b0),
        .G(rst_IBUF_BUFG),
        .GE(1'b1),
        .Q(\dmao[rdata]_OBUF [18]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dmao_reg[rdata][19] 
       (.CLR(rst_IBUF_BUFG),
        .D(\data_buffer_reg_n_2_[19] ),
        .G(\dmao_reg[rdata]0 ),
        .GE(1'b1),
        .Q(\dmao[rdata]_OBUF [19]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dmao_reg[rdata][19]__0 
       (.CLR(1'b0),
        .D(1'b0),
        .G(rst_IBUF_BUFG),
        .GE(1'b1),
        .Q(\dmao[rdata]_OBUF [19]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dmao_reg[rdata][1] 
       (.CLR(rst_IBUF_BUFG),
        .D(\data_buffer_reg_n_2_[1] ),
        .G(\dmao_reg[rdata]0 ),
        .GE(1'b1),
        .Q(\dmao[rdata]_OBUF [1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dmao_reg[rdata][1]__0 
       (.CLR(1'b0),
        .D(1'b0),
        .G(rst_IBUF_BUFG),
        .GE(1'b1),
        .Q(\dmao[rdata]_OBUF [1]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dmao_reg[rdata][20] 
       (.CLR(rst_IBUF_BUFG),
        .D(\data_buffer_reg_n_2_[20] ),
        .G(\dmao_reg[rdata]0 ),
        .GE(1'b1),
        .Q(\dmao[rdata]_OBUF [20]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dmao_reg[rdata][20]__0 
       (.CLR(1'b0),
        .D(1'b0),
        .G(rst_IBUF_BUFG),
        .GE(1'b1),
        .Q(\dmao[rdata]_OBUF [20]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dmao_reg[rdata][21] 
       (.CLR(rst_IBUF_BUFG),
        .D(\data_buffer_reg_n_2_[21] ),
        .G(\dmao_reg[rdata]0 ),
        .GE(1'b1),
        .Q(\dmao[rdata]_OBUF [21]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dmao_reg[rdata][21]__0 
       (.CLR(1'b0),
        .D(1'b0),
        .G(rst_IBUF_BUFG),
        .GE(1'b1),
        .Q(\dmao[rdata]_OBUF [21]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dmao_reg[rdata][22] 
       (.CLR(rst_IBUF_BUFG),
        .D(\data_buffer_reg_n_2_[22] ),
        .G(\dmao_reg[rdata]0 ),
        .GE(1'b1),
        .Q(\dmao[rdata]_OBUF [22]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dmao_reg[rdata][22]__0 
       (.CLR(1'b0),
        .D(1'b0),
        .G(rst_IBUF_BUFG),
        .GE(1'b1),
        .Q(\dmao[rdata]_OBUF [22]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dmao_reg[rdata][23] 
       (.CLR(rst_IBUF_BUFG),
        .D(\data_buffer_reg_n_2_[23] ),
        .G(\dmao_reg[rdata]0 ),
        .GE(1'b1),
        .Q(\dmao[rdata]_OBUF [23]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dmao_reg[rdata][23]__0 
       (.CLR(1'b0),
        .D(1'b0),
        .G(rst_IBUF_BUFG),
        .GE(1'b1),
        .Q(\dmao[rdata]_OBUF [23]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dmao_reg[rdata][24] 
       (.CLR(rst_IBUF_BUFG),
        .D(\data_buffer_reg_n_2_[24] ),
        .G(\dmao_reg[rdata]0 ),
        .GE(1'b1),
        .Q(\dmao[rdata]_OBUF [24]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dmao_reg[rdata][24]__0 
       (.CLR(1'b0),
        .D(1'b0),
        .G(rst_IBUF_BUFG),
        .GE(1'b1),
        .Q(\dmao[rdata]_OBUF [24]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dmao_reg[rdata][25] 
       (.CLR(rst_IBUF_BUFG),
        .D(\data_buffer_reg_n_2_[25] ),
        .G(\dmao_reg[rdata]0 ),
        .GE(1'b1),
        .Q(\dmao[rdata]_OBUF [25]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dmao_reg[rdata][25]__0 
       (.CLR(1'b0),
        .D(1'b0),
        .G(rst_IBUF_BUFG),
        .GE(1'b1),
        .Q(\dmao[rdata]_OBUF [25]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dmao_reg[rdata][26] 
       (.CLR(rst_IBUF_BUFG),
        .D(\data_buffer_reg_n_2_[26] ),
        .G(\dmao_reg[rdata]0 ),
        .GE(1'b1),
        .Q(\dmao[rdata]_OBUF [26]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dmao_reg[rdata][26]__0 
       (.CLR(1'b0),
        .D(1'b0),
        .G(rst_IBUF_BUFG),
        .GE(1'b1),
        .Q(\dmao[rdata]_OBUF [26]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dmao_reg[rdata][27] 
       (.CLR(rst_IBUF_BUFG),
        .D(\data_buffer_reg_n_2_[27] ),
        .G(\dmao_reg[rdata]0 ),
        .GE(1'b1),
        .Q(\dmao[rdata]_OBUF [27]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dmao_reg[rdata][27]__0 
       (.CLR(1'b0),
        .D(1'b0),
        .G(rst_IBUF_BUFG),
        .GE(1'b1),
        .Q(\dmao[rdata]_OBUF [27]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dmao_reg[rdata][28] 
       (.CLR(rst_IBUF_BUFG),
        .D(\data_buffer_reg_n_2_[28] ),
        .G(\dmao_reg[rdata]0 ),
        .GE(1'b1),
        .Q(\dmao[rdata]_OBUF [28]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dmao_reg[rdata][28]__0 
       (.CLR(1'b0),
        .D(1'b0),
        .G(rst_IBUF_BUFG),
        .GE(1'b1),
        .Q(\dmao[rdata]_OBUF [28]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dmao_reg[rdata][29] 
       (.CLR(rst_IBUF_BUFG),
        .D(\data_buffer_reg_n_2_[29] ),
        .G(\dmao_reg[rdata]0 ),
        .GE(1'b1),
        .Q(\dmao[rdata]_OBUF [29]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dmao_reg[rdata][29]__0 
       (.CLR(1'b0),
        .D(1'b0),
        .G(rst_IBUF_BUFG),
        .GE(1'b1),
        .Q(\dmao[rdata]_OBUF [29]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dmao_reg[rdata][2] 
       (.CLR(rst_IBUF_BUFG),
        .D(\data_buffer_reg_n_2_[2] ),
        .G(\dmao_reg[rdata]0 ),
        .GE(1'b1),
        .Q(\dmao[rdata]_OBUF [2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dmao_reg[rdata][2]__0 
       (.CLR(1'b0),
        .D(1'b0),
        .G(rst_IBUF_BUFG),
        .GE(1'b1),
        .Q(\dmao[rdata]_OBUF [2]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dmao_reg[rdata][30] 
       (.CLR(rst_IBUF_BUFG),
        .D(\data_buffer_reg_n_2_[30] ),
        .G(\dmao_reg[rdata]0 ),
        .GE(1'b1),
        .Q(\dmao[rdata]_OBUF [30]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dmao_reg[rdata][30]__0 
       (.CLR(1'b0),
        .D(1'b0),
        .G(rst_IBUF_BUFG),
        .GE(1'b1),
        .Q(\dmao[rdata]_OBUF [30]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dmao_reg[rdata][31] 
       (.CLR(rst_IBUF_BUFG),
        .D(\data_buffer_reg_n_2_[31] ),
        .G(\dmao_reg[rdata]0 ),
        .GE(1'b1),
        .Q(\dmao[rdata]_OBUF [31]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dmao_reg[rdata][31]__0 
       (.CLR(1'b0),
        .D(1'b0),
        .G(rst_IBUF_BUFG),
        .GE(1'b1),
        .Q(\dmao[rdata]_OBUF [31]));
  BUFG \dmao_reg[rdata][31]_i_1 
       (.I(\dmao_reg[rdata][31]_i_2_n_2 ),
        .O(\dmao_reg[rdata]0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \dmao_reg[rdata][31]_i_2 
       (.I0(addr_grant),
        .I1(write_salida),
        .O(\dmao_reg[rdata][31]_i_2_n_2 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dmao_reg[rdata][3] 
       (.CLR(rst_IBUF_BUFG),
        .D(\data_buffer_reg_n_2_[3] ),
        .G(\dmao_reg[rdata]0 ),
        .GE(1'b1),
        .Q(\dmao[rdata]_OBUF [3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dmao_reg[rdata][3]__0 
       (.CLR(1'b0),
        .D(1'b0),
        .G(rst_IBUF_BUFG),
        .GE(1'b1),
        .Q(\dmao[rdata]_OBUF [3]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dmao_reg[rdata][4] 
       (.CLR(rst_IBUF_BUFG),
        .D(\data_buffer_reg_n_2_[4] ),
        .G(\dmao_reg[rdata]0 ),
        .GE(1'b1),
        .Q(\dmao[rdata]_OBUF [4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dmao_reg[rdata][4]__0 
       (.CLR(1'b0),
        .D(1'b0),
        .G(rst_IBUF_BUFG),
        .GE(1'b1),
        .Q(\dmao[rdata]_OBUF [4]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dmao_reg[rdata][5] 
       (.CLR(rst_IBUF_BUFG),
        .D(\data_buffer_reg_n_2_[5] ),
        .G(\dmao_reg[rdata]0 ),
        .GE(1'b1),
        .Q(\dmao[rdata]_OBUF [5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dmao_reg[rdata][5]__0 
       (.CLR(1'b0),
        .D(1'b0),
        .G(rst_IBUF_BUFG),
        .GE(1'b1),
        .Q(\dmao[rdata]_OBUF [5]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dmao_reg[rdata][6] 
       (.CLR(rst_IBUF_BUFG),
        .D(\data_buffer_reg_n_2_[6] ),
        .G(\dmao_reg[rdata]0 ),
        .GE(1'b1),
        .Q(\dmao[rdata]_OBUF [6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dmao_reg[rdata][6]__0 
       (.CLR(1'b0),
        .D(1'b0),
        .G(rst_IBUF_BUFG),
        .GE(1'b1),
        .Q(\dmao[rdata]_OBUF [6]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dmao_reg[rdata][7] 
       (.CLR(rst_IBUF_BUFG),
        .D(\data_buffer_reg_n_2_[7] ),
        .G(\dmao_reg[rdata]0 ),
        .GE(1'b1),
        .Q(\dmao[rdata]_OBUF [7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dmao_reg[rdata][7]__0 
       (.CLR(1'b0),
        .D(1'b0),
        .G(rst_IBUF_BUFG),
        .GE(1'b1),
        .Q(\dmao[rdata]_OBUF [7]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dmao_reg[rdata][8] 
       (.CLR(rst_IBUF_BUFG),
        .D(\data_buffer_reg_n_2_[8] ),
        .G(\dmao_reg[rdata]0 ),
        .GE(1'b1),
        .Q(\dmao[rdata]_OBUF [8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dmao_reg[rdata][8]__0 
       (.CLR(1'b0),
        .D(1'b0),
        .G(rst_IBUF_BUFG),
        .GE(1'b1),
        .Q(\dmao[rdata]_OBUF [8]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dmao_reg[rdata][9] 
       (.CLR(rst_IBUF_BUFG),
        .D(\data_buffer_reg_n_2_[9] ),
        .G(\dmao_reg[rdata]0 ),
        .GE(1'b1),
        .Q(\dmao[rdata]_OBUF [9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \dmao_reg[rdata][9]__0 
       (.CLR(1'b0),
        .D(1'b0),
        .G(rst_IBUF_BUFG),
        .GE(1'b1),
        .Q(\dmao[rdata]_OBUF [9]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    escritura_reg
       (.CLR(rst_IBUF_BUFG),
        .D(escritura_reg_i_1_n_2),
        .G(n_0_112_BUFG),
        .GE(1'b1),
        .Q(escritura));
  IBUF escritura_reg_i_1
       (.I(\dmai[write] ),
        .O(escritura_reg_i_1_n_2));
  LUT6 #(
    .INIT(64'hB888B888B888A888)) 
    finish_i_1
       (.I0(finish),
        .I1(rst_IBUF),
        .I2(addr_grant),
        .I3(\addr_salida_reg[31]_i_3_n_2 ),
        .I4(escritura),
        .I5(lectura),
        .O(finish_i_1_n_2));
  FDRE #(
    .INIT(1'b1)) 
    finish_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(finish_i_1_n_2),
        .Q(finish),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    lectura_reg
       (.CLR(rst_IBUF_BUFG),
        .D(lectura_reg_i_1_n_2),
        .G(n_0_112_BUFG),
        .GE(1'b1),
        .Q(lectura));
  LUT1 #(
    .INIT(2'h1)) 
    lectura_reg_i_1
       (.I0(escritura_reg_i_1_n_2),
        .O(lectura_reg_i_1_n_2));
  BUFG n_0_112_BUFG_inst
       (.I(n_0_112_BUFG_inst_n_1),
        .O(n_0_112_BUFG));
  IBUF n_0_112_BUFG_inst_i_1
       (.I(\dmai[start] ),
        .O(n_0_112_BUFG_inst_n_1));
  BUFG n_1_78_BUFG_inst
       (.I(n_1_78_BUFG_inst_n_2),
        .O(n_1_78_BUFG));
  IBUF n_1_78_BUFG_inst_i_1
       (.I(\ahbmi[hgrant] [0]),
        .O(n_1_78_BUFG_inst_n_2));
  BUFG rst_IBUF_BUFG_inst
       (.I(rst_IBUF),
        .O(rst_IBUF_BUFG));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  FDCE #(
    .INIT(1'b0)) 
    \size_salida_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(addr_salida0),
        .CLR(rst_IBUF_BUFG),
        .D(\size_salida_reg[0]_i_1_n_2 ),
        .Q(size_salida[0]));
  IBUF \size_salida_reg[0]_i_1 
       (.I(\dmai[size] [0]),
        .O(\size_salida_reg[0]_i_1_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \size_salida_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(addr_salida0),
        .CLR(rst_IBUF_BUFG),
        .D(\size_salida_reg[1]_i_1_n_2 ),
        .Q(size_salida[1]));
  IBUF \size_salida_reg[1]_i_1 
       (.I(\dmai[size] [1]),
        .O(\size_salida_reg[1]_i_1_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \size_salida_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(addr_salida0),
        .CLR(rst_IBUF_BUFG),
        .D(\size_salida_reg[2]_i_1_n_2 ),
        .Q(size_salida[2]));
  IBUF \size_salida_reg[2]_i_1 
       (.I(\dmai[size] [2]),
        .O(\size_salida_reg[2]_i_1_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    write_salida_reg
       (.C(clk_IBUF_BUFG),
        .CE(addr_salida0),
        .CLR(rst_IBUF_BUFG),
        .D(escritura_reg_i_1_n_2),
        .Q(write_salida));
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
