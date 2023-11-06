// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Wed Nov  1 18:27:29 2023
// Host        : NB-Franco running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               D:/UART/UART.sim/sim_1/impl/func/xsim/top_level_tb_func_impl.v
// Design      : top_level
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module alu
   (data0,
    Q,
    \result_reg[0]_i_3 ,
    S,
    \result_reg[4]_i_3 );
  output [7:0]data0;
  input [6:0]Q;
  input [0:0]\result_reg[0]_i_3 ;
  input [3:0]S;
  input [3:0]\result_reg[4]_i_3 ;

  wire [6:0]Q;
  wire [3:0]S;
  wire \_inferred__0/i__carry_n_0 ;
  wire [7:0]data0;
  wire [0:0]\result_reg[0]_i_3 ;
  wire [3:0]\result_reg[4]_i_3 ;
  wire [2:0]\NLW__inferred__0/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW__inferred__0/i__carry__0_CO_UNCONNECTED ;

  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__0/i__carry_n_0 ,\NLW__inferred__0/i__carry_CO_UNCONNECTED [2:0]}),
        .CYINIT(Q[0]),
        .DI({Q[3:1],\result_reg[0]_i_3 }),
        .O(data0[3:0]),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__0/i__carry__0 
       (.CI(\_inferred__0/i__carry_n_0 ),
        .CO(\NLW__inferred__0/i__carry__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,Q[6:4]}),
        .O(data0[7:4]),
        .S(\result_reg[4]_i_3 ));
endmodule

module fifo
   (D,
    rx_empty_OBUF,
    full_reg_reg_0,
    clk_IBUF_BUFG,
    Q,
    E,
    \r_ptr_reg_reg[5]_0 ,
    AR,
    empty_reg_reg_0,
    uart_rd);
  output [7:0]D;
  output rx_empty_OBUF;
  output full_reg_reg_0;
  input clk_IBUF_BUFG;
  input [7:0]Q;
  input [0:0]E;
  input \r_ptr_reg_reg[5]_0 ;
  input [0:0]AR;
  input empty_reg_reg_0;
  input uart_rd;

  wire [0:0]AR;
  wire [7:0]D;
  wire [0:0]E;
  wire [7:0]Q;
  wire clk_IBUF_BUFG;
  wire empty_reg_i_1_n_0;
  wire empty_reg_i_2_n_0;
  wire empty_reg_i_3_n_0;
  wire empty_reg_i_4_n_0;
  wire empty_reg_i_5_n_0;
  wire empty_reg_reg_0;
  wire full_reg_i_1__0_n_0;
  wire full_reg_i_2__0_n_0;
  wire full_reg_i_3__0_n_0;
  wire full_reg_i_4__0_n_0;
  wire full_reg_i_5__0_n_0;
  wire full_reg_reg_0;
  wire [5:0]r_ptr_reg0;
  wire [5:0]r_ptr_reg_reg;
  wire \r_ptr_reg_reg[5]_0 ;
  wire rx_empty_OBUF;
  wire uart_rd;
  wire [5:0]w_ptr_reg0;
  wire [5:0]w_ptr_reg_reg;
  wire NLW_array_reg_reg_0_63_0_2_DOD_UNCONNECTED;
  wire NLW_array_reg_reg_0_63_3_5_DOD_UNCONNECTED;
  wire NLW_array_reg_reg_0_63_6_7_DOC_UNCONNECTED;
  wire NLW_array_reg_reg_0_63_6_7_DOD_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "uart_unit/fifo_rx_unit/array_reg_reg_0_63_0_2" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    array_reg_reg_0_63_0_2
       (.ADDRA(r_ptr_reg_reg),
        .ADDRB(r_ptr_reg_reg),
        .ADDRC(r_ptr_reg_reg),
        .ADDRD(w_ptr_reg_reg),
        .DIA(Q[0]),
        .DIB(Q[1]),
        .DIC(Q[2]),
        .DID(1'b0),
        .DOA(D[0]),
        .DOB(D[1]),
        .DOC(D[2]),
        .DOD(NLW_array_reg_reg_0_63_0_2_DOD_UNCONNECTED),
        .WCLK(clk_IBUF_BUFG),
        .WE(E));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "uart_unit/fifo_rx_unit/array_reg_reg_0_63_3_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    array_reg_reg_0_63_3_5
       (.ADDRA(r_ptr_reg_reg),
        .ADDRB(r_ptr_reg_reg),
        .ADDRC(r_ptr_reg_reg),
        .ADDRD(w_ptr_reg_reg),
        .DIA(Q[3]),
        .DIB(Q[4]),
        .DIC(Q[5]),
        .DID(1'b0),
        .DOA(D[3]),
        .DOB(D[4]),
        .DOC(D[5]),
        .DOD(NLW_array_reg_reg_0_63_3_5_DOD_UNCONNECTED),
        .WCLK(clk_IBUF_BUFG),
        .WE(E));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "uart_unit/fifo_rx_unit/array_reg_reg_0_63_6_7" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "7" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    array_reg_reg_0_63_6_7
       (.ADDRA(r_ptr_reg_reg),
        .ADDRB(r_ptr_reg_reg),
        .ADDRC(r_ptr_reg_reg),
        .ADDRD(w_ptr_reg_reg),
        .DIA(Q[6]),
        .DIB(Q[7]),
        .DIC(1'b0),
        .DID(1'b0),
        .DOA(D[6]),
        .DOB(D[7]),
        .DOC(NLW_array_reg_reg_0_63_6_7_DOC_UNCONNECTED),
        .DOD(NLW_array_reg_reg_0_63_6_7_DOD_UNCONNECTED),
        .WCLK(clk_IBUF_BUFG),
        .WE(E));
  LUT5 #(
    .INIT(32'hBBF0BB00)) 
    empty_reg_i_1
       (.I0(full_reg_reg_0),
        .I1(empty_reg_reg_0),
        .I2(uart_rd),
        .I3(rx_empty_OBUF),
        .I4(empty_reg_i_2_n_0),
        .O(empty_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'h0006090009000009)) 
    empty_reg_i_2
       (.I0(r_ptr_reg_reg[5]),
        .I1(w_ptr_reg_reg[5]),
        .I2(empty_reg_i_3_n_0),
        .I3(w_ptr_reg_reg[4]),
        .I4(empty_reg_i_4_n_0),
        .I5(r_ptr_reg_reg[4]),
        .O(empty_reg_i_2_n_0));
  LUT6 #(
    .INIT(64'hEBBBBBBBBEEEEEEE)) 
    empty_reg_i_3
       (.I0(empty_reg_i_5_n_0),
        .I1(r_ptr_reg_reg[3]),
        .I2(r_ptr_reg_reg[0]),
        .I3(r_ptr_reg_reg[1]),
        .I4(r_ptr_reg_reg[2]),
        .I5(w_ptr_reg_reg[3]),
        .O(empty_reg_i_3_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    empty_reg_i_4
       (.I0(r_ptr_reg_reg[3]),
        .I1(r_ptr_reg_reg[0]),
        .I2(r_ptr_reg_reg[1]),
        .I3(r_ptr_reg_reg[2]),
        .O(empty_reg_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFF6FF6F96FFFFF)) 
    empty_reg_i_5
       (.I0(r_ptr_reg_reg[2]),
        .I1(w_ptr_reg_reg[2]),
        .I2(w_ptr_reg_reg[1]),
        .I3(r_ptr_reg_reg[1]),
        .I4(r_ptr_reg_reg[0]),
        .I5(w_ptr_reg_reg[0]),
        .O(empty_reg_i_5_n_0));
  FDPE #(
    .INIT(1'b1)) 
    empty_reg_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(empty_reg_i_1_n_0),
        .PRE(AR),
        .Q(rx_empty_OBUF));
  LUT5 #(
    .INIT(32'hBBBB0B00)) 
    full_reg_i_1__0
       (.I0(rx_empty_OBUF),
        .I1(uart_rd),
        .I2(full_reg_i_2__0_n_0),
        .I3(empty_reg_reg_0),
        .I4(full_reg_reg_0),
        .O(full_reg_i_1__0_n_0));
  LUT6 #(
    .INIT(64'hFFF9F6FFF6FFFFF6)) 
    full_reg_i_2__0
       (.I0(w_ptr_reg_reg[5]),
        .I1(r_ptr_reg_reg[5]),
        .I2(full_reg_i_3__0_n_0),
        .I3(r_ptr_reg_reg[4]),
        .I4(full_reg_i_4__0_n_0),
        .I5(w_ptr_reg_reg[4]),
        .O(full_reg_i_2__0_n_0));
  LUT6 #(
    .INIT(64'hEBBBBBBBBEEEEEEE)) 
    full_reg_i_3__0
       (.I0(full_reg_i_5__0_n_0),
        .I1(w_ptr_reg_reg[3]),
        .I2(w_ptr_reg_reg[0]),
        .I3(w_ptr_reg_reg[1]),
        .I4(w_ptr_reg_reg[2]),
        .I5(r_ptr_reg_reg[3]),
        .O(full_reg_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    full_reg_i_4__0
       (.I0(w_ptr_reg_reg[3]),
        .I1(w_ptr_reg_reg[0]),
        .I2(w_ptr_reg_reg[1]),
        .I3(w_ptr_reg_reg[2]),
        .O(full_reg_i_4__0_n_0));
  LUT6 #(
    .INIT(64'hFFFF6FF6F96FFFFF)) 
    full_reg_i_5__0
       (.I0(w_ptr_reg_reg[2]),
        .I1(r_ptr_reg_reg[2]),
        .I2(r_ptr_reg_reg[1]),
        .I3(w_ptr_reg_reg[1]),
        .I4(w_ptr_reg_reg[0]),
        .I5(r_ptr_reg_reg[0]),
        .O(full_reg_i_5__0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    full_reg_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(full_reg_i_1__0_n_0),
        .Q(full_reg_reg_0));
  (* \PinAttr:I0:HOLD_DETOUR  = "190" *) 
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \r_ptr_reg[0]_i_2 
       (.I0(r_ptr_reg_reg[0]),
        .O(r_ptr_reg0[0]));
  (* \PinAttr:I0:HOLD_DETOUR  = "190" *) 
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_ptr_reg[1]_i_1 
       (.I0(r_ptr_reg_reg[0]),
        .I1(r_ptr_reg_reg[1]),
        .O(r_ptr_reg0[1]));
  (* \PinAttr:I2:HOLD_DETOUR  = "190" *) 
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \r_ptr_reg[2]_i_1 
       (.I0(r_ptr_reg_reg[2]),
        .I1(r_ptr_reg_reg[1]),
        .I2(r_ptr_reg_reg[0]),
        .O(r_ptr_reg0[2]));
  (* \PinAttr:I1:HOLD_DETOUR  = "190" *) 
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \r_ptr_reg[3]_i_1 
       (.I0(r_ptr_reg_reg[3]),
        .I1(r_ptr_reg_reg[0]),
        .I2(r_ptr_reg_reg[1]),
        .I3(r_ptr_reg_reg[2]),
        .O(r_ptr_reg0[3]));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \r_ptr_reg[4]_i_1 
       (.I0(r_ptr_reg_reg[4]),
        .I1(r_ptr_reg_reg[2]),
        .I2(r_ptr_reg_reg[1]),
        .I3(r_ptr_reg_reg[0]),
        .I4(r_ptr_reg_reg[3]),
        .O(r_ptr_reg0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \r_ptr_reg[5]_i_1 
       (.I0(r_ptr_reg_reg[4]),
        .I1(r_ptr_reg_reg[2]),
        .I2(r_ptr_reg_reg[1]),
        .I3(r_ptr_reg_reg[0]),
        .I4(r_ptr_reg_reg[3]),
        .I5(r_ptr_reg_reg[5]),
        .O(r_ptr_reg0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \r_ptr_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_ptr_reg_reg[5]_0 ),
        .CLR(AR),
        .D(r_ptr_reg0[0]),
        .Q(r_ptr_reg_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \r_ptr_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_ptr_reg_reg[5]_0 ),
        .CLR(AR),
        .D(r_ptr_reg0[1]),
        .Q(r_ptr_reg_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \r_ptr_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_ptr_reg_reg[5]_0 ),
        .CLR(AR),
        .D(r_ptr_reg0[2]),
        .Q(r_ptr_reg_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \r_ptr_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_ptr_reg_reg[5]_0 ),
        .CLR(AR),
        .D(r_ptr_reg0[3]),
        .Q(r_ptr_reg_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \r_ptr_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_ptr_reg_reg[5]_0 ),
        .CLR(AR),
        .D(r_ptr_reg0[4]),
        .Q(r_ptr_reg_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \r_ptr_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_ptr_reg_reg[5]_0 ),
        .CLR(AR),
        .D(r_ptr_reg0[5]),
        .Q(r_ptr_reg_reg[5]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \w_ptr_reg[0]_i_1__0 
       (.I0(w_ptr_reg_reg[0]),
        .O(w_ptr_reg0[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \w_ptr_reg[1]_i_1__0 
       (.I0(w_ptr_reg_reg[0]),
        .I1(w_ptr_reg_reg[1]),
        .O(w_ptr_reg0[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \w_ptr_reg[2]_i_1__0 
       (.I0(w_ptr_reg_reg[2]),
        .I1(w_ptr_reg_reg[1]),
        .I2(w_ptr_reg_reg[0]),
        .O(w_ptr_reg0[2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \w_ptr_reg[3]_i_1__0 
       (.I0(w_ptr_reg_reg[3]),
        .I1(w_ptr_reg_reg[0]),
        .I2(w_ptr_reg_reg[1]),
        .I3(w_ptr_reg_reg[2]),
        .O(w_ptr_reg0[3]));
  (* \PinAttr:I0:HOLD_DETOUR  = "192" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \w_ptr_reg[4]_i_1__0 
       (.I0(w_ptr_reg_reg[4]),
        .I1(w_ptr_reg_reg[2]),
        .I2(w_ptr_reg_reg[1]),
        .I3(w_ptr_reg_reg[0]),
        .I4(w_ptr_reg_reg[3]),
        .O(w_ptr_reg0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \w_ptr_reg[5]_i_1__0 
       (.I0(w_ptr_reg_reg[5]),
        .I1(w_ptr_reg_reg[3]),
        .I2(w_ptr_reg_reg[0]),
        .I3(w_ptr_reg_reg[1]),
        .I4(w_ptr_reg_reg[2]),
        .I5(w_ptr_reg_reg[4]),
        .O(w_ptr_reg0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \w_ptr_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(w_ptr_reg0[0]),
        .Q(w_ptr_reg_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \w_ptr_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(w_ptr_reg0[1]),
        .Q(w_ptr_reg_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \w_ptr_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(w_ptr_reg0[2]),
        .Q(w_ptr_reg_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \w_ptr_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(w_ptr_reg0[3]),
        .Q(w_ptr_reg_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \w_ptr_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(w_ptr_reg0[4]),
        .Q(w_ptr_reg_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \w_ptr_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(w_ptr_reg0[5]),
        .Q(w_ptr_reg_reg[5]));
endmodule

(* ORIG_REF_NAME = "fifo" *) 
module fifo_0
   (tx_full_OBUF,
    tx_empty,
    \result_reg_reg[6] ,
    D,
    \r_ptr_reg_reg[0]_0 ,
    clk_IBUF_BUFG,
    AR,
    result_reg,
    E,
    uart_wr,
    state_reg);
  output tx_full_OBUF;
  output tx_empty;
  output [6:0]\result_reg_reg[6] ;
  output [0:0]D;
  input \r_ptr_reg_reg[0]_0 ;
  input clk_IBUF_BUFG;
  input [0:0]AR;
  input [7:0]result_reg;
  input [0:0]E;
  input uart_wr;
  input [0:0]state_reg;

  wire [0:0]AR;
  wire [0:0]D;
  wire [0:0]E;
  wire clk_IBUF_BUFG;
  wire empty_reg_i_1__0_n_0;
  wire empty_reg_i_2__0_n_0;
  wire empty_reg_i_3__0_n_0;
  wire empty_reg_i_4__0_n_0;
  wire empty_reg_i_5__0_n_0;
  wire full_reg_i_1_n_0;
  wire full_reg_i_2_n_0;
  wire full_reg_i_3_n_0;
  wire full_reg_i_4_n_0;
  wire full_reg_i_5_n_0;
  wire [7:7]r_data;
  wire [5:0]r_ptr_reg0;
  wire [5:0]r_ptr_reg_reg;
  wire \r_ptr_reg_reg[0]_0 ;
  wire [7:0]result_reg;
  wire [6:0]\result_reg_reg[6] ;
  wire [0:0]state_reg;
  wire tx_empty;
  wire tx_full_OBUF;
  wire uart_wr;
  wire \w_ptr_reg[0]_i_1_n_0 ;
  wire \w_ptr_reg[1]_i_1_n_0 ;
  wire \w_ptr_reg[2]_i_1_n_0 ;
  wire \w_ptr_reg[3]_i_1_n_0 ;
  wire \w_ptr_reg[4]_i_1_n_0 ;
  wire \w_ptr_reg[5]_i_1_n_0 ;
  wire \w_ptr_reg_reg_n_0_[0] ;
  wire \w_ptr_reg_reg_n_0_[1] ;
  wire \w_ptr_reg_reg_n_0_[2] ;
  wire \w_ptr_reg_reg_n_0_[3] ;
  wire \w_ptr_reg_reg_n_0_[4] ;
  wire \w_ptr_reg_reg_n_0_[5] ;
  wire NLW_array_reg_reg_0_63_0_2_DOD_UNCONNECTED;
  wire NLW_array_reg_reg_0_63_3_5_DOD_UNCONNECTED;
  wire NLW_array_reg_reg_0_63_6_7_DOC_UNCONNECTED;
  wire NLW_array_reg_reg_0_63_6_7_DOD_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "uart_unit/fifo_tx_unit/array_reg_reg_0_63_0_2" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    array_reg_reg_0_63_0_2
       (.ADDRA(r_ptr_reg_reg),
        .ADDRB(r_ptr_reg_reg),
        .ADDRC(r_ptr_reg_reg),
        .ADDRD({\w_ptr_reg_reg_n_0_[5] ,\w_ptr_reg_reg_n_0_[4] ,\w_ptr_reg_reg_n_0_[3] ,\w_ptr_reg_reg_n_0_[2] ,\w_ptr_reg_reg_n_0_[1] ,\w_ptr_reg_reg_n_0_[0] }),
        .DIA(result_reg[0]),
        .DIB(result_reg[1]),
        .DIC(result_reg[2]),
        .DID(1'b0),
        .DOA(\result_reg_reg[6] [0]),
        .DOB(\result_reg_reg[6] [1]),
        .DOC(\result_reg_reg[6] [2]),
        .DOD(NLW_array_reg_reg_0_63_0_2_DOD_UNCONNECTED),
        .WCLK(clk_IBUF_BUFG),
        .WE(E));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "uart_unit/fifo_tx_unit/array_reg_reg_0_63_3_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    array_reg_reg_0_63_3_5
       (.ADDRA(r_ptr_reg_reg),
        .ADDRB(r_ptr_reg_reg),
        .ADDRC(r_ptr_reg_reg),
        .ADDRD({\w_ptr_reg_reg_n_0_[5] ,\w_ptr_reg_reg_n_0_[4] ,\w_ptr_reg_reg_n_0_[3] ,\w_ptr_reg_reg_n_0_[2] ,\w_ptr_reg_reg_n_0_[1] ,\w_ptr_reg_reg_n_0_[0] }),
        .DIA(result_reg[3]),
        .DIB(result_reg[4]),
        .DIC(result_reg[5]),
        .DID(1'b0),
        .DOA(\result_reg_reg[6] [3]),
        .DOB(\result_reg_reg[6] [4]),
        .DOC(\result_reg_reg[6] [5]),
        .DOD(NLW_array_reg_reg_0_63_3_5_DOD_UNCONNECTED),
        .WCLK(clk_IBUF_BUFG),
        .WE(E));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "uart_unit/fifo_tx_unit/array_reg_reg_0_63_6_7" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "7" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    array_reg_reg_0_63_6_7
       (.ADDRA(r_ptr_reg_reg),
        .ADDRB(r_ptr_reg_reg),
        .ADDRC(r_ptr_reg_reg),
        .ADDRD({\w_ptr_reg_reg_n_0_[5] ,\w_ptr_reg_reg_n_0_[4] ,\w_ptr_reg_reg_n_0_[3] ,\w_ptr_reg_reg_n_0_[2] ,\w_ptr_reg_reg_n_0_[1] ,\w_ptr_reg_reg_n_0_[0] }),
        .DIA(result_reg[6]),
        .DIB(result_reg[7]),
        .DIC(1'b0),
        .DID(1'b0),
        .DOA(\result_reg_reg[6] [6]),
        .DOB(r_data),
        .DOC(NLW_array_reg_reg_0_63_6_7_DOC_UNCONNECTED),
        .DOD(NLW_array_reg_reg_0_63_6_7_DOD_UNCONNECTED),
        .WCLK(clk_IBUF_BUFG),
        .WE(E));
  LUT2 #(
    .INIT(4'h2)) 
    \b_reg[7]_i_2 
       (.I0(r_data),
        .I1(state_reg),
        .O(D));
  LUT5 #(
    .INIT(32'hFBBBF000)) 
    empty_reg_i_1__0
       (.I0(tx_full_OBUF),
        .I1(uart_wr),
        .I2(empty_reg_i_2__0_n_0),
        .I3(\r_ptr_reg_reg[0]_0 ),
        .I4(tx_empty),
        .O(empty_reg_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h0006090009000009)) 
    empty_reg_i_2__0
       (.I0(r_ptr_reg_reg[5]),
        .I1(\w_ptr_reg_reg_n_0_[5] ),
        .I2(empty_reg_i_3__0_n_0),
        .I3(\w_ptr_reg_reg_n_0_[4] ),
        .I4(empty_reg_i_4__0_n_0),
        .I5(r_ptr_reg_reg[4]),
        .O(empty_reg_i_2__0_n_0));
  LUT6 #(
    .INIT(64'hEBBBBBBBBEEEEEEE)) 
    empty_reg_i_3__0
       (.I0(empty_reg_i_5__0_n_0),
        .I1(r_ptr_reg_reg[3]),
        .I2(r_ptr_reg_reg[0]),
        .I3(r_ptr_reg_reg[1]),
        .I4(r_ptr_reg_reg[2]),
        .I5(\w_ptr_reg_reg_n_0_[3] ),
        .O(empty_reg_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    empty_reg_i_4__0
       (.I0(r_ptr_reg_reg[3]),
        .I1(r_ptr_reg_reg[0]),
        .I2(r_ptr_reg_reg[1]),
        .I3(r_ptr_reg_reg[2]),
        .O(empty_reg_i_4__0_n_0));
  LUT6 #(
    .INIT(64'hFFFF6FF6F96FFFFF)) 
    empty_reg_i_5__0
       (.I0(r_ptr_reg_reg[2]),
        .I1(\w_ptr_reg_reg_n_0_[2] ),
        .I2(\w_ptr_reg_reg_n_0_[1] ),
        .I3(r_ptr_reg_reg[1]),
        .I4(r_ptr_reg_reg[0]),
        .I5(\w_ptr_reg_reg_n_0_[0] ),
        .O(empty_reg_i_5__0_n_0));
  FDPE #(
    .INIT(1'b1)) 
    empty_reg_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(empty_reg_i_1__0_n_0),
        .PRE(AR),
        .Q(tx_empty));
  LUT5 #(
    .INIT(32'h33BB0388)) 
    full_reg_i_1
       (.I0(tx_empty),
        .I1(\r_ptr_reg_reg[0]_0 ),
        .I2(full_reg_i_2_n_0),
        .I3(uart_wr),
        .I4(tx_full_OBUF),
        .O(full_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFF9F6FFF6FFFFF6)) 
    full_reg_i_2
       (.I0(\w_ptr_reg_reg_n_0_[5] ),
        .I1(r_ptr_reg_reg[5]),
        .I2(full_reg_i_3_n_0),
        .I3(r_ptr_reg_reg[4]),
        .I4(full_reg_i_4_n_0),
        .I5(\w_ptr_reg_reg_n_0_[4] ),
        .O(full_reg_i_2_n_0));
  LUT6 #(
    .INIT(64'hEBBBBBBBBEEEEEEE)) 
    full_reg_i_3
       (.I0(full_reg_i_5_n_0),
        .I1(\w_ptr_reg_reg_n_0_[3] ),
        .I2(\w_ptr_reg_reg_n_0_[0] ),
        .I3(\w_ptr_reg_reg_n_0_[1] ),
        .I4(\w_ptr_reg_reg_n_0_[2] ),
        .I5(r_ptr_reg_reg[3]),
        .O(full_reg_i_3_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    full_reg_i_4
       (.I0(\w_ptr_reg_reg_n_0_[3] ),
        .I1(\w_ptr_reg_reg_n_0_[0] ),
        .I2(\w_ptr_reg_reg_n_0_[1] ),
        .I3(\w_ptr_reg_reg_n_0_[2] ),
        .O(full_reg_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFF6FF6F96FFFFF)) 
    full_reg_i_5
       (.I0(\w_ptr_reg_reg_n_0_[2] ),
        .I1(r_ptr_reg_reg[2]),
        .I2(r_ptr_reg_reg[1]),
        .I3(\w_ptr_reg_reg_n_0_[1] ),
        .I4(\w_ptr_reg_reg_n_0_[0] ),
        .I5(r_ptr_reg_reg[0]),
        .O(full_reg_i_5_n_0));
  FDCE #(
    .INIT(1'b0)) 
    full_reg_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(full_reg_i_1_n_0),
        .Q(tx_full_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \r_ptr_reg[0]_i_2__0 
       (.I0(r_ptr_reg_reg[0]),
        .O(r_ptr_reg0[0]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_ptr_reg[1]_i_1__0 
       (.I0(r_ptr_reg_reg[0]),
        .I1(r_ptr_reg_reg[1]),
        .O(r_ptr_reg0[1]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \r_ptr_reg[2]_i_1__0 
       (.I0(r_ptr_reg_reg[2]),
        .I1(r_ptr_reg_reg[1]),
        .I2(r_ptr_reg_reg[0]),
        .O(r_ptr_reg0[2]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \r_ptr_reg[3]_i_1__0 
       (.I0(r_ptr_reg_reg[3]),
        .I1(r_ptr_reg_reg[0]),
        .I2(r_ptr_reg_reg[1]),
        .I3(r_ptr_reg_reg[2]),
        .O(r_ptr_reg0[3]));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \r_ptr_reg[4]_i_1__0 
       (.I0(r_ptr_reg_reg[4]),
        .I1(r_ptr_reg_reg[2]),
        .I2(r_ptr_reg_reg[1]),
        .I3(r_ptr_reg_reg[0]),
        .I4(r_ptr_reg_reg[3]),
        .O(r_ptr_reg0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \r_ptr_reg[5]_i_1__0 
       (.I0(r_ptr_reg_reg[4]),
        .I1(r_ptr_reg_reg[2]),
        .I2(r_ptr_reg_reg[1]),
        .I3(r_ptr_reg_reg[0]),
        .I4(r_ptr_reg_reg[3]),
        .I5(r_ptr_reg_reg[5]),
        .O(r_ptr_reg0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \r_ptr_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_ptr_reg_reg[0]_0 ),
        .CLR(AR),
        .D(r_ptr_reg0[0]),
        .Q(r_ptr_reg_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \r_ptr_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_ptr_reg_reg[0]_0 ),
        .CLR(AR),
        .D(r_ptr_reg0[1]),
        .Q(r_ptr_reg_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \r_ptr_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_ptr_reg_reg[0]_0 ),
        .CLR(AR),
        .D(r_ptr_reg0[2]),
        .Q(r_ptr_reg_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \r_ptr_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_ptr_reg_reg[0]_0 ),
        .CLR(AR),
        .D(r_ptr_reg0[3]),
        .Q(r_ptr_reg_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \r_ptr_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_ptr_reg_reg[0]_0 ),
        .CLR(AR),
        .D(r_ptr_reg0[4]),
        .Q(r_ptr_reg_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \r_ptr_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\r_ptr_reg_reg[0]_0 ),
        .CLR(AR),
        .D(r_ptr_reg0[5]),
        .Q(r_ptr_reg_reg[5]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \w_ptr_reg[0]_i_1 
       (.I0(\w_ptr_reg_reg_n_0_[0] ),
        .O(\w_ptr_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \w_ptr_reg[1]_i_1 
       (.I0(\w_ptr_reg_reg_n_0_[0] ),
        .I1(\w_ptr_reg_reg_n_0_[1] ),
        .O(\w_ptr_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \w_ptr_reg[2]_i_1 
       (.I0(\w_ptr_reg_reg_n_0_[2] ),
        .I1(\w_ptr_reg_reg_n_0_[1] ),
        .I2(\w_ptr_reg_reg_n_0_[0] ),
        .O(\w_ptr_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \w_ptr_reg[3]_i_1 
       (.I0(\w_ptr_reg_reg_n_0_[3] ),
        .I1(\w_ptr_reg_reg_n_0_[0] ),
        .I2(\w_ptr_reg_reg_n_0_[1] ),
        .I3(\w_ptr_reg_reg_n_0_[2] ),
        .O(\w_ptr_reg[3]_i_1_n_0 ));
  (* \PinAttr:I0:HOLD_DETOUR  = "193" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \w_ptr_reg[4]_i_1 
       (.I0(\w_ptr_reg_reg_n_0_[4] ),
        .I1(\w_ptr_reg_reg_n_0_[2] ),
        .I2(\w_ptr_reg_reg_n_0_[1] ),
        .I3(\w_ptr_reg_reg_n_0_[0] ),
        .I4(\w_ptr_reg_reg_n_0_[3] ),
        .O(\w_ptr_reg[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \w_ptr_reg[5]_i_1 
       (.I0(\w_ptr_reg_reg_n_0_[5] ),
        .I1(\w_ptr_reg_reg_n_0_[3] ),
        .I2(\w_ptr_reg_reg_n_0_[0] ),
        .I3(\w_ptr_reg_reg_n_0_[1] ),
        .I4(\w_ptr_reg_reg_n_0_[2] ),
        .I5(\w_ptr_reg_reg_n_0_[4] ),
        .O(\w_ptr_reg[5]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \w_ptr_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\w_ptr_reg[0]_i_1_n_0 ),
        .Q(\w_ptr_reg_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \w_ptr_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\w_ptr_reg[1]_i_1_n_0 ),
        .Q(\w_ptr_reg_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \w_ptr_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\w_ptr_reg[2]_i_1_n_0 ),
        .Q(\w_ptr_reg_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \w_ptr_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\w_ptr_reg[3]_i_1_n_0 ),
        .Q(\w_ptr_reg_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \w_ptr_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\w_ptr_reg[4]_i_1_n_0 ),
        .Q(\w_ptr_reg_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \w_ptr_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\w_ptr_reg[5]_i_1_n_0 ),
        .Q(\w_ptr_reg_reg_n_0_[5] ));
endmodule

module intf_uart_alu
   (uart_wr,
    uart_rd,
    uart_rd_reg_reg_0,
    E,
    S,
    Q,
    \data_a_reg_reg[6]_0 ,
    \data_b_reg_reg[7]_0 ,
    \result_reg_reg[7]_0 ,
    clk_IBUF_BUFG,
    AR,
    rx_empty_OBUF,
    tx_full_OBUF,
    D,
    data0);
  output uart_wr;
  output uart_rd;
  output uart_rd_reg_reg_0;
  output [0:0]E;
  output [3:0]S;
  output [0:0]Q;
  output [6:0]\data_a_reg_reg[6]_0 ;
  output [3:0]\data_b_reg_reg[7]_0 ;
  output [7:0]\result_reg_reg[7]_0 ;
  input clk_IBUF_BUFG;
  input [0:0]AR;
  input rx_empty_OBUF;
  input tx_full_OBUF;
  input [7:0]D;
  input [7:0]data0;

  wire [0:0]AR;
  wire [7:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state_reg[0]_i_1_n_0 ;
  wire \FSM_onehot_state_reg[2]_i_1_n_0 ;
  wire \FSM_onehot_state_reg[3]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_reg_n_0_[3] ;
  wire [0:0]Q;
  wire [3:0]\^S ;
  wire [7:7]alu_data_a;
  wire [7:0]alu_data_b;
  wire [7:0]alu_result;
  wire [7:0]\alu_unit/result ;
  wire clk_IBUF_BUFG;
  wire [7:0]data0;
  wire data_a_next;
  wire [6:0]\data_a_reg_reg[6]_0 ;
  wire data_b_next;
  wire [3:0]\data_b_reg_reg[7]_0 ;
  wire \op_code_reg_reg_n_0_[0] ;
  wire \op_code_reg_reg_n_0_[2] ;
  wire \op_code_reg_reg_n_0_[3] ;
  wire \op_code_reg_reg_n_0_[4] ;
  wire \op_code_reg_reg_n_0_[5] ;
  wire \result_reg[0]_i_3_n_0 ;
  wire \result_reg[0]_i_4_n_0 ;
  wire \result_reg[0]_i_5_n_0 ;
  wire \result_reg[0]_i_6_n_0 ;
  wire \result_reg[1]_i_3_n_0 ;
  wire \result_reg[1]_i_4_n_0 ;
  wire \result_reg[1]_i_5_n_0 ;
  wire \result_reg[2]_i_3_n_0 ;
  wire \result_reg[2]_i_4_n_0 ;
  wire \result_reg[2]_i_5_n_0 ;
  wire \result_reg[3]_i_3_n_0 ;
  wire \result_reg[3]_i_4_n_0 ;
  wire \result_reg[3]_i_5_n_0 ;
  wire \result_reg[4]_i_3_n_0 ;
  wire \result_reg[4]_i_4_n_0 ;
  wire \result_reg[4]_i_5_n_0 ;
  wire \result_reg[5]_i_3_n_0 ;
  wire \result_reg[5]_i_4_n_0 ;
  wire \result_reg[5]_i_5_n_0 ;
  wire \result_reg[6]_i_3_n_0 ;
  wire \result_reg[6]_i_4_n_0 ;
  wire \result_reg[6]_i_5_n_0 ;
  wire \result_reg[6]_i_6_n_0 ;
  wire \result_reg[6]_i_7_n_0 ;
  wire \result_reg[7]_i_3_n_0 ;
  wire \result_reg[7]_i_4_n_0 ;
  wire \result_reg[7]_i_5_n_0 ;
  wire \result_reg[7]_i_6_n_0 ;
  wire \result_reg[7]_i_7_n_0 ;
  wire \result_reg[7]_i_8_n_0 ;
  wire [7:0]\result_reg_reg[7]_0 ;
  wire rx_empty_OBUF;
  wire selector_next;
  wire [1:0]selector_reg;
  wire \selector_reg[0]_i_1_n_0 ;
  wire \selector_reg[1]_i_1_n_0 ;
  wire tx_full_OBUF;
  wire uart_rd;
  wire uart_rd_next;
  wire uart_rd_reg_reg_0;
  wire uart_wr;
  wire uart_wr_next;

  assign S[3:1] = \^S [3:1];
  assign S[0] = alu_data_b[0];
  LUT4 #(
    .INIT(16'hFBAA)) 
    \FSM_onehot_state_reg[0]_i_1 
       (.I0(\FSM_onehot_state_reg_reg_n_0_[3] ),
        .I1(selector_reg[1]),
        .I2(selector_reg[0]),
        .I3(selector_next),
        .O(\FSM_onehot_state_reg[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \FSM_onehot_state_reg[2]_i_1 
       (.I0(selector_next),
        .I1(selector_reg[0]),
        .I2(selector_reg[1]),
        .O(\FSM_onehot_state_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFF4FFFFFFF4)) 
    \FSM_onehot_state_reg[3]_i_1 
       (.I0(tx_full_OBUF),
        .I1(\FSM_onehot_state_reg_reg_n_0_[2] ),
        .I2(selector_next),
        .I3(\FSM_onehot_state_reg_reg_n_0_[3] ),
        .I4(\FSM_onehot_state_reg_reg_n_0_[0] ),
        .I5(rx_empty_OBUF),
        .O(\FSM_onehot_state_reg[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:1000,iSTATE1:0001,iSTATE2:0100" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state_reg[3]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg[0]_i_1_n_0 ),
        .PRE(AR),
        .Q(\FSM_onehot_state_reg_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:1000,iSTATE1:0001,iSTATE2:0100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state_reg[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\FSM_onehot_state_reg_reg_n_0_[0] ),
        .Q(selector_next));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:1000,iSTATE1:0001,iSTATE2:0100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state_reg[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\FSM_onehot_state_reg[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:1000,iSTATE1:0001,iSTATE2:0100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state_reg[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\FSM_onehot_state_reg_reg_n_0_[2] ),
        .Q(\FSM_onehot_state_reg_reg_n_0_[3] ));
  LUT2 #(
    .INIT(4'h2)) 
    array_reg_reg_0_63_0_2_i_1
       (.I0(uart_wr),
        .I1(tx_full_OBUF),
        .O(E));
  LUT3 #(
    .INIT(8'h04)) 
    \data_a_reg[7]_i_1 
       (.I0(selector_reg[0]),
        .I1(selector_next),
        .I2(selector_reg[1]),
        .O(data_a_next));
  FDCE #(
    .INIT(1'b0)) 
    \data_a_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(data_a_next),
        .CLR(AR),
        .D(D[0]),
        .Q(\data_a_reg_reg[6]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_a_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(data_a_next),
        .CLR(AR),
        .D(D[1]),
        .Q(\data_a_reg_reg[6]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_a_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(data_a_next),
        .CLR(AR),
        .D(D[2]),
        .Q(\data_a_reg_reg[6]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_a_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(data_a_next),
        .CLR(AR),
        .D(D[3]),
        .Q(\data_a_reg_reg[6]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \data_a_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(data_a_next),
        .CLR(AR),
        .D(D[4]),
        .Q(\data_a_reg_reg[6]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \data_a_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(data_a_next),
        .CLR(AR),
        .D(D[5]),
        .Q(\data_a_reg_reg[6]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \data_a_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(data_a_next),
        .CLR(AR),
        .D(D[6]),
        .Q(\data_a_reg_reg[6]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \data_a_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(data_a_next),
        .CLR(AR),
        .D(D[7]),
        .Q(alu_data_a));
  LUT3 #(
    .INIT(8'h08)) 
    \data_b_reg[7]_i_1 
       (.I0(selector_reg[0]),
        .I1(selector_next),
        .I2(selector_reg[1]),
        .O(data_b_next));
  FDCE #(
    .INIT(1'b0)) 
    \data_b_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(data_b_next),
        .CLR(AR),
        .D(D[0]),
        .Q(alu_data_b[0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_b_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(data_b_next),
        .CLR(AR),
        .D(D[1]),
        .Q(alu_data_b[1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_b_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(data_b_next),
        .CLR(AR),
        .D(D[2]),
        .Q(alu_data_b[2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_b_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(data_b_next),
        .CLR(AR),
        .D(D[3]),
        .Q(alu_data_b[3]));
  FDCE #(
    .INIT(1'b0)) 
    \data_b_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(data_b_next),
        .CLR(AR),
        .D(D[4]),
        .Q(alu_data_b[4]));
  FDCE #(
    .INIT(1'b0)) 
    \data_b_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(data_b_next),
        .CLR(AR),
        .D(D[5]),
        .Q(alu_data_b[5]));
  FDCE #(
    .INIT(1'b0)) 
    \data_b_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(data_b_next),
        .CLR(AR),
        .D(D[6]),
        .Q(alu_data_b[6]));
  FDCE #(
    .INIT(1'b0)) 
    \data_b_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(data_b_next),
        .CLR(AR),
        .D(D[7]),
        .Q(alu_data_b[7]));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__0_i_1
       (.I0(alu_data_b[7]),
        .I1(Q),
        .I2(alu_data_a),
        .O(\data_b_reg_reg[7]_0 [3]));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__0_i_2
       (.I0(alu_data_b[6]),
        .I1(Q),
        .I2(\data_a_reg_reg[6]_0 [6]),
        .O(\data_b_reg_reg[7]_0 [2]));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__0_i_3
       (.I0(alu_data_b[5]),
        .I1(Q),
        .I2(\data_a_reg_reg[6]_0 [5]),
        .O(\data_b_reg_reg[7]_0 [1]));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry__0_i_4
       (.I0(alu_data_b[4]),
        .I1(Q),
        .I2(\data_a_reg_reg[6]_0 [4]),
        .O(\data_b_reg_reg[7]_0 [0]));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry_i_1
       (.I0(alu_data_b[3]),
        .I1(Q),
        .I2(\data_a_reg_reg[6]_0 [3]),
        .O(\^S [3]));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry_i_2
       (.I0(alu_data_b[2]),
        .I1(Q),
        .I2(\data_a_reg_reg[6]_0 [2]),
        .O(\^S [2]));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry_i_3
       (.I0(alu_data_b[1]),
        .I1(Q),
        .I2(\data_a_reg_reg[6]_0 [1]),
        .O(\^S [1]));
  FDCE #(
    .INIT(1'b0)) 
    \op_code_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state_reg[2]_i_1_n_0 ),
        .CLR(AR),
        .D(D[0]),
        .Q(\op_code_reg_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \op_code_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state_reg[2]_i_1_n_0 ),
        .CLR(AR),
        .D(D[1]),
        .Q(Q));
  FDCE #(
    .INIT(1'b0)) 
    \op_code_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state_reg[2]_i_1_n_0 ),
        .CLR(AR),
        .D(D[2]),
        .Q(\op_code_reg_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \op_code_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state_reg[2]_i_1_n_0 ),
        .CLR(AR),
        .D(D[3]),
        .Q(\op_code_reg_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \op_code_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state_reg[2]_i_1_n_0 ),
        .CLR(AR),
        .D(D[4]),
        .Q(\op_code_reg_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \op_code_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state_reg[2]_i_1_n_0 ),
        .CLR(AR),
        .D(D[5]),
        .Q(\op_code_reg_reg_n_0_[5] ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_ptr_reg[0]_i_1 
       (.I0(uart_rd),
        .I1(rx_empty_OBUF),
        .O(uart_rd_reg_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[0]_i_1 
       (.I0(\alu_unit/result [0]),
        .I1(\result_reg[7]_i_3_n_0 ),
        .O(alu_result[0]));
  LUT6 #(
    .INIT(64'h0303AAAAFF00AAAA)) 
    \result_reg[0]_i_2 
       (.I0(\result_reg[0]_i_3_n_0 ),
        .I1(alu_data_b[0]),
        .I2(\data_a_reg_reg[6]_0 [0]),
        .I3(\result_reg[0]_i_4_n_0 ),
        .I4(\result_reg[7]_i_6_n_0 ),
        .I5(\result_reg[7]_i_7_n_0 ),
        .O(\alu_unit/result [0]));
  LUT6 #(
    .INIT(64'hC0AAAAAAFCC0AAAA)) 
    \result_reg[0]_i_3 
       (.I0(data0[0]),
        .I1(\data_a_reg_reg[6]_0 [0]),
        .I2(alu_data_b[0]),
        .I3(\op_code_reg_reg_n_0_[0] ),
        .I4(\op_code_reg_reg_n_0_[2] ),
        .I5(Q),
        .O(\result_reg[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA088A088A0FFFF88)) 
    \result_reg[0]_i_4 
       (.I0(\result_reg[0]_i_5_n_0 ),
        .I1(\result_reg[0]_i_6_n_0 ),
        .I2(\result_reg[1]_i_5_n_0 ),
        .I3(alu_data_b[0]),
        .I4(\data_a_reg_reg[6]_0 [0]),
        .I5(\result_reg[6]_i_5_n_0 ),
        .O(\result_reg[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \result_reg[0]_i_5 
       (.I0(\result_reg[6]_i_5_n_0 ),
        .I1(alu_data_b[6]),
        .I2(alu_data_b[7]),
        .I3(alu_data_b[5]),
        .I4(alu_data_b[4]),
        .I5(alu_data_b[3]),
        .O(\result_reg[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \result_reg[0]_i_6 
       (.I0(\data_a_reg_reg[6]_0 [0]),
        .I1(\data_a_reg_reg[6]_0 [4]),
        .I2(alu_data_b[1]),
        .I3(\data_a_reg_reg[6]_0 [6]),
        .I4(alu_data_b[2]),
        .I5(\data_a_reg_reg[6]_0 [2]),
        .O(\result_reg[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[1]_i_1 
       (.I0(\alu_unit/result [1]),
        .I1(\result_reg[7]_i_3_n_0 ),
        .O(alu_result[1]));
  LUT6 #(
    .INIT(64'hEEEEEFFEAAAAAAAA)) 
    \result_reg[1]_i_2 
       (.I0(\result_reg[1]_i_3_n_0 ),
        .I1(\result_reg[1]_i_4_n_0 ),
        .I2(\data_a_reg_reg[6]_0 [1]),
        .I3(alu_data_b[1]),
        .I4(\result_reg[6]_i_5_n_0 ),
        .I5(\result_reg[6]_i_6_n_0 ),
        .O(\alu_unit/result [1]));
  LUT6 #(
    .INIT(64'h555A4444500A4444)) 
    \result_reg[1]_i_3 
       (.I0(\result_reg[7]_i_6_n_0 ),
        .I1(data0[1]),
        .I2(\data_a_reg_reg[6]_0 [1]),
        .I3(alu_data_b[1]),
        .I4(\result_reg[7]_i_7_n_0 ),
        .I5(\result_reg[6]_i_5_n_0 ),
        .O(\result_reg[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \result_reg[1]_i_4 
       (.I0(\result_reg[2]_i_5_n_0 ),
        .I1(\result_reg[6]_i_7_n_0 ),
        .I2(\result_reg[1]_i_5_n_0 ),
        .I3(\result_reg[7]_i_8_n_0 ),
        .O(\result_reg[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \result_reg[1]_i_5 
       (.I0(\data_a_reg_reg[6]_0 [1]),
        .I1(\data_a_reg_reg[6]_0 [5]),
        .I2(alu_data_b[1]),
        .I3(alu_data_a),
        .I4(alu_data_b[2]),
        .I5(\data_a_reg_reg[6]_0 [3]),
        .O(\result_reg[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[2]_i_1 
       (.I0(\alu_unit/result [2]),
        .I1(\result_reg[7]_i_3_n_0 ),
        .O(alu_result[2]));
  LUT6 #(
    .INIT(64'hEEEEEFFEAAAAAAAA)) 
    \result_reg[2]_i_2 
       (.I0(\result_reg[2]_i_3_n_0 ),
        .I1(\result_reg[2]_i_4_n_0 ),
        .I2(\data_a_reg_reg[6]_0 [2]),
        .I3(alu_data_b[2]),
        .I4(\result_reg[6]_i_5_n_0 ),
        .I5(\result_reg[6]_i_6_n_0 ),
        .O(\alu_unit/result [2]));
  LUT6 #(
    .INIT(64'h555A4444500A4444)) 
    \result_reg[2]_i_3 
       (.I0(\result_reg[7]_i_6_n_0 ),
        .I1(data0[2]),
        .I2(\data_a_reg_reg[6]_0 [2]),
        .I3(alu_data_b[2]),
        .I4(\result_reg[7]_i_7_n_0 ),
        .I5(\result_reg[6]_i_5_n_0 ),
        .O(\result_reg[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \result_reg[2]_i_4 
       (.I0(\result_reg[3]_i_5_n_0 ),
        .I1(\result_reg[6]_i_7_n_0 ),
        .I2(\result_reg[2]_i_5_n_0 ),
        .I3(\result_reg[7]_i_8_n_0 ),
        .O(\result_reg[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \result_reg[2]_i_5 
       (.I0(\data_a_reg_reg[6]_0 [4]),
        .I1(alu_data_b[1]),
        .I2(\data_a_reg_reg[6]_0 [6]),
        .I3(alu_data_b[2]),
        .I4(\data_a_reg_reg[6]_0 [2]),
        .O(\result_reg[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[3]_i_1 
       (.I0(\alu_unit/result [3]),
        .I1(\result_reg[7]_i_3_n_0 ),
        .O(alu_result[3]));
  LUT6 #(
    .INIT(64'hEEEEEFFEAAAAAAAA)) 
    \result_reg[3]_i_2 
       (.I0(\result_reg[3]_i_3_n_0 ),
        .I1(\result_reg[3]_i_4_n_0 ),
        .I2(\data_a_reg_reg[6]_0 [3]),
        .I3(alu_data_b[3]),
        .I4(\result_reg[6]_i_5_n_0 ),
        .I5(\result_reg[6]_i_6_n_0 ),
        .O(\alu_unit/result [3]));
  LUT6 #(
    .INIT(64'h555A4444500A4444)) 
    \result_reg[3]_i_3 
       (.I0(\result_reg[7]_i_6_n_0 ),
        .I1(data0[3]),
        .I2(\data_a_reg_reg[6]_0 [3]),
        .I3(alu_data_b[3]),
        .I4(\result_reg[7]_i_7_n_0 ),
        .I5(\result_reg[6]_i_5_n_0 ),
        .O(\result_reg[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \result_reg[3]_i_4 
       (.I0(\result_reg[4]_i_5_n_0 ),
        .I1(\result_reg[6]_i_7_n_0 ),
        .I2(\result_reg[3]_i_5_n_0 ),
        .I3(\result_reg[7]_i_8_n_0 ),
        .O(\result_reg[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \result_reg[3]_i_5 
       (.I0(\data_a_reg_reg[6]_0 [5]),
        .I1(alu_data_b[1]),
        .I2(alu_data_a),
        .I3(alu_data_b[2]),
        .I4(\data_a_reg_reg[6]_0 [3]),
        .O(\result_reg[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[4]_i_1 
       (.I0(\alu_unit/result [4]),
        .I1(\result_reg[7]_i_3_n_0 ),
        .O(alu_result[4]));
  LUT6 #(
    .INIT(64'hEEEEEFFEAAAAAAAA)) 
    \result_reg[4]_i_2 
       (.I0(\result_reg[4]_i_3_n_0 ),
        .I1(\result_reg[4]_i_4_n_0 ),
        .I2(\data_a_reg_reg[6]_0 [4]),
        .I3(alu_data_b[4]),
        .I4(\result_reg[6]_i_5_n_0 ),
        .I5(\result_reg[6]_i_6_n_0 ),
        .O(\alu_unit/result [4]));
  LUT6 #(
    .INIT(64'h555A4444500A4444)) 
    \result_reg[4]_i_3 
       (.I0(\result_reg[7]_i_6_n_0 ),
        .I1(data0[4]),
        .I2(\data_a_reg_reg[6]_0 [4]),
        .I3(alu_data_b[4]),
        .I4(\result_reg[7]_i_7_n_0 ),
        .I5(\result_reg[6]_i_5_n_0 ),
        .O(\result_reg[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \result_reg[4]_i_4 
       (.I0(\result_reg[5]_i_5_n_0 ),
        .I1(\result_reg[6]_i_7_n_0 ),
        .I2(\result_reg[4]_i_5_n_0 ),
        .I3(\result_reg[7]_i_8_n_0 ),
        .O(\result_reg[4]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h00AC)) 
    \result_reg[4]_i_5 
       (.I0(\data_a_reg_reg[6]_0 [6]),
        .I1(\data_a_reg_reg[6]_0 [4]),
        .I2(alu_data_b[1]),
        .I3(alu_data_b[2]),
        .O(\result_reg[4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[5]_i_1 
       (.I0(\alu_unit/result [5]),
        .I1(\result_reg[7]_i_3_n_0 ),
        .O(alu_result[5]));
  LUT6 #(
    .INIT(64'hEEEEEFFEAAAAAAAA)) 
    \result_reg[5]_i_2 
       (.I0(\result_reg[5]_i_3_n_0 ),
        .I1(\result_reg[5]_i_4_n_0 ),
        .I2(\data_a_reg_reg[6]_0 [5]),
        .I3(alu_data_b[5]),
        .I4(\result_reg[6]_i_5_n_0 ),
        .I5(\result_reg[6]_i_6_n_0 ),
        .O(\alu_unit/result [5]));
  LUT6 #(
    .INIT(64'h555A4444500A4444)) 
    \result_reg[5]_i_3 
       (.I0(\result_reg[7]_i_6_n_0 ),
        .I1(data0[5]),
        .I2(\data_a_reg_reg[6]_0 [5]),
        .I3(alu_data_b[5]),
        .I4(\result_reg[7]_i_7_n_0 ),
        .I5(\result_reg[6]_i_5_n_0 ),
        .O(\result_reg[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF100010001000)) 
    \result_reg[5]_i_4 
       (.I0(alu_data_b[2]),
        .I1(alu_data_b[1]),
        .I2(\data_a_reg_reg[6]_0 [6]),
        .I3(\result_reg[6]_i_7_n_0 ),
        .I4(\result_reg[5]_i_5_n_0 ),
        .I5(\result_reg[7]_i_8_n_0 ),
        .O(\result_reg[5]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h00AC)) 
    \result_reg[5]_i_5 
       (.I0(alu_data_a),
        .I1(\data_a_reg_reg[6]_0 [5]),
        .I2(alu_data_b[1]),
        .I3(alu_data_b[2]),
        .O(\result_reg[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[6]_i_1 
       (.I0(\alu_unit/result [6]),
        .I1(\result_reg[7]_i_3_n_0 ),
        .O(alu_result[6]));
  LUT6 #(
    .INIT(64'hEEEEEFFEAAAAAAAA)) 
    \result_reg[6]_i_2 
       (.I0(\result_reg[6]_i_3_n_0 ),
        .I1(\result_reg[6]_i_4_n_0 ),
        .I2(\data_a_reg_reg[6]_0 [6]),
        .I3(alu_data_b[6]),
        .I4(\result_reg[6]_i_5_n_0 ),
        .I5(\result_reg[6]_i_6_n_0 ),
        .O(\alu_unit/result [6]));
  LUT6 #(
    .INIT(64'h555A4444500A4444)) 
    \result_reg[6]_i_3 
       (.I0(\result_reg[7]_i_6_n_0 ),
        .I1(data0[6]),
        .I2(\data_a_reg_reg[6]_0 [6]),
        .I3(alu_data_b[6]),
        .I4(\result_reg[7]_i_7_n_0 ),
        .I5(\result_reg[6]_i_5_n_0 ),
        .O(\result_reg[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000F000800080008)) 
    \result_reg[6]_i_4 
       (.I0(alu_data_a),
        .I1(\result_reg[6]_i_7_n_0 ),
        .I2(alu_data_b[2]),
        .I3(alu_data_b[1]),
        .I4(\data_a_reg_reg[6]_0 [6]),
        .I5(\result_reg[7]_i_8_n_0 ),
        .O(\result_reg[6]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h73)) 
    \result_reg[6]_i_5 
       (.I0(Q),
        .I1(\op_code_reg_reg_n_0_[2] ),
        .I2(\op_code_reg_reg_n_0_[0] ),
        .O(\result_reg[6]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h10D0)) 
    \result_reg[6]_i_6 
       (.I0(\op_code_reg_reg_n_0_[5] ),
        .I1(\op_code_reg_reg_n_0_[2] ),
        .I2(Q),
        .I3(\op_code_reg_reg_n_0_[0] ),
        .O(\result_reg[6]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[6]_i_7 
       (.I0(\result_reg[0]_i_5_n_0 ),
        .I1(alu_data_b[0]),
        .O(\result_reg[6]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[7]_i_1 
       (.I0(\alu_unit/result [7]),
        .I1(\result_reg[7]_i_3_n_0 ),
        .O(alu_result[7]));
  LUT6 #(
    .INIT(64'h000FAAAACCCCAAAA)) 
    \result_reg[7]_i_2 
       (.I0(\result_reg[7]_i_4_n_0 ),
        .I1(\result_reg[7]_i_5_n_0 ),
        .I2(alu_data_a),
        .I3(alu_data_b[7]),
        .I4(\result_reg[7]_i_6_n_0 ),
        .I5(\result_reg[7]_i_7_n_0 ),
        .O(\alu_unit/result [7]));
  LUT6 #(
    .INIT(64'h1100011111000100)) 
    \result_reg[7]_i_3 
       (.I0(\op_code_reg_reg_n_0_[4] ),
        .I1(\op_code_reg_reg_n_0_[3] ),
        .I2(\op_code_reg_reg_n_0_[0] ),
        .I3(\op_code_reg_reg_n_0_[5] ),
        .I4(\op_code_reg_reg_n_0_[2] ),
        .I5(Q),
        .O(\result_reg[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hC0AAAAAAFCC0AAAA)) 
    \result_reg[7]_i_4 
       (.I0(data0[7]),
        .I1(alu_data_a),
        .I2(alu_data_b[7]),
        .I3(\op_code_reg_reg_n_0_[0] ),
        .I4(\op_code_reg_reg_n_0_[2] ),
        .I5(Q),
        .O(\result_reg[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h111F222211112222)) 
    \result_reg[7]_i_5 
       (.I0(alu_data_b[7]),
        .I1(\result_reg[6]_i_5_n_0 ),
        .I2(alu_data_b[2]),
        .I3(alu_data_b[1]),
        .I4(alu_data_a),
        .I5(\result_reg[7]_i_8_n_0 ),
        .O(\result_reg[7]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hC4)) 
    \result_reg[7]_i_6 
       (.I0(\op_code_reg_reg_n_0_[5] ),
        .I1(Q),
        .I2(\op_code_reg_reg_n_0_[2] ),
        .O(\result_reg[7]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB0)) 
    \result_reg[7]_i_7 
       (.I0(\op_code_reg_reg_n_0_[0] ),
        .I1(Q),
        .I2(\op_code_reg_reg_n_0_[2] ),
        .O(\result_reg[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[7]_i_8 
       (.I0(\result_reg[0]_i_5_n_0 ),
        .I1(alu_data_b[0]),
        .O(\result_reg[7]_i_8_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(uart_wr_next),
        .CLR(AR),
        .D(alu_result[0]),
        .Q(\result_reg_reg[7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(uart_wr_next),
        .CLR(AR),
        .D(alu_result[1]),
        .Q(\result_reg_reg[7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(uart_wr_next),
        .CLR(AR),
        .D(alu_result[2]),
        .Q(\result_reg_reg[7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(uart_wr_next),
        .CLR(AR),
        .D(alu_result[3]),
        .Q(\result_reg_reg[7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(uart_wr_next),
        .CLR(AR),
        .D(alu_result[4]),
        .Q(\result_reg_reg[7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(uart_wr_next),
        .CLR(AR),
        .D(alu_result[5]),
        .Q(\result_reg_reg[7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(uart_wr_next),
        .CLR(AR),
        .D(alu_result[6]),
        .Q(\result_reg_reg[7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \result_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(uart_wr_next),
        .CLR(AR),
        .D(alu_result[7]),
        .Q(\result_reg_reg[7]_0 [7]));
  (* \PinAttr:I2:HOLD_DETOUR  = "190" *) 
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h34)) 
    \selector_reg[0]_i_1 
       (.I0(selector_reg[1]),
        .I1(selector_next),
        .I2(selector_reg[0]),
        .O(\selector_reg[0]_i_1_n_0 ));
  (* \PinAttr:I0:HOLD_DETOUR  = "190" *) 
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h38)) 
    \selector_reg[1]_i_1 
       (.I0(selector_reg[0]),
        .I1(selector_next),
        .I2(selector_reg[1]),
        .O(\selector_reg[1]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \selector_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\selector_reg[0]_i_1_n_0 ),
        .Q(selector_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \selector_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\selector_reg[1]_i_1_n_0 ),
        .Q(selector_reg[1]));
  LUT2 #(
    .INIT(4'h2)) 
    uart_rd_reg_i_1
       (.I0(\FSM_onehot_state_reg_reg_n_0_[0] ),
        .I1(rx_empty_OBUF),
        .O(uart_rd_next));
  FDCE #(
    .INIT(1'b0)) 
    uart_rd_reg_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(uart_rd_next),
        .Q(uart_rd));
  LUT2 #(
    .INIT(4'h2)) 
    uart_wr_reg_i_1
       (.I0(\FSM_onehot_state_reg_reg_n_0_[2] ),
        .I1(tx_full_OBUF),
        .O(uart_wr_next));
  FDCE #(
    .INIT(1'b0)) 
    uart_wr_reg_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(uart_wr_next),
        .Q(uart_wr));
endmodule

(* DATA_BITS = "8" *) (* DVSR = "326" *) (* DVSR_BIT = "9" *) 
(* ECO_CHECKSUM = "30061538" *) (* FIFO_SIZE = "64" *) (* OP_CODE_BITS = "6" *) 
(* SB_TICKS = "16" *) 
(* NotValidForBitStream *)
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
module top_level
   (clk,
    reset,
    rx,
    rx_empty,
    tx_full,
    tx);
  input clk;
  input reset;
  input rx;
  output rx_empty;
  output tx_full;
  output tx;

  wire \0 ;
  wire [6:0]alu_data_a;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [7:0]data0;
  wire intf_uart_alu_unit_n_16;
  wire intf_uart_alu_unit_n_17;
  wire intf_uart_alu_unit_n_18;
  wire intf_uart_alu_unit_n_19;
  wire intf_uart_alu_unit_n_2;
  wire intf_uart_alu_unit_n_4;
  wire intf_uart_alu_unit_n_5;
  wire intf_uart_alu_unit_n_6;
  wire intf_uart_alu_unit_n_7;
  wire [7:0]r_data__0;
  wire reset;
  wire reset_IBUF;
  wire [7:0]result_reg;
  wire rx;
  wire rx_IBUF;
  wire rx_empty;
  wire rx_empty_OBUF;
  wire tx;
  wire tx_OBUF;
  wire tx_full;
  wire tx_full_OBUF;
  wire uart_rd;
  wire uart_wr;
  wire wr_en;

  alu alu_unit
       (.Q(alu_data_a),
        .S({intf_uart_alu_unit_n_4,intf_uart_alu_unit_n_5,intf_uart_alu_unit_n_6,intf_uart_alu_unit_n_7}),
        .data0(data0),
        .\result_reg[0]_i_3 (\0 ),
        .\result_reg[4]_i_3 ({intf_uart_alu_unit_n_16,intf_uart_alu_unit_n_17,intf_uart_alu_unit_n_18,intf_uart_alu_unit_n_19}));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  intf_uart_alu intf_uart_alu_unit
       (.AR(reset_IBUF),
        .D(r_data__0),
        .E(wr_en),
        .Q(\0 ),
        .S({intf_uart_alu_unit_n_4,intf_uart_alu_unit_n_5,intf_uart_alu_unit_n_6,intf_uart_alu_unit_n_7}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .data0(data0),
        .\data_a_reg_reg[6]_0 (alu_data_a),
        .\data_b_reg_reg[7]_0 ({intf_uart_alu_unit_n_16,intf_uart_alu_unit_n_17,intf_uart_alu_unit_n_18,intf_uart_alu_unit_n_19}),
        .\result_reg_reg[7]_0 (result_reg),
        .rx_empty_OBUF(rx_empty_OBUF),
        .tx_full_OBUF(tx_full_OBUF),
        .uart_rd(uart_rd),
        .uart_rd_reg_reg_0(intf_uart_alu_unit_n_2),
        .uart_wr(uart_wr));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  IBUF rx_IBUF_inst
       (.I(rx),
        .O(rx_IBUF));
  OBUF rx_empty_OBUF_inst
       (.I(rx_empty_OBUF),
        .O(rx_empty));
  OBUF tx_OBUF_inst
       (.I(tx_OBUF),
        .O(tx));
  OBUF tx_full_OBUF_inst
       (.I(tx_full_OBUF),
        .O(tx_full));
  uart uart_unit
       (.AR(reset_IBUF),
        .D(r_data__0),
        .E(wr_en),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\r_ptr_reg_reg[5] (intf_uart_alu_unit_n_2),
        .result_reg(result_reg),
        .rx_IBUF(rx_IBUF),
        .rx_empty_OBUF(rx_empty_OBUF),
        .tx_OBUF(tx_OBUF),
        .tx_full_OBUF(tx_full_OBUF),
        .uart_rd(uart_rd),
        .uart_wr(uart_wr));
endmodule

module uart
   (tx_OBUF,
    D,
    tx_full_OBUF,
    rx_empty_OBUF,
    clk_IBUF_BUFG,
    AR,
    \r_ptr_reg_reg[5] ,
    rx_IBUF,
    uart_wr,
    uart_rd,
    result_reg,
    E);
  output tx_OBUF;
  output [7:0]D;
  output tx_full_OBUF;
  output rx_empty_OBUF;
  input clk_IBUF_BUFG;
  input [0:0]AR;
  input \r_ptr_reg_reg[5] ;
  input rx_IBUF;
  input uart_wr;
  input uart_rd;
  input [7:0]result_reg;
  input [0:0]E;

  wire [0:0]AR;
  wire [7:0]D;
  wire [0:0]E;
  wire [7:7]b_next;
  wire baud_gen_unit_n_0;
  wire clk_IBUF_BUFG;
  wire fifo_rx_unit_n_9;
  wire [6:0]p_0_in;
  wire [6:0]r_data;
  wire \r_ptr_reg_reg[5] ;
  wire [7:0]result_reg;
  wire rx_IBUF;
  wire rx_empty_OBUF;
  wire [1:1]state_reg;
  wire tx_OBUF;
  wire tx_empty;
  wire tx_full_OBUF;
  wire uart_rd;
  wire uart_rx_unit_n_1;
  wire uart_rx_unit_n_9;
  wire uart_tx_unit_n_2;
  wire uart_wr;
  wire wr_en__0;

  uart_brg baud_gen_unit
       (.AR(AR),
        .baud_tick_carry__10_0(baud_gen_unit_n_0),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  fifo fifo_rx_unit
       (.AR(AR),
        .D(D),
        .E(wr_en__0),
        .Q({p_0_in,uart_rx_unit_n_9}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .empty_reg_reg_0(uart_rx_unit_n_1),
        .full_reg_reg_0(fifo_rx_unit_n_9),
        .\r_ptr_reg_reg[5]_0 (\r_ptr_reg_reg[5] ),
        .rx_empty_OBUF(rx_empty_OBUF),
        .uart_rd(uart_rd));
  fifo_0 fifo_tx_unit
       (.AR(AR),
        .D(b_next),
        .E(E),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\r_ptr_reg_reg[0]_0 (uart_tx_unit_n_2),
        .result_reg(result_reg),
        .\result_reg_reg[6] (r_data),
        .state_reg(state_reg),
        .tx_empty(tx_empty),
        .tx_full_OBUF(tx_full_OBUF),
        .uart_wr(uart_wr));
  uart_rx uart_rx_unit
       (.AR(AR),
        .E(wr_en__0),
        .\FSM_sequential_state_reg_reg[1]_0 (uart_rx_unit_n_1),
        .\FSM_sequential_state_reg_reg[1]_1 (baud_gen_unit_n_0),
        .Q({p_0_in,uart_rx_unit_n_9}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .rx_IBUF(rx_IBUF),
        .\w_ptr_reg_reg[0] (fifo_rx_unit_n_9));
  uart_tx uart_tx_unit
       (.AR(AR),
        .D(b_next),
        .\FSM_sequential_state_reg_reg[0]_0 (uart_tx_unit_n_2),
        .\FSM_sequential_state_reg_reg[0]_1 (baud_gen_unit_n_0),
        .\FSM_sequential_state_reg_reg[1]_0 (state_reg),
        .\b_reg_reg[6]_0 (r_data),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .tx_OBUF(tx_OBUF),
        .tx_empty(tx_empty));
endmodule

module uart_brg
   (baud_tick_carry__10_0,
    clk_IBUF_BUFG,
    AR);
  output baud_tick_carry__10_0;
  input clk_IBUF_BUFG;
  input [0:0]AR;

  wire [0:0]AR;
  wire baud_tick__47_carry__0_i_1_n_0;
  wire baud_tick__47_carry__0_i_2_n_0;
  wire baud_tick__47_carry__0_i_3_n_0;
  wire baud_tick__47_carry__0_i_4_n_0;
  wire baud_tick__47_carry__0_n_0;
  wire baud_tick__47_carry__10_i_1_n_0;
  wire baud_tick__47_carry__10_i_2_n_0;
  wire baud_tick__47_carry__10_i_3_n_0;
  wire baud_tick__47_carry__10_i_4_n_0;
  wire baud_tick__47_carry__10_n_0;
  wire baud_tick__47_carry__1_i_1_n_0;
  wire baud_tick__47_carry__1_i_2_n_0;
  wire baud_tick__47_carry__1_i_3_n_0;
  wire baud_tick__47_carry__1_i_4_n_0;
  wire baud_tick__47_carry__1_n_0;
  wire baud_tick__47_carry__2_i_1_n_0;
  wire baud_tick__47_carry__2_i_2_n_0;
  wire baud_tick__47_carry__2_i_3_n_0;
  wire baud_tick__47_carry__2_i_4_n_0;
  wire baud_tick__47_carry__2_n_0;
  wire baud_tick__47_carry__3_i_1_n_0;
  wire baud_tick__47_carry__3_i_2_n_0;
  wire baud_tick__47_carry__3_i_3_n_0;
  wire baud_tick__47_carry__3_i_4_n_0;
  wire baud_tick__47_carry__3_n_0;
  wire baud_tick__47_carry__4_i_1_n_0;
  wire baud_tick__47_carry__4_i_2_n_0;
  wire baud_tick__47_carry__4_i_3_n_0;
  wire baud_tick__47_carry__4_i_4_n_0;
  wire baud_tick__47_carry__4_n_0;
  wire baud_tick__47_carry__5_i_1_n_0;
  wire baud_tick__47_carry__5_i_2_n_0;
  wire baud_tick__47_carry__5_i_3_n_0;
  wire baud_tick__47_carry__5_i_4_n_0;
  wire baud_tick__47_carry__5_n_0;
  wire baud_tick__47_carry__6_i_1_n_0;
  wire baud_tick__47_carry__6_i_2_n_0;
  wire baud_tick__47_carry__6_i_3_n_0;
  wire baud_tick__47_carry__6_i_4_n_0;
  wire baud_tick__47_carry__6_n_0;
  wire baud_tick__47_carry__7_i_1_n_0;
  wire baud_tick__47_carry__7_i_2_n_0;
  wire baud_tick__47_carry__7_i_3_n_0;
  wire baud_tick__47_carry__7_i_4_n_0;
  wire baud_tick__47_carry__7_n_0;
  wire baud_tick__47_carry__8_i_1_n_0;
  wire baud_tick__47_carry__8_i_2_n_0;
  wire baud_tick__47_carry__8_i_3_n_0;
  wire baud_tick__47_carry__8_i_4_n_0;
  wire baud_tick__47_carry__8_n_0;
  wire baud_tick__47_carry__9_i_1_n_0;
  wire baud_tick__47_carry__9_i_2_n_0;
  wire baud_tick__47_carry__9_i_3_n_0;
  wire baud_tick__47_carry__9_i_4_n_0;
  wire baud_tick__47_carry__9_n_0;
  wire baud_tick__47_carry_i_1_n_0;
  wire baud_tick__47_carry_i_2_n_0;
  wire baud_tick__47_carry_i_3_n_0;
  wire baud_tick__47_carry_i_4_n_0;
  wire baud_tick__47_carry_n_0;
  wire baud_tick__95_carry__0_i_1_n_0;
  wire baud_tick__95_carry__0_i_2_n_0;
  wire baud_tick__95_carry__0_i_3_n_0;
  wire baud_tick__95_carry__0_i_4_n_0;
  wire baud_tick__95_carry__0_n_0;
  wire baud_tick__95_carry__1_i_1_n_0;
  wire baud_tick__95_carry__1_i_2_n_0;
  wire baud_tick__95_carry__1_i_3_n_0;
  wire baud_tick__95_carry__1_i_4_n_0;
  wire baud_tick__95_carry__1_n_0;
  wire baud_tick__95_carry__2_i_1_n_0;
  wire baud_tick__95_carry__2_n_3;
  wire baud_tick__95_carry_i_1_n_0;
  wire baud_tick__95_carry_i_2_n_0;
  wire baud_tick__95_carry_i_3_n_0;
  wire baud_tick__95_carry_i_4_n_0;
  wire baud_tick__95_carry_n_0;
  wire baud_tick_carry__0_i_1_n_0;
  wire baud_tick_carry__0_i_2_n_0;
  wire baud_tick_carry__0_i_3_n_0;
  wire baud_tick_carry__0_i_4_n_0;
  wire baud_tick_carry__0_n_0;
  wire baud_tick_carry__10_0;
  wire baud_tick_carry__10_i_1_n_0;
  wire baud_tick_carry__10_i_2_n_0;
  wire baud_tick_carry__10_i_3_n_0;
  wire baud_tick_carry__10_i_4_n_0;
  wire baud_tick_carry__10_n_0;
  wire baud_tick_carry__1_i_1_n_0;
  wire baud_tick_carry__1_i_2_n_0;
  wire baud_tick_carry__1_i_3_n_0;
  wire baud_tick_carry__1_i_4_n_0;
  wire baud_tick_carry__1_n_0;
  wire baud_tick_carry__2_i_1_n_0;
  wire baud_tick_carry__2_i_2_n_0;
  wire baud_tick_carry__2_i_3_n_0;
  wire baud_tick_carry__2_i_4_n_0;
  wire baud_tick_carry__2_n_0;
  wire baud_tick_carry__3_i_1_n_0;
  wire baud_tick_carry__3_i_2_n_0;
  wire baud_tick_carry__3_i_3_n_0;
  wire baud_tick_carry__3_i_4_n_0;
  wire baud_tick_carry__3_n_0;
  wire baud_tick_carry__4_i_1_n_0;
  wire baud_tick_carry__4_i_2_n_0;
  wire baud_tick_carry__4_i_3_n_0;
  wire baud_tick_carry__4_i_4_n_0;
  wire baud_tick_carry__4_n_0;
  wire baud_tick_carry__5_i_1_n_0;
  wire baud_tick_carry__5_i_2_n_0;
  wire baud_tick_carry__5_i_3_n_0;
  wire baud_tick_carry__5_i_4_n_0;
  wire baud_tick_carry__5_n_0;
  wire baud_tick_carry__6_i_1_n_0;
  wire baud_tick_carry__6_i_2_n_0;
  wire baud_tick_carry__6_i_3_n_0;
  wire baud_tick_carry__6_i_4_n_0;
  wire baud_tick_carry__6_n_0;
  wire baud_tick_carry__7_i_1_n_0;
  wire baud_tick_carry__7_i_2_n_0;
  wire baud_tick_carry__7_i_3_n_0;
  wire baud_tick_carry__7_i_4_n_0;
  wire baud_tick_carry__7_n_0;
  wire baud_tick_carry__8_i_1_n_0;
  wire baud_tick_carry__8_i_2_n_0;
  wire baud_tick_carry__8_i_3_n_0;
  wire baud_tick_carry__8_i_4_n_0;
  wire baud_tick_carry__8_n_0;
  wire baud_tick_carry__9_i_1_n_0;
  wire baud_tick_carry__9_i_2_n_0;
  wire baud_tick_carry__9_i_3_n_0;
  wire baud_tick_carry__9_i_4_n_0;
  wire baud_tick_carry__9_n_0;
  wire baud_tick_carry_i_1_n_0;
  wire baud_tick_carry_i_2_n_0;
  wire baud_tick_carry_i_3_n_0;
  wire baud_tick_carry_i_4_n_0;
  wire baud_tick_carry_n_0;
  wire clk_IBUF_BUFG;
  wire \counter_reg[0]_i_2_n_0 ;
  wire \counter_reg[0]_i_3_n_0 ;
  wire \counter_reg[0]_i_4_n_0 ;
  wire \counter_reg[0]_i_5_n_0 ;
  wire \counter_reg[0]_i_6_n_0 ;
  wire \counter_reg[100]_i_2_n_0 ;
  wire \counter_reg[100]_i_3_n_0 ;
  wire \counter_reg[100]_i_4_n_0 ;
  wire \counter_reg[100]_i_5_n_0 ;
  wire \counter_reg[104]_i_2_n_0 ;
  wire \counter_reg[104]_i_3_n_0 ;
  wire \counter_reg[104]_i_4_n_0 ;
  wire \counter_reg[104]_i_5_n_0 ;
  wire \counter_reg[108]_i_2_n_0 ;
  wire \counter_reg[108]_i_3_n_0 ;
  wire \counter_reg[108]_i_4_n_0 ;
  wire \counter_reg[108]_i_5_n_0 ;
  wire \counter_reg[112]_i_2_n_0 ;
  wire \counter_reg[112]_i_3_n_0 ;
  wire \counter_reg[112]_i_4_n_0 ;
  wire \counter_reg[112]_i_5_n_0 ;
  wire \counter_reg[116]_i_2_n_0 ;
  wire \counter_reg[116]_i_3_n_0 ;
  wire \counter_reg[116]_i_4_n_0 ;
  wire \counter_reg[116]_i_5_n_0 ;
  wire \counter_reg[120]_i_2_n_0 ;
  wire \counter_reg[120]_i_3_n_0 ;
  wire \counter_reg[120]_i_4_n_0 ;
  wire \counter_reg[120]_i_5_n_0 ;
  wire \counter_reg[124]_i_2_n_0 ;
  wire \counter_reg[124]_i_3_n_0 ;
  wire \counter_reg[124]_i_4_n_0 ;
  wire \counter_reg[124]_i_5_n_0 ;
  wire \counter_reg[128]_i_2_n_0 ;
  wire \counter_reg[128]_i_3_n_0 ;
  wire \counter_reg[128]_i_4_n_0 ;
  wire \counter_reg[128]_i_5_n_0 ;
  wire \counter_reg[12]_i_2_n_0 ;
  wire \counter_reg[12]_i_3_n_0 ;
  wire \counter_reg[12]_i_4_n_0 ;
  wire \counter_reg[12]_i_5_n_0 ;
  wire \counter_reg[132]_i_2_n_0 ;
  wire \counter_reg[132]_i_3_n_0 ;
  wire \counter_reg[132]_i_4_n_0 ;
  wire \counter_reg[132]_i_5_n_0 ;
  wire \counter_reg[136]_i_2_n_0 ;
  wire \counter_reg[136]_i_3_n_0 ;
  wire \counter_reg[136]_i_4_n_0 ;
  wire \counter_reg[136]_i_5_n_0 ;
  wire \counter_reg[140]_i_2_n_0 ;
  wire \counter_reg[140]_i_3_n_0 ;
  wire \counter_reg[140]_i_4_n_0 ;
  wire \counter_reg[140]_i_5_n_0 ;
  wire \counter_reg[140]_i_6_n_0 ;
  wire \counter_reg[144]_i_2_n_0 ;
  wire \counter_reg[144]_i_3_n_0 ;
  wire \counter_reg[144]_i_4_n_0 ;
  wire \counter_reg[144]_i_5_n_0 ;
  wire \counter_reg[148]_i_2_n_0 ;
  wire \counter_reg[148]_i_3_n_0 ;
  wire \counter_reg[148]_i_4_n_0 ;
  wire \counter_reg[148]_i_5_n_0 ;
  wire \counter_reg[152]_i_2_n_0 ;
  wire \counter_reg[152]_i_3_n_0 ;
  wire \counter_reg[152]_i_4_n_0 ;
  wire \counter_reg[152]_i_5_n_0 ;
  wire \counter_reg[156]_i_2_n_0 ;
  wire \counter_reg[156]_i_3_n_0 ;
  wire \counter_reg[156]_i_4_n_0 ;
  wire \counter_reg[156]_i_5_n_0 ;
  wire \counter_reg[160]_i_2_n_0 ;
  wire \counter_reg[160]_i_3_n_0 ;
  wire \counter_reg[160]_i_4_n_0 ;
  wire \counter_reg[160]_i_5_n_0 ;
  wire \counter_reg[164]_i_2_n_0 ;
  wire \counter_reg[164]_i_3_n_0 ;
  wire \counter_reg[164]_i_4_n_0 ;
  wire \counter_reg[164]_i_5_n_0 ;
  wire \counter_reg[168]_i_2_n_0 ;
  wire \counter_reg[168]_i_3_n_0 ;
  wire \counter_reg[168]_i_4_n_0 ;
  wire \counter_reg[168]_i_5_n_0 ;
  wire \counter_reg[16]_i_2_n_0 ;
  wire \counter_reg[16]_i_3_n_0 ;
  wire \counter_reg[16]_i_4_n_0 ;
  wire \counter_reg[16]_i_5_n_0 ;
  wire \counter_reg[172]_i_2_n_0 ;
  wire \counter_reg[172]_i_3_n_0 ;
  wire \counter_reg[172]_i_4_n_0 ;
  wire \counter_reg[172]_i_5_n_0 ;
  wire \counter_reg[176]_i_2_n_0 ;
  wire \counter_reg[176]_i_3_n_0 ;
  wire \counter_reg[176]_i_4_n_0 ;
  wire \counter_reg[176]_i_5_n_0 ;
  wire \counter_reg[180]_i_2_n_0 ;
  wire \counter_reg[180]_i_3_n_0 ;
  wire \counter_reg[180]_i_4_n_0 ;
  wire \counter_reg[180]_i_5_n_0 ;
  wire \counter_reg[184]_i_2_n_0 ;
  wire \counter_reg[184]_i_3_n_0 ;
  wire \counter_reg[184]_i_4_n_0 ;
  wire \counter_reg[184]_i_5_n_0 ;
  wire \counter_reg[188]_i_2_n_0 ;
  wire \counter_reg[188]_i_3_n_0 ;
  wire \counter_reg[188]_i_4_n_0 ;
  wire \counter_reg[188]_i_5_n_0 ;
  wire \counter_reg[192]_i_2_n_0 ;
  wire \counter_reg[192]_i_3_n_0 ;
  wire \counter_reg[192]_i_4_n_0 ;
  wire \counter_reg[192]_i_5_n_0 ;
  wire \counter_reg[196]_i_2_n_0 ;
  wire \counter_reg[196]_i_3_n_0 ;
  wire \counter_reg[196]_i_4_n_0 ;
  wire \counter_reg[196]_i_5_n_0 ;
  wire \counter_reg[200]_i_2_n_0 ;
  wire \counter_reg[200]_i_3_n_0 ;
  wire \counter_reg[200]_i_4_n_0 ;
  wire \counter_reg[200]_i_5_n_0 ;
  wire \counter_reg[204]_i_2_n_0 ;
  wire \counter_reg[204]_i_3_n_0 ;
  wire \counter_reg[204]_i_4_n_0 ;
  wire \counter_reg[204]_i_5_n_0 ;
  wire \counter_reg[208]_i_2_n_0 ;
  wire \counter_reg[208]_i_3_n_0 ;
  wire \counter_reg[208]_i_4_n_0 ;
  wire \counter_reg[208]_i_5_n_0 ;
  wire \counter_reg[20]_i_2_n_0 ;
  wire \counter_reg[20]_i_3_n_0 ;
  wire \counter_reg[20]_i_4_n_0 ;
  wire \counter_reg[20]_i_5_n_0 ;
  wire \counter_reg[212]_i_2_n_0 ;
  wire \counter_reg[212]_i_3_n_0 ;
  wire \counter_reg[212]_i_4_n_0 ;
  wire \counter_reg[212]_i_5_n_0 ;
  wire \counter_reg[216]_i_2_n_0 ;
  wire \counter_reg[216]_i_3_n_0 ;
  wire \counter_reg[216]_i_4_n_0 ;
  wire \counter_reg[216]_i_5_n_0 ;
  wire \counter_reg[220]_i_2_n_0 ;
  wire \counter_reg[220]_i_3_n_0 ;
  wire \counter_reg[220]_i_4_n_0 ;
  wire \counter_reg[220]_i_5_n_0 ;
  wire \counter_reg[224]_i_2_n_0 ;
  wire \counter_reg[224]_i_3_n_0 ;
  wire \counter_reg[224]_i_4_n_0 ;
  wire \counter_reg[224]_i_5_n_0 ;
  wire \counter_reg[228]_i_2_n_0 ;
  wire \counter_reg[228]_i_3_n_0 ;
  wire \counter_reg[228]_i_4_n_0 ;
  wire \counter_reg[228]_i_5_n_0 ;
  wire \counter_reg[232]_i_2_n_0 ;
  wire \counter_reg[232]_i_3_n_0 ;
  wire \counter_reg[232]_i_4_n_0 ;
  wire \counter_reg[232]_i_5_n_0 ;
  wire \counter_reg[232]_i_6_n_0 ;
  wire \counter_reg[236]_i_2_n_0 ;
  wire \counter_reg[236]_i_3_n_0 ;
  wire \counter_reg[236]_i_4_n_0 ;
  wire \counter_reg[236]_i_5_n_0 ;
  wire \counter_reg[240]_i_2_n_0 ;
  wire \counter_reg[240]_i_3_n_0 ;
  wire \counter_reg[240]_i_4_n_0 ;
  wire \counter_reg[240]_i_5_n_0 ;
  wire \counter_reg[244]_i_2_n_0 ;
  wire \counter_reg[244]_i_3_n_0 ;
  wire \counter_reg[244]_i_4_n_0 ;
  wire \counter_reg[244]_i_5_n_0 ;
  wire \counter_reg[248]_i_2_n_0 ;
  wire \counter_reg[248]_i_3_n_0 ;
  wire \counter_reg[248]_i_4_n_0 ;
  wire \counter_reg[248]_i_5_n_0 ;
  wire \counter_reg[24]_i_2_n_0 ;
  wire \counter_reg[24]_i_3_n_0 ;
  wire \counter_reg[24]_i_4_n_0 ;
  wire \counter_reg[24]_i_5_n_0 ;
  wire \counter_reg[252]_i_2_n_0 ;
  wire \counter_reg[252]_i_3_n_0 ;
  wire \counter_reg[252]_i_4_n_0 ;
  wire \counter_reg[252]_i_5_n_0 ;
  wire \counter_reg[256]_i_2_n_0 ;
  wire \counter_reg[256]_i_3_n_0 ;
  wire \counter_reg[256]_i_4_n_0 ;
  wire \counter_reg[256]_i_5_n_0 ;
  wire \counter_reg[260]_i_2_n_0 ;
  wire \counter_reg[260]_i_3_n_0 ;
  wire \counter_reg[260]_i_4_n_0 ;
  wire \counter_reg[260]_i_5_n_0 ;
  wire \counter_reg[264]_i_2_n_0 ;
  wire \counter_reg[264]_i_3_n_0 ;
  wire \counter_reg[264]_i_4_n_0 ;
  wire \counter_reg[264]_i_5_n_0 ;
  wire \counter_reg[268]_i_2_n_0 ;
  wire \counter_reg[268]_i_3_n_0 ;
  wire \counter_reg[268]_i_4_n_0 ;
  wire \counter_reg[268]_i_5_n_0 ;
  wire \counter_reg[272]_i_2_n_0 ;
  wire \counter_reg[272]_i_3_n_0 ;
  wire \counter_reg[272]_i_4_n_0 ;
  wire \counter_reg[272]_i_5_n_0 ;
  wire \counter_reg[276]_i_2_n_0 ;
  wire \counter_reg[276]_i_3_n_0 ;
  wire \counter_reg[276]_i_4_n_0 ;
  wire \counter_reg[276]_i_5_n_0 ;
  wire \counter_reg[280]_i_2_n_0 ;
  wire \counter_reg[280]_i_3_n_0 ;
  wire \counter_reg[280]_i_4_n_0 ;
  wire \counter_reg[280]_i_5_n_0 ;
  wire \counter_reg[284]_i_2_n_0 ;
  wire \counter_reg[284]_i_3_n_0 ;
  wire \counter_reg[284]_i_4_n_0 ;
  wire \counter_reg[284]_i_5_n_0 ;
  wire \counter_reg[288]_i_2_n_0 ;
  wire \counter_reg[288]_i_3_n_0 ;
  wire \counter_reg[288]_i_4_n_0 ;
  wire \counter_reg[288]_i_5_n_0 ;
  wire \counter_reg[28]_i_2_n_0 ;
  wire \counter_reg[28]_i_3_n_0 ;
  wire \counter_reg[28]_i_4_n_0 ;
  wire \counter_reg[28]_i_5_n_0 ;
  wire \counter_reg[292]_i_2_n_0 ;
  wire \counter_reg[292]_i_3_n_0 ;
  wire \counter_reg[292]_i_4_n_0 ;
  wire \counter_reg[292]_i_5_n_0 ;
  wire \counter_reg[296]_i_2_n_0 ;
  wire \counter_reg[296]_i_3_n_0 ;
  wire \counter_reg[296]_i_4_n_0 ;
  wire \counter_reg[296]_i_5_n_0 ;
  wire \counter_reg[300]_i_2_n_0 ;
  wire \counter_reg[300]_i_3_n_0 ;
  wire \counter_reg[300]_i_4_n_0 ;
  wire \counter_reg[300]_i_5_n_0 ;
  wire \counter_reg[304]_i_2_n_0 ;
  wire \counter_reg[304]_i_3_n_0 ;
  wire \counter_reg[304]_i_4_n_0 ;
  wire \counter_reg[304]_i_5_n_0 ;
  wire \counter_reg[308]_i_2_n_0 ;
  wire \counter_reg[308]_i_3_n_0 ;
  wire \counter_reg[308]_i_4_n_0 ;
  wire \counter_reg[308]_i_5_n_0 ;
  wire \counter_reg[312]_i_2_n_0 ;
  wire \counter_reg[312]_i_3_n_0 ;
  wire \counter_reg[312]_i_4_n_0 ;
  wire \counter_reg[312]_i_5_n_0 ;
  wire \counter_reg[316]_i_2_n_0 ;
  wire \counter_reg[316]_i_3_n_0 ;
  wire \counter_reg[316]_i_4_n_0 ;
  wire \counter_reg[316]_i_5_n_0 ;
  wire \counter_reg[320]_i_2_n_0 ;
  wire \counter_reg[320]_i_3_n_0 ;
  wire \counter_reg[320]_i_4_n_0 ;
  wire \counter_reg[320]_i_5_n_0 ;
  wire \counter_reg[324]_i_2_n_0 ;
  wire \counter_reg[324]_i_3_n_0 ;
  wire \counter_reg[32]_i_2_n_0 ;
  wire \counter_reg[32]_i_3_n_0 ;
  wire \counter_reg[32]_i_4_n_0 ;
  wire \counter_reg[32]_i_5_n_0 ;
  wire \counter_reg[36]_i_2_n_0 ;
  wire \counter_reg[36]_i_3_n_0 ;
  wire \counter_reg[36]_i_4_n_0 ;
  wire \counter_reg[36]_i_5_n_0 ;
  wire \counter_reg[40]_i_2_n_0 ;
  wire \counter_reg[40]_i_3_n_0 ;
  wire \counter_reg[40]_i_4_n_0 ;
  wire \counter_reg[40]_i_5_n_0 ;
  wire \counter_reg[44]_i_2_n_0 ;
  wire \counter_reg[44]_i_3_n_0 ;
  wire \counter_reg[44]_i_4_n_0 ;
  wire \counter_reg[44]_i_5_n_0 ;
  wire \counter_reg[48]_i_2_n_0 ;
  wire \counter_reg[48]_i_3_n_0 ;
  wire \counter_reg[48]_i_4_n_0 ;
  wire \counter_reg[48]_i_5_n_0 ;
  wire \counter_reg[48]_i_6_n_0 ;
  wire \counter_reg[4]_i_2_n_0 ;
  wire \counter_reg[4]_i_3_n_0 ;
  wire \counter_reg[4]_i_4_n_0 ;
  wire \counter_reg[4]_i_5_n_0 ;
  wire \counter_reg[52]_i_2_n_0 ;
  wire \counter_reg[52]_i_3_n_0 ;
  wire \counter_reg[52]_i_4_n_0 ;
  wire \counter_reg[52]_i_5_n_0 ;
  wire \counter_reg[56]_i_2_n_0 ;
  wire \counter_reg[56]_i_3_n_0 ;
  wire \counter_reg[56]_i_4_n_0 ;
  wire \counter_reg[56]_i_5_n_0 ;
  wire \counter_reg[60]_i_2_n_0 ;
  wire \counter_reg[60]_i_3_n_0 ;
  wire \counter_reg[60]_i_4_n_0 ;
  wire \counter_reg[60]_i_5_n_0 ;
  wire \counter_reg[64]_i_2_n_0 ;
  wire \counter_reg[64]_i_3_n_0 ;
  wire \counter_reg[64]_i_4_n_0 ;
  wire \counter_reg[64]_i_5_n_0 ;
  wire \counter_reg[68]_i_2_n_0 ;
  wire \counter_reg[68]_i_3_n_0 ;
  wire \counter_reg[68]_i_4_n_0 ;
  wire \counter_reg[68]_i_5_n_0 ;
  wire \counter_reg[72]_i_2_n_0 ;
  wire \counter_reg[72]_i_3_n_0 ;
  wire \counter_reg[72]_i_4_n_0 ;
  wire \counter_reg[72]_i_5_n_0 ;
  wire \counter_reg[76]_i_2_n_0 ;
  wire \counter_reg[76]_i_3_n_0 ;
  wire \counter_reg[76]_i_4_n_0 ;
  wire \counter_reg[76]_i_5_n_0 ;
  wire \counter_reg[80]_i_2_n_0 ;
  wire \counter_reg[80]_i_3_n_0 ;
  wire \counter_reg[80]_i_4_n_0 ;
  wire \counter_reg[80]_i_5_n_0 ;
  wire \counter_reg[84]_i_2_n_0 ;
  wire \counter_reg[84]_i_3_n_0 ;
  wire \counter_reg[84]_i_4_n_0 ;
  wire \counter_reg[84]_i_5_n_0 ;
  wire \counter_reg[88]_i_2_n_0 ;
  wire \counter_reg[88]_i_3_n_0 ;
  wire \counter_reg[88]_i_4_n_0 ;
  wire \counter_reg[88]_i_5_n_0 ;
  wire \counter_reg[8]_i_2_n_0 ;
  wire \counter_reg[8]_i_3_n_0 ;
  wire \counter_reg[8]_i_4_n_0 ;
  wire \counter_reg[8]_i_5_n_0 ;
  wire \counter_reg[92]_i_2_n_0 ;
  wire \counter_reg[92]_i_3_n_0 ;
  wire \counter_reg[92]_i_4_n_0 ;
  wire \counter_reg[92]_i_5_n_0 ;
  wire \counter_reg[96]_i_2_n_0 ;
  wire \counter_reg[96]_i_3_n_0 ;
  wire \counter_reg[96]_i_4_n_0 ;
  wire \counter_reg[96]_i_5_n_0 ;
  wire [325:0]counter_reg_reg;
  wire \counter_reg_reg[0]_i_1_n_0 ;
  wire \counter_reg_reg[0]_i_1_n_4 ;
  wire \counter_reg_reg[0]_i_1_n_5 ;
  wire \counter_reg_reg[0]_i_1_n_6 ;
  wire \counter_reg_reg[0]_i_1_n_7 ;
  wire \counter_reg_reg[100]_i_1_n_0 ;
  wire \counter_reg_reg[100]_i_1_n_4 ;
  wire \counter_reg_reg[100]_i_1_n_5 ;
  wire \counter_reg_reg[100]_i_1_n_6 ;
  wire \counter_reg_reg[100]_i_1_n_7 ;
  wire \counter_reg_reg[104]_i_1_n_0 ;
  wire \counter_reg_reg[104]_i_1_n_4 ;
  wire \counter_reg_reg[104]_i_1_n_5 ;
  wire \counter_reg_reg[104]_i_1_n_6 ;
  wire \counter_reg_reg[104]_i_1_n_7 ;
  wire \counter_reg_reg[108]_i_1_n_0 ;
  wire \counter_reg_reg[108]_i_1_n_4 ;
  wire \counter_reg_reg[108]_i_1_n_5 ;
  wire \counter_reg_reg[108]_i_1_n_6 ;
  wire \counter_reg_reg[108]_i_1_n_7 ;
  wire \counter_reg_reg[112]_i_1_n_0 ;
  wire \counter_reg_reg[112]_i_1_n_4 ;
  wire \counter_reg_reg[112]_i_1_n_5 ;
  wire \counter_reg_reg[112]_i_1_n_6 ;
  wire \counter_reg_reg[112]_i_1_n_7 ;
  wire \counter_reg_reg[116]_i_1_n_0 ;
  wire \counter_reg_reg[116]_i_1_n_4 ;
  wire \counter_reg_reg[116]_i_1_n_5 ;
  wire \counter_reg_reg[116]_i_1_n_6 ;
  wire \counter_reg_reg[116]_i_1_n_7 ;
  wire \counter_reg_reg[120]_i_1_n_0 ;
  wire \counter_reg_reg[120]_i_1_n_4 ;
  wire \counter_reg_reg[120]_i_1_n_5 ;
  wire \counter_reg_reg[120]_i_1_n_6 ;
  wire \counter_reg_reg[120]_i_1_n_7 ;
  wire \counter_reg_reg[124]_i_1_n_0 ;
  wire \counter_reg_reg[124]_i_1_n_4 ;
  wire \counter_reg_reg[124]_i_1_n_5 ;
  wire \counter_reg_reg[124]_i_1_n_6 ;
  wire \counter_reg_reg[124]_i_1_n_7 ;
  wire \counter_reg_reg[128]_i_1_n_0 ;
  wire \counter_reg_reg[128]_i_1_n_4 ;
  wire \counter_reg_reg[128]_i_1_n_5 ;
  wire \counter_reg_reg[128]_i_1_n_6 ;
  wire \counter_reg_reg[128]_i_1_n_7 ;
  wire \counter_reg_reg[12]_i_1_n_0 ;
  wire \counter_reg_reg[12]_i_1_n_4 ;
  wire \counter_reg_reg[12]_i_1_n_5 ;
  wire \counter_reg_reg[12]_i_1_n_6 ;
  wire \counter_reg_reg[12]_i_1_n_7 ;
  wire \counter_reg_reg[132]_i_1_n_0 ;
  wire \counter_reg_reg[132]_i_1_n_4 ;
  wire \counter_reg_reg[132]_i_1_n_5 ;
  wire \counter_reg_reg[132]_i_1_n_6 ;
  wire \counter_reg_reg[132]_i_1_n_7 ;
  wire \counter_reg_reg[136]_i_1_n_0 ;
  wire \counter_reg_reg[136]_i_1_n_4 ;
  wire \counter_reg_reg[136]_i_1_n_5 ;
  wire \counter_reg_reg[136]_i_1_n_6 ;
  wire \counter_reg_reg[136]_i_1_n_7 ;
  wire \counter_reg_reg[140]_i_1_n_0 ;
  wire \counter_reg_reg[140]_i_1_n_4 ;
  wire \counter_reg_reg[140]_i_1_n_5 ;
  wire \counter_reg_reg[140]_i_1_n_6 ;
  wire \counter_reg_reg[140]_i_1_n_7 ;
  wire \counter_reg_reg[144]_i_1_n_0 ;
  wire \counter_reg_reg[144]_i_1_n_4 ;
  wire \counter_reg_reg[144]_i_1_n_5 ;
  wire \counter_reg_reg[144]_i_1_n_6 ;
  wire \counter_reg_reg[144]_i_1_n_7 ;
  wire \counter_reg_reg[148]_i_1_n_0 ;
  wire \counter_reg_reg[148]_i_1_n_4 ;
  wire \counter_reg_reg[148]_i_1_n_5 ;
  wire \counter_reg_reg[148]_i_1_n_6 ;
  wire \counter_reg_reg[148]_i_1_n_7 ;
  wire \counter_reg_reg[152]_i_1_n_0 ;
  wire \counter_reg_reg[152]_i_1_n_4 ;
  wire \counter_reg_reg[152]_i_1_n_5 ;
  wire \counter_reg_reg[152]_i_1_n_6 ;
  wire \counter_reg_reg[152]_i_1_n_7 ;
  wire \counter_reg_reg[156]_i_1_n_0 ;
  wire \counter_reg_reg[156]_i_1_n_4 ;
  wire \counter_reg_reg[156]_i_1_n_5 ;
  wire \counter_reg_reg[156]_i_1_n_6 ;
  wire \counter_reg_reg[156]_i_1_n_7 ;
  wire \counter_reg_reg[160]_i_1_n_0 ;
  wire \counter_reg_reg[160]_i_1_n_4 ;
  wire \counter_reg_reg[160]_i_1_n_5 ;
  wire \counter_reg_reg[160]_i_1_n_6 ;
  wire \counter_reg_reg[160]_i_1_n_7 ;
  wire \counter_reg_reg[164]_i_1_n_0 ;
  wire \counter_reg_reg[164]_i_1_n_4 ;
  wire \counter_reg_reg[164]_i_1_n_5 ;
  wire \counter_reg_reg[164]_i_1_n_6 ;
  wire \counter_reg_reg[164]_i_1_n_7 ;
  wire \counter_reg_reg[168]_i_1_n_0 ;
  wire \counter_reg_reg[168]_i_1_n_4 ;
  wire \counter_reg_reg[168]_i_1_n_5 ;
  wire \counter_reg_reg[168]_i_1_n_6 ;
  wire \counter_reg_reg[168]_i_1_n_7 ;
  wire \counter_reg_reg[16]_i_1_n_0 ;
  wire \counter_reg_reg[16]_i_1_n_4 ;
  wire \counter_reg_reg[16]_i_1_n_5 ;
  wire \counter_reg_reg[16]_i_1_n_6 ;
  wire \counter_reg_reg[16]_i_1_n_7 ;
  wire \counter_reg_reg[172]_i_1_n_0 ;
  wire \counter_reg_reg[172]_i_1_n_4 ;
  wire \counter_reg_reg[172]_i_1_n_5 ;
  wire \counter_reg_reg[172]_i_1_n_6 ;
  wire \counter_reg_reg[172]_i_1_n_7 ;
  wire \counter_reg_reg[176]_i_1_n_0 ;
  wire \counter_reg_reg[176]_i_1_n_4 ;
  wire \counter_reg_reg[176]_i_1_n_5 ;
  wire \counter_reg_reg[176]_i_1_n_6 ;
  wire \counter_reg_reg[176]_i_1_n_7 ;
  wire \counter_reg_reg[180]_i_1_n_0 ;
  wire \counter_reg_reg[180]_i_1_n_4 ;
  wire \counter_reg_reg[180]_i_1_n_5 ;
  wire \counter_reg_reg[180]_i_1_n_6 ;
  wire \counter_reg_reg[180]_i_1_n_7 ;
  wire \counter_reg_reg[184]_i_1_n_0 ;
  wire \counter_reg_reg[184]_i_1_n_4 ;
  wire \counter_reg_reg[184]_i_1_n_5 ;
  wire \counter_reg_reg[184]_i_1_n_6 ;
  wire \counter_reg_reg[184]_i_1_n_7 ;
  wire \counter_reg_reg[188]_i_1_n_0 ;
  wire \counter_reg_reg[188]_i_1_n_4 ;
  wire \counter_reg_reg[188]_i_1_n_5 ;
  wire \counter_reg_reg[188]_i_1_n_6 ;
  wire \counter_reg_reg[188]_i_1_n_7 ;
  wire \counter_reg_reg[192]_i_1_n_0 ;
  wire \counter_reg_reg[192]_i_1_n_4 ;
  wire \counter_reg_reg[192]_i_1_n_5 ;
  wire \counter_reg_reg[192]_i_1_n_6 ;
  wire \counter_reg_reg[192]_i_1_n_7 ;
  wire \counter_reg_reg[196]_i_1_n_0 ;
  wire \counter_reg_reg[196]_i_1_n_4 ;
  wire \counter_reg_reg[196]_i_1_n_5 ;
  wire \counter_reg_reg[196]_i_1_n_6 ;
  wire \counter_reg_reg[196]_i_1_n_7 ;
  wire \counter_reg_reg[200]_i_1_n_0 ;
  wire \counter_reg_reg[200]_i_1_n_4 ;
  wire \counter_reg_reg[200]_i_1_n_5 ;
  wire \counter_reg_reg[200]_i_1_n_6 ;
  wire \counter_reg_reg[200]_i_1_n_7 ;
  wire \counter_reg_reg[204]_i_1_n_0 ;
  wire \counter_reg_reg[204]_i_1_n_4 ;
  wire \counter_reg_reg[204]_i_1_n_5 ;
  wire \counter_reg_reg[204]_i_1_n_6 ;
  wire \counter_reg_reg[204]_i_1_n_7 ;
  wire \counter_reg_reg[208]_i_1_n_0 ;
  wire \counter_reg_reg[208]_i_1_n_4 ;
  wire \counter_reg_reg[208]_i_1_n_5 ;
  wire \counter_reg_reg[208]_i_1_n_6 ;
  wire \counter_reg_reg[208]_i_1_n_7 ;
  wire \counter_reg_reg[20]_i_1_n_0 ;
  wire \counter_reg_reg[20]_i_1_n_4 ;
  wire \counter_reg_reg[20]_i_1_n_5 ;
  wire \counter_reg_reg[20]_i_1_n_6 ;
  wire \counter_reg_reg[20]_i_1_n_7 ;
  wire \counter_reg_reg[212]_i_1_n_0 ;
  wire \counter_reg_reg[212]_i_1_n_4 ;
  wire \counter_reg_reg[212]_i_1_n_5 ;
  wire \counter_reg_reg[212]_i_1_n_6 ;
  wire \counter_reg_reg[212]_i_1_n_7 ;
  wire \counter_reg_reg[216]_i_1_n_0 ;
  wire \counter_reg_reg[216]_i_1_n_4 ;
  wire \counter_reg_reg[216]_i_1_n_5 ;
  wire \counter_reg_reg[216]_i_1_n_6 ;
  wire \counter_reg_reg[216]_i_1_n_7 ;
  wire \counter_reg_reg[220]_i_1_n_0 ;
  wire \counter_reg_reg[220]_i_1_n_4 ;
  wire \counter_reg_reg[220]_i_1_n_5 ;
  wire \counter_reg_reg[220]_i_1_n_6 ;
  wire \counter_reg_reg[220]_i_1_n_7 ;
  wire \counter_reg_reg[224]_i_1_n_0 ;
  wire \counter_reg_reg[224]_i_1_n_4 ;
  wire \counter_reg_reg[224]_i_1_n_5 ;
  wire \counter_reg_reg[224]_i_1_n_6 ;
  wire \counter_reg_reg[224]_i_1_n_7 ;
  wire \counter_reg_reg[228]_i_1_n_0 ;
  wire \counter_reg_reg[228]_i_1_n_4 ;
  wire \counter_reg_reg[228]_i_1_n_5 ;
  wire \counter_reg_reg[228]_i_1_n_6 ;
  wire \counter_reg_reg[228]_i_1_n_7 ;
  wire \counter_reg_reg[232]_i_1_n_0 ;
  wire \counter_reg_reg[232]_i_1_n_4 ;
  wire \counter_reg_reg[232]_i_1_n_5 ;
  wire \counter_reg_reg[232]_i_1_n_6 ;
  wire \counter_reg_reg[232]_i_1_n_7 ;
  wire \counter_reg_reg[236]_i_1_n_0 ;
  wire \counter_reg_reg[236]_i_1_n_4 ;
  wire \counter_reg_reg[236]_i_1_n_5 ;
  wire \counter_reg_reg[236]_i_1_n_6 ;
  wire \counter_reg_reg[236]_i_1_n_7 ;
  wire \counter_reg_reg[240]_i_1_n_0 ;
  wire \counter_reg_reg[240]_i_1_n_4 ;
  wire \counter_reg_reg[240]_i_1_n_5 ;
  wire \counter_reg_reg[240]_i_1_n_6 ;
  wire \counter_reg_reg[240]_i_1_n_7 ;
  wire \counter_reg_reg[244]_i_1_n_0 ;
  wire \counter_reg_reg[244]_i_1_n_4 ;
  wire \counter_reg_reg[244]_i_1_n_5 ;
  wire \counter_reg_reg[244]_i_1_n_6 ;
  wire \counter_reg_reg[244]_i_1_n_7 ;
  wire \counter_reg_reg[248]_i_1_n_0 ;
  wire \counter_reg_reg[248]_i_1_n_4 ;
  wire \counter_reg_reg[248]_i_1_n_5 ;
  wire \counter_reg_reg[248]_i_1_n_6 ;
  wire \counter_reg_reg[248]_i_1_n_7 ;
  wire \counter_reg_reg[24]_i_1_n_0 ;
  wire \counter_reg_reg[24]_i_1_n_4 ;
  wire \counter_reg_reg[24]_i_1_n_5 ;
  wire \counter_reg_reg[24]_i_1_n_6 ;
  wire \counter_reg_reg[24]_i_1_n_7 ;
  wire \counter_reg_reg[252]_i_1_n_0 ;
  wire \counter_reg_reg[252]_i_1_n_4 ;
  wire \counter_reg_reg[252]_i_1_n_5 ;
  wire \counter_reg_reg[252]_i_1_n_6 ;
  wire \counter_reg_reg[252]_i_1_n_7 ;
  wire \counter_reg_reg[256]_i_1_n_0 ;
  wire \counter_reg_reg[256]_i_1_n_4 ;
  wire \counter_reg_reg[256]_i_1_n_5 ;
  wire \counter_reg_reg[256]_i_1_n_6 ;
  wire \counter_reg_reg[256]_i_1_n_7 ;
  wire \counter_reg_reg[260]_i_1_n_0 ;
  wire \counter_reg_reg[260]_i_1_n_4 ;
  wire \counter_reg_reg[260]_i_1_n_5 ;
  wire \counter_reg_reg[260]_i_1_n_6 ;
  wire \counter_reg_reg[260]_i_1_n_7 ;
  wire \counter_reg_reg[264]_i_1_n_0 ;
  wire \counter_reg_reg[264]_i_1_n_4 ;
  wire \counter_reg_reg[264]_i_1_n_5 ;
  wire \counter_reg_reg[264]_i_1_n_6 ;
  wire \counter_reg_reg[264]_i_1_n_7 ;
  wire \counter_reg_reg[268]_i_1_n_0 ;
  wire \counter_reg_reg[268]_i_1_n_4 ;
  wire \counter_reg_reg[268]_i_1_n_5 ;
  wire \counter_reg_reg[268]_i_1_n_6 ;
  wire \counter_reg_reg[268]_i_1_n_7 ;
  wire \counter_reg_reg[272]_i_1_n_0 ;
  wire \counter_reg_reg[272]_i_1_n_4 ;
  wire \counter_reg_reg[272]_i_1_n_5 ;
  wire \counter_reg_reg[272]_i_1_n_6 ;
  wire \counter_reg_reg[272]_i_1_n_7 ;
  wire \counter_reg_reg[276]_i_1_n_0 ;
  wire \counter_reg_reg[276]_i_1_n_4 ;
  wire \counter_reg_reg[276]_i_1_n_5 ;
  wire \counter_reg_reg[276]_i_1_n_6 ;
  wire \counter_reg_reg[276]_i_1_n_7 ;
  wire \counter_reg_reg[280]_i_1_n_0 ;
  wire \counter_reg_reg[280]_i_1_n_4 ;
  wire \counter_reg_reg[280]_i_1_n_5 ;
  wire \counter_reg_reg[280]_i_1_n_6 ;
  wire \counter_reg_reg[280]_i_1_n_7 ;
  wire \counter_reg_reg[284]_i_1_n_0 ;
  wire \counter_reg_reg[284]_i_1_n_4 ;
  wire \counter_reg_reg[284]_i_1_n_5 ;
  wire \counter_reg_reg[284]_i_1_n_6 ;
  wire \counter_reg_reg[284]_i_1_n_7 ;
  wire \counter_reg_reg[288]_i_1_n_0 ;
  wire \counter_reg_reg[288]_i_1_n_4 ;
  wire \counter_reg_reg[288]_i_1_n_5 ;
  wire \counter_reg_reg[288]_i_1_n_6 ;
  wire \counter_reg_reg[288]_i_1_n_7 ;
  wire \counter_reg_reg[28]_i_1_n_0 ;
  wire \counter_reg_reg[28]_i_1_n_4 ;
  wire \counter_reg_reg[28]_i_1_n_5 ;
  wire \counter_reg_reg[28]_i_1_n_6 ;
  wire \counter_reg_reg[28]_i_1_n_7 ;
  wire \counter_reg_reg[292]_i_1_n_0 ;
  wire \counter_reg_reg[292]_i_1_n_4 ;
  wire \counter_reg_reg[292]_i_1_n_5 ;
  wire \counter_reg_reg[292]_i_1_n_6 ;
  wire \counter_reg_reg[292]_i_1_n_7 ;
  wire \counter_reg_reg[296]_i_1_n_0 ;
  wire \counter_reg_reg[296]_i_1_n_4 ;
  wire \counter_reg_reg[296]_i_1_n_5 ;
  wire \counter_reg_reg[296]_i_1_n_6 ;
  wire \counter_reg_reg[296]_i_1_n_7 ;
  wire \counter_reg_reg[300]_i_1_n_0 ;
  wire \counter_reg_reg[300]_i_1_n_4 ;
  wire \counter_reg_reg[300]_i_1_n_5 ;
  wire \counter_reg_reg[300]_i_1_n_6 ;
  wire \counter_reg_reg[300]_i_1_n_7 ;
  wire \counter_reg_reg[304]_i_1_n_0 ;
  wire \counter_reg_reg[304]_i_1_n_4 ;
  wire \counter_reg_reg[304]_i_1_n_5 ;
  wire \counter_reg_reg[304]_i_1_n_6 ;
  wire \counter_reg_reg[304]_i_1_n_7 ;
  wire \counter_reg_reg[308]_i_1_n_0 ;
  wire \counter_reg_reg[308]_i_1_n_4 ;
  wire \counter_reg_reg[308]_i_1_n_5 ;
  wire \counter_reg_reg[308]_i_1_n_6 ;
  wire \counter_reg_reg[308]_i_1_n_7 ;
  wire \counter_reg_reg[312]_i_1_n_0 ;
  wire \counter_reg_reg[312]_i_1_n_4 ;
  wire \counter_reg_reg[312]_i_1_n_5 ;
  wire \counter_reg_reg[312]_i_1_n_6 ;
  wire \counter_reg_reg[312]_i_1_n_7 ;
  wire \counter_reg_reg[316]_i_1_n_0 ;
  wire \counter_reg_reg[316]_i_1_n_4 ;
  wire \counter_reg_reg[316]_i_1_n_5 ;
  wire \counter_reg_reg[316]_i_1_n_6 ;
  wire \counter_reg_reg[316]_i_1_n_7 ;
  wire \counter_reg_reg[320]_i_1_n_0 ;
  wire \counter_reg_reg[320]_i_1_n_4 ;
  wire \counter_reg_reg[320]_i_1_n_5 ;
  wire \counter_reg_reg[320]_i_1_n_6 ;
  wire \counter_reg_reg[320]_i_1_n_7 ;
  wire \counter_reg_reg[324]_i_1_n_6 ;
  wire \counter_reg_reg[324]_i_1_n_7 ;
  wire \counter_reg_reg[32]_i_1_n_0 ;
  wire \counter_reg_reg[32]_i_1_n_4 ;
  wire \counter_reg_reg[32]_i_1_n_5 ;
  wire \counter_reg_reg[32]_i_1_n_6 ;
  wire \counter_reg_reg[32]_i_1_n_7 ;
  wire \counter_reg_reg[36]_i_1_n_0 ;
  wire \counter_reg_reg[36]_i_1_n_4 ;
  wire \counter_reg_reg[36]_i_1_n_5 ;
  wire \counter_reg_reg[36]_i_1_n_6 ;
  wire \counter_reg_reg[36]_i_1_n_7 ;
  wire \counter_reg_reg[40]_i_1_n_0 ;
  wire \counter_reg_reg[40]_i_1_n_4 ;
  wire \counter_reg_reg[40]_i_1_n_5 ;
  wire \counter_reg_reg[40]_i_1_n_6 ;
  wire \counter_reg_reg[40]_i_1_n_7 ;
  wire \counter_reg_reg[44]_i_1_n_0 ;
  wire \counter_reg_reg[44]_i_1_n_4 ;
  wire \counter_reg_reg[44]_i_1_n_5 ;
  wire \counter_reg_reg[44]_i_1_n_6 ;
  wire \counter_reg_reg[44]_i_1_n_7 ;
  wire \counter_reg_reg[48]_i_1_n_0 ;
  wire \counter_reg_reg[48]_i_1_n_4 ;
  wire \counter_reg_reg[48]_i_1_n_5 ;
  wire \counter_reg_reg[48]_i_1_n_6 ;
  wire \counter_reg_reg[48]_i_1_n_7 ;
  wire \counter_reg_reg[4]_i_1_n_0 ;
  wire \counter_reg_reg[4]_i_1_n_4 ;
  wire \counter_reg_reg[4]_i_1_n_5 ;
  wire \counter_reg_reg[4]_i_1_n_6 ;
  wire \counter_reg_reg[4]_i_1_n_7 ;
  wire \counter_reg_reg[52]_i_1_n_0 ;
  wire \counter_reg_reg[52]_i_1_n_4 ;
  wire \counter_reg_reg[52]_i_1_n_5 ;
  wire \counter_reg_reg[52]_i_1_n_6 ;
  wire \counter_reg_reg[52]_i_1_n_7 ;
  wire \counter_reg_reg[56]_i_1_n_0 ;
  wire \counter_reg_reg[56]_i_1_n_4 ;
  wire \counter_reg_reg[56]_i_1_n_5 ;
  wire \counter_reg_reg[56]_i_1_n_6 ;
  wire \counter_reg_reg[56]_i_1_n_7 ;
  wire \counter_reg_reg[60]_i_1_n_0 ;
  wire \counter_reg_reg[60]_i_1_n_4 ;
  wire \counter_reg_reg[60]_i_1_n_5 ;
  wire \counter_reg_reg[60]_i_1_n_6 ;
  wire \counter_reg_reg[60]_i_1_n_7 ;
  wire \counter_reg_reg[64]_i_1_n_0 ;
  wire \counter_reg_reg[64]_i_1_n_4 ;
  wire \counter_reg_reg[64]_i_1_n_5 ;
  wire \counter_reg_reg[64]_i_1_n_6 ;
  wire \counter_reg_reg[64]_i_1_n_7 ;
  wire \counter_reg_reg[68]_i_1_n_0 ;
  wire \counter_reg_reg[68]_i_1_n_4 ;
  wire \counter_reg_reg[68]_i_1_n_5 ;
  wire \counter_reg_reg[68]_i_1_n_6 ;
  wire \counter_reg_reg[68]_i_1_n_7 ;
  wire \counter_reg_reg[72]_i_1_n_0 ;
  wire \counter_reg_reg[72]_i_1_n_4 ;
  wire \counter_reg_reg[72]_i_1_n_5 ;
  wire \counter_reg_reg[72]_i_1_n_6 ;
  wire \counter_reg_reg[72]_i_1_n_7 ;
  wire \counter_reg_reg[76]_i_1_n_0 ;
  wire \counter_reg_reg[76]_i_1_n_4 ;
  wire \counter_reg_reg[76]_i_1_n_5 ;
  wire \counter_reg_reg[76]_i_1_n_6 ;
  wire \counter_reg_reg[76]_i_1_n_7 ;
  wire \counter_reg_reg[80]_i_1_n_0 ;
  wire \counter_reg_reg[80]_i_1_n_4 ;
  wire \counter_reg_reg[80]_i_1_n_5 ;
  wire \counter_reg_reg[80]_i_1_n_6 ;
  wire \counter_reg_reg[80]_i_1_n_7 ;
  wire \counter_reg_reg[84]_i_1_n_0 ;
  wire \counter_reg_reg[84]_i_1_n_4 ;
  wire \counter_reg_reg[84]_i_1_n_5 ;
  wire \counter_reg_reg[84]_i_1_n_6 ;
  wire \counter_reg_reg[84]_i_1_n_7 ;
  wire \counter_reg_reg[88]_i_1_n_0 ;
  wire \counter_reg_reg[88]_i_1_n_4 ;
  wire \counter_reg_reg[88]_i_1_n_5 ;
  wire \counter_reg_reg[88]_i_1_n_6 ;
  wire \counter_reg_reg[88]_i_1_n_7 ;
  wire \counter_reg_reg[8]_i_1_n_0 ;
  wire \counter_reg_reg[8]_i_1_n_4 ;
  wire \counter_reg_reg[8]_i_1_n_5 ;
  wire \counter_reg_reg[8]_i_1_n_6 ;
  wire \counter_reg_reg[8]_i_1_n_7 ;
  wire \counter_reg_reg[92]_i_1_n_0 ;
  wire \counter_reg_reg[92]_i_1_n_4 ;
  wire \counter_reg_reg[92]_i_1_n_5 ;
  wire \counter_reg_reg[92]_i_1_n_6 ;
  wire \counter_reg_reg[92]_i_1_n_7 ;
  wire \counter_reg_reg[96]_i_1_n_0 ;
  wire \counter_reg_reg[96]_i_1_n_4 ;
  wire \counter_reg_reg[96]_i_1_n_5 ;
  wire \counter_reg_reg[96]_i_1_n_6 ;
  wire \counter_reg_reg[96]_i_1_n_7 ;
  wire [2:0]NLW_baud_tick__47_carry_CO_UNCONNECTED;
  wire [3:0]NLW_baud_tick__47_carry_O_UNCONNECTED;
  wire [2:0]NLW_baud_tick__47_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_baud_tick__47_carry__0_O_UNCONNECTED;
  wire [2:0]NLW_baud_tick__47_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_baud_tick__47_carry__1_O_UNCONNECTED;
  wire [2:0]NLW_baud_tick__47_carry__10_CO_UNCONNECTED;
  wire [3:0]NLW_baud_tick__47_carry__10_O_UNCONNECTED;
  wire [2:0]NLW_baud_tick__47_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_baud_tick__47_carry__2_O_UNCONNECTED;
  wire [2:0]NLW_baud_tick__47_carry__3_CO_UNCONNECTED;
  wire [3:0]NLW_baud_tick__47_carry__3_O_UNCONNECTED;
  wire [2:0]NLW_baud_tick__47_carry__4_CO_UNCONNECTED;
  wire [3:0]NLW_baud_tick__47_carry__4_O_UNCONNECTED;
  wire [2:0]NLW_baud_tick__47_carry__5_CO_UNCONNECTED;
  wire [3:0]NLW_baud_tick__47_carry__5_O_UNCONNECTED;
  wire [2:0]NLW_baud_tick__47_carry__6_CO_UNCONNECTED;
  wire [3:0]NLW_baud_tick__47_carry__6_O_UNCONNECTED;
  wire [2:0]NLW_baud_tick__47_carry__7_CO_UNCONNECTED;
  wire [3:0]NLW_baud_tick__47_carry__7_O_UNCONNECTED;
  wire [2:0]NLW_baud_tick__47_carry__8_CO_UNCONNECTED;
  wire [3:0]NLW_baud_tick__47_carry__8_O_UNCONNECTED;
  wire [2:0]NLW_baud_tick__47_carry__9_CO_UNCONNECTED;
  wire [3:0]NLW_baud_tick__47_carry__9_O_UNCONNECTED;
  wire [2:0]NLW_baud_tick__95_carry_CO_UNCONNECTED;
  wire [3:0]NLW_baud_tick__95_carry_O_UNCONNECTED;
  wire [2:0]NLW_baud_tick__95_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_baud_tick__95_carry__0_O_UNCONNECTED;
  wire [2:0]NLW_baud_tick__95_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_baud_tick__95_carry__1_O_UNCONNECTED;
  wire [3:1]NLW_baud_tick__95_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_baud_tick__95_carry__2_O_UNCONNECTED;
  wire [2:0]NLW_baud_tick_carry_CO_UNCONNECTED;
  wire [3:0]NLW_baud_tick_carry_O_UNCONNECTED;
  wire [2:0]NLW_baud_tick_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_baud_tick_carry__0_O_UNCONNECTED;
  wire [2:0]NLW_baud_tick_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_baud_tick_carry__1_O_UNCONNECTED;
  wire [2:0]NLW_baud_tick_carry__10_CO_UNCONNECTED;
  wire [3:0]NLW_baud_tick_carry__10_O_UNCONNECTED;
  wire [2:0]NLW_baud_tick_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_baud_tick_carry__2_O_UNCONNECTED;
  wire [2:0]NLW_baud_tick_carry__3_CO_UNCONNECTED;
  wire [3:0]NLW_baud_tick_carry__3_O_UNCONNECTED;
  wire [2:0]NLW_baud_tick_carry__4_CO_UNCONNECTED;
  wire [3:0]NLW_baud_tick_carry__4_O_UNCONNECTED;
  wire [2:0]NLW_baud_tick_carry__5_CO_UNCONNECTED;
  wire [3:0]NLW_baud_tick_carry__5_O_UNCONNECTED;
  wire [2:0]NLW_baud_tick_carry__6_CO_UNCONNECTED;
  wire [3:0]NLW_baud_tick_carry__6_O_UNCONNECTED;
  wire [2:0]NLW_baud_tick_carry__7_CO_UNCONNECTED;
  wire [3:0]NLW_baud_tick_carry__7_O_UNCONNECTED;
  wire [2:0]NLW_baud_tick_carry__8_CO_UNCONNECTED;
  wire [3:0]NLW_baud_tick_carry__8_O_UNCONNECTED;
  wire [2:0]NLW_baud_tick_carry__9_CO_UNCONNECTED;
  wire [3:0]NLW_baud_tick_carry__9_O_UNCONNECTED;
  wire [2:0]\NLW_counter_reg_reg[0]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[100]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[104]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[108]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[112]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[116]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[120]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[124]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[128]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[132]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[136]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[140]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[144]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[148]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[152]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[156]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[160]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[164]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[168]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[172]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[176]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[180]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[184]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[188]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[192]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[196]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[200]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[204]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[208]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[20]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[212]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[216]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[220]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[224]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[228]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[232]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[236]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[240]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[244]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[248]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[24]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[252]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[256]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[260]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[264]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[268]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[272]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[276]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[280]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[284]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[288]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[28]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[292]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[296]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[300]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[304]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[308]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[312]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[316]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[320]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg_reg[324]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_counter_reg_reg[324]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[32]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[36]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[40]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[44]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[48]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[52]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[56]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[60]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[64]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[68]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[72]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[76]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[80]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[84]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[88]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[8]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[92]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg_reg[96]_i_1_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h7F)) 
    \FSM_sequential_state_reg[1]_i_2__0 
       (.I0(baud_tick__47_carry__10_n_0),
        .I1(baud_tick__95_carry__2_n_3),
        .I2(baud_tick_carry__10_n_0),
        .O(baud_tick_carry__10_0));
  CARRY4 baud_tick__47_carry
       (.CI(1'b0),
        .CO({baud_tick__47_carry_n_0,NLW_baud_tick__47_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_baud_tick__47_carry_O_UNCONNECTED[3:0]),
        .S({baud_tick__47_carry_i_1_n_0,baud_tick__47_carry_i_2_n_0,baud_tick__47_carry_i_3_n_0,baud_tick__47_carry_i_4_n_0}));
  CARRY4 baud_tick__47_carry__0
       (.CI(baud_tick__47_carry_n_0),
        .CO({baud_tick__47_carry__0_n_0,NLW_baud_tick__47_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_baud_tick__47_carry__0_O_UNCONNECTED[3:0]),
        .S({baud_tick__47_carry__0_i_1_n_0,baud_tick__47_carry__0_i_2_n_0,baud_tick__47_carry__0_i_3_n_0,baud_tick__47_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick__47_carry__0_i_1
       (.I0(counter_reg_reg[166]),
        .I1(counter_reg_reg[165]),
        .I2(counter_reg_reg[167]),
        .O(baud_tick__47_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick__47_carry__0_i_2
       (.I0(counter_reg_reg[163]),
        .I1(counter_reg_reg[162]),
        .I2(counter_reg_reg[164]),
        .O(baud_tick__47_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick__47_carry__0_i_3
       (.I0(counter_reg_reg[160]),
        .I1(counter_reg_reg[159]),
        .I2(counter_reg_reg[161]),
        .O(baud_tick__47_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick__47_carry__0_i_4
       (.I0(counter_reg_reg[157]),
        .I1(counter_reg_reg[156]),
        .I2(counter_reg_reg[158]),
        .O(baud_tick__47_carry__0_i_4_n_0));
  CARRY4 baud_tick__47_carry__1
       (.CI(baud_tick__47_carry__0_n_0),
        .CO({baud_tick__47_carry__1_n_0,NLW_baud_tick__47_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_baud_tick__47_carry__1_O_UNCONNECTED[3:0]),
        .S({baud_tick__47_carry__1_i_1_n_0,baud_tick__47_carry__1_i_2_n_0,baud_tick__47_carry__1_i_3_n_0,baud_tick__47_carry__1_i_4_n_0}));
  CARRY4 baud_tick__47_carry__10
       (.CI(baud_tick__47_carry__9_n_0),
        .CO({baud_tick__47_carry__10_n_0,NLW_baud_tick__47_carry__10_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_baud_tick__47_carry__10_O_UNCONNECTED[3:0]),
        .S({baud_tick__47_carry__10_i_1_n_0,baud_tick__47_carry__10_i_2_n_0,baud_tick__47_carry__10_i_3_n_0,baud_tick__47_carry__10_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick__47_carry__10_i_1
       (.I0(counter_reg_reg[286]),
        .I1(counter_reg_reg[285]),
        .I2(counter_reg_reg[287]),
        .O(baud_tick__47_carry__10_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick__47_carry__10_i_2
       (.I0(counter_reg_reg[283]),
        .I1(counter_reg_reg[282]),
        .I2(counter_reg_reg[284]),
        .O(baud_tick__47_carry__10_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick__47_carry__10_i_3
       (.I0(counter_reg_reg[280]),
        .I1(counter_reg_reg[279]),
        .I2(counter_reg_reg[281]),
        .O(baud_tick__47_carry__10_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick__47_carry__10_i_4
       (.I0(counter_reg_reg[277]),
        .I1(counter_reg_reg[276]),
        .I2(counter_reg_reg[278]),
        .O(baud_tick__47_carry__10_i_4_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick__47_carry__1_i_1
       (.I0(counter_reg_reg[178]),
        .I1(counter_reg_reg[177]),
        .I2(counter_reg_reg[179]),
        .O(baud_tick__47_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick__47_carry__1_i_2
       (.I0(counter_reg_reg[175]),
        .I1(counter_reg_reg[174]),
        .I2(counter_reg_reg[176]),
        .O(baud_tick__47_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick__47_carry__1_i_3
       (.I0(counter_reg_reg[172]),
        .I1(counter_reg_reg[171]),
        .I2(counter_reg_reg[173]),
        .O(baud_tick__47_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick__47_carry__1_i_4
       (.I0(counter_reg_reg[169]),
        .I1(counter_reg_reg[168]),
        .I2(counter_reg_reg[170]),
        .O(baud_tick__47_carry__1_i_4_n_0));
  CARRY4 baud_tick__47_carry__2
       (.CI(baud_tick__47_carry__1_n_0),
        .CO({baud_tick__47_carry__2_n_0,NLW_baud_tick__47_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_baud_tick__47_carry__2_O_UNCONNECTED[3:0]),
        .S({baud_tick__47_carry__2_i_1_n_0,baud_tick__47_carry__2_i_2_n_0,baud_tick__47_carry__2_i_3_n_0,baud_tick__47_carry__2_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick__47_carry__2_i_1
       (.I0(counter_reg_reg[190]),
        .I1(counter_reg_reg[189]),
        .I2(counter_reg_reg[191]),
        .O(baud_tick__47_carry__2_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick__47_carry__2_i_2
       (.I0(counter_reg_reg[187]),
        .I1(counter_reg_reg[186]),
        .I2(counter_reg_reg[188]),
        .O(baud_tick__47_carry__2_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick__47_carry__2_i_3
       (.I0(counter_reg_reg[184]),
        .I1(counter_reg_reg[183]),
        .I2(counter_reg_reg[185]),
        .O(baud_tick__47_carry__2_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick__47_carry__2_i_4
       (.I0(counter_reg_reg[181]),
        .I1(counter_reg_reg[180]),
        .I2(counter_reg_reg[182]),
        .O(baud_tick__47_carry__2_i_4_n_0));
  CARRY4 baud_tick__47_carry__3
       (.CI(baud_tick__47_carry__2_n_0),
        .CO({baud_tick__47_carry__3_n_0,NLW_baud_tick__47_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_baud_tick__47_carry__3_O_UNCONNECTED[3:0]),
        .S({baud_tick__47_carry__3_i_1_n_0,baud_tick__47_carry__3_i_2_n_0,baud_tick__47_carry__3_i_3_n_0,baud_tick__47_carry__3_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick__47_carry__3_i_1
       (.I0(counter_reg_reg[202]),
        .I1(counter_reg_reg[201]),
        .I2(counter_reg_reg[203]),
        .O(baud_tick__47_carry__3_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick__47_carry__3_i_2
       (.I0(counter_reg_reg[199]),
        .I1(counter_reg_reg[198]),
        .I2(counter_reg_reg[200]),
        .O(baud_tick__47_carry__3_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick__47_carry__3_i_3
       (.I0(counter_reg_reg[196]),
        .I1(counter_reg_reg[195]),
        .I2(counter_reg_reg[197]),
        .O(baud_tick__47_carry__3_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick__47_carry__3_i_4
       (.I0(counter_reg_reg[193]),
        .I1(counter_reg_reg[192]),
        .I2(counter_reg_reg[194]),
        .O(baud_tick__47_carry__3_i_4_n_0));
  CARRY4 baud_tick__47_carry__4
       (.CI(baud_tick__47_carry__3_n_0),
        .CO({baud_tick__47_carry__4_n_0,NLW_baud_tick__47_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_baud_tick__47_carry__4_O_UNCONNECTED[3:0]),
        .S({baud_tick__47_carry__4_i_1_n_0,baud_tick__47_carry__4_i_2_n_0,baud_tick__47_carry__4_i_3_n_0,baud_tick__47_carry__4_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick__47_carry__4_i_1
       (.I0(counter_reg_reg[214]),
        .I1(counter_reg_reg[213]),
        .I2(counter_reg_reg[215]),
        .O(baud_tick__47_carry__4_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick__47_carry__4_i_2
       (.I0(counter_reg_reg[211]),
        .I1(counter_reg_reg[210]),
        .I2(counter_reg_reg[212]),
        .O(baud_tick__47_carry__4_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick__47_carry__4_i_3
       (.I0(counter_reg_reg[208]),
        .I1(counter_reg_reg[207]),
        .I2(counter_reg_reg[209]),
        .O(baud_tick__47_carry__4_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick__47_carry__4_i_4
       (.I0(counter_reg_reg[205]),
        .I1(counter_reg_reg[204]),
        .I2(counter_reg_reg[206]),
        .O(baud_tick__47_carry__4_i_4_n_0));
  CARRY4 baud_tick__47_carry__5
       (.CI(baud_tick__47_carry__4_n_0),
        .CO({baud_tick__47_carry__5_n_0,NLW_baud_tick__47_carry__5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_baud_tick__47_carry__5_O_UNCONNECTED[3:0]),
        .S({baud_tick__47_carry__5_i_1_n_0,baud_tick__47_carry__5_i_2_n_0,baud_tick__47_carry__5_i_3_n_0,baud_tick__47_carry__5_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick__47_carry__5_i_1
       (.I0(counter_reg_reg[226]),
        .I1(counter_reg_reg[225]),
        .I2(counter_reg_reg[227]),
        .O(baud_tick__47_carry__5_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick__47_carry__5_i_2
       (.I0(counter_reg_reg[223]),
        .I1(counter_reg_reg[222]),
        .I2(counter_reg_reg[224]),
        .O(baud_tick__47_carry__5_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick__47_carry__5_i_3
       (.I0(counter_reg_reg[220]),
        .I1(counter_reg_reg[219]),
        .I2(counter_reg_reg[221]),
        .O(baud_tick__47_carry__5_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick__47_carry__5_i_4
       (.I0(counter_reg_reg[217]),
        .I1(counter_reg_reg[216]),
        .I2(counter_reg_reg[218]),
        .O(baud_tick__47_carry__5_i_4_n_0));
  CARRY4 baud_tick__47_carry__6
       (.CI(baud_tick__47_carry__5_n_0),
        .CO({baud_tick__47_carry__6_n_0,NLW_baud_tick__47_carry__6_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_baud_tick__47_carry__6_O_UNCONNECTED[3:0]),
        .S({baud_tick__47_carry__6_i_1_n_0,baud_tick__47_carry__6_i_2_n_0,baud_tick__47_carry__6_i_3_n_0,baud_tick__47_carry__6_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick__47_carry__6_i_1
       (.I0(counter_reg_reg[238]),
        .I1(counter_reg_reg[237]),
        .I2(counter_reg_reg[239]),
        .O(baud_tick__47_carry__6_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick__47_carry__6_i_2
       (.I0(counter_reg_reg[235]),
        .I1(counter_reg_reg[234]),
        .I2(counter_reg_reg[236]),
        .O(baud_tick__47_carry__6_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick__47_carry__6_i_3
       (.I0(counter_reg_reg[232]),
        .I1(counter_reg_reg[231]),
        .I2(counter_reg_reg[233]),
        .O(baud_tick__47_carry__6_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick__47_carry__6_i_4
       (.I0(counter_reg_reg[229]),
        .I1(counter_reg_reg[228]),
        .I2(counter_reg_reg[230]),
        .O(baud_tick__47_carry__6_i_4_n_0));
  CARRY4 baud_tick__47_carry__7
       (.CI(baud_tick__47_carry__6_n_0),
        .CO({baud_tick__47_carry__7_n_0,NLW_baud_tick__47_carry__7_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_baud_tick__47_carry__7_O_UNCONNECTED[3:0]),
        .S({baud_tick__47_carry__7_i_1_n_0,baud_tick__47_carry__7_i_2_n_0,baud_tick__47_carry__7_i_3_n_0,baud_tick__47_carry__7_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick__47_carry__7_i_1
       (.I0(counter_reg_reg[250]),
        .I1(counter_reg_reg[249]),
        .I2(counter_reg_reg[251]),
        .O(baud_tick__47_carry__7_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick__47_carry__7_i_2
       (.I0(counter_reg_reg[247]),
        .I1(counter_reg_reg[246]),
        .I2(counter_reg_reg[248]),
        .O(baud_tick__47_carry__7_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick__47_carry__7_i_3
       (.I0(counter_reg_reg[244]),
        .I1(counter_reg_reg[243]),
        .I2(counter_reg_reg[245]),
        .O(baud_tick__47_carry__7_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick__47_carry__7_i_4
       (.I0(counter_reg_reg[241]),
        .I1(counter_reg_reg[240]),
        .I2(counter_reg_reg[242]),
        .O(baud_tick__47_carry__7_i_4_n_0));
  CARRY4 baud_tick__47_carry__8
       (.CI(baud_tick__47_carry__7_n_0),
        .CO({baud_tick__47_carry__8_n_0,NLW_baud_tick__47_carry__8_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_baud_tick__47_carry__8_O_UNCONNECTED[3:0]),
        .S({baud_tick__47_carry__8_i_1_n_0,baud_tick__47_carry__8_i_2_n_0,baud_tick__47_carry__8_i_3_n_0,baud_tick__47_carry__8_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick__47_carry__8_i_1
       (.I0(counter_reg_reg[262]),
        .I1(counter_reg_reg[261]),
        .I2(counter_reg_reg[263]),
        .O(baud_tick__47_carry__8_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick__47_carry__8_i_2
       (.I0(counter_reg_reg[259]),
        .I1(counter_reg_reg[258]),
        .I2(counter_reg_reg[260]),
        .O(baud_tick__47_carry__8_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick__47_carry__8_i_3
       (.I0(counter_reg_reg[256]),
        .I1(counter_reg_reg[255]),
        .I2(counter_reg_reg[257]),
        .O(baud_tick__47_carry__8_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick__47_carry__8_i_4
       (.I0(counter_reg_reg[253]),
        .I1(counter_reg_reg[252]),
        .I2(counter_reg_reg[254]),
        .O(baud_tick__47_carry__8_i_4_n_0));
  CARRY4 baud_tick__47_carry__9
       (.CI(baud_tick__47_carry__8_n_0),
        .CO({baud_tick__47_carry__9_n_0,NLW_baud_tick__47_carry__9_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_baud_tick__47_carry__9_O_UNCONNECTED[3:0]),
        .S({baud_tick__47_carry__9_i_1_n_0,baud_tick__47_carry__9_i_2_n_0,baud_tick__47_carry__9_i_3_n_0,baud_tick__47_carry__9_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick__47_carry__9_i_1
       (.I0(counter_reg_reg[274]),
        .I1(counter_reg_reg[273]),
        .I2(counter_reg_reg[275]),
        .O(baud_tick__47_carry__9_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick__47_carry__9_i_2
       (.I0(counter_reg_reg[271]),
        .I1(counter_reg_reg[270]),
        .I2(counter_reg_reg[272]),
        .O(baud_tick__47_carry__9_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick__47_carry__9_i_3
       (.I0(counter_reg_reg[268]),
        .I1(counter_reg_reg[267]),
        .I2(counter_reg_reg[269]),
        .O(baud_tick__47_carry__9_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick__47_carry__9_i_4
       (.I0(counter_reg_reg[265]),
        .I1(counter_reg_reg[264]),
        .I2(counter_reg_reg[266]),
        .O(baud_tick__47_carry__9_i_4_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick__47_carry_i_1
       (.I0(counter_reg_reg[154]),
        .I1(counter_reg_reg[153]),
        .I2(counter_reg_reg[155]),
        .O(baud_tick__47_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick__47_carry_i_2
       (.I0(counter_reg_reg[151]),
        .I1(counter_reg_reg[150]),
        .I2(counter_reg_reg[152]),
        .O(baud_tick__47_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick__47_carry_i_3
       (.I0(counter_reg_reg[148]),
        .I1(counter_reg_reg[147]),
        .I2(counter_reg_reg[149]),
        .O(baud_tick__47_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick__47_carry_i_4
       (.I0(counter_reg_reg[145]),
        .I1(counter_reg_reg[144]),
        .I2(counter_reg_reg[146]),
        .O(baud_tick__47_carry_i_4_n_0));
  CARRY4 baud_tick__95_carry
       (.CI(1'b0),
        .CO({baud_tick__95_carry_n_0,NLW_baud_tick__95_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_baud_tick__95_carry_O_UNCONNECTED[3:0]),
        .S({baud_tick__95_carry_i_1_n_0,baud_tick__95_carry_i_2_n_0,baud_tick__95_carry_i_3_n_0,baud_tick__95_carry_i_4_n_0}));
  CARRY4 baud_tick__95_carry__0
       (.CI(baud_tick__95_carry_n_0),
        .CO({baud_tick__95_carry__0_n_0,NLW_baud_tick__95_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_baud_tick__95_carry__0_O_UNCONNECTED[3:0]),
        .S({baud_tick__95_carry__0_i_1_n_0,baud_tick__95_carry__0_i_2_n_0,baud_tick__95_carry__0_i_3_n_0,baud_tick__95_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick__95_carry__0_i_1
       (.I0(counter_reg_reg[310]),
        .I1(counter_reg_reg[309]),
        .I2(counter_reg_reg[311]),
        .O(baud_tick__95_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick__95_carry__0_i_2
       (.I0(counter_reg_reg[307]),
        .I1(counter_reg_reg[306]),
        .I2(counter_reg_reg[308]),
        .O(baud_tick__95_carry__0_i_2_n_0));
  (* PHYS_OPT_MODIFIED = "PIN_SWAP" *) 
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick__95_carry__0_i_3
       (.I0(counter_reg_reg[304]),
        .I1(counter_reg_reg[303]),
        .I2(counter_reg_reg[305]),
        .O(baud_tick__95_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick__95_carry__0_i_4
       (.I0(counter_reg_reg[301]),
        .I1(counter_reg_reg[300]),
        .I2(counter_reg_reg[302]),
        .O(baud_tick__95_carry__0_i_4_n_0));
  CARRY4 baud_tick__95_carry__1
       (.CI(baud_tick__95_carry__0_n_0),
        .CO({baud_tick__95_carry__1_n_0,NLW_baud_tick__95_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_baud_tick__95_carry__1_O_UNCONNECTED[3:0]),
        .S({baud_tick__95_carry__1_i_1_n_0,baud_tick__95_carry__1_i_2_n_0,baud_tick__95_carry__1_i_3_n_0,baud_tick__95_carry__1_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick__95_carry__1_i_1
       (.I0(counter_reg_reg[322]),
        .I1(counter_reg_reg[321]),
        .I2(counter_reg_reg[323]),
        .O(baud_tick__95_carry__1_i_1_n_0));
  (* PHYS_OPT_MODIFIED = "PIN_SWAP" *) 
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick__95_carry__1_i_2
       (.I0(counter_reg_reg[319]),
        .I1(counter_reg_reg[318]),
        .I2(counter_reg_reg[320]),
        .O(baud_tick__95_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick__95_carry__1_i_3
       (.I0(counter_reg_reg[316]),
        .I1(counter_reg_reg[315]),
        .I2(counter_reg_reg[317]),
        .O(baud_tick__95_carry__1_i_3_n_0));
  (* PHYS_OPT_MODIFIED = "PIN_SWAP" *) 
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick__95_carry__1_i_4
       (.I0(counter_reg_reg[313]),
        .I1(counter_reg_reg[312]),
        .I2(counter_reg_reg[314]),
        .O(baud_tick__95_carry__1_i_4_n_0));
  CARRY4 baud_tick__95_carry__2
       (.CI(baud_tick__95_carry__1_n_0),
        .CO({NLW_baud_tick__95_carry__2_CO_UNCONNECTED[3:1],baud_tick__95_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_baud_tick__95_carry__2_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,baud_tick__95_carry__2_i_1_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    baud_tick__95_carry__2_i_1
       (.I0(counter_reg_reg[324]),
        .I1(counter_reg_reg[325]),
        .O(baud_tick__95_carry__2_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick__95_carry_i_1
       (.I0(counter_reg_reg[298]),
        .I1(counter_reg_reg[297]),
        .I2(counter_reg_reg[299]),
        .O(baud_tick__95_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick__95_carry_i_2
       (.I0(counter_reg_reg[295]),
        .I1(counter_reg_reg[294]),
        .I2(counter_reg_reg[296]),
        .O(baud_tick__95_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick__95_carry_i_3
       (.I0(counter_reg_reg[292]),
        .I1(counter_reg_reg[291]),
        .I2(counter_reg_reg[293]),
        .O(baud_tick__95_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick__95_carry_i_4
       (.I0(counter_reg_reg[289]),
        .I1(counter_reg_reg[288]),
        .I2(counter_reg_reg[290]),
        .O(baud_tick__95_carry_i_4_n_0));
  CARRY4 baud_tick_carry
       (.CI(1'b0),
        .CO({baud_tick_carry_n_0,NLW_baud_tick_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_baud_tick_carry_O_UNCONNECTED[3:0]),
        .S({baud_tick_carry_i_1_n_0,baud_tick_carry_i_2_n_0,baud_tick_carry_i_3_n_0,baud_tick_carry_i_4_n_0}));
  CARRY4 baud_tick_carry__0
       (.CI(baud_tick_carry_n_0),
        .CO({baud_tick_carry__0_n_0,NLW_baud_tick_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_baud_tick_carry__0_O_UNCONNECTED[3:0]),
        .S({baud_tick_carry__0_i_1_n_0,baud_tick_carry__0_i_2_n_0,baud_tick_carry__0_i_3_n_0,baud_tick_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick_carry__0_i_1
       (.I0(counter_reg_reg[22]),
        .I1(counter_reg_reg[21]),
        .I2(counter_reg_reg[23]),
        .O(baud_tick_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick_carry__0_i_2
       (.I0(counter_reg_reg[19]),
        .I1(counter_reg_reg[18]),
        .I2(counter_reg_reg[20]),
        .O(baud_tick_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick_carry__0_i_3
       (.I0(counter_reg_reg[16]),
        .I1(counter_reg_reg[15]),
        .I2(counter_reg_reg[17]),
        .O(baud_tick_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick_carry__0_i_4
       (.I0(counter_reg_reg[13]),
        .I1(counter_reg_reg[12]),
        .I2(counter_reg_reg[14]),
        .O(baud_tick_carry__0_i_4_n_0));
  CARRY4 baud_tick_carry__1
       (.CI(baud_tick_carry__0_n_0),
        .CO({baud_tick_carry__1_n_0,NLW_baud_tick_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_baud_tick_carry__1_O_UNCONNECTED[3:0]),
        .S({baud_tick_carry__1_i_1_n_0,baud_tick_carry__1_i_2_n_0,baud_tick_carry__1_i_3_n_0,baud_tick_carry__1_i_4_n_0}));
  CARRY4 baud_tick_carry__10
       (.CI(baud_tick_carry__9_n_0),
        .CO({baud_tick_carry__10_n_0,NLW_baud_tick_carry__10_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_baud_tick_carry__10_O_UNCONNECTED[3:0]),
        .S({baud_tick_carry__10_i_1_n_0,baud_tick_carry__10_i_2_n_0,baud_tick_carry__10_i_3_n_0,baud_tick_carry__10_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick_carry__10_i_1
       (.I0(counter_reg_reg[142]),
        .I1(counter_reg_reg[141]),
        .I2(counter_reg_reg[143]),
        .O(baud_tick_carry__10_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick_carry__10_i_2
       (.I0(counter_reg_reg[139]),
        .I1(counter_reg_reg[138]),
        .I2(counter_reg_reg[140]),
        .O(baud_tick_carry__10_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick_carry__10_i_3
       (.I0(counter_reg_reg[136]),
        .I1(counter_reg_reg[135]),
        .I2(counter_reg_reg[137]),
        .O(baud_tick_carry__10_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick_carry__10_i_4
       (.I0(counter_reg_reg[133]),
        .I1(counter_reg_reg[132]),
        .I2(counter_reg_reg[134]),
        .O(baud_tick_carry__10_i_4_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick_carry__1_i_1
       (.I0(counter_reg_reg[34]),
        .I1(counter_reg_reg[33]),
        .I2(counter_reg_reg[35]),
        .O(baud_tick_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick_carry__1_i_2
       (.I0(counter_reg_reg[31]),
        .I1(counter_reg_reg[30]),
        .I2(counter_reg_reg[32]),
        .O(baud_tick_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick_carry__1_i_3
       (.I0(counter_reg_reg[28]),
        .I1(counter_reg_reg[27]),
        .I2(counter_reg_reg[29]),
        .O(baud_tick_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick_carry__1_i_4
       (.I0(counter_reg_reg[25]),
        .I1(counter_reg_reg[24]),
        .I2(counter_reg_reg[26]),
        .O(baud_tick_carry__1_i_4_n_0));
  CARRY4 baud_tick_carry__2
       (.CI(baud_tick_carry__1_n_0),
        .CO({baud_tick_carry__2_n_0,NLW_baud_tick_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_baud_tick_carry__2_O_UNCONNECTED[3:0]),
        .S({baud_tick_carry__2_i_1_n_0,baud_tick_carry__2_i_2_n_0,baud_tick_carry__2_i_3_n_0,baud_tick_carry__2_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick_carry__2_i_1
       (.I0(counter_reg_reg[46]),
        .I1(counter_reg_reg[45]),
        .I2(counter_reg_reg[47]),
        .O(baud_tick_carry__2_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick_carry__2_i_2
       (.I0(counter_reg_reg[43]),
        .I1(counter_reg_reg[42]),
        .I2(counter_reg_reg[44]),
        .O(baud_tick_carry__2_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick_carry__2_i_3
       (.I0(counter_reg_reg[40]),
        .I1(counter_reg_reg[39]),
        .I2(counter_reg_reg[41]),
        .O(baud_tick_carry__2_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick_carry__2_i_4
       (.I0(counter_reg_reg[37]),
        .I1(counter_reg_reg[36]),
        .I2(counter_reg_reg[38]),
        .O(baud_tick_carry__2_i_4_n_0));
  CARRY4 baud_tick_carry__3
       (.CI(baud_tick_carry__2_n_0),
        .CO({baud_tick_carry__3_n_0,NLW_baud_tick_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_baud_tick_carry__3_O_UNCONNECTED[3:0]),
        .S({baud_tick_carry__3_i_1_n_0,baud_tick_carry__3_i_2_n_0,baud_tick_carry__3_i_3_n_0,baud_tick_carry__3_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick_carry__3_i_1
       (.I0(counter_reg_reg[58]),
        .I1(counter_reg_reg[57]),
        .I2(counter_reg_reg[59]),
        .O(baud_tick_carry__3_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick_carry__3_i_2
       (.I0(counter_reg_reg[55]),
        .I1(counter_reg_reg[54]),
        .I2(counter_reg_reg[56]),
        .O(baud_tick_carry__3_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick_carry__3_i_3
       (.I0(counter_reg_reg[52]),
        .I1(counter_reg_reg[51]),
        .I2(counter_reg_reg[53]),
        .O(baud_tick_carry__3_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick_carry__3_i_4
       (.I0(counter_reg_reg[49]),
        .I1(counter_reg_reg[48]),
        .I2(counter_reg_reg[50]),
        .O(baud_tick_carry__3_i_4_n_0));
  CARRY4 baud_tick_carry__4
       (.CI(baud_tick_carry__3_n_0),
        .CO({baud_tick_carry__4_n_0,NLW_baud_tick_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_baud_tick_carry__4_O_UNCONNECTED[3:0]),
        .S({baud_tick_carry__4_i_1_n_0,baud_tick_carry__4_i_2_n_0,baud_tick_carry__4_i_3_n_0,baud_tick_carry__4_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick_carry__4_i_1
       (.I0(counter_reg_reg[70]),
        .I1(counter_reg_reg[69]),
        .I2(counter_reg_reg[71]),
        .O(baud_tick_carry__4_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick_carry__4_i_2
       (.I0(counter_reg_reg[67]),
        .I1(counter_reg_reg[66]),
        .I2(counter_reg_reg[68]),
        .O(baud_tick_carry__4_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick_carry__4_i_3
       (.I0(counter_reg_reg[64]),
        .I1(counter_reg_reg[63]),
        .I2(counter_reg_reg[65]),
        .O(baud_tick_carry__4_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick_carry__4_i_4
       (.I0(counter_reg_reg[61]),
        .I1(counter_reg_reg[60]),
        .I2(counter_reg_reg[62]),
        .O(baud_tick_carry__4_i_4_n_0));
  CARRY4 baud_tick_carry__5
       (.CI(baud_tick_carry__4_n_0),
        .CO({baud_tick_carry__5_n_0,NLW_baud_tick_carry__5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_baud_tick_carry__5_O_UNCONNECTED[3:0]),
        .S({baud_tick_carry__5_i_1_n_0,baud_tick_carry__5_i_2_n_0,baud_tick_carry__5_i_3_n_0,baud_tick_carry__5_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick_carry__5_i_1
       (.I0(counter_reg_reg[82]),
        .I1(counter_reg_reg[81]),
        .I2(counter_reg_reg[83]),
        .O(baud_tick_carry__5_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick_carry__5_i_2
       (.I0(counter_reg_reg[79]),
        .I1(counter_reg_reg[78]),
        .I2(counter_reg_reg[80]),
        .O(baud_tick_carry__5_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick_carry__5_i_3
       (.I0(counter_reg_reg[76]),
        .I1(counter_reg_reg[75]),
        .I2(counter_reg_reg[77]),
        .O(baud_tick_carry__5_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick_carry__5_i_4
       (.I0(counter_reg_reg[73]),
        .I1(counter_reg_reg[72]),
        .I2(counter_reg_reg[74]),
        .O(baud_tick_carry__5_i_4_n_0));
  CARRY4 baud_tick_carry__6
       (.CI(baud_tick_carry__5_n_0),
        .CO({baud_tick_carry__6_n_0,NLW_baud_tick_carry__6_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_baud_tick_carry__6_O_UNCONNECTED[3:0]),
        .S({baud_tick_carry__6_i_1_n_0,baud_tick_carry__6_i_2_n_0,baud_tick_carry__6_i_3_n_0,baud_tick_carry__6_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick_carry__6_i_1
       (.I0(counter_reg_reg[94]),
        .I1(counter_reg_reg[93]),
        .I2(counter_reg_reg[95]),
        .O(baud_tick_carry__6_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick_carry__6_i_2
       (.I0(counter_reg_reg[91]),
        .I1(counter_reg_reg[90]),
        .I2(counter_reg_reg[92]),
        .O(baud_tick_carry__6_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick_carry__6_i_3
       (.I0(counter_reg_reg[88]),
        .I1(counter_reg_reg[87]),
        .I2(counter_reg_reg[89]),
        .O(baud_tick_carry__6_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick_carry__6_i_4
       (.I0(counter_reg_reg[85]),
        .I1(counter_reg_reg[84]),
        .I2(counter_reg_reg[86]),
        .O(baud_tick_carry__6_i_4_n_0));
  CARRY4 baud_tick_carry__7
       (.CI(baud_tick_carry__6_n_0),
        .CO({baud_tick_carry__7_n_0,NLW_baud_tick_carry__7_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_baud_tick_carry__7_O_UNCONNECTED[3:0]),
        .S({baud_tick_carry__7_i_1_n_0,baud_tick_carry__7_i_2_n_0,baud_tick_carry__7_i_3_n_0,baud_tick_carry__7_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick_carry__7_i_1
       (.I0(counter_reg_reg[106]),
        .I1(counter_reg_reg[105]),
        .I2(counter_reg_reg[107]),
        .O(baud_tick_carry__7_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick_carry__7_i_2
       (.I0(counter_reg_reg[103]),
        .I1(counter_reg_reg[102]),
        .I2(counter_reg_reg[104]),
        .O(baud_tick_carry__7_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick_carry__7_i_3
       (.I0(counter_reg_reg[100]),
        .I1(counter_reg_reg[99]),
        .I2(counter_reg_reg[101]),
        .O(baud_tick_carry__7_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick_carry__7_i_4
       (.I0(counter_reg_reg[97]),
        .I1(counter_reg_reg[96]),
        .I2(counter_reg_reg[98]),
        .O(baud_tick_carry__7_i_4_n_0));
  CARRY4 baud_tick_carry__8
       (.CI(baud_tick_carry__7_n_0),
        .CO({baud_tick_carry__8_n_0,NLW_baud_tick_carry__8_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_baud_tick_carry__8_O_UNCONNECTED[3:0]),
        .S({baud_tick_carry__8_i_1_n_0,baud_tick_carry__8_i_2_n_0,baud_tick_carry__8_i_3_n_0,baud_tick_carry__8_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick_carry__8_i_1
       (.I0(counter_reg_reg[118]),
        .I1(counter_reg_reg[117]),
        .I2(counter_reg_reg[119]),
        .O(baud_tick_carry__8_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick_carry__8_i_2
       (.I0(counter_reg_reg[115]),
        .I1(counter_reg_reg[114]),
        .I2(counter_reg_reg[116]),
        .O(baud_tick_carry__8_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick_carry__8_i_3
       (.I0(counter_reg_reg[112]),
        .I1(counter_reg_reg[111]),
        .I2(counter_reg_reg[113]),
        .O(baud_tick_carry__8_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick_carry__8_i_4
       (.I0(counter_reg_reg[109]),
        .I1(counter_reg_reg[108]),
        .I2(counter_reg_reg[110]),
        .O(baud_tick_carry__8_i_4_n_0));
  CARRY4 baud_tick_carry__9
       (.CI(baud_tick_carry__8_n_0),
        .CO({baud_tick_carry__9_n_0,NLW_baud_tick_carry__9_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_baud_tick_carry__9_O_UNCONNECTED[3:0]),
        .S({baud_tick_carry__9_i_1_n_0,baud_tick_carry__9_i_2_n_0,baud_tick_carry__9_i_3_n_0,baud_tick_carry__9_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick_carry__9_i_1
       (.I0(counter_reg_reg[130]),
        .I1(counter_reg_reg[129]),
        .I2(counter_reg_reg[131]),
        .O(baud_tick_carry__9_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick_carry__9_i_2
       (.I0(counter_reg_reg[127]),
        .I1(counter_reg_reg[126]),
        .I2(counter_reg_reg[128]),
        .O(baud_tick_carry__9_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick_carry__9_i_3
       (.I0(counter_reg_reg[124]),
        .I1(counter_reg_reg[123]),
        .I2(counter_reg_reg[125]),
        .O(baud_tick_carry__9_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick_carry__9_i_4
       (.I0(counter_reg_reg[121]),
        .I1(counter_reg_reg[120]),
        .I2(counter_reg_reg[122]),
        .O(baud_tick_carry__9_i_4_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick_carry_i_1
       (.I0(counter_reg_reg[10]),
        .I1(counter_reg_reg[9]),
        .I2(counter_reg_reg[11]),
        .O(baud_tick_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick_carry_i_2
       (.I0(counter_reg_reg[7]),
        .I1(counter_reg_reg[6]),
        .I2(counter_reg_reg[8]),
        .O(baud_tick_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    baud_tick_carry_i_3
       (.I0(counter_reg_reg[4]),
        .I1(counter_reg_reg[3]),
        .I2(counter_reg_reg[5]),
        .O(baud_tick_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    baud_tick_carry_i_4
       (.I0(counter_reg_reg[1]),
        .I1(counter_reg_reg[0]),
        .I2(counter_reg_reg[2]),
        .O(baud_tick_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h7F)) 
    \counter_reg[0]_i_2 
       (.I0(baud_tick__47_carry__10_n_0),
        .I1(baud_tick__95_carry__2_n_3),
        .I2(baud_tick_carry__10_n_0),
        .O(\counter_reg[0]_i_2_n_0 ));
  (* PHYS_OPT_MODIFIED = "PIN_SWAP" *) 
  LUT4 #(
    .INIT(16'h7F00)) 
    \counter_reg[0]_i_3 
       (.I0(baud_tick__47_carry__10_n_0),
        .I1(baud_tick__95_carry__2_n_3),
        .I2(baud_tick_carry__10_n_0),
        .I3(counter_reg_reg[3]),
        .O(\counter_reg[0]_i_3_n_0 ));
  (* PHYS_OPT_MODIFIED = "PIN_SWAP" *) 
  LUT4 #(
    .INIT(16'h7F00)) 
    \counter_reg[0]_i_4 
       (.I0(baud_tick__47_carry__10_n_0),
        .I1(baud_tick__95_carry__2_n_3),
        .I2(baud_tick_carry__10_n_0),
        .I3(counter_reg_reg[2]),
        .O(\counter_reg[0]_i_4_n_0 ));
  (* PHYS_OPT_MODIFIED = "PIN_SWAP" *) 
  LUT4 #(
    .INIT(16'h7F00)) 
    \counter_reg[0]_i_5 
       (.I0(baud_tick__47_carry__10_n_0),
        .I1(baud_tick__95_carry__2_n_3),
        .I2(baud_tick_carry__10_n_0),
        .I3(counter_reg_reg[1]),
        .O(\counter_reg[0]_i_5_n_0 ));
  (* PHYS_OPT_MODIFIED = "PIN_SWAP" *) 
  LUT4 #(
    .INIT(16'h007F)) 
    \counter_reg[0]_i_6 
       (.I0(baud_tick__47_carry__10_n_0),
        .I1(baud_tick__95_carry__2_n_3),
        .I2(baud_tick_carry__10_n_0),
        .I3(counter_reg_reg[0]),
        .O(\counter_reg[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[100]_i_2 
       (.I0(counter_reg_reg[103]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[100]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[100]_i_3 
       (.I0(counter_reg_reg[102]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[100]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[100]_i_4 
       (.I0(counter_reg_reg[101]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[100]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[100]_i_5 
       (.I0(counter_reg_reg[100]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[100]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[104]_i_2 
       (.I0(counter_reg_reg[107]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[104]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[104]_i_3 
       (.I0(counter_reg_reg[106]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[104]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[104]_i_4 
       (.I0(counter_reg_reg[105]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[104]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[104]_i_5 
       (.I0(counter_reg_reg[104]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[104]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[108]_i_2 
       (.I0(counter_reg_reg[111]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[108]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[108]_i_3 
       (.I0(counter_reg_reg[110]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[108]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[108]_i_4 
       (.I0(counter_reg_reg[109]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[108]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[108]_i_5 
       (.I0(counter_reg_reg[108]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[108]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[112]_i_2 
       (.I0(counter_reg_reg[115]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[112]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[112]_i_3 
       (.I0(counter_reg_reg[114]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[112]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[112]_i_4 
       (.I0(counter_reg_reg[113]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[112]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[112]_i_5 
       (.I0(counter_reg_reg[112]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[112]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[116]_i_2 
       (.I0(counter_reg_reg[119]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[116]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[116]_i_3 
       (.I0(counter_reg_reg[118]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[116]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[116]_i_4 
       (.I0(counter_reg_reg[117]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[116]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[116]_i_5 
       (.I0(counter_reg_reg[116]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[116]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[120]_i_2 
       (.I0(counter_reg_reg[123]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[120]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[120]_i_3 
       (.I0(counter_reg_reg[122]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[120]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[120]_i_4 
       (.I0(counter_reg_reg[121]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[120]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[120]_i_5 
       (.I0(counter_reg_reg[120]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[120]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[124]_i_2 
       (.I0(counter_reg_reg[127]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[124]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[124]_i_3 
       (.I0(counter_reg_reg[126]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[124]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[124]_i_4 
       (.I0(counter_reg_reg[125]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[124]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[124]_i_5 
       (.I0(counter_reg_reg[124]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[124]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[128]_i_2 
       (.I0(counter_reg_reg[131]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[128]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[128]_i_3 
       (.I0(counter_reg_reg[130]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[128]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[128]_i_4 
       (.I0(counter_reg_reg[129]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[128]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[128]_i_5 
       (.I0(counter_reg_reg[128]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[128]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7F00)) 
    \counter_reg[12]_i_2 
       (.I0(baud_tick__47_carry__10_n_0),
        .I1(baud_tick__95_carry__2_n_3),
        .I2(baud_tick_carry__10_n_0),
        .I3(counter_reg_reg[15]),
        .O(\counter_reg[12]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7F00)) 
    \counter_reg[12]_i_3 
       (.I0(baud_tick__47_carry__10_n_0),
        .I1(baud_tick__95_carry__2_n_3),
        .I2(baud_tick_carry__10_n_0),
        .I3(counter_reg_reg[14]),
        .O(\counter_reg[12]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h7F00)) 
    \counter_reg[12]_i_4 
       (.I0(baud_tick__47_carry__10_n_0),
        .I1(baud_tick__95_carry__2_n_3),
        .I2(baud_tick_carry__10_n_0),
        .I3(counter_reg_reg[13]),
        .O(\counter_reg[12]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7F00)) 
    \counter_reg[12]_i_5 
       (.I0(baud_tick__47_carry__10_n_0),
        .I1(baud_tick__95_carry__2_n_3),
        .I2(baud_tick_carry__10_n_0),
        .I3(counter_reg_reg[12]),
        .O(\counter_reg[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[132]_i_2 
       (.I0(counter_reg_reg[135]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[132]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[132]_i_3 
       (.I0(counter_reg_reg[134]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[132]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[132]_i_4 
       (.I0(counter_reg_reg[133]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[132]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[132]_i_5 
       (.I0(counter_reg_reg[132]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[132]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[136]_i_2 
       (.I0(counter_reg_reg[139]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[136]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[136]_i_3 
       (.I0(counter_reg_reg[138]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[136]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[136]_i_4 
       (.I0(counter_reg_reg[137]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[136]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[136]_i_5 
       (.I0(counter_reg_reg[136]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[136]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[140]_i_2 
       (.I0(counter_reg_reg[143]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[140]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[140]_i_3 
       (.I0(counter_reg_reg[142]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[140]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[140]_i_4 
       (.I0(counter_reg_reg[141]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[140]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[140]_i_5 
       (.I0(counter_reg_reg[140]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[140]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \counter_reg[140]_i_6 
       (.I0(baud_tick__47_carry__10_n_0),
        .I1(baud_tick__95_carry__2_n_3),
        .I2(baud_tick_carry__10_n_0),
        .O(\counter_reg[140]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[144]_i_2 
       (.I0(counter_reg_reg[147]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[144]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[144]_i_3 
       (.I0(counter_reg_reg[146]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[144]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[144]_i_4 
       (.I0(counter_reg_reg[145]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[144]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[144]_i_5 
       (.I0(counter_reg_reg[144]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[144]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[148]_i_2 
       (.I0(counter_reg_reg[151]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[148]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[148]_i_3 
       (.I0(counter_reg_reg[150]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[148]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[148]_i_4 
       (.I0(counter_reg_reg[149]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[148]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[148]_i_5 
       (.I0(counter_reg_reg[148]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[148]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[152]_i_2 
       (.I0(counter_reg_reg[155]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[152]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[152]_i_3 
       (.I0(counter_reg_reg[154]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[152]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[152]_i_4 
       (.I0(counter_reg_reg[153]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[152]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[152]_i_5 
       (.I0(counter_reg_reg[152]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[152]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[156]_i_2 
       (.I0(counter_reg_reg[159]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[156]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[156]_i_3 
       (.I0(counter_reg_reg[158]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[156]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[156]_i_4 
       (.I0(counter_reg_reg[157]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[156]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[156]_i_5 
       (.I0(counter_reg_reg[156]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[156]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[160]_i_2 
       (.I0(counter_reg_reg[163]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[160]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[160]_i_3 
       (.I0(counter_reg_reg[162]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[160]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[160]_i_4 
       (.I0(counter_reg_reg[161]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[160]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[160]_i_5 
       (.I0(counter_reg_reg[160]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[160]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[164]_i_2 
       (.I0(counter_reg_reg[167]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[164]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[164]_i_3 
       (.I0(counter_reg_reg[166]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[164]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[164]_i_4 
       (.I0(counter_reg_reg[165]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[164]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[164]_i_5 
       (.I0(counter_reg_reg[164]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[164]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[168]_i_2 
       (.I0(counter_reg_reg[171]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[168]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[168]_i_3 
       (.I0(counter_reg_reg[170]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[168]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[168]_i_4 
       (.I0(counter_reg_reg[169]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[168]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[168]_i_5 
       (.I0(counter_reg_reg[168]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[168]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7F00)) 
    \counter_reg[16]_i_2 
       (.I0(baud_tick__47_carry__10_n_0),
        .I1(baud_tick__95_carry__2_n_3),
        .I2(baud_tick_carry__10_n_0),
        .I3(counter_reg_reg[19]),
        .O(\counter_reg[16]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7F00)) 
    \counter_reg[16]_i_3 
       (.I0(baud_tick__47_carry__10_n_0),
        .I1(baud_tick__95_carry__2_n_3),
        .I2(baud_tick_carry__10_n_0),
        .I3(counter_reg_reg[18]),
        .O(\counter_reg[16]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h7F00)) 
    \counter_reg[16]_i_4 
       (.I0(baud_tick__47_carry__10_n_0),
        .I1(baud_tick__95_carry__2_n_3),
        .I2(baud_tick_carry__10_n_0),
        .I3(counter_reg_reg[17]),
        .O(\counter_reg[16]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7F00)) 
    \counter_reg[16]_i_5 
       (.I0(baud_tick__47_carry__10_n_0),
        .I1(baud_tick__95_carry__2_n_3),
        .I2(baud_tick_carry__10_n_0),
        .I3(counter_reg_reg[16]),
        .O(\counter_reg[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[172]_i_2 
       (.I0(counter_reg_reg[175]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[172]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[172]_i_3 
       (.I0(counter_reg_reg[174]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[172]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[172]_i_4 
       (.I0(counter_reg_reg[173]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[172]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[172]_i_5 
       (.I0(counter_reg_reg[172]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[172]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[176]_i_2 
       (.I0(counter_reg_reg[179]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[176]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[176]_i_3 
       (.I0(counter_reg_reg[178]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[176]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[176]_i_4 
       (.I0(counter_reg_reg[177]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[176]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[176]_i_5 
       (.I0(counter_reg_reg[176]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[176]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[180]_i_2 
       (.I0(counter_reg_reg[183]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[180]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[180]_i_3 
       (.I0(counter_reg_reg[182]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[180]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[180]_i_4 
       (.I0(counter_reg_reg[181]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[180]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[180]_i_5 
       (.I0(counter_reg_reg[180]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[180]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[184]_i_2 
       (.I0(counter_reg_reg[187]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[184]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[184]_i_3 
       (.I0(counter_reg_reg[186]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[184]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[184]_i_4 
       (.I0(counter_reg_reg[185]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[184]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[184]_i_5 
       (.I0(counter_reg_reg[184]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[184]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[188]_i_2 
       (.I0(counter_reg_reg[191]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[188]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[188]_i_3 
       (.I0(counter_reg_reg[190]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[188]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[188]_i_4 
       (.I0(counter_reg_reg[189]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[188]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[188]_i_5 
       (.I0(counter_reg_reg[188]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[188]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[192]_i_2 
       (.I0(counter_reg_reg[195]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[192]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[192]_i_3 
       (.I0(counter_reg_reg[194]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[192]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[192]_i_4 
       (.I0(counter_reg_reg[193]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[192]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[192]_i_5 
       (.I0(counter_reg_reg[192]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[192]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[196]_i_2 
       (.I0(counter_reg_reg[199]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[196]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[196]_i_3 
       (.I0(counter_reg_reg[198]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[196]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[196]_i_4 
       (.I0(counter_reg_reg[197]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[196]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[196]_i_5 
       (.I0(counter_reg_reg[196]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[196]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[200]_i_2 
       (.I0(counter_reg_reg[203]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[200]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[200]_i_3 
       (.I0(counter_reg_reg[202]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[200]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[200]_i_4 
       (.I0(counter_reg_reg[201]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[200]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[200]_i_5 
       (.I0(counter_reg_reg[200]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[200]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[204]_i_2 
       (.I0(counter_reg_reg[207]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[204]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[204]_i_3 
       (.I0(counter_reg_reg[206]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[204]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[204]_i_4 
       (.I0(counter_reg_reg[205]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[204]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[204]_i_5 
       (.I0(counter_reg_reg[204]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[204]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[208]_i_2 
       (.I0(counter_reg_reg[211]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[208]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[208]_i_3 
       (.I0(counter_reg_reg[210]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[208]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[208]_i_4 
       (.I0(counter_reg_reg[209]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[208]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[208]_i_5 
       (.I0(counter_reg_reg[208]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[208]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7F00)) 
    \counter_reg[20]_i_2 
       (.I0(baud_tick__47_carry__10_n_0),
        .I1(baud_tick__95_carry__2_n_3),
        .I2(baud_tick_carry__10_n_0),
        .I3(counter_reg_reg[23]),
        .O(\counter_reg[20]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7F00)) 
    \counter_reg[20]_i_3 
       (.I0(baud_tick__47_carry__10_n_0),
        .I1(baud_tick__95_carry__2_n_3),
        .I2(baud_tick_carry__10_n_0),
        .I3(counter_reg_reg[22]),
        .O(\counter_reg[20]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h7F00)) 
    \counter_reg[20]_i_4 
       (.I0(baud_tick__47_carry__10_n_0),
        .I1(baud_tick__95_carry__2_n_3),
        .I2(baud_tick_carry__10_n_0),
        .I3(counter_reg_reg[21]),
        .O(\counter_reg[20]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7F00)) 
    \counter_reg[20]_i_5 
       (.I0(baud_tick__47_carry__10_n_0),
        .I1(baud_tick__95_carry__2_n_3),
        .I2(baud_tick_carry__10_n_0),
        .I3(counter_reg_reg[20]),
        .O(\counter_reg[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[212]_i_2 
       (.I0(counter_reg_reg[215]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[212]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[212]_i_3 
       (.I0(counter_reg_reg[214]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[212]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[212]_i_4 
       (.I0(counter_reg_reg[213]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[212]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[212]_i_5 
       (.I0(counter_reg_reg[212]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[212]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[216]_i_2 
       (.I0(counter_reg_reg[219]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[216]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[216]_i_3 
       (.I0(counter_reg_reg[218]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[216]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[216]_i_4 
       (.I0(counter_reg_reg[217]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[216]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[216]_i_5 
       (.I0(counter_reg_reg[216]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[216]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[220]_i_2 
       (.I0(counter_reg_reg[223]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[220]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[220]_i_3 
       (.I0(counter_reg_reg[222]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[220]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[220]_i_4 
       (.I0(counter_reg_reg[221]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[220]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[220]_i_5 
       (.I0(counter_reg_reg[220]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[220]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[224]_i_2 
       (.I0(counter_reg_reg[227]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[224]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[224]_i_3 
       (.I0(counter_reg_reg[226]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[224]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[224]_i_4 
       (.I0(counter_reg_reg[225]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[224]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[224]_i_5 
       (.I0(counter_reg_reg[224]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[224]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[228]_i_2 
       (.I0(counter_reg_reg[231]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[228]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[228]_i_3 
       (.I0(counter_reg_reg[230]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[228]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[228]_i_4 
       (.I0(counter_reg_reg[229]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[228]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[228]_i_5 
       (.I0(counter_reg_reg[228]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[228]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[232]_i_2 
       (.I0(counter_reg_reg[235]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[232]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[232]_i_3 
       (.I0(counter_reg_reg[234]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[232]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[232]_i_4 
       (.I0(counter_reg_reg[233]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[232]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[232]_i_5 
       (.I0(counter_reg_reg[232]),
        .I1(\counter_reg[140]_i_6_n_0 ),
        .O(\counter_reg[232]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \counter_reg[232]_i_6 
       (.I0(baud_tick__47_carry__10_n_0),
        .I1(baud_tick__95_carry__2_n_3),
        .I2(baud_tick_carry__10_n_0),
        .O(\counter_reg[232]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[236]_i_2 
       (.I0(counter_reg_reg[239]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[236]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[236]_i_3 
       (.I0(counter_reg_reg[238]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[236]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[236]_i_4 
       (.I0(counter_reg_reg[237]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[236]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[236]_i_5 
       (.I0(counter_reg_reg[236]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[236]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[240]_i_2 
       (.I0(counter_reg_reg[243]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[240]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[240]_i_3 
       (.I0(counter_reg_reg[242]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[240]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[240]_i_4 
       (.I0(counter_reg_reg[241]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[240]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[240]_i_5 
       (.I0(counter_reg_reg[240]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[240]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[244]_i_2 
       (.I0(counter_reg_reg[247]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[244]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[244]_i_3 
       (.I0(counter_reg_reg[246]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[244]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[244]_i_4 
       (.I0(counter_reg_reg[245]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[244]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[244]_i_5 
       (.I0(counter_reg_reg[244]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[244]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[248]_i_2 
       (.I0(counter_reg_reg[251]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[248]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[248]_i_3 
       (.I0(counter_reg_reg[250]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[248]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[248]_i_4 
       (.I0(counter_reg_reg[249]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[248]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[248]_i_5 
       (.I0(counter_reg_reg[248]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[248]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7F00)) 
    \counter_reg[24]_i_2 
       (.I0(baud_tick__47_carry__10_n_0),
        .I1(baud_tick__95_carry__2_n_3),
        .I2(baud_tick_carry__10_n_0),
        .I3(counter_reg_reg[27]),
        .O(\counter_reg[24]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7F00)) 
    \counter_reg[24]_i_3 
       (.I0(baud_tick__47_carry__10_n_0),
        .I1(baud_tick__95_carry__2_n_3),
        .I2(baud_tick_carry__10_n_0),
        .I3(counter_reg_reg[26]),
        .O(\counter_reg[24]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h7F00)) 
    \counter_reg[24]_i_4 
       (.I0(baud_tick__47_carry__10_n_0),
        .I1(baud_tick__95_carry__2_n_3),
        .I2(baud_tick_carry__10_n_0),
        .I3(counter_reg_reg[25]),
        .O(\counter_reg[24]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7F00)) 
    \counter_reg[24]_i_5 
       (.I0(baud_tick__47_carry__10_n_0),
        .I1(baud_tick__95_carry__2_n_3),
        .I2(baud_tick_carry__10_n_0),
        .I3(counter_reg_reg[24]),
        .O(\counter_reg[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[252]_i_2 
       (.I0(counter_reg_reg[255]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[252]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[252]_i_3 
       (.I0(counter_reg_reg[254]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[252]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[252]_i_4 
       (.I0(counter_reg_reg[253]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[252]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[252]_i_5 
       (.I0(counter_reg_reg[252]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[252]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[256]_i_2 
       (.I0(counter_reg_reg[259]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[256]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[256]_i_3 
       (.I0(counter_reg_reg[258]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[256]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[256]_i_4 
       (.I0(counter_reg_reg[257]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[256]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[256]_i_5 
       (.I0(counter_reg_reg[256]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[256]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[260]_i_2 
       (.I0(counter_reg_reg[263]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[260]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[260]_i_3 
       (.I0(counter_reg_reg[262]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[260]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[260]_i_4 
       (.I0(counter_reg_reg[261]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[260]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[260]_i_5 
       (.I0(counter_reg_reg[260]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[260]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[264]_i_2 
       (.I0(counter_reg_reg[267]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[264]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[264]_i_3 
       (.I0(counter_reg_reg[266]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[264]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[264]_i_4 
       (.I0(counter_reg_reg[265]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[264]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[264]_i_5 
       (.I0(counter_reg_reg[264]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[264]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[268]_i_2 
       (.I0(counter_reg_reg[271]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[268]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[268]_i_3 
       (.I0(counter_reg_reg[270]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[268]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[268]_i_4 
       (.I0(counter_reg_reg[269]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[268]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[268]_i_5 
       (.I0(counter_reg_reg[268]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[268]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[272]_i_2 
       (.I0(counter_reg_reg[275]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[272]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[272]_i_3 
       (.I0(counter_reg_reg[274]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[272]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[272]_i_4 
       (.I0(counter_reg_reg[273]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[272]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[272]_i_5 
       (.I0(counter_reg_reg[272]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[272]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[276]_i_2 
       (.I0(counter_reg_reg[279]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[276]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[276]_i_3 
       (.I0(counter_reg_reg[278]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[276]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[276]_i_4 
       (.I0(counter_reg_reg[277]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[276]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[276]_i_5 
       (.I0(counter_reg_reg[276]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[276]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[280]_i_2 
       (.I0(counter_reg_reg[283]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[280]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[280]_i_3 
       (.I0(counter_reg_reg[282]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[280]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[280]_i_4 
       (.I0(counter_reg_reg[281]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[280]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[280]_i_5 
       (.I0(counter_reg_reg[280]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[280]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[284]_i_2 
       (.I0(counter_reg_reg[287]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[284]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[284]_i_3 
       (.I0(counter_reg_reg[286]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[284]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[284]_i_4 
       (.I0(counter_reg_reg[285]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[284]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[284]_i_5 
       (.I0(counter_reg_reg[284]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[284]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[288]_i_2 
       (.I0(counter_reg_reg[291]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[288]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[288]_i_3 
       (.I0(counter_reg_reg[290]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[288]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[288]_i_4 
       (.I0(counter_reg_reg[289]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[288]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[288]_i_5 
       (.I0(counter_reg_reg[288]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[288]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7F00)) 
    \counter_reg[28]_i_2 
       (.I0(baud_tick__47_carry__10_n_0),
        .I1(baud_tick__95_carry__2_n_3),
        .I2(baud_tick_carry__10_n_0),
        .I3(counter_reg_reg[31]),
        .O(\counter_reg[28]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7F00)) 
    \counter_reg[28]_i_3 
       (.I0(baud_tick__47_carry__10_n_0),
        .I1(baud_tick__95_carry__2_n_3),
        .I2(baud_tick_carry__10_n_0),
        .I3(counter_reg_reg[30]),
        .O(\counter_reg[28]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h7F00)) 
    \counter_reg[28]_i_4 
       (.I0(baud_tick__47_carry__10_n_0),
        .I1(baud_tick__95_carry__2_n_3),
        .I2(baud_tick_carry__10_n_0),
        .I3(counter_reg_reg[29]),
        .O(\counter_reg[28]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7F00)) 
    \counter_reg[28]_i_5 
       (.I0(baud_tick__47_carry__10_n_0),
        .I1(baud_tick__95_carry__2_n_3),
        .I2(baud_tick_carry__10_n_0),
        .I3(counter_reg_reg[28]),
        .O(\counter_reg[28]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[292]_i_2 
       (.I0(counter_reg_reg[295]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[292]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[292]_i_3 
       (.I0(counter_reg_reg[294]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[292]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[292]_i_4 
       (.I0(counter_reg_reg[293]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[292]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[292]_i_5 
       (.I0(counter_reg_reg[292]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[292]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[296]_i_2 
       (.I0(counter_reg_reg[299]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[296]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[296]_i_3 
       (.I0(counter_reg_reg[298]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[296]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[296]_i_4 
       (.I0(counter_reg_reg[297]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[296]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[296]_i_5 
       (.I0(counter_reg_reg[296]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[296]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[300]_i_2 
       (.I0(counter_reg_reg[303]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[300]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[300]_i_3 
       (.I0(counter_reg_reg[302]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[300]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[300]_i_4 
       (.I0(counter_reg_reg[301]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[300]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[300]_i_5 
       (.I0(counter_reg_reg[300]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[300]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[304]_i_2 
       (.I0(counter_reg_reg[307]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[304]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[304]_i_3 
       (.I0(counter_reg_reg[306]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[304]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[304]_i_4 
       (.I0(counter_reg_reg[305]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[304]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[304]_i_5 
       (.I0(counter_reg_reg[304]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[304]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[308]_i_2 
       (.I0(counter_reg_reg[311]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[308]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[308]_i_3 
       (.I0(counter_reg_reg[310]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[308]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[308]_i_4 
       (.I0(counter_reg_reg[309]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[308]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[308]_i_5 
       (.I0(counter_reg_reg[308]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[308]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[312]_i_2 
       (.I0(counter_reg_reg[315]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[312]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[312]_i_3 
       (.I0(counter_reg_reg[314]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[312]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[312]_i_4 
       (.I0(counter_reg_reg[313]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[312]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[312]_i_5 
       (.I0(counter_reg_reg[312]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[312]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[316]_i_2 
       (.I0(counter_reg_reg[319]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[316]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[316]_i_3 
       (.I0(counter_reg_reg[318]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[316]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[316]_i_4 
       (.I0(counter_reg_reg[317]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[316]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[316]_i_5 
       (.I0(counter_reg_reg[316]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[316]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[320]_i_2 
       (.I0(counter_reg_reg[323]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[320]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[320]_i_3 
       (.I0(counter_reg_reg[322]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[320]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[320]_i_4 
       (.I0(counter_reg_reg[321]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[320]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[320]_i_5 
       (.I0(counter_reg_reg[320]),
        .I1(\counter_reg[232]_i_6_n_0 ),
        .O(\counter_reg[320]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[324]_i_2 
       (.I0(counter_reg_reg[325]),
        .I1(baud_tick_carry__10_0),
        .O(\counter_reg[324]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[324]_i_3 
       (.I0(counter_reg_reg[324]),
        .I1(baud_tick_carry__10_0),
        .O(\counter_reg[324]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h7F00)) 
    \counter_reg[32]_i_2 
       (.I0(baud_tick__47_carry__10_n_0),
        .I1(baud_tick__95_carry__2_n_3),
        .I2(baud_tick_carry__10_n_0),
        .I3(counter_reg_reg[35]),
        .O(\counter_reg[32]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7F00)) 
    \counter_reg[32]_i_3 
       (.I0(baud_tick__47_carry__10_n_0),
        .I1(baud_tick__95_carry__2_n_3),
        .I2(baud_tick_carry__10_n_0),
        .I3(counter_reg_reg[34]),
        .O(\counter_reg[32]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h7F00)) 
    \counter_reg[32]_i_4 
       (.I0(baud_tick__47_carry__10_n_0),
        .I1(baud_tick__95_carry__2_n_3),
        .I2(baud_tick_carry__10_n_0),
        .I3(counter_reg_reg[33]),
        .O(\counter_reg[32]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7F00)) 
    \counter_reg[32]_i_5 
       (.I0(baud_tick__47_carry__10_n_0),
        .I1(baud_tick__95_carry__2_n_3),
        .I2(baud_tick_carry__10_n_0),
        .I3(counter_reg_reg[32]),
        .O(\counter_reg[32]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7F00)) 
    \counter_reg[36]_i_2 
       (.I0(baud_tick__47_carry__10_n_0),
        .I1(baud_tick__95_carry__2_n_3),
        .I2(baud_tick_carry__10_n_0),
        .I3(counter_reg_reg[39]),
        .O(\counter_reg[36]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7F00)) 
    \counter_reg[36]_i_3 
       (.I0(baud_tick__47_carry__10_n_0),
        .I1(baud_tick__95_carry__2_n_3),
        .I2(baud_tick_carry__10_n_0),
        .I3(counter_reg_reg[38]),
        .O(\counter_reg[36]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h7F00)) 
    \counter_reg[36]_i_4 
       (.I0(baud_tick__47_carry__10_n_0),
        .I1(baud_tick__95_carry__2_n_3),
        .I2(baud_tick_carry__10_n_0),
        .I3(counter_reg_reg[37]),
        .O(\counter_reg[36]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7F00)) 
    \counter_reg[36]_i_5 
       (.I0(baud_tick__47_carry__10_n_0),
        .I1(baud_tick__95_carry__2_n_3),
        .I2(baud_tick_carry__10_n_0),
        .I3(counter_reg_reg[36]),
        .O(\counter_reg[36]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7F00)) 
    \counter_reg[40]_i_2 
       (.I0(baud_tick__47_carry__10_n_0),
        .I1(baud_tick__95_carry__2_n_3),
        .I2(baud_tick_carry__10_n_0),
        .I3(counter_reg_reg[43]),
        .O(\counter_reg[40]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7F00)) 
    \counter_reg[40]_i_3 
       (.I0(baud_tick__47_carry__10_n_0),
        .I1(baud_tick__95_carry__2_n_3),
        .I2(baud_tick_carry__10_n_0),
        .I3(counter_reg_reg[42]),
        .O(\counter_reg[40]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h7F00)) 
    \counter_reg[40]_i_4 
       (.I0(baud_tick__47_carry__10_n_0),
        .I1(baud_tick__95_carry__2_n_3),
        .I2(baud_tick_carry__10_n_0),
        .I3(counter_reg_reg[41]),
        .O(\counter_reg[40]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7F00)) 
    \counter_reg[40]_i_5 
       (.I0(baud_tick__47_carry__10_n_0),
        .I1(baud_tick__95_carry__2_n_3),
        .I2(baud_tick_carry__10_n_0),
        .I3(counter_reg_reg[40]),
        .O(\counter_reg[40]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7F00)) 
    \counter_reg[44]_i_2 
       (.I0(baud_tick__47_carry__10_n_0),
        .I1(baud_tick__95_carry__2_n_3),
        .I2(baud_tick_carry__10_n_0),
        .I3(counter_reg_reg[47]),
        .O(\counter_reg[44]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7F00)) 
    \counter_reg[44]_i_3 
       (.I0(baud_tick__47_carry__10_n_0),
        .I1(baud_tick__95_carry__2_n_3),
        .I2(baud_tick_carry__10_n_0),
        .I3(counter_reg_reg[46]),
        .O(\counter_reg[44]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h7F00)) 
    \counter_reg[44]_i_4 
       (.I0(baud_tick__47_carry__10_n_0),
        .I1(baud_tick__95_carry__2_n_3),
        .I2(baud_tick_carry__10_n_0),
        .I3(counter_reg_reg[45]),
        .O(\counter_reg[44]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7F00)) 
    \counter_reg[44]_i_5 
       (.I0(baud_tick__47_carry__10_n_0),
        .I1(baud_tick__95_carry__2_n_3),
        .I2(baud_tick_carry__10_n_0),
        .I3(counter_reg_reg[44]),
        .O(\counter_reg[44]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[48]_i_2 
       (.I0(counter_reg_reg[51]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[48]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[48]_i_3 
       (.I0(counter_reg_reg[50]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[48]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h7F00)) 
    \counter_reg[48]_i_4 
       (.I0(baud_tick__47_carry__10_n_0),
        .I1(baud_tick__95_carry__2_n_3),
        .I2(baud_tick_carry__10_n_0),
        .I3(counter_reg_reg[49]),
        .O(\counter_reg[48]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7F00)) 
    \counter_reg[48]_i_5 
       (.I0(baud_tick__47_carry__10_n_0),
        .I1(baud_tick__95_carry__2_n_3),
        .I2(baud_tick_carry__10_n_0),
        .I3(counter_reg_reg[48]),
        .O(\counter_reg[48]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \counter_reg[48]_i_6 
       (.I0(baud_tick__47_carry__10_n_0),
        .I1(baud_tick__95_carry__2_n_3),
        .I2(baud_tick_carry__10_n_0),
        .O(\counter_reg[48]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h7F00)) 
    \counter_reg[4]_i_2 
       (.I0(baud_tick__47_carry__10_n_0),
        .I1(baud_tick__95_carry__2_n_3),
        .I2(baud_tick_carry__10_n_0),
        .I3(counter_reg_reg[7]),
        .O(\counter_reg[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7F00)) 
    \counter_reg[4]_i_3 
       (.I0(baud_tick__47_carry__10_n_0),
        .I1(baud_tick__95_carry__2_n_3),
        .I2(baud_tick_carry__10_n_0),
        .I3(counter_reg_reg[6]),
        .O(\counter_reg[4]_i_3_n_0 ));
  (* PHYS_OPT_MODIFIED = "PIN_SWAP" *) 
  LUT4 #(
    .INIT(16'h7F00)) 
    \counter_reg[4]_i_4 
       (.I0(baud_tick__47_carry__10_n_0),
        .I1(baud_tick__95_carry__2_n_3),
        .I2(baud_tick_carry__10_n_0),
        .I3(counter_reg_reg[5]),
        .O(\counter_reg[4]_i_4_n_0 ));
  (* PHYS_OPT_MODIFIED = "PIN_SWAP" *) 
  LUT4 #(
    .INIT(16'h7F00)) 
    \counter_reg[4]_i_5 
       (.I0(baud_tick__47_carry__10_n_0),
        .I1(baud_tick__95_carry__2_n_3),
        .I2(baud_tick_carry__10_n_0),
        .I3(counter_reg_reg[4]),
        .O(\counter_reg[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[52]_i_2 
       (.I0(counter_reg_reg[55]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[52]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[52]_i_3 
       (.I0(counter_reg_reg[54]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[52]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h7F00)) 
    \counter_reg[52]_i_4 
       (.I0(baud_tick__47_carry__10_n_0),
        .I1(baud_tick__95_carry__2_n_3),
        .I2(baud_tick_carry__10_n_0),
        .I3(counter_reg_reg[53]),
        .O(\counter_reg[52]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[52]_i_5 
       (.I0(counter_reg_reg[52]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[52]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[56]_i_2 
       (.I0(counter_reg_reg[59]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[56]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[56]_i_3 
       (.I0(counter_reg_reg[58]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[56]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[56]_i_4 
       (.I0(counter_reg_reg[57]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[56]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[56]_i_5 
       (.I0(counter_reg_reg[56]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[56]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[60]_i_2 
       (.I0(counter_reg_reg[63]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[60]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[60]_i_3 
       (.I0(counter_reg_reg[62]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[60]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[60]_i_4 
       (.I0(counter_reg_reg[61]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[60]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[60]_i_5 
       (.I0(counter_reg_reg[60]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[60]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[64]_i_2 
       (.I0(counter_reg_reg[67]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[64]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[64]_i_3 
       (.I0(counter_reg_reg[66]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[64]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[64]_i_4 
       (.I0(counter_reg_reg[65]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[64]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[64]_i_5 
       (.I0(counter_reg_reg[64]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[64]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[68]_i_2 
       (.I0(counter_reg_reg[71]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[68]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[68]_i_3 
       (.I0(counter_reg_reg[70]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[68]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[68]_i_4 
       (.I0(counter_reg_reg[69]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[68]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[68]_i_5 
       (.I0(counter_reg_reg[68]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[68]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[72]_i_2 
       (.I0(counter_reg_reg[75]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[72]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[72]_i_3 
       (.I0(counter_reg_reg[74]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[72]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[72]_i_4 
       (.I0(counter_reg_reg[73]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[72]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[72]_i_5 
       (.I0(counter_reg_reg[72]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[72]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[76]_i_2 
       (.I0(counter_reg_reg[79]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[76]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[76]_i_3 
       (.I0(counter_reg_reg[78]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[76]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[76]_i_4 
       (.I0(counter_reg_reg[77]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[76]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[76]_i_5 
       (.I0(counter_reg_reg[76]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[76]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[80]_i_2 
       (.I0(counter_reg_reg[83]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[80]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[80]_i_3 
       (.I0(counter_reg_reg[82]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[80]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[80]_i_4 
       (.I0(counter_reg_reg[81]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[80]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[80]_i_5 
       (.I0(counter_reg_reg[80]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[80]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[84]_i_2 
       (.I0(counter_reg_reg[87]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[84]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[84]_i_3 
       (.I0(counter_reg_reg[86]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[84]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[84]_i_4 
       (.I0(counter_reg_reg[85]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[84]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[84]_i_5 
       (.I0(counter_reg_reg[84]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[84]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[88]_i_2 
       (.I0(counter_reg_reg[91]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[88]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[88]_i_3 
       (.I0(counter_reg_reg[90]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[88]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[88]_i_4 
       (.I0(counter_reg_reg[89]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[88]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[88]_i_5 
       (.I0(counter_reg_reg[88]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[88]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7F00)) 
    \counter_reg[8]_i_2 
       (.I0(baud_tick__47_carry__10_n_0),
        .I1(baud_tick__95_carry__2_n_3),
        .I2(baud_tick_carry__10_n_0),
        .I3(counter_reg_reg[11]),
        .O(\counter_reg[8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7F00)) 
    \counter_reg[8]_i_3 
       (.I0(baud_tick__47_carry__10_n_0),
        .I1(baud_tick__95_carry__2_n_3),
        .I2(baud_tick_carry__10_n_0),
        .I3(counter_reg_reg[10]),
        .O(\counter_reg[8]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h7F00)) 
    \counter_reg[8]_i_4 
       (.I0(baud_tick__47_carry__10_n_0),
        .I1(baud_tick__95_carry__2_n_3),
        .I2(baud_tick_carry__10_n_0),
        .I3(counter_reg_reg[9]),
        .O(\counter_reg[8]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7F00)) 
    \counter_reg[8]_i_5 
       (.I0(baud_tick__47_carry__10_n_0),
        .I1(baud_tick__95_carry__2_n_3),
        .I2(baud_tick_carry__10_n_0),
        .I3(counter_reg_reg[8]),
        .O(\counter_reg[8]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[92]_i_2 
       (.I0(counter_reg_reg[95]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[92]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[92]_i_3 
       (.I0(counter_reg_reg[94]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[92]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[92]_i_4 
       (.I0(counter_reg_reg[93]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[92]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[92]_i_5 
       (.I0(counter_reg_reg[92]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[92]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[96]_i_2 
       (.I0(counter_reg_reg[99]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[96]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[96]_i_3 
       (.I0(counter_reg_reg[98]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[96]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[96]_i_4 
       (.I0(counter_reg_reg[97]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[96]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_reg[96]_i_5 
       (.I0(counter_reg_reg[96]),
        .I1(\counter_reg[48]_i_6_n_0 ),
        .O(\counter_reg[96]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[0]_i_1_n_7 ),
        .Q(counter_reg_reg[0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\counter_reg_reg[0]_i_1_n_0 ,\NLW_counter_reg_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\counter_reg[0]_i_2_n_0 }),
        .O({\counter_reg_reg[0]_i_1_n_4 ,\counter_reg_reg[0]_i_1_n_5 ,\counter_reg_reg[0]_i_1_n_6 ,\counter_reg_reg[0]_i_1_n_7 }),
        .S({\counter_reg[0]_i_3_n_0 ,\counter_reg[0]_i_4_n_0 ,\counter_reg[0]_i_5_n_0 ,\counter_reg[0]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[100] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[100]_i_1_n_7 ),
        .Q(counter_reg_reg[100]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[100]_i_1 
       (.CI(\counter_reg_reg[96]_i_1_n_0 ),
        .CO({\counter_reg_reg[100]_i_1_n_0 ,\NLW_counter_reg_reg[100]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[100]_i_1_n_4 ,\counter_reg_reg[100]_i_1_n_5 ,\counter_reg_reg[100]_i_1_n_6 ,\counter_reg_reg[100]_i_1_n_7 }),
        .S({\counter_reg[100]_i_2_n_0 ,\counter_reg[100]_i_3_n_0 ,\counter_reg[100]_i_4_n_0 ,\counter_reg[100]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[101] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[100]_i_1_n_6 ),
        .Q(counter_reg_reg[101]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[102] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[100]_i_1_n_5 ),
        .Q(counter_reg_reg[102]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[103] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[100]_i_1_n_4 ),
        .Q(counter_reg_reg[103]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[104] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[104]_i_1_n_7 ),
        .Q(counter_reg_reg[104]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[104]_i_1 
       (.CI(\counter_reg_reg[100]_i_1_n_0 ),
        .CO({\counter_reg_reg[104]_i_1_n_0 ,\NLW_counter_reg_reg[104]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[104]_i_1_n_4 ,\counter_reg_reg[104]_i_1_n_5 ,\counter_reg_reg[104]_i_1_n_6 ,\counter_reg_reg[104]_i_1_n_7 }),
        .S({\counter_reg[104]_i_2_n_0 ,\counter_reg[104]_i_3_n_0 ,\counter_reg[104]_i_4_n_0 ,\counter_reg[104]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[105] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[104]_i_1_n_6 ),
        .Q(counter_reg_reg[105]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[106] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[104]_i_1_n_5 ),
        .Q(counter_reg_reg[106]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[107] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[104]_i_1_n_4 ),
        .Q(counter_reg_reg[107]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[108] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[108]_i_1_n_7 ),
        .Q(counter_reg_reg[108]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[108]_i_1 
       (.CI(\counter_reg_reg[104]_i_1_n_0 ),
        .CO({\counter_reg_reg[108]_i_1_n_0 ,\NLW_counter_reg_reg[108]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[108]_i_1_n_4 ,\counter_reg_reg[108]_i_1_n_5 ,\counter_reg_reg[108]_i_1_n_6 ,\counter_reg_reg[108]_i_1_n_7 }),
        .S({\counter_reg[108]_i_2_n_0 ,\counter_reg[108]_i_3_n_0 ,\counter_reg[108]_i_4_n_0 ,\counter_reg[108]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[109] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[108]_i_1_n_6 ),
        .Q(counter_reg_reg[109]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[8]_i_1_n_5 ),
        .Q(counter_reg_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[110] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[108]_i_1_n_5 ),
        .Q(counter_reg_reg[110]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[111] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[108]_i_1_n_4 ),
        .Q(counter_reg_reg[111]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[112] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[112]_i_1_n_7 ),
        .Q(counter_reg_reg[112]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[112]_i_1 
       (.CI(\counter_reg_reg[108]_i_1_n_0 ),
        .CO({\counter_reg_reg[112]_i_1_n_0 ,\NLW_counter_reg_reg[112]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[112]_i_1_n_4 ,\counter_reg_reg[112]_i_1_n_5 ,\counter_reg_reg[112]_i_1_n_6 ,\counter_reg_reg[112]_i_1_n_7 }),
        .S({\counter_reg[112]_i_2_n_0 ,\counter_reg[112]_i_3_n_0 ,\counter_reg[112]_i_4_n_0 ,\counter_reg[112]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[113] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[112]_i_1_n_6 ),
        .Q(counter_reg_reg[113]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[114] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[112]_i_1_n_5 ),
        .Q(counter_reg_reg[114]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[115] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[112]_i_1_n_4 ),
        .Q(counter_reg_reg[115]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[116] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[116]_i_1_n_7 ),
        .Q(counter_reg_reg[116]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[116]_i_1 
       (.CI(\counter_reg_reg[112]_i_1_n_0 ),
        .CO({\counter_reg_reg[116]_i_1_n_0 ,\NLW_counter_reg_reg[116]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[116]_i_1_n_4 ,\counter_reg_reg[116]_i_1_n_5 ,\counter_reg_reg[116]_i_1_n_6 ,\counter_reg_reg[116]_i_1_n_7 }),
        .S({\counter_reg[116]_i_2_n_0 ,\counter_reg[116]_i_3_n_0 ,\counter_reg[116]_i_4_n_0 ,\counter_reg[116]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[117] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[116]_i_1_n_6 ),
        .Q(counter_reg_reg[117]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[118] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[116]_i_1_n_5 ),
        .Q(counter_reg_reg[118]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[119] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[116]_i_1_n_4 ),
        .Q(counter_reg_reg[119]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[8]_i_1_n_4 ),
        .Q(counter_reg_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[120] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[120]_i_1_n_7 ),
        .Q(counter_reg_reg[120]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[120]_i_1 
       (.CI(\counter_reg_reg[116]_i_1_n_0 ),
        .CO({\counter_reg_reg[120]_i_1_n_0 ,\NLW_counter_reg_reg[120]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[120]_i_1_n_4 ,\counter_reg_reg[120]_i_1_n_5 ,\counter_reg_reg[120]_i_1_n_6 ,\counter_reg_reg[120]_i_1_n_7 }),
        .S({\counter_reg[120]_i_2_n_0 ,\counter_reg[120]_i_3_n_0 ,\counter_reg[120]_i_4_n_0 ,\counter_reg[120]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[121] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[120]_i_1_n_6 ),
        .Q(counter_reg_reg[121]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[122] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[120]_i_1_n_5 ),
        .Q(counter_reg_reg[122]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[123] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[120]_i_1_n_4 ),
        .Q(counter_reg_reg[123]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[124] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[124]_i_1_n_7 ),
        .Q(counter_reg_reg[124]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[124]_i_1 
       (.CI(\counter_reg_reg[120]_i_1_n_0 ),
        .CO({\counter_reg_reg[124]_i_1_n_0 ,\NLW_counter_reg_reg[124]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[124]_i_1_n_4 ,\counter_reg_reg[124]_i_1_n_5 ,\counter_reg_reg[124]_i_1_n_6 ,\counter_reg_reg[124]_i_1_n_7 }),
        .S({\counter_reg[124]_i_2_n_0 ,\counter_reg[124]_i_3_n_0 ,\counter_reg[124]_i_4_n_0 ,\counter_reg[124]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[125] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[124]_i_1_n_6 ),
        .Q(counter_reg_reg[125]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[126] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[124]_i_1_n_5 ),
        .Q(counter_reg_reg[126]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[127] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[124]_i_1_n_4 ),
        .Q(counter_reg_reg[127]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[128] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[128]_i_1_n_7 ),
        .Q(counter_reg_reg[128]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[128]_i_1 
       (.CI(\counter_reg_reg[124]_i_1_n_0 ),
        .CO({\counter_reg_reg[128]_i_1_n_0 ,\NLW_counter_reg_reg[128]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[128]_i_1_n_4 ,\counter_reg_reg[128]_i_1_n_5 ,\counter_reg_reg[128]_i_1_n_6 ,\counter_reg_reg[128]_i_1_n_7 }),
        .S({\counter_reg[128]_i_2_n_0 ,\counter_reg[128]_i_3_n_0 ,\counter_reg[128]_i_4_n_0 ,\counter_reg[128]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[129] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[128]_i_1_n_6 ),
        .Q(counter_reg_reg[129]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[12]_i_1_n_7 ),
        .Q(counter_reg_reg[12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[12]_i_1 
       (.CI(\counter_reg_reg[8]_i_1_n_0 ),
        .CO({\counter_reg_reg[12]_i_1_n_0 ,\NLW_counter_reg_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[12]_i_1_n_4 ,\counter_reg_reg[12]_i_1_n_5 ,\counter_reg_reg[12]_i_1_n_6 ,\counter_reg_reg[12]_i_1_n_7 }),
        .S({\counter_reg[12]_i_2_n_0 ,\counter_reg[12]_i_3_n_0 ,\counter_reg[12]_i_4_n_0 ,\counter_reg[12]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[130] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[128]_i_1_n_5 ),
        .Q(counter_reg_reg[130]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[131] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[128]_i_1_n_4 ),
        .Q(counter_reg_reg[131]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[132] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[132]_i_1_n_7 ),
        .Q(counter_reg_reg[132]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[132]_i_1 
       (.CI(\counter_reg_reg[128]_i_1_n_0 ),
        .CO({\counter_reg_reg[132]_i_1_n_0 ,\NLW_counter_reg_reg[132]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[132]_i_1_n_4 ,\counter_reg_reg[132]_i_1_n_5 ,\counter_reg_reg[132]_i_1_n_6 ,\counter_reg_reg[132]_i_1_n_7 }),
        .S({\counter_reg[132]_i_2_n_0 ,\counter_reg[132]_i_3_n_0 ,\counter_reg[132]_i_4_n_0 ,\counter_reg[132]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[133] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[132]_i_1_n_6 ),
        .Q(counter_reg_reg[133]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[134] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[132]_i_1_n_5 ),
        .Q(counter_reg_reg[134]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[135] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[132]_i_1_n_4 ),
        .Q(counter_reg_reg[135]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[136] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[136]_i_1_n_7 ),
        .Q(counter_reg_reg[136]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[136]_i_1 
       (.CI(\counter_reg_reg[132]_i_1_n_0 ),
        .CO({\counter_reg_reg[136]_i_1_n_0 ,\NLW_counter_reg_reg[136]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[136]_i_1_n_4 ,\counter_reg_reg[136]_i_1_n_5 ,\counter_reg_reg[136]_i_1_n_6 ,\counter_reg_reg[136]_i_1_n_7 }),
        .S({\counter_reg[136]_i_2_n_0 ,\counter_reg[136]_i_3_n_0 ,\counter_reg[136]_i_4_n_0 ,\counter_reg[136]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[137] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[136]_i_1_n_6 ),
        .Q(counter_reg_reg[137]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[138] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[136]_i_1_n_5 ),
        .Q(counter_reg_reg[138]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[139] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[136]_i_1_n_4 ),
        .Q(counter_reg_reg[139]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[12]_i_1_n_6 ),
        .Q(counter_reg_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[140] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[140]_i_1_n_7 ),
        .Q(counter_reg_reg[140]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[140]_i_1 
       (.CI(\counter_reg_reg[136]_i_1_n_0 ),
        .CO({\counter_reg_reg[140]_i_1_n_0 ,\NLW_counter_reg_reg[140]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[140]_i_1_n_4 ,\counter_reg_reg[140]_i_1_n_5 ,\counter_reg_reg[140]_i_1_n_6 ,\counter_reg_reg[140]_i_1_n_7 }),
        .S({\counter_reg[140]_i_2_n_0 ,\counter_reg[140]_i_3_n_0 ,\counter_reg[140]_i_4_n_0 ,\counter_reg[140]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[141] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[140]_i_1_n_6 ),
        .Q(counter_reg_reg[141]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[142] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[140]_i_1_n_5 ),
        .Q(counter_reg_reg[142]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[143] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[140]_i_1_n_4 ),
        .Q(counter_reg_reg[143]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[144] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[144]_i_1_n_7 ),
        .Q(counter_reg_reg[144]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[144]_i_1 
       (.CI(\counter_reg_reg[140]_i_1_n_0 ),
        .CO({\counter_reg_reg[144]_i_1_n_0 ,\NLW_counter_reg_reg[144]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[144]_i_1_n_4 ,\counter_reg_reg[144]_i_1_n_5 ,\counter_reg_reg[144]_i_1_n_6 ,\counter_reg_reg[144]_i_1_n_7 }),
        .S({\counter_reg[144]_i_2_n_0 ,\counter_reg[144]_i_3_n_0 ,\counter_reg[144]_i_4_n_0 ,\counter_reg[144]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[145] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[144]_i_1_n_6 ),
        .Q(counter_reg_reg[145]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[146] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[144]_i_1_n_5 ),
        .Q(counter_reg_reg[146]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[147] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[144]_i_1_n_4 ),
        .Q(counter_reg_reg[147]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[148] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[148]_i_1_n_7 ),
        .Q(counter_reg_reg[148]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[148]_i_1 
       (.CI(\counter_reg_reg[144]_i_1_n_0 ),
        .CO({\counter_reg_reg[148]_i_1_n_0 ,\NLW_counter_reg_reg[148]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[148]_i_1_n_4 ,\counter_reg_reg[148]_i_1_n_5 ,\counter_reg_reg[148]_i_1_n_6 ,\counter_reg_reg[148]_i_1_n_7 }),
        .S({\counter_reg[148]_i_2_n_0 ,\counter_reg[148]_i_3_n_0 ,\counter_reg[148]_i_4_n_0 ,\counter_reg[148]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[149] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[148]_i_1_n_6 ),
        .Q(counter_reg_reg[149]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[12]_i_1_n_5 ),
        .Q(counter_reg_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[150] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[148]_i_1_n_5 ),
        .Q(counter_reg_reg[150]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[151] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[148]_i_1_n_4 ),
        .Q(counter_reg_reg[151]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[152] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[152]_i_1_n_7 ),
        .Q(counter_reg_reg[152]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[152]_i_1 
       (.CI(\counter_reg_reg[148]_i_1_n_0 ),
        .CO({\counter_reg_reg[152]_i_1_n_0 ,\NLW_counter_reg_reg[152]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[152]_i_1_n_4 ,\counter_reg_reg[152]_i_1_n_5 ,\counter_reg_reg[152]_i_1_n_6 ,\counter_reg_reg[152]_i_1_n_7 }),
        .S({\counter_reg[152]_i_2_n_0 ,\counter_reg[152]_i_3_n_0 ,\counter_reg[152]_i_4_n_0 ,\counter_reg[152]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[153] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[152]_i_1_n_6 ),
        .Q(counter_reg_reg[153]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[154] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[152]_i_1_n_5 ),
        .Q(counter_reg_reg[154]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[155] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[152]_i_1_n_4 ),
        .Q(counter_reg_reg[155]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[156] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[156]_i_1_n_7 ),
        .Q(counter_reg_reg[156]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[156]_i_1 
       (.CI(\counter_reg_reg[152]_i_1_n_0 ),
        .CO({\counter_reg_reg[156]_i_1_n_0 ,\NLW_counter_reg_reg[156]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[156]_i_1_n_4 ,\counter_reg_reg[156]_i_1_n_5 ,\counter_reg_reg[156]_i_1_n_6 ,\counter_reg_reg[156]_i_1_n_7 }),
        .S({\counter_reg[156]_i_2_n_0 ,\counter_reg[156]_i_3_n_0 ,\counter_reg[156]_i_4_n_0 ,\counter_reg[156]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[157] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[156]_i_1_n_6 ),
        .Q(counter_reg_reg[157]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[158] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[156]_i_1_n_5 ),
        .Q(counter_reg_reg[158]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[159] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[156]_i_1_n_4 ),
        .Q(counter_reg_reg[159]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[12]_i_1_n_4 ),
        .Q(counter_reg_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[160] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[160]_i_1_n_7 ),
        .Q(counter_reg_reg[160]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[160]_i_1 
       (.CI(\counter_reg_reg[156]_i_1_n_0 ),
        .CO({\counter_reg_reg[160]_i_1_n_0 ,\NLW_counter_reg_reg[160]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[160]_i_1_n_4 ,\counter_reg_reg[160]_i_1_n_5 ,\counter_reg_reg[160]_i_1_n_6 ,\counter_reg_reg[160]_i_1_n_7 }),
        .S({\counter_reg[160]_i_2_n_0 ,\counter_reg[160]_i_3_n_0 ,\counter_reg[160]_i_4_n_0 ,\counter_reg[160]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[161] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[160]_i_1_n_6 ),
        .Q(counter_reg_reg[161]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[162] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[160]_i_1_n_5 ),
        .Q(counter_reg_reg[162]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[163] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[160]_i_1_n_4 ),
        .Q(counter_reg_reg[163]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[164] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[164]_i_1_n_7 ),
        .Q(counter_reg_reg[164]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[164]_i_1 
       (.CI(\counter_reg_reg[160]_i_1_n_0 ),
        .CO({\counter_reg_reg[164]_i_1_n_0 ,\NLW_counter_reg_reg[164]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[164]_i_1_n_4 ,\counter_reg_reg[164]_i_1_n_5 ,\counter_reg_reg[164]_i_1_n_6 ,\counter_reg_reg[164]_i_1_n_7 }),
        .S({\counter_reg[164]_i_2_n_0 ,\counter_reg[164]_i_3_n_0 ,\counter_reg[164]_i_4_n_0 ,\counter_reg[164]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[165] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[164]_i_1_n_6 ),
        .Q(counter_reg_reg[165]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[166] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[164]_i_1_n_5 ),
        .Q(counter_reg_reg[166]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[167] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[164]_i_1_n_4 ),
        .Q(counter_reg_reg[167]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[168] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[168]_i_1_n_7 ),
        .Q(counter_reg_reg[168]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[168]_i_1 
       (.CI(\counter_reg_reg[164]_i_1_n_0 ),
        .CO({\counter_reg_reg[168]_i_1_n_0 ,\NLW_counter_reg_reg[168]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[168]_i_1_n_4 ,\counter_reg_reg[168]_i_1_n_5 ,\counter_reg_reg[168]_i_1_n_6 ,\counter_reg_reg[168]_i_1_n_7 }),
        .S({\counter_reg[168]_i_2_n_0 ,\counter_reg[168]_i_3_n_0 ,\counter_reg[168]_i_4_n_0 ,\counter_reg[168]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[169] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[168]_i_1_n_6 ),
        .Q(counter_reg_reg[169]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[16]_i_1_n_7 ),
        .Q(counter_reg_reg[16]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[16]_i_1 
       (.CI(\counter_reg_reg[12]_i_1_n_0 ),
        .CO({\counter_reg_reg[16]_i_1_n_0 ,\NLW_counter_reg_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[16]_i_1_n_4 ,\counter_reg_reg[16]_i_1_n_5 ,\counter_reg_reg[16]_i_1_n_6 ,\counter_reg_reg[16]_i_1_n_7 }),
        .S({\counter_reg[16]_i_2_n_0 ,\counter_reg[16]_i_3_n_0 ,\counter_reg[16]_i_4_n_0 ,\counter_reg[16]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[170] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[168]_i_1_n_5 ),
        .Q(counter_reg_reg[170]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[171] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[168]_i_1_n_4 ),
        .Q(counter_reg_reg[171]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[172] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[172]_i_1_n_7 ),
        .Q(counter_reg_reg[172]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[172]_i_1 
       (.CI(\counter_reg_reg[168]_i_1_n_0 ),
        .CO({\counter_reg_reg[172]_i_1_n_0 ,\NLW_counter_reg_reg[172]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[172]_i_1_n_4 ,\counter_reg_reg[172]_i_1_n_5 ,\counter_reg_reg[172]_i_1_n_6 ,\counter_reg_reg[172]_i_1_n_7 }),
        .S({\counter_reg[172]_i_2_n_0 ,\counter_reg[172]_i_3_n_0 ,\counter_reg[172]_i_4_n_0 ,\counter_reg[172]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[173] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[172]_i_1_n_6 ),
        .Q(counter_reg_reg[173]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[174] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[172]_i_1_n_5 ),
        .Q(counter_reg_reg[174]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[175] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[172]_i_1_n_4 ),
        .Q(counter_reg_reg[175]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[176] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[176]_i_1_n_7 ),
        .Q(counter_reg_reg[176]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[176]_i_1 
       (.CI(\counter_reg_reg[172]_i_1_n_0 ),
        .CO({\counter_reg_reg[176]_i_1_n_0 ,\NLW_counter_reg_reg[176]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[176]_i_1_n_4 ,\counter_reg_reg[176]_i_1_n_5 ,\counter_reg_reg[176]_i_1_n_6 ,\counter_reg_reg[176]_i_1_n_7 }),
        .S({\counter_reg[176]_i_2_n_0 ,\counter_reg[176]_i_3_n_0 ,\counter_reg[176]_i_4_n_0 ,\counter_reg[176]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[177] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[176]_i_1_n_6 ),
        .Q(counter_reg_reg[177]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[178] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[176]_i_1_n_5 ),
        .Q(counter_reg_reg[178]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[179] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[176]_i_1_n_4 ),
        .Q(counter_reg_reg[179]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[16]_i_1_n_6 ),
        .Q(counter_reg_reg[17]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[180] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[180]_i_1_n_7 ),
        .Q(counter_reg_reg[180]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[180]_i_1 
       (.CI(\counter_reg_reg[176]_i_1_n_0 ),
        .CO({\counter_reg_reg[180]_i_1_n_0 ,\NLW_counter_reg_reg[180]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[180]_i_1_n_4 ,\counter_reg_reg[180]_i_1_n_5 ,\counter_reg_reg[180]_i_1_n_6 ,\counter_reg_reg[180]_i_1_n_7 }),
        .S({\counter_reg[180]_i_2_n_0 ,\counter_reg[180]_i_3_n_0 ,\counter_reg[180]_i_4_n_0 ,\counter_reg[180]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[181] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[180]_i_1_n_6 ),
        .Q(counter_reg_reg[181]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[182] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[180]_i_1_n_5 ),
        .Q(counter_reg_reg[182]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[183] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[180]_i_1_n_4 ),
        .Q(counter_reg_reg[183]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[184] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[184]_i_1_n_7 ),
        .Q(counter_reg_reg[184]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[184]_i_1 
       (.CI(\counter_reg_reg[180]_i_1_n_0 ),
        .CO({\counter_reg_reg[184]_i_1_n_0 ,\NLW_counter_reg_reg[184]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[184]_i_1_n_4 ,\counter_reg_reg[184]_i_1_n_5 ,\counter_reg_reg[184]_i_1_n_6 ,\counter_reg_reg[184]_i_1_n_7 }),
        .S({\counter_reg[184]_i_2_n_0 ,\counter_reg[184]_i_3_n_0 ,\counter_reg[184]_i_4_n_0 ,\counter_reg[184]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[185] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[184]_i_1_n_6 ),
        .Q(counter_reg_reg[185]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[186] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[184]_i_1_n_5 ),
        .Q(counter_reg_reg[186]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[187] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[184]_i_1_n_4 ),
        .Q(counter_reg_reg[187]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[188] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[188]_i_1_n_7 ),
        .Q(counter_reg_reg[188]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[188]_i_1 
       (.CI(\counter_reg_reg[184]_i_1_n_0 ),
        .CO({\counter_reg_reg[188]_i_1_n_0 ,\NLW_counter_reg_reg[188]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[188]_i_1_n_4 ,\counter_reg_reg[188]_i_1_n_5 ,\counter_reg_reg[188]_i_1_n_6 ,\counter_reg_reg[188]_i_1_n_7 }),
        .S({\counter_reg[188]_i_2_n_0 ,\counter_reg[188]_i_3_n_0 ,\counter_reg[188]_i_4_n_0 ,\counter_reg[188]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[189] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[188]_i_1_n_6 ),
        .Q(counter_reg_reg[189]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[16]_i_1_n_5 ),
        .Q(counter_reg_reg[18]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[190] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[188]_i_1_n_5 ),
        .Q(counter_reg_reg[190]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[191] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[188]_i_1_n_4 ),
        .Q(counter_reg_reg[191]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[192] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[192]_i_1_n_7 ),
        .Q(counter_reg_reg[192]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[192]_i_1 
       (.CI(\counter_reg_reg[188]_i_1_n_0 ),
        .CO({\counter_reg_reg[192]_i_1_n_0 ,\NLW_counter_reg_reg[192]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[192]_i_1_n_4 ,\counter_reg_reg[192]_i_1_n_5 ,\counter_reg_reg[192]_i_1_n_6 ,\counter_reg_reg[192]_i_1_n_7 }),
        .S({\counter_reg[192]_i_2_n_0 ,\counter_reg[192]_i_3_n_0 ,\counter_reg[192]_i_4_n_0 ,\counter_reg[192]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[193] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[192]_i_1_n_6 ),
        .Q(counter_reg_reg[193]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[194] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[192]_i_1_n_5 ),
        .Q(counter_reg_reg[194]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[195] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[192]_i_1_n_4 ),
        .Q(counter_reg_reg[195]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[196] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[196]_i_1_n_7 ),
        .Q(counter_reg_reg[196]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[196]_i_1 
       (.CI(\counter_reg_reg[192]_i_1_n_0 ),
        .CO({\counter_reg_reg[196]_i_1_n_0 ,\NLW_counter_reg_reg[196]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[196]_i_1_n_4 ,\counter_reg_reg[196]_i_1_n_5 ,\counter_reg_reg[196]_i_1_n_6 ,\counter_reg_reg[196]_i_1_n_7 }),
        .S({\counter_reg[196]_i_2_n_0 ,\counter_reg[196]_i_3_n_0 ,\counter_reg[196]_i_4_n_0 ,\counter_reg[196]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[197] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[196]_i_1_n_6 ),
        .Q(counter_reg_reg[197]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[198] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[196]_i_1_n_5 ),
        .Q(counter_reg_reg[198]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[199] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[196]_i_1_n_4 ),
        .Q(counter_reg_reg[199]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[16]_i_1_n_4 ),
        .Q(counter_reg_reg[19]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[0]_i_1_n_6 ),
        .Q(counter_reg_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[200] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[200]_i_1_n_7 ),
        .Q(counter_reg_reg[200]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[200]_i_1 
       (.CI(\counter_reg_reg[196]_i_1_n_0 ),
        .CO({\counter_reg_reg[200]_i_1_n_0 ,\NLW_counter_reg_reg[200]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[200]_i_1_n_4 ,\counter_reg_reg[200]_i_1_n_5 ,\counter_reg_reg[200]_i_1_n_6 ,\counter_reg_reg[200]_i_1_n_7 }),
        .S({\counter_reg[200]_i_2_n_0 ,\counter_reg[200]_i_3_n_0 ,\counter_reg[200]_i_4_n_0 ,\counter_reg[200]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[201] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[200]_i_1_n_6 ),
        .Q(counter_reg_reg[201]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[202] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[200]_i_1_n_5 ),
        .Q(counter_reg_reg[202]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[203] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[200]_i_1_n_4 ),
        .Q(counter_reg_reg[203]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[204] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[204]_i_1_n_7 ),
        .Q(counter_reg_reg[204]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[204]_i_1 
       (.CI(\counter_reg_reg[200]_i_1_n_0 ),
        .CO({\counter_reg_reg[204]_i_1_n_0 ,\NLW_counter_reg_reg[204]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[204]_i_1_n_4 ,\counter_reg_reg[204]_i_1_n_5 ,\counter_reg_reg[204]_i_1_n_6 ,\counter_reg_reg[204]_i_1_n_7 }),
        .S({\counter_reg[204]_i_2_n_0 ,\counter_reg[204]_i_3_n_0 ,\counter_reg[204]_i_4_n_0 ,\counter_reg[204]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[205] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[204]_i_1_n_6 ),
        .Q(counter_reg_reg[205]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[206] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[204]_i_1_n_5 ),
        .Q(counter_reg_reg[206]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[207] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[204]_i_1_n_4 ),
        .Q(counter_reg_reg[207]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[208] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[208]_i_1_n_7 ),
        .Q(counter_reg_reg[208]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[208]_i_1 
       (.CI(\counter_reg_reg[204]_i_1_n_0 ),
        .CO({\counter_reg_reg[208]_i_1_n_0 ,\NLW_counter_reg_reg[208]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[208]_i_1_n_4 ,\counter_reg_reg[208]_i_1_n_5 ,\counter_reg_reg[208]_i_1_n_6 ,\counter_reg_reg[208]_i_1_n_7 }),
        .S({\counter_reg[208]_i_2_n_0 ,\counter_reg[208]_i_3_n_0 ,\counter_reg[208]_i_4_n_0 ,\counter_reg[208]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[209] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[208]_i_1_n_6 ),
        .Q(counter_reg_reg[209]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[20]_i_1_n_7 ),
        .Q(counter_reg_reg[20]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[20]_i_1 
       (.CI(\counter_reg_reg[16]_i_1_n_0 ),
        .CO({\counter_reg_reg[20]_i_1_n_0 ,\NLW_counter_reg_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[20]_i_1_n_4 ,\counter_reg_reg[20]_i_1_n_5 ,\counter_reg_reg[20]_i_1_n_6 ,\counter_reg_reg[20]_i_1_n_7 }),
        .S({\counter_reg[20]_i_2_n_0 ,\counter_reg[20]_i_3_n_0 ,\counter_reg[20]_i_4_n_0 ,\counter_reg[20]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[210] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[208]_i_1_n_5 ),
        .Q(counter_reg_reg[210]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[211] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[208]_i_1_n_4 ),
        .Q(counter_reg_reg[211]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[212] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[212]_i_1_n_7 ),
        .Q(counter_reg_reg[212]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[212]_i_1 
       (.CI(\counter_reg_reg[208]_i_1_n_0 ),
        .CO({\counter_reg_reg[212]_i_1_n_0 ,\NLW_counter_reg_reg[212]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[212]_i_1_n_4 ,\counter_reg_reg[212]_i_1_n_5 ,\counter_reg_reg[212]_i_1_n_6 ,\counter_reg_reg[212]_i_1_n_7 }),
        .S({\counter_reg[212]_i_2_n_0 ,\counter_reg[212]_i_3_n_0 ,\counter_reg[212]_i_4_n_0 ,\counter_reg[212]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[213] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[212]_i_1_n_6 ),
        .Q(counter_reg_reg[213]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[214] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[212]_i_1_n_5 ),
        .Q(counter_reg_reg[214]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[215] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[212]_i_1_n_4 ),
        .Q(counter_reg_reg[215]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[216] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[216]_i_1_n_7 ),
        .Q(counter_reg_reg[216]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[216]_i_1 
       (.CI(\counter_reg_reg[212]_i_1_n_0 ),
        .CO({\counter_reg_reg[216]_i_1_n_0 ,\NLW_counter_reg_reg[216]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[216]_i_1_n_4 ,\counter_reg_reg[216]_i_1_n_5 ,\counter_reg_reg[216]_i_1_n_6 ,\counter_reg_reg[216]_i_1_n_7 }),
        .S({\counter_reg[216]_i_2_n_0 ,\counter_reg[216]_i_3_n_0 ,\counter_reg[216]_i_4_n_0 ,\counter_reg[216]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[217] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[216]_i_1_n_6 ),
        .Q(counter_reg_reg[217]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[218] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[216]_i_1_n_5 ),
        .Q(counter_reg_reg[218]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[219] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[216]_i_1_n_4 ),
        .Q(counter_reg_reg[219]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[20]_i_1_n_6 ),
        .Q(counter_reg_reg[21]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[220] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[220]_i_1_n_7 ),
        .Q(counter_reg_reg[220]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[220]_i_1 
       (.CI(\counter_reg_reg[216]_i_1_n_0 ),
        .CO({\counter_reg_reg[220]_i_1_n_0 ,\NLW_counter_reg_reg[220]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[220]_i_1_n_4 ,\counter_reg_reg[220]_i_1_n_5 ,\counter_reg_reg[220]_i_1_n_6 ,\counter_reg_reg[220]_i_1_n_7 }),
        .S({\counter_reg[220]_i_2_n_0 ,\counter_reg[220]_i_3_n_0 ,\counter_reg[220]_i_4_n_0 ,\counter_reg[220]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[221] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[220]_i_1_n_6 ),
        .Q(counter_reg_reg[221]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[222] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[220]_i_1_n_5 ),
        .Q(counter_reg_reg[222]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[223] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[220]_i_1_n_4 ),
        .Q(counter_reg_reg[223]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[224] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[224]_i_1_n_7 ),
        .Q(counter_reg_reg[224]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[224]_i_1 
       (.CI(\counter_reg_reg[220]_i_1_n_0 ),
        .CO({\counter_reg_reg[224]_i_1_n_0 ,\NLW_counter_reg_reg[224]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[224]_i_1_n_4 ,\counter_reg_reg[224]_i_1_n_5 ,\counter_reg_reg[224]_i_1_n_6 ,\counter_reg_reg[224]_i_1_n_7 }),
        .S({\counter_reg[224]_i_2_n_0 ,\counter_reg[224]_i_3_n_0 ,\counter_reg[224]_i_4_n_0 ,\counter_reg[224]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[225] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[224]_i_1_n_6 ),
        .Q(counter_reg_reg[225]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[226] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[224]_i_1_n_5 ),
        .Q(counter_reg_reg[226]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[227] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[224]_i_1_n_4 ),
        .Q(counter_reg_reg[227]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[228] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[228]_i_1_n_7 ),
        .Q(counter_reg_reg[228]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[228]_i_1 
       (.CI(\counter_reg_reg[224]_i_1_n_0 ),
        .CO({\counter_reg_reg[228]_i_1_n_0 ,\NLW_counter_reg_reg[228]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[228]_i_1_n_4 ,\counter_reg_reg[228]_i_1_n_5 ,\counter_reg_reg[228]_i_1_n_6 ,\counter_reg_reg[228]_i_1_n_7 }),
        .S({\counter_reg[228]_i_2_n_0 ,\counter_reg[228]_i_3_n_0 ,\counter_reg[228]_i_4_n_0 ,\counter_reg[228]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[229] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[228]_i_1_n_6 ),
        .Q(counter_reg_reg[229]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[20]_i_1_n_5 ),
        .Q(counter_reg_reg[22]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[230] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[228]_i_1_n_5 ),
        .Q(counter_reg_reg[230]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[231] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[228]_i_1_n_4 ),
        .Q(counter_reg_reg[231]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[232] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[232]_i_1_n_7 ),
        .Q(counter_reg_reg[232]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[232]_i_1 
       (.CI(\counter_reg_reg[228]_i_1_n_0 ),
        .CO({\counter_reg_reg[232]_i_1_n_0 ,\NLW_counter_reg_reg[232]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[232]_i_1_n_4 ,\counter_reg_reg[232]_i_1_n_5 ,\counter_reg_reg[232]_i_1_n_6 ,\counter_reg_reg[232]_i_1_n_7 }),
        .S({\counter_reg[232]_i_2_n_0 ,\counter_reg[232]_i_3_n_0 ,\counter_reg[232]_i_4_n_0 ,\counter_reg[232]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[233] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[232]_i_1_n_6 ),
        .Q(counter_reg_reg[233]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[234] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[232]_i_1_n_5 ),
        .Q(counter_reg_reg[234]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[235] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[232]_i_1_n_4 ),
        .Q(counter_reg_reg[235]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[236] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[236]_i_1_n_7 ),
        .Q(counter_reg_reg[236]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[236]_i_1 
       (.CI(\counter_reg_reg[232]_i_1_n_0 ),
        .CO({\counter_reg_reg[236]_i_1_n_0 ,\NLW_counter_reg_reg[236]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[236]_i_1_n_4 ,\counter_reg_reg[236]_i_1_n_5 ,\counter_reg_reg[236]_i_1_n_6 ,\counter_reg_reg[236]_i_1_n_7 }),
        .S({\counter_reg[236]_i_2_n_0 ,\counter_reg[236]_i_3_n_0 ,\counter_reg[236]_i_4_n_0 ,\counter_reg[236]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[237] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[236]_i_1_n_6 ),
        .Q(counter_reg_reg[237]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[238] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[236]_i_1_n_5 ),
        .Q(counter_reg_reg[238]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[239] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[236]_i_1_n_4 ),
        .Q(counter_reg_reg[239]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[20]_i_1_n_4 ),
        .Q(counter_reg_reg[23]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[240] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[240]_i_1_n_7 ),
        .Q(counter_reg_reg[240]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[240]_i_1 
       (.CI(\counter_reg_reg[236]_i_1_n_0 ),
        .CO({\counter_reg_reg[240]_i_1_n_0 ,\NLW_counter_reg_reg[240]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[240]_i_1_n_4 ,\counter_reg_reg[240]_i_1_n_5 ,\counter_reg_reg[240]_i_1_n_6 ,\counter_reg_reg[240]_i_1_n_7 }),
        .S({\counter_reg[240]_i_2_n_0 ,\counter_reg[240]_i_3_n_0 ,\counter_reg[240]_i_4_n_0 ,\counter_reg[240]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[241] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[240]_i_1_n_6 ),
        .Q(counter_reg_reg[241]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[242] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[240]_i_1_n_5 ),
        .Q(counter_reg_reg[242]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[243] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[240]_i_1_n_4 ),
        .Q(counter_reg_reg[243]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[244] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[244]_i_1_n_7 ),
        .Q(counter_reg_reg[244]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[244]_i_1 
       (.CI(\counter_reg_reg[240]_i_1_n_0 ),
        .CO({\counter_reg_reg[244]_i_1_n_0 ,\NLW_counter_reg_reg[244]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[244]_i_1_n_4 ,\counter_reg_reg[244]_i_1_n_5 ,\counter_reg_reg[244]_i_1_n_6 ,\counter_reg_reg[244]_i_1_n_7 }),
        .S({\counter_reg[244]_i_2_n_0 ,\counter_reg[244]_i_3_n_0 ,\counter_reg[244]_i_4_n_0 ,\counter_reg[244]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[245] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[244]_i_1_n_6 ),
        .Q(counter_reg_reg[245]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[246] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[244]_i_1_n_5 ),
        .Q(counter_reg_reg[246]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[247] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[244]_i_1_n_4 ),
        .Q(counter_reg_reg[247]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[248] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[248]_i_1_n_7 ),
        .Q(counter_reg_reg[248]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[248]_i_1 
       (.CI(\counter_reg_reg[244]_i_1_n_0 ),
        .CO({\counter_reg_reg[248]_i_1_n_0 ,\NLW_counter_reg_reg[248]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[248]_i_1_n_4 ,\counter_reg_reg[248]_i_1_n_5 ,\counter_reg_reg[248]_i_1_n_6 ,\counter_reg_reg[248]_i_1_n_7 }),
        .S({\counter_reg[248]_i_2_n_0 ,\counter_reg[248]_i_3_n_0 ,\counter_reg[248]_i_4_n_0 ,\counter_reg[248]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[249] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[248]_i_1_n_6 ),
        .Q(counter_reg_reg[249]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[24]_i_1_n_7 ),
        .Q(counter_reg_reg[24]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[24]_i_1 
       (.CI(\counter_reg_reg[20]_i_1_n_0 ),
        .CO({\counter_reg_reg[24]_i_1_n_0 ,\NLW_counter_reg_reg[24]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[24]_i_1_n_4 ,\counter_reg_reg[24]_i_1_n_5 ,\counter_reg_reg[24]_i_1_n_6 ,\counter_reg_reg[24]_i_1_n_7 }),
        .S({\counter_reg[24]_i_2_n_0 ,\counter_reg[24]_i_3_n_0 ,\counter_reg[24]_i_4_n_0 ,\counter_reg[24]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[250] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[248]_i_1_n_5 ),
        .Q(counter_reg_reg[250]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[251] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[248]_i_1_n_4 ),
        .Q(counter_reg_reg[251]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[252] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[252]_i_1_n_7 ),
        .Q(counter_reg_reg[252]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[252]_i_1 
       (.CI(\counter_reg_reg[248]_i_1_n_0 ),
        .CO({\counter_reg_reg[252]_i_1_n_0 ,\NLW_counter_reg_reg[252]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[252]_i_1_n_4 ,\counter_reg_reg[252]_i_1_n_5 ,\counter_reg_reg[252]_i_1_n_6 ,\counter_reg_reg[252]_i_1_n_7 }),
        .S({\counter_reg[252]_i_2_n_0 ,\counter_reg[252]_i_3_n_0 ,\counter_reg[252]_i_4_n_0 ,\counter_reg[252]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[253] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[252]_i_1_n_6 ),
        .Q(counter_reg_reg[253]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[254] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[252]_i_1_n_5 ),
        .Q(counter_reg_reg[254]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[255] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[252]_i_1_n_4 ),
        .Q(counter_reg_reg[255]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[256] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[256]_i_1_n_7 ),
        .Q(counter_reg_reg[256]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[256]_i_1 
       (.CI(\counter_reg_reg[252]_i_1_n_0 ),
        .CO({\counter_reg_reg[256]_i_1_n_0 ,\NLW_counter_reg_reg[256]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[256]_i_1_n_4 ,\counter_reg_reg[256]_i_1_n_5 ,\counter_reg_reg[256]_i_1_n_6 ,\counter_reg_reg[256]_i_1_n_7 }),
        .S({\counter_reg[256]_i_2_n_0 ,\counter_reg[256]_i_3_n_0 ,\counter_reg[256]_i_4_n_0 ,\counter_reg[256]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[257] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[256]_i_1_n_6 ),
        .Q(counter_reg_reg[257]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[258] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[256]_i_1_n_5 ),
        .Q(counter_reg_reg[258]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[259] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[256]_i_1_n_4 ),
        .Q(counter_reg_reg[259]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[24]_i_1_n_6 ),
        .Q(counter_reg_reg[25]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[260] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[260]_i_1_n_7 ),
        .Q(counter_reg_reg[260]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[260]_i_1 
       (.CI(\counter_reg_reg[256]_i_1_n_0 ),
        .CO({\counter_reg_reg[260]_i_1_n_0 ,\NLW_counter_reg_reg[260]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[260]_i_1_n_4 ,\counter_reg_reg[260]_i_1_n_5 ,\counter_reg_reg[260]_i_1_n_6 ,\counter_reg_reg[260]_i_1_n_7 }),
        .S({\counter_reg[260]_i_2_n_0 ,\counter_reg[260]_i_3_n_0 ,\counter_reg[260]_i_4_n_0 ,\counter_reg[260]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[261] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[260]_i_1_n_6 ),
        .Q(counter_reg_reg[261]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[262] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[260]_i_1_n_5 ),
        .Q(counter_reg_reg[262]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[263] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[260]_i_1_n_4 ),
        .Q(counter_reg_reg[263]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[264] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[264]_i_1_n_7 ),
        .Q(counter_reg_reg[264]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[264]_i_1 
       (.CI(\counter_reg_reg[260]_i_1_n_0 ),
        .CO({\counter_reg_reg[264]_i_1_n_0 ,\NLW_counter_reg_reg[264]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[264]_i_1_n_4 ,\counter_reg_reg[264]_i_1_n_5 ,\counter_reg_reg[264]_i_1_n_6 ,\counter_reg_reg[264]_i_1_n_7 }),
        .S({\counter_reg[264]_i_2_n_0 ,\counter_reg[264]_i_3_n_0 ,\counter_reg[264]_i_4_n_0 ,\counter_reg[264]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[265] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[264]_i_1_n_6 ),
        .Q(counter_reg_reg[265]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[266] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[264]_i_1_n_5 ),
        .Q(counter_reg_reg[266]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[267] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[264]_i_1_n_4 ),
        .Q(counter_reg_reg[267]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[268] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[268]_i_1_n_7 ),
        .Q(counter_reg_reg[268]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[268]_i_1 
       (.CI(\counter_reg_reg[264]_i_1_n_0 ),
        .CO({\counter_reg_reg[268]_i_1_n_0 ,\NLW_counter_reg_reg[268]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[268]_i_1_n_4 ,\counter_reg_reg[268]_i_1_n_5 ,\counter_reg_reg[268]_i_1_n_6 ,\counter_reg_reg[268]_i_1_n_7 }),
        .S({\counter_reg[268]_i_2_n_0 ,\counter_reg[268]_i_3_n_0 ,\counter_reg[268]_i_4_n_0 ,\counter_reg[268]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[269] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[268]_i_1_n_6 ),
        .Q(counter_reg_reg[269]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[24]_i_1_n_5 ),
        .Q(counter_reg_reg[26]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[270] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[268]_i_1_n_5 ),
        .Q(counter_reg_reg[270]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[271] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[268]_i_1_n_4 ),
        .Q(counter_reg_reg[271]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[272] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[272]_i_1_n_7 ),
        .Q(counter_reg_reg[272]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[272]_i_1 
       (.CI(\counter_reg_reg[268]_i_1_n_0 ),
        .CO({\counter_reg_reg[272]_i_1_n_0 ,\NLW_counter_reg_reg[272]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[272]_i_1_n_4 ,\counter_reg_reg[272]_i_1_n_5 ,\counter_reg_reg[272]_i_1_n_6 ,\counter_reg_reg[272]_i_1_n_7 }),
        .S({\counter_reg[272]_i_2_n_0 ,\counter_reg[272]_i_3_n_0 ,\counter_reg[272]_i_4_n_0 ,\counter_reg[272]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[273] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[272]_i_1_n_6 ),
        .Q(counter_reg_reg[273]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[274] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[272]_i_1_n_5 ),
        .Q(counter_reg_reg[274]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[275] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[272]_i_1_n_4 ),
        .Q(counter_reg_reg[275]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[276] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[276]_i_1_n_7 ),
        .Q(counter_reg_reg[276]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[276]_i_1 
       (.CI(\counter_reg_reg[272]_i_1_n_0 ),
        .CO({\counter_reg_reg[276]_i_1_n_0 ,\NLW_counter_reg_reg[276]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[276]_i_1_n_4 ,\counter_reg_reg[276]_i_1_n_5 ,\counter_reg_reg[276]_i_1_n_6 ,\counter_reg_reg[276]_i_1_n_7 }),
        .S({\counter_reg[276]_i_2_n_0 ,\counter_reg[276]_i_3_n_0 ,\counter_reg[276]_i_4_n_0 ,\counter_reg[276]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[277] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[276]_i_1_n_6 ),
        .Q(counter_reg_reg[277]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[278] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[276]_i_1_n_5 ),
        .Q(counter_reg_reg[278]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[279] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[276]_i_1_n_4 ),
        .Q(counter_reg_reg[279]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[24]_i_1_n_4 ),
        .Q(counter_reg_reg[27]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[280] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[280]_i_1_n_7 ),
        .Q(counter_reg_reg[280]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[280]_i_1 
       (.CI(\counter_reg_reg[276]_i_1_n_0 ),
        .CO({\counter_reg_reg[280]_i_1_n_0 ,\NLW_counter_reg_reg[280]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[280]_i_1_n_4 ,\counter_reg_reg[280]_i_1_n_5 ,\counter_reg_reg[280]_i_1_n_6 ,\counter_reg_reg[280]_i_1_n_7 }),
        .S({\counter_reg[280]_i_2_n_0 ,\counter_reg[280]_i_3_n_0 ,\counter_reg[280]_i_4_n_0 ,\counter_reg[280]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[281] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[280]_i_1_n_6 ),
        .Q(counter_reg_reg[281]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[282] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[280]_i_1_n_5 ),
        .Q(counter_reg_reg[282]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[283] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[280]_i_1_n_4 ),
        .Q(counter_reg_reg[283]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[284] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[284]_i_1_n_7 ),
        .Q(counter_reg_reg[284]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[284]_i_1 
       (.CI(\counter_reg_reg[280]_i_1_n_0 ),
        .CO({\counter_reg_reg[284]_i_1_n_0 ,\NLW_counter_reg_reg[284]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[284]_i_1_n_4 ,\counter_reg_reg[284]_i_1_n_5 ,\counter_reg_reg[284]_i_1_n_6 ,\counter_reg_reg[284]_i_1_n_7 }),
        .S({\counter_reg[284]_i_2_n_0 ,\counter_reg[284]_i_3_n_0 ,\counter_reg[284]_i_4_n_0 ,\counter_reg[284]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[285] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[284]_i_1_n_6 ),
        .Q(counter_reg_reg[285]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[286] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[284]_i_1_n_5 ),
        .Q(counter_reg_reg[286]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[287] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[284]_i_1_n_4 ),
        .Q(counter_reg_reg[287]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[288] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[288]_i_1_n_7 ),
        .Q(counter_reg_reg[288]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[288]_i_1 
       (.CI(\counter_reg_reg[284]_i_1_n_0 ),
        .CO({\counter_reg_reg[288]_i_1_n_0 ,\NLW_counter_reg_reg[288]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[288]_i_1_n_4 ,\counter_reg_reg[288]_i_1_n_5 ,\counter_reg_reg[288]_i_1_n_6 ,\counter_reg_reg[288]_i_1_n_7 }),
        .S({\counter_reg[288]_i_2_n_0 ,\counter_reg[288]_i_3_n_0 ,\counter_reg[288]_i_4_n_0 ,\counter_reg[288]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[289] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[288]_i_1_n_6 ),
        .Q(counter_reg_reg[289]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[28]_i_1_n_7 ),
        .Q(counter_reg_reg[28]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[28]_i_1 
       (.CI(\counter_reg_reg[24]_i_1_n_0 ),
        .CO({\counter_reg_reg[28]_i_1_n_0 ,\NLW_counter_reg_reg[28]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[28]_i_1_n_4 ,\counter_reg_reg[28]_i_1_n_5 ,\counter_reg_reg[28]_i_1_n_6 ,\counter_reg_reg[28]_i_1_n_7 }),
        .S({\counter_reg[28]_i_2_n_0 ,\counter_reg[28]_i_3_n_0 ,\counter_reg[28]_i_4_n_0 ,\counter_reg[28]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[290] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[288]_i_1_n_5 ),
        .Q(counter_reg_reg[290]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[291] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[288]_i_1_n_4 ),
        .Q(counter_reg_reg[291]));
  (* PHYS_OPT_MODIFIED = "PLACEMENT_OPT" *) 
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[292] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[292]_i_1_n_7 ),
        .Q(counter_reg_reg[292]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[292]_i_1 
       (.CI(\counter_reg_reg[288]_i_1_n_0 ),
        .CO({\counter_reg_reg[292]_i_1_n_0 ,\NLW_counter_reg_reg[292]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[292]_i_1_n_4 ,\counter_reg_reg[292]_i_1_n_5 ,\counter_reg_reg[292]_i_1_n_6 ,\counter_reg_reg[292]_i_1_n_7 }),
        .S({\counter_reg[292]_i_2_n_0 ,\counter_reg[292]_i_3_n_0 ,\counter_reg[292]_i_4_n_0 ,\counter_reg[292]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[293] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[292]_i_1_n_6 ),
        .Q(counter_reg_reg[293]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[294] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[292]_i_1_n_5 ),
        .Q(counter_reg_reg[294]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[295] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[292]_i_1_n_4 ),
        .Q(counter_reg_reg[295]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[296] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[296]_i_1_n_7 ),
        .Q(counter_reg_reg[296]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[296]_i_1 
       (.CI(\counter_reg_reg[292]_i_1_n_0 ),
        .CO({\counter_reg_reg[296]_i_1_n_0 ,\NLW_counter_reg_reg[296]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[296]_i_1_n_4 ,\counter_reg_reg[296]_i_1_n_5 ,\counter_reg_reg[296]_i_1_n_6 ,\counter_reg_reg[296]_i_1_n_7 }),
        .S({\counter_reg[296]_i_2_n_0 ,\counter_reg[296]_i_3_n_0 ,\counter_reg[296]_i_4_n_0 ,\counter_reg[296]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[297] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[296]_i_1_n_6 ),
        .Q(counter_reg_reg[297]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[298] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[296]_i_1_n_5 ),
        .Q(counter_reg_reg[298]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[299] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[296]_i_1_n_4 ),
        .Q(counter_reg_reg[299]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[28]_i_1_n_6 ),
        .Q(counter_reg_reg[29]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[0]_i_1_n_5 ),
        .Q(counter_reg_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[300] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[300]_i_1_n_7 ),
        .Q(counter_reg_reg[300]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[300]_i_1 
       (.CI(\counter_reg_reg[296]_i_1_n_0 ),
        .CO({\counter_reg_reg[300]_i_1_n_0 ,\NLW_counter_reg_reg[300]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[300]_i_1_n_4 ,\counter_reg_reg[300]_i_1_n_5 ,\counter_reg_reg[300]_i_1_n_6 ,\counter_reg_reg[300]_i_1_n_7 }),
        .S({\counter_reg[300]_i_2_n_0 ,\counter_reg[300]_i_3_n_0 ,\counter_reg[300]_i_4_n_0 ,\counter_reg[300]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[301] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[300]_i_1_n_6 ),
        .Q(counter_reg_reg[301]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[302] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[300]_i_1_n_5 ),
        .Q(counter_reg_reg[302]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[303] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[300]_i_1_n_4 ),
        .Q(counter_reg_reg[303]));
  (* PHYS_OPT_MODIFIED = "CRITICAL_CELL_OPT" *) 
  (* PHYS_OPT_SKIPPED = "CRITICAL_CELL_OPT" *) 
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[304] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[304]_i_1_n_7 ),
        .Q(counter_reg_reg[304]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[304]_i_1 
       (.CI(\counter_reg_reg[300]_i_1_n_0 ),
        .CO({\counter_reg_reg[304]_i_1_n_0 ,\NLW_counter_reg_reg[304]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[304]_i_1_n_4 ,\counter_reg_reg[304]_i_1_n_5 ,\counter_reg_reg[304]_i_1_n_6 ,\counter_reg_reg[304]_i_1_n_7 }),
        .S({\counter_reg[304]_i_2_n_0 ,\counter_reg[304]_i_3_n_0 ,\counter_reg[304]_i_4_n_0 ,\counter_reg[304]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[305] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[304]_i_1_n_6 ),
        .Q(counter_reg_reg[305]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[306] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[304]_i_1_n_5 ),
        .Q(counter_reg_reg[306]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[307] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[304]_i_1_n_4 ),
        .Q(counter_reg_reg[307]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[308] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[308]_i_1_n_7 ),
        .Q(counter_reg_reg[308]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[308]_i_1 
       (.CI(\counter_reg_reg[304]_i_1_n_0 ),
        .CO({\counter_reg_reg[308]_i_1_n_0 ,\NLW_counter_reg_reg[308]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[308]_i_1_n_4 ,\counter_reg_reg[308]_i_1_n_5 ,\counter_reg_reg[308]_i_1_n_6 ,\counter_reg_reg[308]_i_1_n_7 }),
        .S({\counter_reg[308]_i_2_n_0 ,\counter_reg[308]_i_3_n_0 ,\counter_reg[308]_i_4_n_0 ,\counter_reg[308]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[309] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[308]_i_1_n_6 ),
        .Q(counter_reg_reg[309]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[28]_i_1_n_5 ),
        .Q(counter_reg_reg[30]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[310] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[308]_i_1_n_5 ),
        .Q(counter_reg_reg[310]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[311] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[308]_i_1_n_4 ),
        .Q(counter_reg_reg[311]));
  (* PHYS_OPT_MODIFIED = "CRITICAL_CELL_OPT" *) 
  (* PHYS_OPT_SKIPPED = "CRITICAL_CELL_OPT" *) 
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[312] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[312]_i_1_n_7 ),
        .Q(counter_reg_reg[312]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[312]_i_1 
       (.CI(\counter_reg_reg[308]_i_1_n_0 ),
        .CO({\counter_reg_reg[312]_i_1_n_0 ,\NLW_counter_reg_reg[312]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[312]_i_1_n_4 ,\counter_reg_reg[312]_i_1_n_5 ,\counter_reg_reg[312]_i_1_n_6 ,\counter_reg_reg[312]_i_1_n_7 }),
        .S({\counter_reg[312]_i_2_n_0 ,\counter_reg[312]_i_3_n_0 ,\counter_reg[312]_i_4_n_0 ,\counter_reg[312]_i_5_n_0 }));
  (* PHYS_OPT_MODIFIED = "CRITICAL_CELL_OPT" *) 
  (* PHYS_OPT_SKIPPED = "CRITICAL_CELL_OPT" *) 
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[313] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[312]_i_1_n_6 ),
        .Q(counter_reg_reg[313]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[314] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[312]_i_1_n_5 ),
        .Q(counter_reg_reg[314]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[315] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[312]_i_1_n_4 ),
        .Q(counter_reg_reg[315]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[316] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[316]_i_1_n_7 ),
        .Q(counter_reg_reg[316]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[316]_i_1 
       (.CI(\counter_reg_reg[312]_i_1_n_0 ),
        .CO({\counter_reg_reg[316]_i_1_n_0 ,\NLW_counter_reg_reg[316]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[316]_i_1_n_4 ,\counter_reg_reg[316]_i_1_n_5 ,\counter_reg_reg[316]_i_1_n_6 ,\counter_reg_reg[316]_i_1_n_7 }),
        .S({\counter_reg[316]_i_2_n_0 ,\counter_reg[316]_i_3_n_0 ,\counter_reg[316]_i_4_n_0 ,\counter_reg[316]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[317] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[316]_i_1_n_6 ),
        .Q(counter_reg_reg[317]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[318] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[316]_i_1_n_5 ),
        .Q(counter_reg_reg[318]));
  (* PHYS_OPT_MODIFIED = "CRITICAL_CELL_OPT" *) 
  (* PHYS_OPT_SKIPPED = "CRITICAL_CELL_OPT" *) 
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[319] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[316]_i_1_n_4 ),
        .Q(counter_reg_reg[319]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[28]_i_1_n_4 ),
        .Q(counter_reg_reg[31]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[320] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[320]_i_1_n_7 ),
        .Q(counter_reg_reg[320]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[320]_i_1 
       (.CI(\counter_reg_reg[316]_i_1_n_0 ),
        .CO({\counter_reg_reg[320]_i_1_n_0 ,\NLW_counter_reg_reg[320]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[320]_i_1_n_4 ,\counter_reg_reg[320]_i_1_n_5 ,\counter_reg_reg[320]_i_1_n_6 ,\counter_reg_reg[320]_i_1_n_7 }),
        .S({\counter_reg[320]_i_2_n_0 ,\counter_reg[320]_i_3_n_0 ,\counter_reg[320]_i_4_n_0 ,\counter_reg[320]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[321] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[320]_i_1_n_6 ),
        .Q(counter_reg_reg[321]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[322] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[320]_i_1_n_5 ),
        .Q(counter_reg_reg[322]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[323] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[320]_i_1_n_4 ),
        .Q(counter_reg_reg[323]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[324] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[324]_i_1_n_7 ),
        .Q(counter_reg_reg[324]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[324]_i_1 
       (.CI(\counter_reg_reg[320]_i_1_n_0 ),
        .CO(\NLW_counter_reg_reg[324]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg_reg[324]_i_1_O_UNCONNECTED [3:2],\counter_reg_reg[324]_i_1_n_6 ,\counter_reg_reg[324]_i_1_n_7 }),
        .S({1'b0,1'b0,\counter_reg[324]_i_2_n_0 ,\counter_reg[324]_i_3_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[325] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[324]_i_1_n_6 ),
        .Q(counter_reg_reg[325]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[32] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[32]_i_1_n_7 ),
        .Q(counter_reg_reg[32]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[32]_i_1 
       (.CI(\counter_reg_reg[28]_i_1_n_0 ),
        .CO({\counter_reg_reg[32]_i_1_n_0 ,\NLW_counter_reg_reg[32]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[32]_i_1_n_4 ,\counter_reg_reg[32]_i_1_n_5 ,\counter_reg_reg[32]_i_1_n_6 ,\counter_reg_reg[32]_i_1_n_7 }),
        .S({\counter_reg[32]_i_2_n_0 ,\counter_reg[32]_i_3_n_0 ,\counter_reg[32]_i_4_n_0 ,\counter_reg[32]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[33] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[32]_i_1_n_6 ),
        .Q(counter_reg_reg[33]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[34] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[32]_i_1_n_5 ),
        .Q(counter_reg_reg[34]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[35] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[32]_i_1_n_4 ),
        .Q(counter_reg_reg[35]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[36] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[36]_i_1_n_7 ),
        .Q(counter_reg_reg[36]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[36]_i_1 
       (.CI(\counter_reg_reg[32]_i_1_n_0 ),
        .CO({\counter_reg_reg[36]_i_1_n_0 ,\NLW_counter_reg_reg[36]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[36]_i_1_n_4 ,\counter_reg_reg[36]_i_1_n_5 ,\counter_reg_reg[36]_i_1_n_6 ,\counter_reg_reg[36]_i_1_n_7 }),
        .S({\counter_reg[36]_i_2_n_0 ,\counter_reg[36]_i_3_n_0 ,\counter_reg[36]_i_4_n_0 ,\counter_reg[36]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[37] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[36]_i_1_n_6 ),
        .Q(counter_reg_reg[37]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[38] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[36]_i_1_n_5 ),
        .Q(counter_reg_reg[38]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[39] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[36]_i_1_n_4 ),
        .Q(counter_reg_reg[39]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[0]_i_1_n_4 ),
        .Q(counter_reg_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[40] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[40]_i_1_n_7 ),
        .Q(counter_reg_reg[40]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[40]_i_1 
       (.CI(\counter_reg_reg[36]_i_1_n_0 ),
        .CO({\counter_reg_reg[40]_i_1_n_0 ,\NLW_counter_reg_reg[40]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[40]_i_1_n_4 ,\counter_reg_reg[40]_i_1_n_5 ,\counter_reg_reg[40]_i_1_n_6 ,\counter_reg_reg[40]_i_1_n_7 }),
        .S({\counter_reg[40]_i_2_n_0 ,\counter_reg[40]_i_3_n_0 ,\counter_reg[40]_i_4_n_0 ,\counter_reg[40]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[41] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[40]_i_1_n_6 ),
        .Q(counter_reg_reg[41]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[42] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[40]_i_1_n_5 ),
        .Q(counter_reg_reg[42]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[43] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[40]_i_1_n_4 ),
        .Q(counter_reg_reg[43]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[44] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[44]_i_1_n_7 ),
        .Q(counter_reg_reg[44]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[44]_i_1 
       (.CI(\counter_reg_reg[40]_i_1_n_0 ),
        .CO({\counter_reg_reg[44]_i_1_n_0 ,\NLW_counter_reg_reg[44]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[44]_i_1_n_4 ,\counter_reg_reg[44]_i_1_n_5 ,\counter_reg_reg[44]_i_1_n_6 ,\counter_reg_reg[44]_i_1_n_7 }),
        .S({\counter_reg[44]_i_2_n_0 ,\counter_reg[44]_i_3_n_0 ,\counter_reg[44]_i_4_n_0 ,\counter_reg[44]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[45] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[44]_i_1_n_6 ),
        .Q(counter_reg_reg[45]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[46] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[44]_i_1_n_5 ),
        .Q(counter_reg_reg[46]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[47] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[44]_i_1_n_4 ),
        .Q(counter_reg_reg[47]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[48] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[48]_i_1_n_7 ),
        .Q(counter_reg_reg[48]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[48]_i_1 
       (.CI(\counter_reg_reg[44]_i_1_n_0 ),
        .CO({\counter_reg_reg[48]_i_1_n_0 ,\NLW_counter_reg_reg[48]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[48]_i_1_n_4 ,\counter_reg_reg[48]_i_1_n_5 ,\counter_reg_reg[48]_i_1_n_6 ,\counter_reg_reg[48]_i_1_n_7 }),
        .S({\counter_reg[48]_i_2_n_0 ,\counter_reg[48]_i_3_n_0 ,\counter_reg[48]_i_4_n_0 ,\counter_reg[48]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[49] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[48]_i_1_n_6 ),
        .Q(counter_reg_reg[49]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[4]_i_1_n_7 ),
        .Q(counter_reg_reg[4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[4]_i_1 
       (.CI(\counter_reg_reg[0]_i_1_n_0 ),
        .CO({\counter_reg_reg[4]_i_1_n_0 ,\NLW_counter_reg_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[4]_i_1_n_4 ,\counter_reg_reg[4]_i_1_n_5 ,\counter_reg_reg[4]_i_1_n_6 ,\counter_reg_reg[4]_i_1_n_7 }),
        .S({\counter_reg[4]_i_2_n_0 ,\counter_reg[4]_i_3_n_0 ,\counter_reg[4]_i_4_n_0 ,\counter_reg[4]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[50] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[48]_i_1_n_5 ),
        .Q(counter_reg_reg[50]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[51] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[48]_i_1_n_4 ),
        .Q(counter_reg_reg[51]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[52] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[52]_i_1_n_7 ),
        .Q(counter_reg_reg[52]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[52]_i_1 
       (.CI(\counter_reg_reg[48]_i_1_n_0 ),
        .CO({\counter_reg_reg[52]_i_1_n_0 ,\NLW_counter_reg_reg[52]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[52]_i_1_n_4 ,\counter_reg_reg[52]_i_1_n_5 ,\counter_reg_reg[52]_i_1_n_6 ,\counter_reg_reg[52]_i_1_n_7 }),
        .S({\counter_reg[52]_i_2_n_0 ,\counter_reg[52]_i_3_n_0 ,\counter_reg[52]_i_4_n_0 ,\counter_reg[52]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[53] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[52]_i_1_n_6 ),
        .Q(counter_reg_reg[53]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[54] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[52]_i_1_n_5 ),
        .Q(counter_reg_reg[54]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[55] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[52]_i_1_n_4 ),
        .Q(counter_reg_reg[55]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[56] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[56]_i_1_n_7 ),
        .Q(counter_reg_reg[56]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[56]_i_1 
       (.CI(\counter_reg_reg[52]_i_1_n_0 ),
        .CO({\counter_reg_reg[56]_i_1_n_0 ,\NLW_counter_reg_reg[56]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[56]_i_1_n_4 ,\counter_reg_reg[56]_i_1_n_5 ,\counter_reg_reg[56]_i_1_n_6 ,\counter_reg_reg[56]_i_1_n_7 }),
        .S({\counter_reg[56]_i_2_n_0 ,\counter_reg[56]_i_3_n_0 ,\counter_reg[56]_i_4_n_0 ,\counter_reg[56]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[57] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[56]_i_1_n_6 ),
        .Q(counter_reg_reg[57]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[58] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[56]_i_1_n_5 ),
        .Q(counter_reg_reg[58]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[59] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[56]_i_1_n_4 ),
        .Q(counter_reg_reg[59]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[4]_i_1_n_6 ),
        .Q(counter_reg_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[60] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[60]_i_1_n_7 ),
        .Q(counter_reg_reg[60]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[60]_i_1 
       (.CI(\counter_reg_reg[56]_i_1_n_0 ),
        .CO({\counter_reg_reg[60]_i_1_n_0 ,\NLW_counter_reg_reg[60]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[60]_i_1_n_4 ,\counter_reg_reg[60]_i_1_n_5 ,\counter_reg_reg[60]_i_1_n_6 ,\counter_reg_reg[60]_i_1_n_7 }),
        .S({\counter_reg[60]_i_2_n_0 ,\counter_reg[60]_i_3_n_0 ,\counter_reg[60]_i_4_n_0 ,\counter_reg[60]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[61] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[60]_i_1_n_6 ),
        .Q(counter_reg_reg[61]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[62] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[60]_i_1_n_5 ),
        .Q(counter_reg_reg[62]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[63] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[60]_i_1_n_4 ),
        .Q(counter_reg_reg[63]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[64] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[64]_i_1_n_7 ),
        .Q(counter_reg_reg[64]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[64]_i_1 
       (.CI(\counter_reg_reg[60]_i_1_n_0 ),
        .CO({\counter_reg_reg[64]_i_1_n_0 ,\NLW_counter_reg_reg[64]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[64]_i_1_n_4 ,\counter_reg_reg[64]_i_1_n_5 ,\counter_reg_reg[64]_i_1_n_6 ,\counter_reg_reg[64]_i_1_n_7 }),
        .S({\counter_reg[64]_i_2_n_0 ,\counter_reg[64]_i_3_n_0 ,\counter_reg[64]_i_4_n_0 ,\counter_reg[64]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[65] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[64]_i_1_n_6 ),
        .Q(counter_reg_reg[65]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[66] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[64]_i_1_n_5 ),
        .Q(counter_reg_reg[66]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[67] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[64]_i_1_n_4 ),
        .Q(counter_reg_reg[67]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[68] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[68]_i_1_n_7 ),
        .Q(counter_reg_reg[68]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[68]_i_1 
       (.CI(\counter_reg_reg[64]_i_1_n_0 ),
        .CO({\counter_reg_reg[68]_i_1_n_0 ,\NLW_counter_reg_reg[68]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[68]_i_1_n_4 ,\counter_reg_reg[68]_i_1_n_5 ,\counter_reg_reg[68]_i_1_n_6 ,\counter_reg_reg[68]_i_1_n_7 }),
        .S({\counter_reg[68]_i_2_n_0 ,\counter_reg[68]_i_3_n_0 ,\counter_reg[68]_i_4_n_0 ,\counter_reg[68]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[69] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[68]_i_1_n_6 ),
        .Q(counter_reg_reg[69]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[4]_i_1_n_5 ),
        .Q(counter_reg_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[70] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[68]_i_1_n_5 ),
        .Q(counter_reg_reg[70]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[71] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[68]_i_1_n_4 ),
        .Q(counter_reg_reg[71]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[72] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[72]_i_1_n_7 ),
        .Q(counter_reg_reg[72]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[72]_i_1 
       (.CI(\counter_reg_reg[68]_i_1_n_0 ),
        .CO({\counter_reg_reg[72]_i_1_n_0 ,\NLW_counter_reg_reg[72]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[72]_i_1_n_4 ,\counter_reg_reg[72]_i_1_n_5 ,\counter_reg_reg[72]_i_1_n_6 ,\counter_reg_reg[72]_i_1_n_7 }),
        .S({\counter_reg[72]_i_2_n_0 ,\counter_reg[72]_i_3_n_0 ,\counter_reg[72]_i_4_n_0 ,\counter_reg[72]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[73] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[72]_i_1_n_6 ),
        .Q(counter_reg_reg[73]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[74] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[72]_i_1_n_5 ),
        .Q(counter_reg_reg[74]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[75] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[72]_i_1_n_4 ),
        .Q(counter_reg_reg[75]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[76] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[76]_i_1_n_7 ),
        .Q(counter_reg_reg[76]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[76]_i_1 
       (.CI(\counter_reg_reg[72]_i_1_n_0 ),
        .CO({\counter_reg_reg[76]_i_1_n_0 ,\NLW_counter_reg_reg[76]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[76]_i_1_n_4 ,\counter_reg_reg[76]_i_1_n_5 ,\counter_reg_reg[76]_i_1_n_6 ,\counter_reg_reg[76]_i_1_n_7 }),
        .S({\counter_reg[76]_i_2_n_0 ,\counter_reg[76]_i_3_n_0 ,\counter_reg[76]_i_4_n_0 ,\counter_reg[76]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[77] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[76]_i_1_n_6 ),
        .Q(counter_reg_reg[77]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[78] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[76]_i_1_n_5 ),
        .Q(counter_reg_reg[78]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[79] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[76]_i_1_n_4 ),
        .Q(counter_reg_reg[79]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[4]_i_1_n_4 ),
        .Q(counter_reg_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[80] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[80]_i_1_n_7 ),
        .Q(counter_reg_reg[80]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[80]_i_1 
       (.CI(\counter_reg_reg[76]_i_1_n_0 ),
        .CO({\counter_reg_reg[80]_i_1_n_0 ,\NLW_counter_reg_reg[80]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[80]_i_1_n_4 ,\counter_reg_reg[80]_i_1_n_5 ,\counter_reg_reg[80]_i_1_n_6 ,\counter_reg_reg[80]_i_1_n_7 }),
        .S({\counter_reg[80]_i_2_n_0 ,\counter_reg[80]_i_3_n_0 ,\counter_reg[80]_i_4_n_0 ,\counter_reg[80]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[81] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[80]_i_1_n_6 ),
        .Q(counter_reg_reg[81]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[82] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[80]_i_1_n_5 ),
        .Q(counter_reg_reg[82]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[83] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[80]_i_1_n_4 ),
        .Q(counter_reg_reg[83]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[84] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[84]_i_1_n_7 ),
        .Q(counter_reg_reg[84]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[84]_i_1 
       (.CI(\counter_reg_reg[80]_i_1_n_0 ),
        .CO({\counter_reg_reg[84]_i_1_n_0 ,\NLW_counter_reg_reg[84]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[84]_i_1_n_4 ,\counter_reg_reg[84]_i_1_n_5 ,\counter_reg_reg[84]_i_1_n_6 ,\counter_reg_reg[84]_i_1_n_7 }),
        .S({\counter_reg[84]_i_2_n_0 ,\counter_reg[84]_i_3_n_0 ,\counter_reg[84]_i_4_n_0 ,\counter_reg[84]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[85] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[84]_i_1_n_6 ),
        .Q(counter_reg_reg[85]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[86] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[84]_i_1_n_5 ),
        .Q(counter_reg_reg[86]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[87] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[84]_i_1_n_4 ),
        .Q(counter_reg_reg[87]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[88] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[88]_i_1_n_7 ),
        .Q(counter_reg_reg[88]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[88]_i_1 
       (.CI(\counter_reg_reg[84]_i_1_n_0 ),
        .CO({\counter_reg_reg[88]_i_1_n_0 ,\NLW_counter_reg_reg[88]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[88]_i_1_n_4 ,\counter_reg_reg[88]_i_1_n_5 ,\counter_reg_reg[88]_i_1_n_6 ,\counter_reg_reg[88]_i_1_n_7 }),
        .S({\counter_reg[88]_i_2_n_0 ,\counter_reg[88]_i_3_n_0 ,\counter_reg[88]_i_4_n_0 ,\counter_reg[88]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[89] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[88]_i_1_n_6 ),
        .Q(counter_reg_reg[89]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[8]_i_1_n_7 ),
        .Q(counter_reg_reg[8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[8]_i_1 
       (.CI(\counter_reg_reg[4]_i_1_n_0 ),
        .CO({\counter_reg_reg[8]_i_1_n_0 ,\NLW_counter_reg_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[8]_i_1_n_4 ,\counter_reg_reg[8]_i_1_n_5 ,\counter_reg_reg[8]_i_1_n_6 ,\counter_reg_reg[8]_i_1_n_7 }),
        .S({\counter_reg[8]_i_2_n_0 ,\counter_reg[8]_i_3_n_0 ,\counter_reg[8]_i_4_n_0 ,\counter_reg[8]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[90] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[88]_i_1_n_5 ),
        .Q(counter_reg_reg[90]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[91] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[88]_i_1_n_4 ),
        .Q(counter_reg_reg[91]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[92] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[92]_i_1_n_7 ),
        .Q(counter_reg_reg[92]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[92]_i_1 
       (.CI(\counter_reg_reg[88]_i_1_n_0 ),
        .CO({\counter_reg_reg[92]_i_1_n_0 ,\NLW_counter_reg_reg[92]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[92]_i_1_n_4 ,\counter_reg_reg[92]_i_1_n_5 ,\counter_reg_reg[92]_i_1_n_6 ,\counter_reg_reg[92]_i_1_n_7 }),
        .S({\counter_reg[92]_i_2_n_0 ,\counter_reg[92]_i_3_n_0 ,\counter_reg[92]_i_4_n_0 ,\counter_reg[92]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[93] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[92]_i_1_n_6 ),
        .Q(counter_reg_reg[93]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[94] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[92]_i_1_n_5 ),
        .Q(counter_reg_reg[94]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[95] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[92]_i_1_n_4 ),
        .Q(counter_reg_reg[95]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[96] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[96]_i_1_n_7 ),
        .Q(counter_reg_reg[96]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[96]_i_1 
       (.CI(\counter_reg_reg[92]_i_1_n_0 ),
        .CO({\counter_reg_reg[96]_i_1_n_0 ,\NLW_counter_reg_reg[96]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[96]_i_1_n_4 ,\counter_reg_reg[96]_i_1_n_5 ,\counter_reg_reg[96]_i_1_n_6 ,\counter_reg_reg[96]_i_1_n_7 }),
        .S({\counter_reg[96]_i_2_n_0 ,\counter_reg[96]_i_3_n_0 ,\counter_reg[96]_i_4_n_0 ,\counter_reg[96]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[97] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[96]_i_1_n_6 ),
        .Q(counter_reg_reg[97]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[98] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[96]_i_1_n_5 ),
        .Q(counter_reg_reg[98]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[99] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[96]_i_1_n_4 ),
        .Q(counter_reg_reg[99]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_reg_reg[8]_i_1_n_6 ),
        .Q(counter_reg_reg[9]));
endmodule

module uart_rx
   (E,
    \FSM_sequential_state_reg_reg[1]_0 ,
    Q,
    rx_IBUF,
    \FSM_sequential_state_reg_reg[1]_1 ,
    \w_ptr_reg_reg[0] ,
    clk_IBUF_BUFG,
    AR);
  output [0:0]E;
  output \FSM_sequential_state_reg_reg[1]_0 ;
  output [7:0]Q;
  input rx_IBUF;
  input \FSM_sequential_state_reg_reg[1]_1 ;
  input \w_ptr_reg_reg[0] ;
  input clk_IBUF_BUFG;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]E;
  wire \FSM_sequential_state_reg[0]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_3_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_4_n_0 ;
  wire \FSM_sequential_state_reg_reg[1]_0 ;
  wire \FSM_sequential_state_reg_reg[1]_1 ;
  wire [7:0]Q;
  wire b_next;
  wire clk_IBUF_BUFG;
  wire n_next;
  wire [2:0]n_reg;
  wire \n_reg[0]_i_1_n_0 ;
  wire \n_reg[1]_i_1_n_0 ;
  wire \n_reg[2]_i_1_n_0 ;
  wire rx_IBUF;
  wire s_next;
  wire [3:0]s_reg;
  wire \s_reg[0]_i_1_n_0 ;
  wire \s_reg[1]_i_1_n_0 ;
  wire \s_reg[2]_i_1__0_n_0 ;
  wire \s_reg[3]_i_2__0_n_0 ;
  wire \s_reg[3]_i_3_n_0 ;
  wire [1:0]state_reg;
  wire \w_ptr_reg_reg[0] ;

  LUT6 #(
    .INIT(64'h00000FFF77777000)) 
    \FSM_sequential_state_reg[0]_i_1 
       (.I0(\FSM_sequential_state_reg_reg[1]_1 ),
        .I1(state_reg[1]),
        .I2(\FSM_sequential_state_reg[1]_i_3_n_0 ),
        .I3(b_next),
        .I4(\FSM_sequential_state_reg[1]_i_4_n_0 ),
        .I5(state_reg[0]),
        .O(\FSM_sequential_state_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h11111FFFCCCCC000)) 
    \FSM_sequential_state_reg[1]_i_1 
       (.I0(\FSM_sequential_state_reg_reg[1]_1 ),
        .I1(state_reg[0]),
        .I2(\FSM_sequential_state_reg[1]_i_3_n_0 ),
        .I3(b_next),
        .I4(\FSM_sequential_state_reg[1]_i_4_n_0 ),
        .I5(state_reg[1]),
        .O(\FSM_sequential_state_reg[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_sequential_state_reg[1]_i_3 
       (.I0(n_reg[1]),
        .I1(n_reg[0]),
        .I2(n_reg[2]),
        .O(\FSM_sequential_state_reg[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0101018901010123)) 
    \FSM_sequential_state_reg[1]_i_4 
       (.I0(state_reg[0]),
        .I1(state_reg[1]),
        .I2(rx_IBUF),
        .I3(\FSM_sequential_state_reg_reg[1]_1 ),
        .I4(\s_reg[3]_i_3_n_0 ),
        .I5(s_reg[3]),
        .O(\FSM_sequential_state_reg[1]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:01,iSTATE0:10,iSTATE1:00,iSTATE2:11" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_sequential_state_reg[0]_i_1_n_0 ),
        .Q(state_reg[0]));
  (* FSM_ENCODED_STATES = "iSTATE:01,iSTATE0:10,iSTATE1:00,iSTATE2:11" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_sequential_state_reg[1]_i_1_n_0 ),
        .Q(state_reg[1]));
  LUT2 #(
    .INIT(4'h2)) 
    array_reg_reg_0_63_0_2_i_1__0
       (.I0(\FSM_sequential_state_reg_reg[1]_0 ),
        .I1(\w_ptr_reg_reg[0] ),
        .O(E));
  LUT5 #(
    .INIT(32'h00400000)) 
    array_reg_reg_0_63_0_2_i_2
       (.I0(\FSM_sequential_state_reg_reg[1]_1 ),
        .I1(state_reg[1]),
        .I2(state_reg[0]),
        .I3(\s_reg[3]_i_3_n_0 ),
        .I4(s_reg[3]),
        .O(\FSM_sequential_state_reg_reg[1]_0 ));
  LUT5 #(
    .INIT(32'h00000400)) 
    \b_reg[7]_i_1__0 
       (.I0(state_reg[0]),
        .I1(state_reg[1]),
        .I2(\FSM_sequential_state_reg_reg[1]_1 ),
        .I3(s_reg[3]),
        .I4(\s_reg[3]_i_3_n_0 ),
        .O(b_next));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(b_next),
        .CLR(AR),
        .D(Q[1]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(b_next),
        .CLR(AR),
        .D(Q[2]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(b_next),
        .CLR(AR),
        .D(Q[3]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(b_next),
        .CLR(AR),
        .D(Q[4]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(b_next),
        .CLR(AR),
        .D(Q[5]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(b_next),
        .CLR(AR),
        .D(Q[6]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(b_next),
        .CLR(AR),
        .D(Q[7]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(b_next),
        .CLR(AR),
        .D(rx_IBUF),
        .Q(Q[7]));
  LUT3 #(
    .INIT(8'h38)) 
    \n_reg[0]_i_1 
       (.I0(state_reg[1]),
        .I1(n_next),
        .I2(n_reg[0]),
        .O(\n_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h2F80)) 
    \n_reg[1]_i_1 
       (.I0(state_reg[1]),
        .I1(n_reg[0]),
        .I2(n_next),
        .I3(n_reg[1]),
        .O(\n_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h2AFF8000)) 
    \n_reg[2]_i_1 
       (.I0(state_reg[1]),
        .I1(n_reg[0]),
        .I2(n_reg[1]),
        .I3(n_next),
        .I4(n_reg[2]),
        .O(\n_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000400030000)) 
    \n_reg[2]_i_2__0 
       (.I0(\FSM_sequential_state_reg[1]_i_3_n_0 ),
        .I1(s_reg[3]),
        .I2(\s_reg[3]_i_3_n_0 ),
        .I3(\FSM_sequential_state_reg_reg[1]_1 ),
        .I4(state_reg[0]),
        .I5(state_reg[1]),
        .O(n_next));
  FDCE #(
    .INIT(1'b0)) 
    \n_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\n_reg[0]_i_1_n_0 ),
        .Q(n_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \n_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\n_reg[1]_i_1_n_0 ),
        .Q(n_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \n_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\n_reg[2]_i_1_n_0 ),
        .Q(n_reg[2]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h02FE)) 
    \s_reg[0]_i_1 
       (.I0(rx_IBUF),
        .I1(state_reg[1]),
        .I2(state_reg[0]),
        .I3(s_reg[0]),
        .O(\s_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h02FEFE02)) 
    \s_reg[1]_i_1 
       (.I0(rx_IBUF),
        .I1(state_reg[1]),
        .I2(state_reg[0]),
        .I3(s_reg[0]),
        .I4(s_reg[1]),
        .O(\s_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h02FEFE02FE02FE02)) 
    \s_reg[2]_i_1__0 
       (.I0(rx_IBUF),
        .I1(state_reg[1]),
        .I2(state_reg[0]),
        .I3(s_reg[2]),
        .I4(s_reg[0]),
        .I5(s_reg[1]),
        .O(\s_reg[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000FDFF0DFFF)) 
    \s_reg[3]_i_1__0 
       (.I0(s_reg[3]),
        .I1(\s_reg[3]_i_3_n_0 ),
        .I2(state_reg[0]),
        .I3(state_reg[1]),
        .I4(rx_IBUF),
        .I5(\FSM_sequential_state_reg_reg[1]_1 ),
        .O(s_next));
  LUT5 #(
    .INIT(32'h989F9890)) 
    \s_reg[3]_i_2__0 
       (.I0(\s_reg[3]_i_3_n_0 ),
        .I1(s_reg[3]),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .I4(rx_IBUF),
        .O(\s_reg[3]_i_2__0_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \s_reg[3]_i_3 
       (.I0(s_reg[1]),
        .I1(s_reg[0]),
        .I2(s_reg[2]),
        .O(\s_reg[3]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \s_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(s_next),
        .CLR(AR),
        .D(\s_reg[0]_i_1_n_0 ),
        .Q(s_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \s_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(s_next),
        .CLR(AR),
        .D(\s_reg[1]_i_1_n_0 ),
        .Q(s_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \s_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(s_next),
        .CLR(AR),
        .D(\s_reg[2]_i_1__0_n_0 ),
        .Q(s_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \s_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(s_next),
        .CLR(AR),
        .D(\s_reg[3]_i_2__0_n_0 ),
        .Q(s_reg[3]));
endmodule

module uart_tx
   (tx_OBUF,
    \FSM_sequential_state_reg_reg[1]_0 ,
    \FSM_sequential_state_reg_reg[0]_0 ,
    clk_IBUF_BUFG,
    AR,
    \FSM_sequential_state_reg_reg[0]_1 ,
    tx_empty,
    D,
    \b_reg_reg[6]_0 );
  output tx_OBUF;
  output [0:0]\FSM_sequential_state_reg_reg[1]_0 ;
  output \FSM_sequential_state_reg_reg[0]_0 ;
  input clk_IBUF_BUFG;
  input [0:0]AR;
  input \FSM_sequential_state_reg_reg[0]_1 ;
  input tx_empty;
  input [0:0]D;
  input [6:0]\b_reg_reg[6]_0 ;

  wire [0:0]AR;
  wire [0:0]D;
  wire \FSM_sequential_state_reg[0]_i_1__0_n_0 ;
  wire \FSM_sequential_state_reg[0]_i_2_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_1__0_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_2_n_0 ;
  wire \FSM_sequential_state_reg_reg[0]_0 ;
  wire \FSM_sequential_state_reg_reg[0]_1 ;
  wire [0:0]\FSM_sequential_state_reg_reg[1]_0 ;
  wire [6:0]b_next;
  wire b_next_0;
  wire [0:0]b_reg;
  wire [6:0]\b_reg_reg[6]_0 ;
  wire \b_reg_reg_n_0_[1] ;
  wire \b_reg_reg_n_0_[2] ;
  wire \b_reg_reg_n_0_[3] ;
  wire \b_reg_reg_n_0_[4] ;
  wire \b_reg_reg_n_0_[5] ;
  wire \b_reg_reg_n_0_[6] ;
  wire \b_reg_reg_n_0_[7] ;
  wire clk_IBUF_BUFG;
  wire n_next;
  wire [2:0]n_reg;
  wire \n_reg[0]_i_1_n_0 ;
  wire \n_reg[1]_i_1_n_0 ;
  wire \n_reg[2]_i_1_n_0 ;
  wire s_next;
  wire [3:0]s_reg;
  wire \s_reg[0]_i_1__0_n_0 ;
  wire \s_reg[1]_i_1__0_n_0 ;
  wire \s_reg[2]_i_1_n_0 ;
  wire \s_reg[3]_i_2_n_0 ;
  wire [0:0]state_reg;
  wire tx_OBUF;
  wire tx_empty;
  wire tx_next;

  LUT6 #(
    .INIT(64'hFFF0000AFFF03333)) 
    \FSM_sequential_state_reg[0]_i_1__0 
       (.I0(\FSM_sequential_state_reg[0]_i_2_n_0 ),
        .I1(tx_empty),
        .I2(\FSM_sequential_state_reg[1]_i_2_n_0 ),
        .I3(\FSM_sequential_state_reg_reg[0]_1 ),
        .I4(state_reg),
        .I5(\FSM_sequential_state_reg_reg[1]_0 ),
        .O(\FSM_sequential_state_reg[0]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_sequential_state_reg[0]_i_2 
       (.I0(n_reg[1]),
        .I1(n_reg[0]),
        .I2(n_reg[2]),
        .O(\FSM_sequential_state_reg[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hEF10)) 
    \FSM_sequential_state_reg[1]_i_1__0 
       (.I0(\FSM_sequential_state_reg[1]_i_2_n_0 ),
        .I1(\FSM_sequential_state_reg_reg[0]_1 ),
        .I2(state_reg),
        .I3(\FSM_sequential_state_reg_reg[1]_0 ),
        .O(\FSM_sequential_state_reg[1]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_sequential_state_reg[1]_i_2 
       (.I0(s_reg[2]),
        .I1(s_reg[0]),
        .I2(s_reg[1]),
        .I3(s_reg[3]),
        .O(\FSM_sequential_state_reg[1]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:01,iSTATE0:10,iSTATE1:00,iSTATE2:11" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_sequential_state_reg[0]_i_1__0_n_0 ),
        .Q(state_reg));
  (* FSM_ENCODED_STATES = "iSTATE:01,iSTATE0:10,iSTATE1:00,iSTATE2:11" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_sequential_state_reg[1]_i_1__0_n_0 ),
        .Q(\FSM_sequential_state_reg_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[0]_i_1 
       (.I0(\b_reg_reg_n_0_[1] ),
        .I1(\FSM_sequential_state_reg_reg[1]_0 ),
        .I2(\b_reg_reg[6]_0 [0]),
        .O(b_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[1]_i_1 
       (.I0(\b_reg_reg_n_0_[2] ),
        .I1(\FSM_sequential_state_reg_reg[1]_0 ),
        .I2(\b_reg_reg[6]_0 [1]),
        .O(b_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[2]_i_1 
       (.I0(\b_reg_reg_n_0_[3] ),
        .I1(\FSM_sequential_state_reg_reg[1]_0 ),
        .I2(\b_reg_reg[6]_0 [2]),
        .O(b_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[3]_i_1 
       (.I0(\b_reg_reg_n_0_[4] ),
        .I1(\FSM_sequential_state_reg_reg[1]_0 ),
        .I2(\b_reg_reg[6]_0 [3]),
        .O(b_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[4]_i_1 
       (.I0(\b_reg_reg_n_0_[5] ),
        .I1(\FSM_sequential_state_reg_reg[1]_0 ),
        .I2(\b_reg_reg[6]_0 [4]),
        .O(b_next[4]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[5]_i_1 
       (.I0(\b_reg_reg_n_0_[6] ),
        .I1(\FSM_sequential_state_reg_reg[1]_0 ),
        .I2(\b_reg_reg[6]_0 [5]),
        .O(b_next[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[6]_i_1 
       (.I0(\b_reg_reg_n_0_[7] ),
        .I1(\FSM_sequential_state_reg_reg[1]_0 ),
        .I2(\b_reg_reg[6]_0 [6]),
        .O(b_next[6]));
  LUT5 #(
    .INIT(32'h00000355)) 
    \b_reg[7]_i_1 
       (.I0(tx_empty),
        .I1(\FSM_sequential_state_reg[1]_i_2_n_0 ),
        .I2(\FSM_sequential_state_reg_reg[0]_1 ),
        .I3(\FSM_sequential_state_reg_reg[1]_0 ),
        .I4(state_reg),
        .O(b_next_0));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(b_next_0),
        .CLR(AR),
        .D(b_next[0]),
        .Q(b_reg));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(b_next_0),
        .CLR(AR),
        .D(b_next[1]),
        .Q(\b_reg_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(b_next_0),
        .CLR(AR),
        .D(b_next[2]),
        .Q(\b_reg_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(b_next_0),
        .CLR(AR),
        .D(b_next[3]),
        .Q(\b_reg_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(b_next_0),
        .CLR(AR),
        .D(b_next[4]),
        .Q(\b_reg_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(b_next_0),
        .CLR(AR),
        .D(b_next[5]),
        .Q(\b_reg_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(b_next_0),
        .CLR(AR),
        .D(b_next[6]),
        .Q(\b_reg_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(b_next_0),
        .CLR(AR),
        .D(D),
        .Q(\b_reg_reg_n_0_[7] ));
  LUT3 #(
    .INIT(8'h38)) 
    \n_reg[0]_i_1 
       (.I0(\FSM_sequential_state_reg_reg[1]_0 ),
        .I1(n_next),
        .I2(n_reg[0]),
        .O(\n_reg[0]_i_1_n_0 ));
  (* \PinAttr:I1:HOLD_DETOUR  = "154" *) 
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h2F80)) 
    \n_reg[1]_i_1 
       (.I0(\FSM_sequential_state_reg_reg[1]_0 ),
        .I1(n_reg[0]),
        .I2(n_next),
        .I3(n_reg[1]),
        .O(\n_reg[1]_i_1_n_0 ));
  (* \PinAttr:I1:HOLD_DETOUR  = "154" *) 
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h2AFF8000)) 
    \n_reg[2]_i_1 
       (.I0(\FSM_sequential_state_reg_reg[1]_0 ),
        .I1(n_reg[0]),
        .I2(n_reg[1]),
        .I3(n_next),
        .I4(n_reg[2]),
        .O(\n_reg[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00010300)) 
    \n_reg[2]_i_2 
       (.I0(\FSM_sequential_state_reg[0]_i_2_n_0 ),
        .I1(\FSM_sequential_state_reg[1]_i_2_n_0 ),
        .I2(\FSM_sequential_state_reg_reg[0]_1 ),
        .I3(state_reg),
        .I4(\FSM_sequential_state_reg_reg[1]_0 ),
        .O(n_next));
  FDCE #(
    .INIT(1'b0)) 
    \n_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\n_reg[0]_i_1_n_0 ),
        .Q(n_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \n_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\n_reg[1]_i_1_n_0 ),
        .Q(n_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \n_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\n_reg[2]_i_1_n_0 ),
        .Q(n_reg[2]));
  LUT5 #(
    .INIT(32'h00000040)) 
    \r_ptr_reg[0]_i_1__0 
       (.I0(\FSM_sequential_state_reg[1]_i_2_n_0 ),
        .I1(state_reg),
        .I2(\FSM_sequential_state_reg_reg[1]_0 ),
        .I3(\FSM_sequential_state_reg_reg[0]_1 ),
        .I4(tx_empty),
        .O(\FSM_sequential_state_reg_reg[0]_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \s_reg[0]_i_1__0 
       (.I0(state_reg),
        .I1(\FSM_sequential_state_reg_reg[1]_0 ),
        .I2(s_reg[0]),
        .O(\s_reg[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h0EE0)) 
    \s_reg[1]_i_1__0 
       (.I0(state_reg),
        .I1(\FSM_sequential_state_reg_reg[1]_0 ),
        .I2(s_reg[1]),
        .I3(s_reg[0]),
        .O(\s_reg[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h0EEEE000)) 
    \s_reg[2]_i_1 
       (.I0(\FSM_sequential_state_reg_reg[1]_0 ),
        .I1(state_reg),
        .I2(s_reg[1]),
        .I3(s_reg[0]),
        .I4(s_reg[2]),
        .O(\s_reg[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2330233F)) 
    \s_reg[3]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_i_2_n_0 ),
        .I1(\FSM_sequential_state_reg_reg[0]_1 ),
        .I2(state_reg),
        .I3(\FSM_sequential_state_reg_reg[1]_0 ),
        .I4(tx_empty),
        .O(s_next));
  LUT6 #(
    .INIT(64'h0EEEEEEEE0000000)) 
    \s_reg[3]_i_2 
       (.I0(\FSM_sequential_state_reg_reg[1]_0 ),
        .I1(state_reg),
        .I2(s_reg[2]),
        .I3(s_reg[0]),
        .I4(s_reg[1]),
        .I5(s_reg[3]),
        .O(\s_reg[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \s_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(s_next),
        .CLR(AR),
        .D(\s_reg[0]_i_1__0_n_0 ),
        .Q(s_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \s_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(s_next),
        .CLR(AR),
        .D(\s_reg[1]_i_1__0_n_0 ),
        .Q(s_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \s_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(s_next),
        .CLR(AR),
        .D(\s_reg[2]_i_1_n_0 ),
        .Q(s_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \s_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(s_next),
        .CLR(AR),
        .D(\s_reg[3]_i_2_n_0 ),
        .Q(s_reg[3]));
  LUT3 #(
    .INIT(8'hE5)) 
    tx_reg_i_1
       (.I0(state_reg),
        .I1(b_reg),
        .I2(\FSM_sequential_state_reg_reg[1]_0 ),
        .O(tx_next));
  FDPE #(
    .INIT(1'b1)) 
    tx_reg_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(tx_next),
        .PRE(AR),
        .Q(tx_OBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
