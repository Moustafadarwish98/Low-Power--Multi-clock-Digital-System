/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Tue Sep 30 05:10:36 2025
/////////////////////////////////////////////////////////////


module reset_sync_NUM_STAGES2_0 ( destination_domain_clk, async_reset_n, 
        sync_reset );
  input destination_domain_clk, async_reset_n;
  output sync_reset;
  wire   \sync_reg[0] ;

  DFFRQX2M \sync_reg_reg[1]  ( .D(\sync_reg[0] ), .CK(destination_domain_clk), 
        .RN(async_reset_n), .Q(sync_reset) );
  DFFRQX2M \sync_reg_reg[0]  ( .D(1'b1), .CK(destination_domain_clk), .RN(
        async_reset_n), .Q(\sync_reg[0] ) );
endmodule


module reset_sync_NUM_STAGES2_1 ( destination_domain_clk, async_reset_n, 
        sync_reset );
  input destination_domain_clk, async_reset_n;
  output sync_reset;
  wire   \sync_reg[0] ;

  DFFRQX2M \sync_reg_reg[1]  ( .D(\sync_reg[0] ), .CK(destination_domain_clk), 
        .RN(async_reset_n), .Q(sync_reset) );
  DFFRQX2M \sync_reg_reg[0]  ( .D(1'b1), .CK(destination_domain_clk), .RN(
        async_reset_n), .Q(\sync_reg[0] ) );
endmodule


module data_sync_NUM_STAGES2_BIT_WIDTH8 ( dest_clk, dest_reset_n, unsync_bus, 
        bus_enable, sync_bus, enable_pulse );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input dest_clk, dest_reset_n, bus_enable;
  output enable_pulse;
  wire   pulse_enable_flop, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10;
  wire   [1:0] en_sync_reg;

  DFFRQX2M pulse_enable_flop_reg ( .D(en_sync_reg[1]), .CK(dest_clk), .RN(
        dest_reset_n), .Q(pulse_enable_flop) );
  DFFRQX2M \en_sync_reg_reg[1]  ( .D(en_sync_reg[0]), .CK(dest_clk), .RN(
        dest_reset_n), .Q(en_sync_reg[1]) );
  DFFRQX2M \sync_bus_reg[7]  ( .D(n9), .CK(dest_clk), .RN(dest_reset_n), .Q(
        sync_bus[7]) );
  DFFRQX2M \sync_bus_reg[6]  ( .D(n8), .CK(dest_clk), .RN(dest_reset_n), .Q(
        sync_bus[6]) );
  DFFRQX2M \sync_bus_reg[4]  ( .D(n6), .CK(dest_clk), .RN(dest_reset_n), .Q(
        sync_bus[4]) );
  DFFRQX2M \sync_bus_reg[5]  ( .D(n7), .CK(dest_clk), .RN(dest_reset_n), .Q(
        sync_bus[5]) );
  DFFRQX2M enable_pulse_reg ( .D(n10), .CK(dest_clk), .RN(dest_reset_n), .Q(
        enable_pulse) );
  DFFRQX2M \sync_bus_reg[3]  ( .D(n5), .CK(dest_clk), .RN(dest_reset_n), .Q(
        sync_bus[3]) );
  DFFRQX2M \sync_bus_reg[0]  ( .D(n2), .CK(dest_clk), .RN(dest_reset_n), .Q(
        sync_bus[0]) );
  DFFRQX2M \sync_bus_reg[1]  ( .D(n3), .CK(dest_clk), .RN(dest_reset_n), .Q(
        sync_bus[1]) );
  DFFRQX2M \sync_bus_reg[2]  ( .D(n4), .CK(dest_clk), .RN(dest_reset_n), .Q(
        sync_bus[2]) );
  DFFRQX2M \en_sync_reg_reg[0]  ( .D(bus_enable), .CK(dest_clk), .RN(
        dest_reset_n), .Q(en_sync_reg[0]) );
  INVX2M U3 ( .A(n1), .Y(n10) );
  NAND2BX2M U4 ( .AN(pulse_enable_flop), .B(en_sync_reg[1]), .Y(n1) );
  AO22X1M U5 ( .A0(unsync_bus[0]), .A1(n10), .B0(sync_bus[0]), .B1(n1), .Y(n2)
         );
  AO22X1M U6 ( .A0(unsync_bus[1]), .A1(n10), .B0(sync_bus[1]), .B1(n1), .Y(n3)
         );
  AO22X1M U7 ( .A0(unsync_bus[2]), .A1(n10), .B0(sync_bus[2]), .B1(n1), .Y(n4)
         );
  AO22X1M U8 ( .A0(unsync_bus[3]), .A1(n10), .B0(sync_bus[3]), .B1(n1), .Y(n5)
         );
  AO22X1M U9 ( .A0(unsync_bus[4]), .A1(n10), .B0(sync_bus[4]), .B1(n1), .Y(n6)
         );
  AO22X1M U10 ( .A0(unsync_bus[5]), .A1(n10), .B0(sync_bus[5]), .B1(n1), .Y(n7) );
  AO22X1M U11 ( .A0(unsync_bus[6]), .A1(n10), .B0(sync_bus[6]), .B1(n1), .Y(n8) );
  AO22X1M U12 ( .A0(unsync_bus[7]), .A1(n10), .B0(sync_bus[7]), .B1(n1), .Y(n9) );
endmodule


module pulse_synchronizer_NUM_STAGES2 ( clk, rst_n, level_sig, pulse_sig );
  input clk, rst_n, level_sig;
  output pulse_sig;
  wire   prev_stage;
  wire   [1:0] sync_reg;

  DFFRQX2M \sync_reg_reg[1]  ( .D(sync_reg[0]), .CK(clk), .RN(rst_n), .Q(
        sync_reg[1]) );
  DFFRQX2M prev_stage_reg ( .D(sync_reg[1]), .CK(clk), .RN(rst_n), .Q(
        prev_stage) );
  DFFRQX2M \sync_reg_reg[0]  ( .D(level_sig), .CK(clk), .RN(rst_n), .Q(
        sync_reg[0]) );
  NOR2BX2M U3 ( .AN(sync_reg[1]), .B(prev_stage), .Y(pulse_sig) );
endmodule


module clk_div_WIDTH8_0_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKXOR2X2M U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module clk_div_WIDTH8_0 ( clk_ref, rst_n, clk_en, div_ratio, div_clk );
  input [7:0] div_ratio;
  input clk_ref, rst_n, clk_en;
  output div_clk;
  wire   N0, div_clk_reg, N9, flag, N18, N20, N21, N22, N23, N24, N25, N27,
         N28, N29, N30, N31, N32, N33, N50, N51, N52, N53, N54, N55, N56, N57,
         N90, N91, N92, N93, N94, N95, N96, N97, n20, n33, n42, n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n34, n35,
         n36, n37, n38, n39, n40, n41, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55;
  wire   [7:0] count;
  wire   [7:0] prev_div_ratio;
  assign N27 = div_ratio[1];
  assign N28 = div_ratio[2];
  assign N29 = div_ratio[3];
  assign N30 = div_ratio[4];
  assign N31 = div_ratio[5];
  assign N32 = div_ratio[6];
  assign N33 = div_ratio[7];

  clk_div_WIDTH8_0_DW01_inc_0 r87 ( .A(count), .SUM({N57, N56, N55, N54, N53, 
        N52, N51, N50}) );
  DFFRX1M div_clk_reg_reg ( .D(n33), .CK(clk_ref), .RN(n3), .Q(div_clk_reg), 
        .QN(n20) );
  DFFRQX2M \prev_div_ratio_reg[0]  ( .D(div_ratio[0]), .CK(clk_ref), .RN(n3), 
        .Q(prev_div_ratio[0]) );
  DFFRQX2M \prev_div_ratio_reg[7]  ( .D(N33), .CK(clk_ref), .RN(n3), .Q(
        prev_div_ratio[7]) );
  DFFRQX2M \prev_div_ratio_reg[6]  ( .D(N32), .CK(clk_ref), .RN(n3), .Q(
        prev_div_ratio[6]) );
  DFFRQX2M \prev_div_ratio_reg[5]  ( .D(N31), .CK(clk_ref), .RN(n3), .Q(
        prev_div_ratio[5]) );
  DFFRQX2M \prev_div_ratio_reg[4]  ( .D(N30), .CK(clk_ref), .RN(n3), .Q(
        prev_div_ratio[4]) );
  DFFRQX2M \prev_div_ratio_reg[3]  ( .D(N29), .CK(clk_ref), .RN(n3), .Q(
        prev_div_ratio[3]) );
  DFFRQX2M \prev_div_ratio_reg[2]  ( .D(N28), .CK(clk_ref), .RN(n3), .Q(
        prev_div_ratio[2]) );
  DFFRQX2M \prev_div_ratio_reg[1]  ( .D(N27), .CK(clk_ref), .RN(n3), .Q(
        prev_div_ratio[1]) );
  DFFRQX2M \count_reg[7]  ( .D(N97), .CK(clk_ref), .RN(n3), .Q(count[7]) );
  DFFRQX2M flag_reg ( .D(n42), .CK(clk_ref), .RN(n3), .Q(flag) );
  DFFRQX2M \count_reg[0]  ( .D(N90), .CK(clk_ref), .RN(n3), .Q(count[0]) );
  DFFRQX2M \count_reg[2]  ( .D(N92), .CK(clk_ref), .RN(n3), .Q(count[2]) );
  DFFRQX2M \count_reg[3]  ( .D(N93), .CK(clk_ref), .RN(n3), .Q(count[3]) );
  DFFRQX2M \count_reg[4]  ( .D(N94), .CK(clk_ref), .RN(n3), .Q(count[4]) );
  DFFRQX2M \count_reg[5]  ( .D(N95), .CK(clk_ref), .RN(n3), .Q(count[5]) );
  DFFRQX2M \count_reg[6]  ( .D(N96), .CK(clk_ref), .RN(n3), .Q(count[6]) );
  DFFRQX2M \count_reg[1]  ( .D(N91), .CK(clk_ref), .RN(n3), .Q(count[1]) );
  NAND4X2M U3 ( .A(n21), .B(n19), .C(n18), .D(n17), .Y(n1) );
  INVX2M U4 ( .A(n4), .Y(n3) );
  INVX2M U5 ( .A(rst_n), .Y(n4) );
  MX2X2M U6 ( .A(N9), .B(1'b0), .S0(n4), .Y(div_clk) );
  INVX2M U7 ( .A(count[0]), .Y(n22) );
  OR2X2M U8 ( .A(N28), .B(N27), .Y(n5) );
  MX2X2M U9 ( .A(div_clk_reg), .B(clk_ref), .S0(N0), .Y(N9) );
  AOI21BX2M U10 ( .A0(N27), .A1(N28), .B0N(n5), .Y(n2) );
  CLKINVX1M U11 ( .A(N27), .Y(N18) );
  OR2X1M U12 ( .A(n5), .B(N29), .Y(n6) );
  OAI2BB1X1M U13 ( .A0N(n5), .A1N(N29), .B0(n6), .Y(N20) );
  OR2X1M U14 ( .A(n6), .B(N30), .Y(n7) );
  OAI2BB1X1M U15 ( .A0N(n6), .A1N(N30), .B0(n7), .Y(N21) );
  OR2X1M U16 ( .A(n7), .B(N31), .Y(n8) );
  OAI2BB1X1M U17 ( .A0N(n7), .A1N(N31), .B0(n8), .Y(N22) );
  XNOR2X1M U18 ( .A(N32), .B(n8), .Y(N23) );
  NOR3X1M U19 ( .A(N32), .B(N33), .C(n8), .Y(N25) );
  OAI21X1M U20 ( .A0(N32), .A1(n8), .B0(N33), .Y(n9) );
  NAND2BX1M U21 ( .AN(N25), .B(n9), .Y(N24) );
  XNOR2X1M U22 ( .A(N20), .B(count[2]), .Y(n21) );
  NOR2X1M U23 ( .A(n22), .B(N18), .Y(n10) );
  OAI22X1M U24 ( .A0(count[1]), .A1(n10), .B0(n10), .B1(n2), .Y(n19) );
  CLKNAND2X2M U25 ( .A(N18), .B(n22), .Y(n11) );
  AOI22X1M U26 ( .A0(n11), .A1(n2), .B0(n11), .B1(count[1]), .Y(n12) );
  NOR3X1M U27 ( .A(n12), .B(N25), .C(count[7]), .Y(n18) );
  CLKXOR2X2M U28 ( .A(N21), .B(count[3]), .Y(n16) );
  CLKXOR2X2M U29 ( .A(N22), .B(count[4]), .Y(n15) );
  CLKXOR2X2M U30 ( .A(N23), .B(count[5]), .Y(n14) );
  CLKXOR2X2M U31 ( .A(N24), .B(count[6]), .Y(n13) );
  NOR4X1M U32 ( .A(n16), .B(n15), .C(n14), .D(n13), .Y(n17) );
  MXI2X1M U33 ( .A(n23), .B(n24), .S0(flag), .Y(n42) );
  NAND2BX1M U34 ( .AN(n25), .B(n26), .Y(n23) );
  MXI2X1M U35 ( .A(n27), .B(n20), .S0(n28), .Y(n33) );
  AOI2BB1X1M U36 ( .A0N(div_ratio[0]), .A1N(n1), .B0(n24), .Y(n28) );
  CLKNAND2X2M U37 ( .A(n26), .B(n25), .Y(n24) );
  OAI211X1M U38 ( .A0(n20), .A1(n29), .B0(n30), .C0(clk_en), .Y(n27) );
  CLKINVX1M U39 ( .A(N0), .Y(n30) );
  NOR2BX1M U40 ( .AN(N57), .B(n31), .Y(N97) );
  NOR2BX1M U41 ( .AN(N56), .B(n31), .Y(N96) );
  NOR2BX1M U42 ( .AN(N55), .B(n31), .Y(N95) );
  NOR2BX1M U43 ( .AN(N54), .B(n31), .Y(N94) );
  NOR2BX1M U44 ( .AN(N53), .B(n31), .Y(N93) );
  NOR2BX1M U45 ( .AN(N52), .B(n31), .Y(N92) );
  NOR2BX1M U46 ( .AN(N51), .B(n31), .Y(N91) );
  NOR2BX1M U47 ( .AN(N50), .B(n31), .Y(N90) );
  OAI211X1M U48 ( .A0(div_ratio[0]), .A1(n1), .B0(n25), .C0(n26), .Y(n31) );
  NOR3BX1M U49 ( .AN(clk_en), .B(n29), .C(N0), .Y(n26) );
  CLKNAND2X2M U50 ( .A(n32), .B(n34), .Y(n29) );
  NOR4X1M U51 ( .A(n35), .B(n36), .C(n37), .D(n38), .Y(n34) );
  CLKXOR2X2M U52 ( .A(prev_div_ratio[4]), .B(N30), .Y(n38) );
  CLKXOR2X2M U53 ( .A(prev_div_ratio[3]), .B(N29), .Y(n37) );
  CLKXOR2X2M U54 ( .A(prev_div_ratio[2]), .B(N28), .Y(n36) );
  CLKXOR2X2M U55 ( .A(prev_div_ratio[1]), .B(N27), .Y(n35) );
  NOR4X1M U56 ( .A(n39), .B(n40), .C(n41), .D(n43), .Y(n32) );
  CLKXOR2X2M U57 ( .A(prev_div_ratio[0]), .B(div_ratio[0]), .Y(n43) );
  CLKXOR2X2M U58 ( .A(prev_div_ratio[7]), .B(N33), .Y(n41) );
  CLKXOR2X2M U59 ( .A(prev_div_ratio[6]), .B(N32), .Y(n40) );
  CLKXOR2X2M U60 ( .A(prev_div_ratio[5]), .B(N31), .Y(n39) );
  CLKNAND2X2M U61 ( .A(n44), .B(div_ratio[0]), .Y(n25) );
  MXI2X1M U62 ( .A(n1), .B(n45), .S0(flag), .Y(n44) );
  CLKNAND2X2M U63 ( .A(n46), .B(n47), .Y(n45) );
  NOR4X1M U64 ( .A(count[7]), .B(n48), .C(n49), .D(n50), .Y(n47) );
  CLKXOR2X2M U65 ( .A(count[2]), .B(N29), .Y(n50) );
  CLKXOR2X2M U66 ( .A(count[1]), .B(N28), .Y(n49) );
  CLKXOR2X2M U67 ( .A(count[0]), .B(N27), .Y(n48) );
  NOR4X1M U68 ( .A(n51), .B(n52), .C(n53), .D(n54), .Y(n46) );
  CLKXOR2X2M U69 ( .A(count[6]), .B(N33), .Y(n54) );
  CLKXOR2X2M U70 ( .A(count[5]), .B(N32), .Y(n53) );
  CLKXOR2X2M U71 ( .A(count[4]), .B(N31), .Y(n52) );
  CLKXOR2X2M U72 ( .A(count[3]), .B(N30), .Y(n51) );
  NOR4BX1M U73 ( .AN(n55), .B(N28), .C(N29), .D(N27), .Y(N0) );
  NOR4X1M U74 ( .A(N33), .B(N32), .C(N31), .D(N30), .Y(n55) );
endmodule


module clk_div_WIDTH8_1_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKXOR2X2M U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module clk_div_WIDTH8_1 ( clk_ref, rst_n, clk_en, div_ratio, div_clk );
  input [7:0] div_ratio;
  input clk_ref, rst_n, clk_en;
  output div_clk;
  wire   N0, div_clk_reg, N9, flag, N18, N20, N21, N22, N23, N24, N25, N27,
         N28, N29, N30, N31, N32, N33, N50, N51, N52, N53, N54, N55, N56, N57,
         N90, N91, N92, N93, N94, N95, N96, N97, n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n34, n35, n36, n37,
         n38, n39, n40, n41, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58;
  wire   [7:0] count;
  wire   [7:0] prev_div_ratio;
  assign N27 = div_ratio[1];
  assign N28 = div_ratio[2];
  assign N29 = div_ratio[3];
  assign N30 = div_ratio[4];
  assign N31 = div_ratio[5];
  assign N32 = div_ratio[6];
  assign N33 = div_ratio[7];

  clk_div_WIDTH8_1_DW01_inc_0 r87 ( .A(count), .SUM({N57, N56, N55, N54, N53, 
        N52, N51, N50}) );
  DFFRX1M div_clk_reg_reg ( .D(n57), .CK(clk_ref), .RN(n3), .Q(div_clk_reg), 
        .QN(n58) );
  DFFRQX2M \prev_div_ratio_reg[0]  ( .D(div_ratio[0]), .CK(clk_ref), .RN(n3), 
        .Q(prev_div_ratio[0]) );
  DFFRQX2M \prev_div_ratio_reg[7]  ( .D(N33), .CK(clk_ref), .RN(n3), .Q(
        prev_div_ratio[7]) );
  DFFRQX2M \prev_div_ratio_reg[6]  ( .D(N32), .CK(clk_ref), .RN(n3), .Q(
        prev_div_ratio[6]) );
  DFFRQX2M \prev_div_ratio_reg[5]  ( .D(N31), .CK(clk_ref), .RN(n3), .Q(
        prev_div_ratio[5]) );
  DFFRQX2M \prev_div_ratio_reg[4]  ( .D(N30), .CK(clk_ref), .RN(n3), .Q(
        prev_div_ratio[4]) );
  DFFRQX2M \prev_div_ratio_reg[3]  ( .D(N29), .CK(clk_ref), .RN(n3), .Q(
        prev_div_ratio[3]) );
  DFFRQX2M \prev_div_ratio_reg[2]  ( .D(N28), .CK(clk_ref), .RN(n3), .Q(
        prev_div_ratio[2]) );
  DFFRQX2M \prev_div_ratio_reg[1]  ( .D(N27), .CK(clk_ref), .RN(n3), .Q(
        prev_div_ratio[1]) );
  DFFRQX2M \count_reg[7]  ( .D(N97), .CK(clk_ref), .RN(n3), .Q(count[7]) );
  DFFRQX2M flag_reg ( .D(n56), .CK(clk_ref), .RN(n3), .Q(flag) );
  DFFRQX2M \count_reg[0]  ( .D(N90), .CK(clk_ref), .RN(n3), .Q(count[0]) );
  DFFRQX2M \count_reg[2]  ( .D(N92), .CK(clk_ref), .RN(n3), .Q(count[2]) );
  DFFRQX2M \count_reg[3]  ( .D(N93), .CK(clk_ref), .RN(n3), .Q(count[3]) );
  DFFRQX2M \count_reg[4]  ( .D(N94), .CK(clk_ref), .RN(n3), .Q(count[4]) );
  DFFRQX2M \count_reg[5]  ( .D(N95), .CK(clk_ref), .RN(n3), .Q(count[5]) );
  DFFRQX2M \count_reg[6]  ( .D(N96), .CK(clk_ref), .RN(n3), .Q(count[6]) );
  DFFRQX2M \count_reg[1]  ( .D(N91), .CK(clk_ref), .RN(n3), .Q(count[1]) );
  NAND4X2M U3 ( .A(n21), .B(n19), .C(n18), .D(n17), .Y(n1) );
  INVX2M U4 ( .A(n4), .Y(n3) );
  OR2X2M U5 ( .A(N28), .B(N27), .Y(n5) );
  AOI21BX2M U6 ( .A0(N27), .A1(N28), .B0N(n5), .Y(n2) );
  INVX2M U7 ( .A(rst_n), .Y(n4) );
  MX2X2M U8 ( .A(N9), .B(1'b0), .S0(n4), .Y(div_clk) );
  INVX2M U9 ( .A(count[0]), .Y(n22) );
  MX2X2M U10 ( .A(div_clk_reg), .B(clk_ref), .S0(N0), .Y(N9) );
  CLKINVX1M U11 ( .A(N27), .Y(N18) );
  OR2X1M U12 ( .A(n5), .B(N29), .Y(n6) );
  OAI2BB1X1M U13 ( .A0N(n5), .A1N(N29), .B0(n6), .Y(N20) );
  OR2X1M U14 ( .A(n6), .B(N30), .Y(n7) );
  OAI2BB1X1M U15 ( .A0N(n6), .A1N(N30), .B0(n7), .Y(N21) );
  OR2X1M U16 ( .A(n7), .B(N31), .Y(n8) );
  OAI2BB1X1M U17 ( .A0N(n7), .A1N(N31), .B0(n8), .Y(N22) );
  XNOR2X1M U18 ( .A(N32), .B(n8), .Y(N23) );
  NOR3X1M U19 ( .A(N32), .B(N33), .C(n8), .Y(N25) );
  OAI21X1M U20 ( .A0(N32), .A1(n8), .B0(N33), .Y(n9) );
  NAND2BX1M U21 ( .AN(N25), .B(n9), .Y(N24) );
  XNOR2X1M U22 ( .A(N20), .B(count[2]), .Y(n21) );
  NOR2X1M U23 ( .A(n22), .B(N18), .Y(n10) );
  OAI22X1M U24 ( .A0(count[1]), .A1(n10), .B0(n10), .B1(n2), .Y(n19) );
  CLKNAND2X2M U25 ( .A(N18), .B(n22), .Y(n11) );
  AOI22X1M U26 ( .A0(n11), .A1(n2), .B0(n11), .B1(count[1]), .Y(n12) );
  NOR3X1M U27 ( .A(n12), .B(N25), .C(count[7]), .Y(n18) );
  CLKXOR2X2M U28 ( .A(N21), .B(count[3]), .Y(n16) );
  CLKXOR2X2M U29 ( .A(N22), .B(count[4]), .Y(n15) );
  CLKXOR2X2M U30 ( .A(N23), .B(count[5]), .Y(n14) );
  CLKXOR2X2M U31 ( .A(N24), .B(count[6]), .Y(n13) );
  NOR4X1M U32 ( .A(n16), .B(n15), .C(n14), .D(n13), .Y(n17) );
  MXI2X1M U33 ( .A(n23), .B(n24), .S0(flag), .Y(n56) );
  NAND2BX1M U34 ( .AN(n25), .B(n26), .Y(n23) );
  MXI2X1M U35 ( .A(n27), .B(n58), .S0(n28), .Y(n57) );
  AOI2BB1X1M U36 ( .A0N(div_ratio[0]), .A1N(n1), .B0(n24), .Y(n28) );
  CLKNAND2X2M U37 ( .A(n26), .B(n25), .Y(n24) );
  OAI211X1M U38 ( .A0(n58), .A1(n29), .B0(n30), .C0(clk_en), .Y(n27) );
  CLKINVX1M U39 ( .A(N0), .Y(n30) );
  NOR2BX1M U40 ( .AN(N57), .B(n31), .Y(N97) );
  NOR2BX1M U41 ( .AN(N56), .B(n31), .Y(N96) );
  NOR2BX1M U42 ( .AN(N55), .B(n31), .Y(N95) );
  NOR2BX1M U43 ( .AN(N54), .B(n31), .Y(N94) );
  NOR2BX1M U44 ( .AN(N53), .B(n31), .Y(N93) );
  NOR2BX1M U45 ( .AN(N52), .B(n31), .Y(N92) );
  NOR2BX1M U46 ( .AN(N51), .B(n31), .Y(N91) );
  NOR2BX1M U47 ( .AN(N50), .B(n31), .Y(N90) );
  OAI211X1M U48 ( .A0(div_ratio[0]), .A1(n1), .B0(n25), .C0(n26), .Y(n31) );
  NOR3BX1M U49 ( .AN(clk_en), .B(n29), .C(N0), .Y(n26) );
  CLKNAND2X2M U50 ( .A(n32), .B(n34), .Y(n29) );
  NOR4X1M U51 ( .A(n35), .B(n36), .C(n37), .D(n38), .Y(n34) );
  CLKXOR2X2M U52 ( .A(prev_div_ratio[4]), .B(N30), .Y(n38) );
  CLKXOR2X2M U53 ( .A(prev_div_ratio[3]), .B(N29), .Y(n37) );
  CLKXOR2X2M U54 ( .A(prev_div_ratio[2]), .B(N28), .Y(n36) );
  CLKXOR2X2M U55 ( .A(prev_div_ratio[1]), .B(N27), .Y(n35) );
  NOR4X1M U56 ( .A(n39), .B(n40), .C(n41), .D(n43), .Y(n32) );
  CLKXOR2X2M U57 ( .A(prev_div_ratio[0]), .B(div_ratio[0]), .Y(n43) );
  CLKXOR2X2M U58 ( .A(prev_div_ratio[7]), .B(N33), .Y(n41) );
  CLKXOR2X2M U59 ( .A(prev_div_ratio[6]), .B(N32), .Y(n40) );
  CLKXOR2X2M U60 ( .A(prev_div_ratio[5]), .B(N31), .Y(n39) );
  CLKNAND2X2M U61 ( .A(n44), .B(div_ratio[0]), .Y(n25) );
  MXI2X1M U62 ( .A(n1), .B(n45), .S0(flag), .Y(n44) );
  CLKNAND2X2M U63 ( .A(n46), .B(n47), .Y(n45) );
  NOR4X1M U64 ( .A(count[7]), .B(n48), .C(n49), .D(n50), .Y(n47) );
  CLKXOR2X2M U65 ( .A(count[2]), .B(N29), .Y(n50) );
  CLKXOR2X2M U66 ( .A(count[1]), .B(N28), .Y(n49) );
  CLKXOR2X2M U67 ( .A(count[0]), .B(N27), .Y(n48) );
  NOR4X1M U68 ( .A(n51), .B(n52), .C(n53), .D(n54), .Y(n46) );
  CLKXOR2X2M U69 ( .A(count[6]), .B(N33), .Y(n54) );
  CLKXOR2X2M U70 ( .A(count[5]), .B(N32), .Y(n53) );
  CLKXOR2X2M U71 ( .A(count[4]), .B(N31), .Y(n52) );
  CLKXOR2X2M U72 ( .A(count[3]), .B(N30), .Y(n51) );
  NOR4BX1M U73 ( .AN(n55), .B(N28), .C(N29), .D(N27), .Y(N0) );
  NOR4X1M U74 ( .A(N33), .B(N32), .C(N31), .D(N30), .Y(n55) );
endmodule


module clk_div_mux_WIDTH8 ( in, out );
  input [5:0] in;
  output [7:0] out;
  wire   n5, n6, n7, n8, n9, n14, n15, n16, n17;

  INVX2M U3 ( .A(1'b1), .Y(out[4]) );
  INVX2M U5 ( .A(1'b1), .Y(out[5]) );
  INVX2M U7 ( .A(1'b1), .Y(out[6]) );
  INVX2M U9 ( .A(1'b1), .Y(out[7]) );
  NAND4BX1M U11 ( .AN(in[4]), .B(in[3]), .C(n15), .D(n14), .Y(n6) );
  NAND4BX1M U12 ( .AN(in[3]), .B(in[4]), .C(n15), .D(n14), .Y(n7) );
  NOR3X2M U13 ( .A(n7), .B(in[1]), .C(in[0]), .Y(out[1]) );
  NOR3X2M U14 ( .A(n6), .B(in[1]), .C(in[0]), .Y(out[2]) );
  NOR4X1M U15 ( .A(n5), .B(in[3]), .C(in[5]), .D(in[4]), .Y(out[3]) );
  NAND3X2M U16 ( .A(n17), .B(n16), .C(in[2]), .Y(n5) );
  OAI211X2M U17 ( .A0(n8), .A1(n9), .B0(n17), .C0(n16), .Y(out[0]) );
  NAND2X2M U18 ( .A(n7), .B(n6), .Y(n9) );
  NOR4X1M U19 ( .A(in[5]), .B(in[4]), .C(in[3]), .D(n15), .Y(n8) );
  INVX2M U20 ( .A(in[2]), .Y(n15) );
  INVX2M U21 ( .A(in[0]), .Y(n17) );
  INVX2M U22 ( .A(in[1]), .Y(n16) );
  INVX2M U23 ( .A(in[5]), .Y(n14) );
endmodule


module clock_gating ( clk, clk_enable, gated_clock );
  input clk, clk_enable;
  output gated_clock;


  TLATNCAX4M U0_TLATNCAX4M ( .E(clk_enable), .CK(clk), .ECK(gated_clock) );
endmodule


module ALU_DATA_WIDTH8_OUT_WIDTH16_DW_div_uns_0 ( a, b, quotient, remainder, 
        divide_by_0 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   \u_div/SumTmp[1][0] , \u_div/SumTmp[1][1] , \u_div/SumTmp[1][2] ,
         \u_div/SumTmp[1][3] , \u_div/SumTmp[1][4] , \u_div/SumTmp[1][5] ,
         \u_div/SumTmp[1][6] , \u_div/SumTmp[2][0] , \u_div/SumTmp[2][1] ,
         \u_div/SumTmp[2][2] , \u_div/SumTmp[2][3] , \u_div/SumTmp[2][4] ,
         \u_div/SumTmp[2][5] , \u_div/SumTmp[3][0] , \u_div/SumTmp[3][1] ,
         \u_div/SumTmp[3][2] , \u_div/SumTmp[3][3] , \u_div/SumTmp[3][4] ,
         \u_div/SumTmp[4][0] , \u_div/SumTmp[4][1] , \u_div/SumTmp[4][2] ,
         \u_div/SumTmp[4][3] , \u_div/SumTmp[5][0] , \u_div/SumTmp[5][1] ,
         \u_div/SumTmp[5][2] , \u_div/SumTmp[6][0] , \u_div/SumTmp[6][1] ,
         \u_div/SumTmp[7][0] , \u_div/CryTmp[0][1] , \u_div/CryTmp[0][2] ,
         \u_div/CryTmp[0][3] , \u_div/CryTmp[0][4] , \u_div/CryTmp[0][5] ,
         \u_div/CryTmp[0][6] , \u_div/CryTmp[0][7] , \u_div/CryTmp[1][1] ,
         \u_div/CryTmp[1][2] , \u_div/CryTmp[1][3] , \u_div/CryTmp[1][4] ,
         \u_div/CryTmp[1][5] , \u_div/CryTmp[1][6] , \u_div/CryTmp[1][7] ,
         \u_div/CryTmp[2][1] , \u_div/CryTmp[2][2] , \u_div/CryTmp[2][3] ,
         \u_div/CryTmp[2][4] , \u_div/CryTmp[2][5] , \u_div/CryTmp[2][6] ,
         \u_div/CryTmp[3][1] , \u_div/CryTmp[3][2] , \u_div/CryTmp[3][3] ,
         \u_div/CryTmp[3][4] , \u_div/CryTmp[3][5] , \u_div/CryTmp[4][1] ,
         \u_div/CryTmp[4][2] , \u_div/CryTmp[4][3] , \u_div/CryTmp[4][4] ,
         \u_div/CryTmp[5][1] , \u_div/CryTmp[5][2] , \u_div/CryTmp[5][3] ,
         \u_div/CryTmp[6][1] , \u_div/CryTmp[6][2] , \u_div/CryTmp[7][1] ,
         \u_div/PartRem[1][1] , \u_div/PartRem[1][2] , \u_div/PartRem[1][3] ,
         \u_div/PartRem[1][4] , \u_div/PartRem[1][5] , \u_div/PartRem[1][6] ,
         \u_div/PartRem[1][7] , \u_div/PartRem[2][1] , \u_div/PartRem[2][2] ,
         \u_div/PartRem[2][3] , \u_div/PartRem[2][4] , \u_div/PartRem[2][5] ,
         \u_div/PartRem[2][6] , \u_div/PartRem[3][1] , \u_div/PartRem[3][2] ,
         \u_div/PartRem[3][3] , \u_div/PartRem[3][4] , \u_div/PartRem[3][5] ,
         \u_div/PartRem[4][1] , \u_div/PartRem[4][2] , \u_div/PartRem[4][3] ,
         \u_div/PartRem[4][4] , \u_div/PartRem[5][1] , \u_div/PartRem[5][2] ,
         \u_div/PartRem[5][3] , \u_div/PartRem[6][1] , \u_div/PartRem[6][2] ,
         \u_div/PartRem[7][1] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21;

  ADDFX2M \u_div/u_fa_PartRem_0_2_5  ( .A(\u_div/PartRem[3][5] ), .B(n13), 
        .CI(\u_div/CryTmp[2][5] ), .CO(\u_div/CryTmp[2][6] ), .S(
        \u_div/SumTmp[2][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_3  ( .A(\u_div/PartRem[5][3] ), .B(n15), 
        .CI(\u_div/CryTmp[4][3] ), .CO(\u_div/CryTmp[4][4] ), .S(
        \u_div/SumTmp[4][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_2  ( .A(\u_div/PartRem[6][2] ), .B(n16), 
        .CI(\u_div/CryTmp[5][2] ), .CO(\u_div/CryTmp[5][3] ), .S(
        \u_div/SumTmp[5][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_6_1  ( .A(\u_div/PartRem[7][1] ), .B(n17), 
        .CI(\u_div/CryTmp[6][1] ), .CO(\u_div/CryTmp[6][2] ), .S(
        \u_div/SumTmp[6][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_4  ( .A(\u_div/PartRem[4][4] ), .B(n14), 
        .CI(\u_div/CryTmp[3][4] ), .CO(\u_div/CryTmp[3][5] ), .S(
        \u_div/SumTmp[3][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(n11), 
        .CI(\u_div/CryTmp[0][7] ), .CO(quotient[0]) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_1  ( .A(\u_div/PartRem[1][1] ), .B(n17), 
        .CI(\u_div/CryTmp[0][1] ), .CO(\u_div/CryTmp[0][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n16), 
        .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_1  ( .A(\u_div/PartRem[2][1] ), .B(n17), 
        .CI(\u_div/CryTmp[1][1] ), .CO(\u_div/CryTmp[1][2] ), .S(
        \u_div/SumTmp[1][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_1  ( .A(\u_div/PartRem[3][1] ), .B(n17), 
        .CI(\u_div/CryTmp[2][1] ), .CO(\u_div/CryTmp[2][2] ), .S(
        \u_div/SumTmp[2][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_1  ( .A(\u_div/PartRem[4][1] ), .B(n17), 
        .CI(\u_div/CryTmp[3][1] ), .CO(\u_div/CryTmp[3][2] ), .S(
        \u_div/SumTmp[3][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_1  ( .A(\u_div/PartRem[5][1] ), .B(n17), 
        .CI(\u_div/CryTmp[4][1] ), .CO(\u_div/CryTmp[4][2] ), .S(
        \u_div/SumTmp[4][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_1  ( .A(\u_div/PartRem[6][1] ), .B(n17), 
        .CI(\u_div/CryTmp[5][1] ), .CO(\u_div/CryTmp[5][2] ), .S(
        \u_div/SumTmp[5][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n13), 
        .CI(\u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(n12), 
        .CI(\u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n15), 
        .CI(\u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n14), 
        .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n14), 
        .CI(\u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(n13), 
        .CI(\u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(n15), 
        .CI(\u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(n16), 
        .CI(\u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_4  ( .A(\u_div/PartRem[3][4] ), .B(n14), 
        .CI(\u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_3  ( .A(\u_div/PartRem[3][3] ), .B(n15), 
        .CI(\u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_3  ( .A(\u_div/PartRem[4][3] ), .B(n15), 
        .CI(\u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_2  ( .A(\u_div/PartRem[3][2] ), .B(n16), 
        .CI(\u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_2  ( .A(\u_div/PartRem[4][2] ), .B(n16), 
        .CI(\u_div/CryTmp[3][2] ), .CO(\u_div/CryTmp[3][3] ), .S(
        \u_div/SumTmp[3][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_2  ( .A(\u_div/PartRem[5][2] ), .B(n16), 
        .CI(\u_div/CryTmp[4][2] ), .CO(\u_div/CryTmp[4][3] ), .S(
        \u_div/SumTmp[4][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_6  ( .A(\u_div/PartRem[2][6] ), .B(n12), 
        .CI(\u_div/CryTmp[1][6] ), .CO(\u_div/CryTmp[1][7] ), .S(
        \u_div/SumTmp[1][6] ) );
  INVX2M U1 ( .A(b[0]), .Y(n18) );
  XNOR2X2M U2 ( .A(n18), .B(a[7]), .Y(\u_div/SumTmp[7][0] ) );
  XNOR2X2M U3 ( .A(n18), .B(a[6]), .Y(\u_div/SumTmp[6][0] ) );
  XNOR2X2M U4 ( .A(n18), .B(a[5]), .Y(\u_div/SumTmp[5][0] ) );
  XNOR2X2M U5 ( .A(n18), .B(a[4]), .Y(\u_div/SumTmp[4][0] ) );
  XNOR2X2M U6 ( .A(n18), .B(a[3]), .Y(\u_div/SumTmp[3][0] ) );
  XNOR2X2M U7 ( .A(n18), .B(a[2]), .Y(\u_div/SumTmp[2][0] ) );
  XNOR2X2M U8 ( .A(n18), .B(a[1]), .Y(\u_div/SumTmp[1][0] ) );
  OR2X2M U9 ( .A(n18), .B(a[7]), .Y(\u_div/CryTmp[7][1] ) );
  INVX2M U10 ( .A(b[1]), .Y(n17) );
  NAND2X2M U11 ( .A(n3), .B(n4), .Y(\u_div/CryTmp[5][1] ) );
  INVX2M U12 ( .A(a[5]), .Y(n4) );
  INVX2M U13 ( .A(n18), .Y(n3) );
  NAND2X2M U14 ( .A(n5), .B(n6), .Y(\u_div/CryTmp[4][1] ) );
  INVX2M U15 ( .A(a[4]), .Y(n6) );
  INVX2M U16 ( .A(n18), .Y(n5) );
  NAND2X2M U17 ( .A(n5), .B(n7), .Y(\u_div/CryTmp[3][1] ) );
  INVX2M U18 ( .A(a[3]), .Y(n7) );
  NAND2X2M U19 ( .A(n5), .B(n8), .Y(\u_div/CryTmp[2][1] ) );
  INVX2M U20 ( .A(a[2]), .Y(n8) );
  NAND2X2M U21 ( .A(n5), .B(n9), .Y(\u_div/CryTmp[1][1] ) );
  INVX2M U22 ( .A(a[1]), .Y(n9) );
  NAND2X2M U23 ( .A(n5), .B(n10), .Y(\u_div/CryTmp[0][1] ) );
  NAND2X2M U24 ( .A(n1), .B(n2), .Y(\u_div/CryTmp[6][1] ) );
  INVX2M U25 ( .A(a[6]), .Y(n2) );
  INVX2M U26 ( .A(n18), .Y(n1) );
  INVX2M U27 ( .A(b[6]), .Y(n12) );
  INVX2M U28 ( .A(a[0]), .Y(n10) );
  INVX2M U29 ( .A(b[7]), .Y(n11) );
  INVX2M U30 ( .A(b[2]), .Y(n16) );
  INVX2M U31 ( .A(b[3]), .Y(n15) );
  INVX2M U32 ( .A(b[4]), .Y(n14) );
  INVX2M U33 ( .A(b[5]), .Y(n13) );
  CLKMX2X2M U34 ( .A(\u_div/PartRem[2][6] ), .B(\u_div/SumTmp[1][6] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][7] ) );
  CLKMX2X2M U35 ( .A(\u_div/PartRem[3][5] ), .B(\u_div/SumTmp[2][5] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][6] ) );
  CLKMX2X2M U36 ( .A(\u_div/PartRem[4][4] ), .B(\u_div/SumTmp[3][4] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][5] ) );
  CLKMX2X2M U37 ( .A(\u_div/PartRem[5][3] ), .B(\u_div/SumTmp[4][3] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][4] ) );
  CLKMX2X2M U38 ( .A(\u_div/PartRem[6][2] ), .B(\u_div/SumTmp[5][2] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][3] ) );
  CLKMX2X2M U39 ( .A(\u_div/PartRem[7][1] ), .B(\u_div/SumTmp[6][1] ), .S0(
        quotient[6]), .Y(\u_div/PartRem[6][2] ) );
  CLKMX2X2M U40 ( .A(a[7]), .B(\u_div/SumTmp[7][0] ), .S0(quotient[7]), .Y(
        \u_div/PartRem[7][1] ) );
  CLKMX2X2M U41 ( .A(\u_div/PartRem[2][5] ), .B(\u_div/SumTmp[1][5] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][6] ) );
  CLKMX2X2M U42 ( .A(\u_div/PartRem[3][4] ), .B(\u_div/SumTmp[2][4] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][5] ) );
  CLKMX2X2M U43 ( .A(\u_div/PartRem[4][3] ), .B(\u_div/SumTmp[3][3] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][4] ) );
  CLKMX2X2M U44 ( .A(\u_div/PartRem[5][2] ), .B(\u_div/SumTmp[4][2] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][3] ) );
  CLKMX2X2M U45 ( .A(\u_div/PartRem[6][1] ), .B(\u_div/SumTmp[5][1] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][2] ) );
  CLKMX2X2M U46 ( .A(a[6]), .B(\u_div/SumTmp[6][0] ), .S0(quotient[6]), .Y(
        \u_div/PartRem[6][1] ) );
  CLKMX2X2M U47 ( .A(\u_div/PartRem[2][4] ), .B(\u_div/SumTmp[1][4] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][5] ) );
  CLKMX2X2M U48 ( .A(\u_div/PartRem[3][3] ), .B(\u_div/SumTmp[2][3] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][4] ) );
  CLKMX2X2M U49 ( .A(\u_div/PartRem[4][2] ), .B(\u_div/SumTmp[3][2] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][3] ) );
  CLKMX2X2M U50 ( .A(\u_div/PartRem[5][1] ), .B(\u_div/SumTmp[4][1] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][2] ) );
  CLKMX2X2M U51 ( .A(a[5]), .B(\u_div/SumTmp[5][0] ), .S0(quotient[5]), .Y(
        \u_div/PartRem[5][1] ) );
  CLKMX2X2M U52 ( .A(\u_div/PartRem[2][3] ), .B(\u_div/SumTmp[1][3] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][4] ) );
  CLKMX2X2M U53 ( .A(\u_div/PartRem[3][2] ), .B(\u_div/SumTmp[2][2] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][3] ) );
  CLKMX2X2M U54 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/SumTmp[3][1] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][2] ) );
  CLKMX2X2M U55 ( .A(a[4]), .B(\u_div/SumTmp[4][0] ), .S0(quotient[4]), .Y(
        \u_div/PartRem[4][1] ) );
  CLKMX2X2M U56 ( .A(\u_div/PartRem[2][2] ), .B(\u_div/SumTmp[1][2] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][3] ) );
  CLKMX2X2M U57 ( .A(\u_div/PartRem[3][1] ), .B(\u_div/SumTmp[2][1] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][2] ) );
  CLKMX2X2M U58 ( .A(a[3]), .B(\u_div/SumTmp[3][0] ), .S0(quotient[3]), .Y(
        \u_div/PartRem[3][1] ) );
  CLKMX2X2M U59 ( .A(\u_div/PartRem[2][1] ), .B(\u_div/SumTmp[1][1] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][2] ) );
  CLKMX2X2M U60 ( .A(a[2]), .B(\u_div/SumTmp[2][0] ), .S0(quotient[2]), .Y(
        \u_div/PartRem[2][1] ) );
  CLKMX2X2M U61 ( .A(a[1]), .B(\u_div/SumTmp[1][0] ), .S0(quotient[1]), .Y(
        \u_div/PartRem[1][1] ) );
  AND4X1M U62 ( .A(\u_div/CryTmp[7][1] ), .B(n19), .C(n17), .D(n16), .Y(
        quotient[7]) );
  AND3X1M U63 ( .A(n19), .B(n16), .C(\u_div/CryTmp[6][2] ), .Y(quotient[6]) );
  AND2X1M U64 ( .A(\u_div/CryTmp[5][3] ), .B(n19), .Y(quotient[5]) );
  AND2X1M U65 ( .A(n20), .B(n15), .Y(n19) );
  AND2X1M U66 ( .A(\u_div/CryTmp[4][4] ), .B(n20), .Y(quotient[4]) );
  AND3X1M U67 ( .A(n21), .B(n14), .C(n13), .Y(n20) );
  AND3X1M U68 ( .A(n21), .B(n13), .C(\u_div/CryTmp[3][5] ), .Y(quotient[3]) );
  AND2X1M U69 ( .A(\u_div/CryTmp[2][6] ), .B(n21), .Y(quotient[2]) );
  NOR2X1M U70 ( .A(b[6]), .B(b[7]), .Y(n21) );
  AND2X1M U71 ( .A(\u_div/CryTmp[1][7] ), .B(n11), .Y(quotient[1]) );
endmodule


module ALU_DATA_WIDTH8_OUT_WIDTH16_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [9:0] carry;

  ADDFX2M U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2M U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2M U2_7 ( .A(A[7]), .B(n2), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFX2M U2_1 ( .A(A[1]), .B(n8), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2M U2_6 ( .A(A[6]), .B(n3), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  INVX2M U1 ( .A(B[6]), .Y(n3) );
  INVX2M U2 ( .A(B[1]), .Y(n8) );
  NAND2X2M U3 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  INVX2M U4 ( .A(A[0]), .Y(n1) );
  INVX2M U5 ( .A(B[7]), .Y(n2) );
  XNOR2X2M U6 ( .A(n9), .B(A[0]), .Y(DIFF[0]) );
  INVX2M U7 ( .A(B[0]), .Y(n9) );
  INVX2M U8 ( .A(B[2]), .Y(n7) );
  INVX2M U9 ( .A(B[3]), .Y(n6) );
  INVX2M U10 ( .A(B[4]), .Y(n5) );
  INVX2M U11 ( .A(B[5]), .Y(n4) );
  CLKINVX1M U12 ( .A(carry[8]), .Y(DIFF[8]) );
endmodule


module ALU_DATA_WIDTH8_OUT_WIDTH16_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module ALU_DATA_WIDTH8_OUT_WIDTH16_DW01_add_1 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n1, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27;

  AOI21BX2M U2 ( .A0(n18), .A1(A[12]), .B0N(n19), .Y(n1) );
  XNOR2X2M U3 ( .A(B[13]), .B(n1), .Y(SUM[13]) );
  NAND2X2M U4 ( .A(A[7]), .B(B[7]), .Y(n15) );
  XNOR2X2M U5 ( .A(A[7]), .B(n8), .Y(SUM[7]) );
  INVX2M U6 ( .A(B[7]), .Y(n8) );
  INVX2M U7 ( .A(A[6]), .Y(n9) );
  INVX2M U8 ( .A(n9), .Y(SUM[6]) );
  BUFX2M U9 ( .A(A[0]), .Y(SUM[0]) );
  BUFX2M U10 ( .A(A[1]), .Y(SUM[1]) );
  BUFX2M U11 ( .A(A[2]), .Y(SUM[2]) );
  BUFX2M U12 ( .A(A[3]), .Y(SUM[3]) );
  BUFX2M U13 ( .A(A[4]), .Y(SUM[4]) );
  BUFX2M U14 ( .A(A[5]), .Y(SUM[5]) );
  XNOR2X1M U15 ( .A(n10), .B(n11), .Y(SUM[9]) );
  NOR2X1M U16 ( .A(n12), .B(n13), .Y(n11) );
  CLKXOR2X2M U17 ( .A(n14), .B(n15), .Y(SUM[8]) );
  NAND2BX1M U18 ( .AN(n16), .B(n17), .Y(n14) );
  OAI21X1M U19 ( .A0(A[12]), .A1(n18), .B0(B[12]), .Y(n19) );
  XOR3XLM U20 ( .A(B[12]), .B(A[12]), .C(n18), .Y(SUM[12]) );
  OAI21BX1M U21 ( .A0(n20), .A1(n21), .B0N(n22), .Y(n18) );
  XNOR2X1M U22 ( .A(n21), .B(n23), .Y(SUM[11]) );
  NOR2X1M U23 ( .A(n22), .B(n20), .Y(n23) );
  NOR2X1M U24 ( .A(B[11]), .B(A[11]), .Y(n20) );
  AND2X1M U25 ( .A(B[11]), .B(A[11]), .Y(n22) );
  OA21X1M U26 ( .A0(n24), .A1(n25), .B0(n26), .Y(n21) );
  CLKXOR2X2M U27 ( .A(n27), .B(n25), .Y(SUM[10]) );
  AOI2BB1X1M U28 ( .A0N(n10), .A1N(n13), .B0(n12), .Y(n25) );
  AND2X1M U29 ( .A(B[9]), .B(A[9]), .Y(n12) );
  NOR2X1M U30 ( .A(B[9]), .B(A[9]), .Y(n13) );
  OA21X1M U31 ( .A0(n15), .A1(n16), .B0(n17), .Y(n10) );
  CLKNAND2X2M U32 ( .A(B[8]), .B(A[8]), .Y(n17) );
  NOR2X1M U33 ( .A(B[8]), .B(A[8]), .Y(n16) );
  NAND2BX1M U34 ( .AN(n24), .B(n26), .Y(n27) );
  CLKNAND2X2M U35 ( .A(B[10]), .B(A[10]), .Y(n26) );
  NOR2X1M U36 ( .A(B[10]), .B(A[10]), .Y(n24) );
endmodule


module ALU_DATA_WIDTH8_OUT_WIDTH16_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   \ab[7][7] , \ab[7][6] , \ab[7][5] , \ab[7][4] , \ab[7][3] ,
         \ab[7][2] , \ab[7][1] , \ab[7][0] , \ab[6][7] , \ab[6][6] ,
         \ab[6][5] , \ab[6][4] , \ab[6][3] , \ab[6][2] , \ab[6][1] ,
         \ab[6][0] , \ab[5][7] , \ab[5][6] , \ab[5][5] , \ab[5][4] ,
         \ab[5][3] , \ab[5][2] , \ab[5][1] , \ab[5][0] , \ab[4][7] ,
         \ab[4][6] , \ab[4][5] , \ab[4][4] , \ab[4][3] , \ab[4][2] ,
         \ab[4][1] , \ab[4][0] , \ab[3][7] , \ab[3][6] , \ab[3][5] ,
         \ab[3][4] , \ab[3][3] , \ab[3][2] , \ab[3][1] , \ab[3][0] ,
         \ab[2][7] , \ab[2][6] , \ab[2][5] , \ab[2][4] , \ab[2][3] ,
         \ab[2][2] , \ab[2][1] , \ab[2][0] , \ab[1][7] , \ab[1][6] ,
         \ab[1][5] , \ab[1][4] , \ab[1][3] , \ab[1][2] , \ab[1][1] ,
         \ab[1][0] , \ab[0][7] , \ab[0][6] , \ab[0][5] , \ab[0][4] ,
         \ab[0][3] , \ab[0][2] , \ab[0][1] , \CARRYB[7][6] , \CARRYB[7][5] ,
         \CARRYB[7][4] , \CARRYB[7][3] , \CARRYB[7][2] , \CARRYB[7][1] ,
         \CARRYB[7][0] , \CARRYB[6][6] , \CARRYB[6][5] , \CARRYB[6][4] ,
         \CARRYB[6][3] , \CARRYB[6][2] , \CARRYB[6][1] , \CARRYB[6][0] ,
         \CARRYB[5][6] , \CARRYB[5][5] , \CARRYB[5][4] , \CARRYB[5][3] ,
         \CARRYB[5][2] , \CARRYB[5][1] , \CARRYB[5][0] , \CARRYB[4][6] ,
         \CARRYB[4][5] , \CARRYB[4][4] , \CARRYB[4][3] , \CARRYB[4][2] ,
         \CARRYB[4][1] , \CARRYB[4][0] , \CARRYB[3][6] , \CARRYB[3][5] ,
         \CARRYB[3][4] , \CARRYB[3][3] , \CARRYB[3][2] , \CARRYB[3][1] ,
         \CARRYB[3][0] , \CARRYB[2][6] , \CARRYB[2][5] , \CARRYB[2][4] ,
         \CARRYB[2][3] , \CARRYB[2][2] , \CARRYB[2][1] , \CARRYB[2][0] ,
         \SUMB[7][6] , \SUMB[7][5] , \SUMB[7][4] , \SUMB[7][3] , \SUMB[7][2] ,
         \SUMB[7][1] , \SUMB[7][0] , \SUMB[6][6] , \SUMB[6][5] , \SUMB[6][4] ,
         \SUMB[6][3] , \SUMB[6][2] , \SUMB[6][1] , \SUMB[5][6] , \SUMB[5][5] ,
         \SUMB[5][4] , \SUMB[5][3] , \SUMB[5][2] , \SUMB[5][1] , \SUMB[4][6] ,
         \SUMB[4][5] , \SUMB[4][4] , \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] ,
         \SUMB[3][6] , \SUMB[3][5] , \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] ,
         \SUMB[3][1] , \SUMB[2][6] , \SUMB[2][5] , \SUMB[2][4] , \SUMB[2][3] ,
         \SUMB[2][2] , \SUMB[2][1] , \SUMB[1][6] , \SUMB[1][5] , \SUMB[1][4] ,
         \SUMB[1][3] , \SUMB[1][2] , \SUMB[1][1] , \A1[12] , \A1[11] ,
         \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \A1[4] , \A1[3] ,
         \A1[2] , \A1[1] , \A1[0] , n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39;

  ALU_DATA_WIDTH8_OUT_WIDTH16_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , \A1[11] , 
        \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , \A1[4] , 
        \A1[3] , \A1[2] , \A1[1] , \A1[0] }), .B({n10, n16, n15, n14, n13, n11, 
        n12, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(
        PRODUCT[15:2]) );
  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n6), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n5), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n9), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n8), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n4), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\ab[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n3), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\ab[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n7), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  AND2X2M U2 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n9) );
  AND2X2M U9 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  INVX2M U10 ( .A(\ab[0][6] ), .Y(n22) );
  INVX2M U11 ( .A(\ab[0][7] ), .Y(n23) );
  CLKXOR2X2M U12 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  CLKXOR2X2M U13 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  INVX2M U14 ( .A(\ab[0][3] ), .Y(n19) );
  INVX2M U15 ( .A(\ab[0][4] ), .Y(n20) );
  INVX2M U16 ( .A(\ab[0][5] ), .Y(n21) );
  XNOR2X2M U17 ( .A(\ab[1][2] ), .B(n19), .Y(\SUMB[1][2] ) );
  AND2X2M U18 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n11) );
  AND2X2M U19 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n12) );
  CLKXOR2X2M U20 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  CLKXOR2X2M U21 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  CLKXOR2X2M U22 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  CLKXOR2X2M U23 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  INVX2M U24 ( .A(\ab[0][2] ), .Y(n18) );
  AND2X2M U25 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n13) );
  AND2X2M U26 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n14) );
  AND2X2M U27 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n15) );
  XNOR2X2M U28 ( .A(\CARRYB[7][0] ), .B(n17), .Y(\A1[6] ) );
  INVX2M U29 ( .A(\SUMB[7][1] ), .Y(n17) );
  AND2X2M U30 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n16) );
  CLKXOR2X2M U31 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  XNOR2X2M U32 ( .A(\ab[1][4] ), .B(n21), .Y(\SUMB[1][4] ) );
  XNOR2X2M U33 ( .A(\ab[1][5] ), .B(n22), .Y(\SUMB[1][5] ) );
  XNOR2X2M U34 ( .A(\ab[1][6] ), .B(n23), .Y(\SUMB[1][6] ) );
  XNOR2X2M U35 ( .A(\ab[1][3] ), .B(n20), .Y(\SUMB[1][3] ) );
  INVX2M U36 ( .A(A[1]), .Y(n30) );
  INVX2M U37 ( .A(A[0]), .Y(n31) );
  INVX2M U38 ( .A(B[6]), .Y(n33) );
  INVX2M U39 ( .A(B[7]), .Y(n32) );
  XNOR2X2M U40 ( .A(\ab[1][1] ), .B(n18), .Y(\SUMB[1][1] ) );
  INVX2M U41 ( .A(A[2]), .Y(n29) );
  INVX2M U42 ( .A(A[3]), .Y(n28) );
  INVX2M U43 ( .A(A[4]), .Y(n27) );
  INVX2M U44 ( .A(B[1]), .Y(n38) );
  INVX2M U45 ( .A(A[6]), .Y(n25) );
  INVX2M U46 ( .A(A[7]), .Y(n24) );
  INVX2M U47 ( .A(A[5]), .Y(n26) );
  INVX2M U48 ( .A(B[3]), .Y(n36) );
  INVX2M U49 ( .A(B[5]), .Y(n34) );
  INVX2M U50 ( .A(B[4]), .Y(n35) );
  INVX2M U51 ( .A(B[0]), .Y(n39) );
  INVX2M U52 ( .A(B[2]), .Y(n37) );
  NOR2X1M U54 ( .A(n24), .B(n32), .Y(\ab[7][7] ) );
  NOR2X1M U55 ( .A(n24), .B(n33), .Y(\ab[7][6] ) );
  NOR2X1M U56 ( .A(n24), .B(n34), .Y(\ab[7][5] ) );
  NOR2X1M U57 ( .A(n24), .B(n35), .Y(\ab[7][4] ) );
  NOR2X1M U58 ( .A(n24), .B(n36), .Y(\ab[7][3] ) );
  NOR2X1M U59 ( .A(n24), .B(n37), .Y(\ab[7][2] ) );
  NOR2X1M U60 ( .A(n24), .B(n38), .Y(\ab[7][1] ) );
  NOR2X1M U61 ( .A(n24), .B(n39), .Y(\ab[7][0] ) );
  NOR2X1M U62 ( .A(n32), .B(n25), .Y(\ab[6][7] ) );
  NOR2X1M U63 ( .A(n33), .B(n25), .Y(\ab[6][6] ) );
  NOR2X1M U64 ( .A(n34), .B(n25), .Y(\ab[6][5] ) );
  NOR2X1M U65 ( .A(n35), .B(n25), .Y(\ab[6][4] ) );
  NOR2X1M U66 ( .A(n36), .B(n25), .Y(\ab[6][3] ) );
  NOR2X1M U67 ( .A(n37), .B(n25), .Y(\ab[6][2] ) );
  NOR2X1M U68 ( .A(n38), .B(n25), .Y(\ab[6][1] ) );
  NOR2X1M U69 ( .A(n39), .B(n25), .Y(\ab[6][0] ) );
  NOR2X1M U70 ( .A(n32), .B(n26), .Y(\ab[5][7] ) );
  NOR2X1M U71 ( .A(n33), .B(n26), .Y(\ab[5][6] ) );
  NOR2X1M U72 ( .A(n34), .B(n26), .Y(\ab[5][5] ) );
  NOR2X1M U73 ( .A(n35), .B(n26), .Y(\ab[5][4] ) );
  NOR2X1M U74 ( .A(n36), .B(n26), .Y(\ab[5][3] ) );
  NOR2X1M U75 ( .A(n37), .B(n26), .Y(\ab[5][2] ) );
  NOR2X1M U76 ( .A(n38), .B(n26), .Y(\ab[5][1] ) );
  NOR2X1M U77 ( .A(n39), .B(n26), .Y(\ab[5][0] ) );
  NOR2X1M U78 ( .A(n32), .B(n27), .Y(\ab[4][7] ) );
  NOR2X1M U79 ( .A(n33), .B(n27), .Y(\ab[4][6] ) );
  NOR2X1M U80 ( .A(n34), .B(n27), .Y(\ab[4][5] ) );
  NOR2X1M U81 ( .A(n35), .B(n27), .Y(\ab[4][4] ) );
  NOR2X1M U82 ( .A(n36), .B(n27), .Y(\ab[4][3] ) );
  NOR2X1M U83 ( .A(n37), .B(n27), .Y(\ab[4][2] ) );
  NOR2X1M U84 ( .A(n38), .B(n27), .Y(\ab[4][1] ) );
  NOR2X1M U85 ( .A(n39), .B(n27), .Y(\ab[4][0] ) );
  NOR2X1M U86 ( .A(n32), .B(n28), .Y(\ab[3][7] ) );
  NOR2X1M U87 ( .A(n33), .B(n28), .Y(\ab[3][6] ) );
  NOR2X1M U88 ( .A(n34), .B(n28), .Y(\ab[3][5] ) );
  NOR2X1M U89 ( .A(n35), .B(n28), .Y(\ab[3][4] ) );
  NOR2X1M U90 ( .A(n36), .B(n28), .Y(\ab[3][3] ) );
  NOR2X1M U91 ( .A(n37), .B(n28), .Y(\ab[3][2] ) );
  NOR2X1M U92 ( .A(n38), .B(n28), .Y(\ab[3][1] ) );
  NOR2X1M U93 ( .A(n39), .B(n28), .Y(\ab[3][0] ) );
  NOR2X1M U94 ( .A(n32), .B(n29), .Y(\ab[2][7] ) );
  NOR2X1M U95 ( .A(n33), .B(n29), .Y(\ab[2][6] ) );
  NOR2X1M U96 ( .A(n34), .B(n29), .Y(\ab[2][5] ) );
  NOR2X1M U97 ( .A(n35), .B(n29), .Y(\ab[2][4] ) );
  NOR2X1M U98 ( .A(n36), .B(n29), .Y(\ab[2][3] ) );
  NOR2X1M U99 ( .A(n37), .B(n29), .Y(\ab[2][2] ) );
  NOR2X1M U100 ( .A(n38), .B(n29), .Y(\ab[2][1] ) );
  NOR2X1M U101 ( .A(n39), .B(n29), .Y(\ab[2][0] ) );
  NOR2X1M U102 ( .A(n32), .B(n30), .Y(\ab[1][7] ) );
  NOR2X1M U103 ( .A(n33), .B(n30), .Y(\ab[1][6] ) );
  NOR2X1M U104 ( .A(n34), .B(n30), .Y(\ab[1][5] ) );
  NOR2X1M U105 ( .A(n35), .B(n30), .Y(\ab[1][4] ) );
  NOR2X1M U106 ( .A(n36), .B(n30), .Y(\ab[1][3] ) );
  NOR2X1M U107 ( .A(n37), .B(n30), .Y(\ab[1][2] ) );
  NOR2X1M U108 ( .A(n38), .B(n30), .Y(\ab[1][1] ) );
  NOR2X1M U109 ( .A(n39), .B(n30), .Y(\ab[1][0] ) );
  NOR2X1M U110 ( .A(n32), .B(n31), .Y(\ab[0][7] ) );
  NOR2X1M U111 ( .A(n33), .B(n31), .Y(\ab[0][6] ) );
  NOR2X1M U112 ( .A(n34), .B(n31), .Y(\ab[0][5] ) );
  NOR2X1M U113 ( .A(n35), .B(n31), .Y(\ab[0][4] ) );
  NOR2X1M U114 ( .A(n36), .B(n31), .Y(\ab[0][3] ) );
  NOR2X1M U115 ( .A(n37), .B(n31), .Y(\ab[0][2] ) );
  NOR2X1M U116 ( .A(n38), .B(n31), .Y(\ab[0][1] ) );
  NOR2X1M U117 ( .A(n39), .B(n31), .Y(PRODUCT[0]) );
endmodule


module ALU_DATA_WIDTH8_OUT_WIDTH16 ( A, B, enable, ALU_fun, clk, reset_n, 
        ALU_out, out_valid );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_fun;
  output [15:0] ALU_out;
  input enable, clk, reset_n;
  output out_valid;
  wire   N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102, N103, N104,
         N105, N106, N107, N108, N109, N110, N111, N112, N113, N114, N115,
         N116, N117, N118, N119, N120, N121, N122, N123, N124, N125, N128,
         N129, N130, N131, N132, N133, N134, N135, N168, N169, N170, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152;
  wire   [15:0] ALU_out_comb;

  ALU_DATA_WIDTH8_OUT_WIDTH16_DW_div_uns_0 div_48 ( .a({n15, n14, n13, n12, 
        n11, n10, n9, n8}), .b({n7, n6, B[5:2], n5, B[0]}), .quotient({N135, 
        N134, N133, N132, N131, N130, N129, N128}) );
  ALU_DATA_WIDTH8_OUT_WIDTH16_DW01_sub_0 sub_44 ( .A({1'b0, n15, n14, n13, n12, 
        n11, n10, n9, n8}), .B({1'b0, n7, n6, B[5:2], n5, B[0]}), .CI(1'b0), 
        .DIFF({N109, N108, N107, N106, N105, N104, N103, N102, N101}) );
  ALU_DATA_WIDTH8_OUT_WIDTH16_DW01_add_0 add_42 ( .A({1'b0, n15, n14, n13, n12, 
        n11, n10, n9, n8}), .B({1'b0, n7, n6, B[5:2], n5, B[0]}), .CI(1'b0), 
        .SUM({N100, N99, N98, N97, N96, N95, N94, N93, N92}) );
  ALU_DATA_WIDTH8_OUT_WIDTH16_DW02_mult_0 mult_46 ( .A({n15, n14, n13, n12, 
        n11, n10, n9, n8}), .B({n7, n6, B[5:2], n5, B[0]}), .TC(1'b0), 
        .PRODUCT({N125, N124, N123, N122, N121, N120, N119, N118, N117, N116, 
        N115, N114, N113, N112, N111, N110}) );
  DFFRQX2M \ALU_out_reg[15]  ( .D(ALU_out_comb[15]), .CK(clk), .RN(reset_n), 
        .Q(ALU_out[15]) );
  DFFRQX2M \ALU_out_reg[14]  ( .D(ALU_out_comb[14]), .CK(clk), .RN(reset_n), 
        .Q(ALU_out[14]) );
  DFFRQX2M \ALU_out_reg[13]  ( .D(ALU_out_comb[13]), .CK(clk), .RN(reset_n), 
        .Q(ALU_out[13]) );
  DFFRQX2M \ALU_out_reg[12]  ( .D(ALU_out_comb[12]), .CK(clk), .RN(reset_n), 
        .Q(ALU_out[12]) );
  DFFRQX2M \ALU_out_reg[11]  ( .D(ALU_out_comb[11]), .CK(clk), .RN(reset_n), 
        .Q(ALU_out[11]) );
  DFFRQX2M \ALU_out_reg[10]  ( .D(ALU_out_comb[10]), .CK(clk), .RN(reset_n), 
        .Q(ALU_out[10]) );
  DFFRQX2M \ALU_out_reg[9]  ( .D(ALU_out_comb[9]), .CK(clk), .RN(reset_n), .Q(
        ALU_out[9]) );
  DFFRQX2M \ALU_out_reg[8]  ( .D(ALU_out_comb[8]), .CK(clk), .RN(reset_n), .Q(
        ALU_out[8]) );
  DFFRQX2M \ALU_out_reg[7]  ( .D(ALU_out_comb[7]), .CK(clk), .RN(reset_n), .Q(
        ALU_out[7]) );
  DFFRQX2M \ALU_out_reg[6]  ( .D(ALU_out_comb[6]), .CK(clk), .RN(reset_n), .Q(
        ALU_out[6]) );
  DFFRQX2M \ALU_out_reg[5]  ( .D(ALU_out_comb[5]), .CK(clk), .RN(reset_n), .Q(
        ALU_out[5]) );
  DFFRQX2M \ALU_out_reg[4]  ( .D(ALU_out_comb[4]), .CK(clk), .RN(reset_n), .Q(
        ALU_out[4]) );
  DFFRQX2M \ALU_out_reg[3]  ( .D(ALU_out_comb[3]), .CK(clk), .RN(reset_n), .Q(
        ALU_out[3]) );
  DFFRQX2M \ALU_out_reg[2]  ( .D(ALU_out_comb[2]), .CK(clk), .RN(reset_n), .Q(
        ALU_out[2]) );
  DFFRQX2M \ALU_out_reg[1]  ( .D(ALU_out_comb[1]), .CK(clk), .RN(reset_n), .Q(
        ALU_out[1]) );
  DFFRQX2M \ALU_out_reg[0]  ( .D(ALU_out_comb[0]), .CK(clk), .RN(reset_n), .Q(
        ALU_out[0]) );
  DFFRQX2M out_valid_reg ( .D(enable), .CK(clk), .RN(reset_n), .Q(out_valid)
         );
  BUFX2M U3 ( .A(A[7]), .Y(n15) );
  BUFX2M U4 ( .A(A[6]), .Y(n14) );
  BUFX2M U5 ( .A(A[1]), .Y(n9) );
  OAI2BB1X2M U8 ( .A0N(N125), .A1N(n35), .B0(n36), .Y(ALU_out_comb[15]) );
  OAI2BB1X2M U9 ( .A0N(N121), .A1N(n35), .B0(n36), .Y(ALU_out_comb[11]) );
  OAI2BB1X2M U10 ( .A0N(N122), .A1N(n35), .B0(n36), .Y(ALU_out_comb[12]) );
  OAI2BB1X2M U11 ( .A0N(N123), .A1N(n35), .B0(n36), .Y(ALU_out_comb[13]) );
  OAI2BB1X2M U12 ( .A0N(N120), .A1N(n35), .B0(n36), .Y(ALU_out_comb[10]) );
  INVX2M U13 ( .A(n97), .Y(n138) );
  INVX2M U14 ( .A(n53), .Y(n140) );
  INVX2M U15 ( .A(n47), .Y(n137) );
  INVX2M U16 ( .A(n102), .Y(n136) );
  OAI2BB1X2M U17 ( .A0N(N124), .A1N(n35), .B0(n36), .Y(ALU_out_comb[14]) );
  OAI2BB1X2M U18 ( .A0N(N119), .A1N(n35), .B0(n36), .Y(ALU_out_comb[9]) );
  OAI2B1X2M U19 ( .A1N(n110), .A0(n101), .B0(n111), .Y(n97) );
  NAND2X2M U20 ( .A(enable), .B(n42), .Y(n36) );
  INVX2M U21 ( .A(n50), .Y(n135) );
  OAI21X2M U22 ( .A0(n3), .A1(n112), .B0(n111), .Y(n52) );
  NOR2X2M U23 ( .A(n101), .B(n3), .Y(n53) );
  NOR2BX2M U24 ( .AN(n113), .B(n3), .Y(n41) );
  NAND2X2M U25 ( .A(n141), .B(n110), .Y(n47) );
  NOR2BX2M U26 ( .AN(n40), .B(n133), .Y(n35) );
  NAND2X2M U27 ( .A(n113), .B(n110), .Y(n102) );
  INVX2M U28 ( .A(n112), .Y(n141) );
  INVX2M U29 ( .A(enable), .Y(n133) );
  OAI2BB2X1M U30 ( .B0(n143), .B1(n47), .A0N(N117), .A1N(n40), .Y(n46) );
  OAI2B11X2M U31 ( .A1N(N109), .A0(n102), .B0(n140), .C0(n138), .Y(n42) );
  NOR2X2M U32 ( .A(ALU_fun[2]), .B(ALU_fun[1]), .Y(n113) );
  NOR2X2M U33 ( .A(n139), .B(n4), .Y(n110) );
  NAND3X2M U34 ( .A(n113), .B(n139), .C(n4), .Y(n50) );
  INVX2M U35 ( .A(ALU_fun[0]), .Y(n139) );
  AND4X2M U36 ( .A(N170), .B(n141), .C(n4), .D(n139), .Y(n100) );
  NOR3BX2M U37 ( .AN(n4), .B(n101), .C(ALU_fun[0]), .Y(n39) );
  NOR3BX2M U38 ( .AN(n4), .B(n139), .C(n112), .Y(n57) );
  NOR3X2M U39 ( .A(n3), .B(ALU_fun[2]), .C(n142), .Y(n40) );
  NAND2X2M U40 ( .A(ALU_fun[2]), .B(ALU_fun[1]), .Y(n101) );
  NAND2X2M U41 ( .A(ALU_fun[2]), .B(n142), .Y(n112) );
  INVX2M U42 ( .A(ALU_fun[1]), .Y(n142) );
  NAND3X2M U43 ( .A(n113), .B(ALU_fun[0]), .C(n4), .Y(n111) );
  OR2X2M U44 ( .A(n4), .B(ALU_fun[0]), .Y(n3) );
  AOI31X2M U45 ( .A0(n103), .A1(n104), .A2(n105), .B0(n133), .Y(
        ALU_out_comb[0]) );
  AOI22X1M U46 ( .A0(N101), .A1(n136), .B0(N92), .B1(n41), .Y(n103) );
  AOI222X1M U47 ( .A0(N110), .A1(n40), .B0(n53), .B1(n149), .C0(n8), .C1(n137), 
        .Y(n104) );
  AOI211X2M U48 ( .A0(n9), .A1(n57), .B0(n106), .C0(n107), .Y(n105) );
  OAI2BB1X2M U49 ( .A0N(N128), .A1N(n48), .B0(n114), .Y(n106) );
  AOI31X2M U50 ( .A0(N168), .A1(n4), .A2(n115), .B0(n100), .Y(n114) );
  NOR3X2M U51 ( .A(n142), .B(ALU_fun[2]), .C(ALU_fun[0]), .Y(n115) );
  AOI31X2M U52 ( .A0(n90), .A1(n91), .A2(n92), .B0(n133), .Y(ALU_out_comb[1])
         );
  AOI222X1M U53 ( .A0(N93), .A1(n41), .B0(N111), .B1(n40), .C0(N102), .C1(n136), .Y(n90) );
  AOI222X1M U54 ( .A0(n9), .A1(n137), .B0(n10), .B1(n57), .C0(n53), .C1(n131), 
        .Y(n91) );
  AOI211X2M U55 ( .A0(n8), .A1(n39), .B0(n93), .C0(n94), .Y(n92) );
  OAI2BB1X2M U56 ( .A0N(N129), .A1N(n48), .B0(n98), .Y(n93) );
  AOI31X2M U57 ( .A0(N169), .A1(n4), .A2(n99), .B0(n100), .Y(n98) );
  NOR3X2M U58 ( .A(n139), .B(ALU_fun[2]), .C(n142), .Y(n99) );
  AOI31X2M U59 ( .A0(n83), .A1(n84), .A2(n85), .B0(n133), .Y(ALU_out_comb[2])
         );
  AOI22X1M U60 ( .A0(N103), .A1(n136), .B0(N94), .B1(n41), .Y(n83) );
  AOI222X1M U61 ( .A0(N112), .A1(n40), .B0(n53), .B1(n148), .C0(n10), .C1(n137), .Y(n84) );
  AOI221XLM U62 ( .A0(n9), .A1(n39), .B0(n11), .B1(n57), .C0(n86), .Y(n85) );
  AOI31X2M U63 ( .A0(n76), .A1(n77), .A2(n78), .B0(n133), .Y(ALU_out_comb[3])
         );
  AOI22X1M U64 ( .A0(N104), .A1(n136), .B0(N95), .B1(n41), .Y(n76) );
  AOI222X1M U65 ( .A0(N113), .A1(n40), .B0(n53), .B1(n147), .C0(n11), .C1(n137), .Y(n77) );
  AOI221XLM U66 ( .A0(n10), .A1(n39), .B0(n12), .B1(n57), .C0(n79), .Y(n78) );
  AOI31X2M U67 ( .A0(n69), .A1(n70), .A2(n71), .B0(n133), .Y(ALU_out_comb[4])
         );
  AOI22X1M U68 ( .A0(N105), .A1(n136), .B0(N96), .B1(n41), .Y(n69) );
  AOI222X1M U69 ( .A0(N114), .A1(n40), .B0(n53), .B1(n146), .C0(n12), .C1(n137), .Y(n70) );
  AOI221XLM U70 ( .A0(n11), .A1(n39), .B0(n57), .B1(n13), .C0(n72), .Y(n71) );
  AOI31X2M U71 ( .A0(n62), .A1(n63), .A2(n64), .B0(n133), .Y(ALU_out_comb[5])
         );
  AOI22X1M U72 ( .A0(N106), .A1(n136), .B0(N97), .B1(n41), .Y(n62) );
  AOI222X1M U73 ( .A0(N115), .A1(n40), .B0(n53), .B1(n145), .C0(n13), .C1(n137), .Y(n63) );
  AOI221XLM U74 ( .A0(n12), .A1(n39), .B0(n57), .B1(n14), .C0(n65), .Y(n64) );
  AOI31X2M U75 ( .A0(n54), .A1(n55), .A2(n56), .B0(n133), .Y(ALU_out_comb[6])
         );
  AOI22X1M U76 ( .A0(N107), .A1(n136), .B0(N98), .B1(n41), .Y(n54) );
  AOI221XLM U77 ( .A0(n13), .A1(n39), .B0(n57), .B1(n15), .C0(n58), .Y(n56) );
  AOI222X1M U78 ( .A0(N116), .A1(n40), .B0(n53), .B1(n144), .C0(n137), .C1(n14), .Y(n55) );
  AOI31X2M U79 ( .A0(n43), .A1(n44), .A2(n45), .B0(n133), .Y(ALU_out_comb[7])
         );
  AOI22X1M U80 ( .A0(n14), .A1(n39), .B0(n53), .B1(n143), .Y(n43) );
  AOI222X1M U81 ( .A0(n7), .A1(n134), .B0(N135), .B1(n48), .C0(n49), .C1(n150), 
        .Y(n44) );
  AOI221XLM U82 ( .A0(N108), .A1(n136), .B0(N99), .B1(n41), .C0(n46), .Y(n45)
         );
  AOI21X2M U83 ( .A0(n37), .A1(n38), .B0(n133), .Y(ALU_out_comb[8]) );
  AOI21X2M U84 ( .A0(N100), .A1(n41), .B0(n42), .Y(n37) );
  AOI22X1M U85 ( .A0(n15), .A1(n39), .B0(N118), .B1(n40), .Y(n38) );
  INVX2M U86 ( .A(n6), .Y(n129) );
  OAI221X1M U87 ( .A0(n10), .A1(n138), .B0(n50), .B1(n148), .C0(n140), .Y(n89)
         );
  OAI221X1M U88 ( .A0(n11), .A1(n138), .B0(n50), .B1(n147), .C0(n140), .Y(n82)
         );
  OAI221X1M U89 ( .A0(n12), .A1(n138), .B0(n50), .B1(n146), .C0(n140), .Y(n75)
         );
  OAI221X1M U90 ( .A0(n13), .A1(n138), .B0(n50), .B1(n145), .C0(n140), .Y(n68)
         );
  OAI221X1M U91 ( .A0(n14), .A1(n138), .B0(n50), .B1(n144), .C0(n140), .Y(n61)
         );
  INVX2M U92 ( .A(n16), .Y(n130) );
  INVX2M U93 ( .A(n27), .Y(n132) );
  OAI21X2M U94 ( .A0(n59), .A1(n129), .B0(n60), .Y(n58) );
  AOI221XLM U95 ( .A0(n135), .A1(n144), .B0(n14), .B1(n52), .C0(n137), .Y(n59)
         );
  AOI22X1M U96 ( .A0(N134), .A1(n48), .B0(n61), .B1(n129), .Y(n60) );
  INVX2M U97 ( .A(n51), .Y(n134) );
  AOI221XLM U98 ( .A0(n52), .A1(n15), .B0(n143), .B1(n135), .C0(n137), .Y(n51)
         );
  INVX2M U99 ( .A(n9), .Y(n131) );
  OAI221X1M U100 ( .A0(n15), .A1(n138), .B0(n143), .B1(n50), .C0(n140), .Y(n49) );
  OAI2B2X1M U101 ( .A1N(n5), .A0(n95), .B0(n5), .B1(n96), .Y(n94) );
  AOI221XLM U102 ( .A0(n135), .A1(n131), .B0(n9), .B1(n52), .C0(n137), .Y(n95)
         );
  AOI221XLM U103 ( .A0(n9), .A1(n135), .B0(n97), .B1(n131), .C0(n53), .Y(n96)
         );
  BUFX2M U104 ( .A(ALU_fun[3]), .Y(n4) );
  INVX2M U105 ( .A(n15), .Y(n143) );
  INVX2M U106 ( .A(n14), .Y(n144) );
  INVX2M U107 ( .A(n8), .Y(n149) );
  INVX2M U108 ( .A(n10), .Y(n148) );
  INVX2M U109 ( .A(n11), .Y(n147) );
  INVX2M U110 ( .A(n13), .Y(n145) );
  INVX2M U111 ( .A(n12), .Y(n146) );
  INVX2M U112 ( .A(n7), .Y(n150) );
  BUFX2M U113 ( .A(B[6]), .Y(n6) );
  BUFX2M U114 ( .A(B[7]), .Y(n7) );
  BUFX2M U115 ( .A(B[1]), .Y(n5) );
  BUFX2M U116 ( .A(A[5]), .Y(n13) );
  OAI21X2M U117 ( .A0(n87), .A1(n127), .B0(n88), .Y(n86) );
  AOI221XLM U118 ( .A0(n135), .A1(n148), .B0(n10), .B1(n52), .C0(n137), .Y(n87) );
  AOI22X1M U119 ( .A0(N130), .A1(n48), .B0(n89), .B1(n127), .Y(n88) );
  BUFX2M U120 ( .A(A[4]), .Y(n12) );
  BUFX2M U121 ( .A(A[3]), .Y(n11) );
  OAI21X2M U122 ( .A0(n80), .A1(n128), .B0(n81), .Y(n79) );
  AOI221XLM U123 ( .A0(n135), .A1(n147), .B0(n11), .B1(n52), .C0(n137), .Y(n80) );
  AOI22X1M U124 ( .A0(N131), .A1(n48), .B0(n82), .B1(n128), .Y(n81) );
  BUFX2M U125 ( .A(A[2]), .Y(n10) );
  OAI21X2M U126 ( .A0(n73), .A1(n152), .B0(n74), .Y(n72) );
  AOI221XLM U127 ( .A0(n135), .A1(n146), .B0(n12), .B1(n52), .C0(n137), .Y(n73) );
  AOI22X1M U128 ( .A0(N132), .A1(n48), .B0(n75), .B1(n152), .Y(n74) );
  INVX2M U129 ( .A(B[4]), .Y(n152) );
  BUFX2M U130 ( .A(A[0]), .Y(n8) );
  OAI21X2M U131 ( .A0(n66), .A1(n151), .B0(n67), .Y(n65) );
  AOI221XLM U132 ( .A0(n135), .A1(n145), .B0(n13), .B1(n52), .C0(n137), .Y(n66) );
  AOI22X1M U133 ( .A0(N133), .A1(n48), .B0(n68), .B1(n151), .Y(n67) );
  INVX2M U134 ( .A(B[5]), .Y(n151) );
  INVX2M U135 ( .A(B[0]), .Y(n126) );
  INVX2M U136 ( .A(B[2]), .Y(n127) );
  OAI2B2X1M U137 ( .A1N(B[0]), .A0(n108), .B0(B[0]), .B1(n109), .Y(n107) );
  AOI221XLM U138 ( .A0(n135), .A1(n149), .B0(n8), .B1(n52), .C0(n137), .Y(n108) );
  AOI221XLM U139 ( .A0(n8), .A1(n135), .B0(n97), .B1(n149), .C0(n53), .Y(n109)
         );
  AND3X2M U140 ( .A(n110), .B(ALU_fun[1]), .C(n116), .Y(n48) );
  AOI21X2M U141 ( .A0(n117), .A1(n118), .B0(ALU_fun[2]), .Y(n116) );
  NOR4X1M U142 ( .A(n7), .B(n6), .C(B[5]), .D(B[4]), .Y(n118) );
  NOR4X1M U143 ( .A(B[3]), .B(B[2]), .C(n5), .D(B[0]), .Y(n117) );
  INVX2M U144 ( .A(B[3]), .Y(n128) );
  NOR2X1M U145 ( .A(n143), .B(n7), .Y(n122) );
  NAND2BX1M U146 ( .AN(B[4]), .B(n12), .Y(n31) );
  NAND2BX1M U147 ( .AN(n12), .B(B[4]), .Y(n20) );
  CLKNAND2X2M U148 ( .A(n31), .B(n20), .Y(n33) );
  NOR2X1M U149 ( .A(n128), .B(n11), .Y(n28) );
  NOR2X1M U150 ( .A(n127), .B(n10), .Y(n19) );
  NOR2X1M U151 ( .A(n126), .B(n8), .Y(n16) );
  CLKNAND2X2M U152 ( .A(n10), .B(n127), .Y(n30) );
  NAND2BX1M U153 ( .AN(n19), .B(n30), .Y(n25) );
  AOI21X1M U154 ( .A0(n16), .A1(n131), .B0(n5), .Y(n17) );
  AOI211X1M U155 ( .A0(n9), .A1(n130), .B0(n25), .C0(n17), .Y(n18) );
  CLKNAND2X2M U156 ( .A(n11), .B(n128), .Y(n29) );
  OAI31X1M U157 ( .A0(n28), .A1(n19), .A2(n18), .B0(n29), .Y(n21) );
  NAND2BX1M U158 ( .AN(n13), .B(B[5]), .Y(n120) );
  OAI211X1M U159 ( .A0(n33), .A1(n21), .B0(n20), .C0(n120), .Y(n22) );
  NAND2BX1M U160 ( .AN(B[5]), .B(n13), .Y(n32) );
  XNOR2X1M U161 ( .A(n14), .B(n6), .Y(n119) );
  AOI32X1M U162 ( .A0(n22), .A1(n32), .A2(n119), .B0(n6), .B1(n144), .Y(n23)
         );
  CLKNAND2X2M U163 ( .A(n7), .B(n143), .Y(n123) );
  OAI21X1M U164 ( .A0(n122), .A1(n23), .B0(n123), .Y(N170) );
  CLKNAND2X2M U165 ( .A(n8), .B(n126), .Y(n26) );
  OA21X1M U166 ( .A0(n26), .A1(n131), .B0(n5), .Y(n24) );
  AOI211X1M U167 ( .A0(n26), .A1(n131), .B0(n25), .C0(n24), .Y(n27) );
  AOI31X1M U168 ( .A0(n132), .A1(n30), .A2(n29), .B0(n28), .Y(n34) );
  OAI2B11X1M U169 ( .A1N(n34), .A0(n33), .B0(n32), .C0(n31), .Y(n121) );
  AOI32X1M U170 ( .A0(n121), .A1(n120), .A2(n119), .B0(n14), .B1(n129), .Y(
        n124) );
  AOI2B1X1M U171 ( .A1N(n124), .A0(n123), .B0(n122), .Y(n125) );
  CLKINVX1M U172 ( .A(n125), .Y(N169) );
  NOR2X1M U173 ( .A(N170), .B(N169), .Y(N168) );
endmodule


module FIFO_mem_DATA_WIDTH8_DEPTH8_ADDR_WIDTH3 ( w_data, w_clk, w_clk_en, 
        w_rstn, w_addr, r_addr, r_data );
  input [7:0] w_data;
  input [2:0] w_addr;
  input [2:0] r_addr;
  output [7:0] r_data;
  input w_clk, w_clk_en, w_rstn;
  wire   N10, N11, N12, \reg_file[0][7] , \reg_file[0][6] , \reg_file[0][5] ,
         \reg_file[0][4] , \reg_file[0][3] , \reg_file[0][2] ,
         \reg_file[0][1] , \reg_file[0][0] , \reg_file[1][7] ,
         \reg_file[1][6] , \reg_file[1][5] , \reg_file[1][4] ,
         \reg_file[1][3] , \reg_file[1][2] , \reg_file[1][1] ,
         \reg_file[1][0] , \reg_file[2][7] , \reg_file[2][6] ,
         \reg_file[2][5] , \reg_file[2][4] , \reg_file[2][3] ,
         \reg_file[2][2] , \reg_file[2][1] , \reg_file[2][0] ,
         \reg_file[3][7] , \reg_file[3][6] , \reg_file[3][5] ,
         \reg_file[3][4] , \reg_file[3][3] , \reg_file[3][2] ,
         \reg_file[3][1] , \reg_file[3][0] , \reg_file[4][7] ,
         \reg_file[4][6] , \reg_file[4][5] , \reg_file[4][4] ,
         \reg_file[4][3] , \reg_file[4][2] , \reg_file[4][1] ,
         \reg_file[4][0] , \reg_file[5][7] , \reg_file[5][6] ,
         \reg_file[5][5] , \reg_file[5][4] , \reg_file[5][3] ,
         \reg_file[5][2] , \reg_file[5][1] , \reg_file[5][0] ,
         \reg_file[6][7] , \reg_file[6][6] , \reg_file[6][5] ,
         \reg_file[6][4] , \reg_file[6][3] , \reg_file[6][2] ,
         \reg_file[6][1] , \reg_file[6][0] , \reg_file[7][7] ,
         \reg_file[7][6] , \reg_file[7][5] , \reg_file[7][4] ,
         \reg_file[7][3] , \reg_file[7][2] , \reg_file[7][1] ,
         \reg_file[7][0] , n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113;
  assign N10 = r_addr[0];
  assign N11 = r_addr[1];
  assign N12 = r_addr[2];

  DFFRQX2M \reg_file_reg[1][7]  ( .D(n76), .CK(w_clk), .RN(n99), .Q(
        \reg_file[1][7] ) );
  DFFRQX2M \reg_file_reg[1][6]  ( .D(n75), .CK(w_clk), .RN(n99), .Q(
        \reg_file[1][6] ) );
  DFFRQX2M \reg_file_reg[1][5]  ( .D(n74), .CK(w_clk), .RN(n99), .Q(
        \reg_file[1][5] ) );
  DFFRQX2M \reg_file_reg[1][4]  ( .D(n73), .CK(w_clk), .RN(n99), .Q(
        \reg_file[1][4] ) );
  DFFRQX2M \reg_file_reg[1][3]  ( .D(n72), .CK(w_clk), .RN(n99), .Q(
        \reg_file[1][3] ) );
  DFFRQX2M \reg_file_reg[1][2]  ( .D(n71), .CK(w_clk), .RN(n100), .Q(
        \reg_file[1][2] ) );
  DFFRQX2M \reg_file_reg[1][1]  ( .D(n70), .CK(w_clk), .RN(n100), .Q(
        \reg_file[1][1] ) );
  DFFRQX2M \reg_file_reg[1][0]  ( .D(n69), .CK(w_clk), .RN(n100), .Q(
        \reg_file[1][0] ) );
  DFFRQX2M \reg_file_reg[5][7]  ( .D(n44), .CK(w_clk), .RN(n102), .Q(
        \reg_file[5][7] ) );
  DFFRQX2M \reg_file_reg[5][6]  ( .D(n43), .CK(w_clk), .RN(n102), .Q(
        \reg_file[5][6] ) );
  DFFRQX2M \reg_file_reg[5][5]  ( .D(n42), .CK(w_clk), .RN(n102), .Q(
        \reg_file[5][5] ) );
  DFFRQX2M \reg_file_reg[5][4]  ( .D(n41), .CK(w_clk), .RN(n102), .Q(
        \reg_file[5][4] ) );
  DFFRQX2M \reg_file_reg[5][3]  ( .D(n40), .CK(w_clk), .RN(n102), .Q(
        \reg_file[5][3] ) );
  DFFRQX2M \reg_file_reg[5][2]  ( .D(n39), .CK(w_clk), .RN(n102), .Q(
        \reg_file[5][2] ) );
  DFFRQX2M \reg_file_reg[5][1]  ( .D(n38), .CK(w_clk), .RN(n102), .Q(
        \reg_file[5][1] ) );
  DFFRQX2M \reg_file_reg[5][0]  ( .D(n37), .CK(w_clk), .RN(n102), .Q(
        \reg_file[5][0] ) );
  DFFRQX2M \reg_file_reg[3][7]  ( .D(n60), .CK(w_clk), .RN(n100), .Q(
        \reg_file[3][7] ) );
  DFFRQX2M \reg_file_reg[3][6]  ( .D(n59), .CK(w_clk), .RN(n100), .Q(
        \reg_file[3][6] ) );
  DFFRQX2M \reg_file_reg[3][5]  ( .D(n58), .CK(w_clk), .RN(n101), .Q(
        \reg_file[3][5] ) );
  DFFRQX2M \reg_file_reg[3][4]  ( .D(n57), .CK(w_clk), .RN(n101), .Q(
        \reg_file[3][4] ) );
  DFFRQX2M \reg_file_reg[3][3]  ( .D(n56), .CK(w_clk), .RN(n101), .Q(
        \reg_file[3][3] ) );
  DFFRQX2M \reg_file_reg[3][2]  ( .D(n55), .CK(w_clk), .RN(n101), .Q(
        \reg_file[3][2] ) );
  DFFRQX2M \reg_file_reg[3][1]  ( .D(n54), .CK(w_clk), .RN(n101), .Q(
        \reg_file[3][1] ) );
  DFFRQX2M \reg_file_reg[3][0]  ( .D(n53), .CK(w_clk), .RN(n101), .Q(
        \reg_file[3][0] ) );
  DFFRQX2M \reg_file_reg[7][7]  ( .D(n28), .CK(w_clk), .RN(n103), .Q(
        \reg_file[7][7] ) );
  DFFRQX2M \reg_file_reg[7][6]  ( .D(n27), .CK(w_clk), .RN(n103), .Q(
        \reg_file[7][6] ) );
  DFFRQX2M \reg_file_reg[7][5]  ( .D(n26), .CK(w_clk), .RN(n103), .Q(
        \reg_file[7][5] ) );
  DFFRQX2M \reg_file_reg[7][4]  ( .D(n25), .CK(w_clk), .RN(n103), .Q(
        \reg_file[7][4] ) );
  DFFRQX2M \reg_file_reg[7][3]  ( .D(n24), .CK(w_clk), .RN(n103), .Q(
        \reg_file[7][3] ) );
  DFFRQX2M \reg_file_reg[7][2]  ( .D(n23), .CK(w_clk), .RN(n103), .Q(
        \reg_file[7][2] ) );
  DFFRQX2M \reg_file_reg[7][1]  ( .D(n22), .CK(w_clk), .RN(n103), .Q(
        \reg_file[7][1] ) );
  DFFRQX2M \reg_file_reg[7][0]  ( .D(n21), .CK(w_clk), .RN(n103), .Q(
        \reg_file[7][0] ) );
  DFFRQX2M \reg_file_reg[2][7]  ( .D(n68), .CK(w_clk), .RN(n100), .Q(
        \reg_file[2][7] ) );
  DFFRQX2M \reg_file_reg[2][6]  ( .D(n67), .CK(w_clk), .RN(n100), .Q(
        \reg_file[2][6] ) );
  DFFRQX2M \reg_file_reg[2][5]  ( .D(n66), .CK(w_clk), .RN(n100), .Q(
        \reg_file[2][5] ) );
  DFFRQX2M \reg_file_reg[2][4]  ( .D(n65), .CK(w_clk), .RN(n100), .Q(
        \reg_file[2][4] ) );
  DFFRQX2M \reg_file_reg[2][3]  ( .D(n64), .CK(w_clk), .RN(n100), .Q(
        \reg_file[2][3] ) );
  DFFRQX2M \reg_file_reg[2][2]  ( .D(n63), .CK(w_clk), .RN(n100), .Q(
        \reg_file[2][2] ) );
  DFFRQX2M \reg_file_reg[2][1]  ( .D(n62), .CK(w_clk), .RN(n100), .Q(
        \reg_file[2][1] ) );
  DFFRQX2M \reg_file_reg[2][0]  ( .D(n61), .CK(w_clk), .RN(n100), .Q(
        \reg_file[2][0] ) );
  DFFRQX2M \reg_file_reg[6][7]  ( .D(n36), .CK(w_clk), .RN(n102), .Q(
        \reg_file[6][7] ) );
  DFFRQX2M \reg_file_reg[6][6]  ( .D(n35), .CK(w_clk), .RN(n102), .Q(
        \reg_file[6][6] ) );
  DFFRQX2M \reg_file_reg[6][5]  ( .D(n34), .CK(w_clk), .RN(n102), .Q(
        \reg_file[6][5] ) );
  DFFRQX2M \reg_file_reg[6][4]  ( .D(n33), .CK(w_clk), .RN(n102), .Q(
        \reg_file[6][4] ) );
  DFFRQX2M \reg_file_reg[6][3]  ( .D(n32), .CK(w_clk), .RN(n103), .Q(
        \reg_file[6][3] ) );
  DFFRQX2M \reg_file_reg[6][2]  ( .D(n31), .CK(w_clk), .RN(n103), .Q(
        \reg_file[6][2] ) );
  DFFRQX2M \reg_file_reg[6][1]  ( .D(n30), .CK(w_clk), .RN(n103), .Q(
        \reg_file[6][1] ) );
  DFFRQX2M \reg_file_reg[6][0]  ( .D(n29), .CK(w_clk), .RN(n103), .Q(
        \reg_file[6][0] ) );
  DFFRQX2M \reg_file_reg[0][7]  ( .D(n84), .CK(w_clk), .RN(n99), .Q(
        \reg_file[0][7] ) );
  DFFRQX2M \reg_file_reg[0][6]  ( .D(n83), .CK(w_clk), .RN(n99), .Q(
        \reg_file[0][6] ) );
  DFFRQX2M \reg_file_reg[0][5]  ( .D(n82), .CK(w_clk), .RN(n99), .Q(
        \reg_file[0][5] ) );
  DFFRQX2M \reg_file_reg[0][4]  ( .D(n81), .CK(w_clk), .RN(n99), .Q(
        \reg_file[0][4] ) );
  DFFRQX2M \reg_file_reg[0][3]  ( .D(n80), .CK(w_clk), .RN(n99), .Q(
        \reg_file[0][3] ) );
  DFFRQX2M \reg_file_reg[0][2]  ( .D(n79), .CK(w_clk), .RN(n99), .Q(
        \reg_file[0][2] ) );
  DFFRQX2M \reg_file_reg[0][1]  ( .D(n78), .CK(w_clk), .RN(n99), .Q(
        \reg_file[0][1] ) );
  DFFRQX2M \reg_file_reg[0][0]  ( .D(n77), .CK(w_clk), .RN(n99), .Q(
        \reg_file[0][0] ) );
  DFFRQX2M \reg_file_reg[4][7]  ( .D(n52), .CK(w_clk), .RN(n101), .Q(
        \reg_file[4][7] ) );
  DFFRQX2M \reg_file_reg[4][6]  ( .D(n51), .CK(w_clk), .RN(n101), .Q(
        \reg_file[4][6] ) );
  DFFRQX2M \reg_file_reg[4][5]  ( .D(n50), .CK(w_clk), .RN(n101), .Q(
        \reg_file[4][5] ) );
  DFFRQX2M \reg_file_reg[4][4]  ( .D(n49), .CK(w_clk), .RN(n101), .Q(
        \reg_file[4][4] ) );
  DFFRQX2M \reg_file_reg[4][3]  ( .D(n48), .CK(w_clk), .RN(n101), .Q(
        \reg_file[4][3] ) );
  DFFRQX2M \reg_file_reg[4][2]  ( .D(n47), .CK(w_clk), .RN(n101), .Q(
        \reg_file[4][2] ) );
  DFFRQX2M \reg_file_reg[4][1]  ( .D(n46), .CK(w_clk), .RN(n101), .Q(
        \reg_file[4][1] ) );
  DFFRQX2M \reg_file_reg[4][0]  ( .D(n45), .CK(w_clk), .RN(n102), .Q(
        \reg_file[4][0] ) );
  BUFX2M U2 ( .A(n16), .Y(n95) );
  BUFX2M U3 ( .A(n18), .Y(n94) );
  BUFX2M U4 ( .A(n19), .Y(n93) );
  BUFX2M U5 ( .A(n13), .Y(n96) );
  BUFX2M U6 ( .A(n97), .Y(n101) );
  BUFX2M U7 ( .A(n97), .Y(n100) );
  BUFX2M U8 ( .A(n97), .Y(n99) );
  BUFX2M U9 ( .A(n98), .Y(n102) );
  BUFX2M U10 ( .A(n98), .Y(n103) );
  BUFX2M U11 ( .A(w_rstn), .Y(n97) );
  BUFX2M U12 ( .A(w_rstn), .Y(n98) );
  NAND3X2M U13 ( .A(n104), .B(n113), .C(n12), .Y(n15) );
  NAND3X2M U14 ( .A(n104), .B(n113), .C(n17), .Y(n20) );
  NAND3X2M U15 ( .A(n12), .B(n113), .C(w_addr[0]), .Y(n14) );
  NAND3X2M U16 ( .A(w_addr[0]), .B(n12), .C(w_addr[1]), .Y(n11) );
  NOR2BX2M U17 ( .AN(w_clk_en), .B(w_addr[2]), .Y(n17) );
  OAI2BB2X1M U18 ( .B0(n11), .B1(n105), .A0N(\reg_file[7][0] ), .A1N(n11), .Y(
        n21) );
  OAI2BB2X1M U19 ( .B0(n11), .B1(n106), .A0N(\reg_file[7][1] ), .A1N(n11), .Y(
        n22) );
  OAI2BB2X1M U20 ( .B0(n11), .B1(n107), .A0N(\reg_file[7][2] ), .A1N(n11), .Y(
        n23) );
  OAI2BB2X1M U21 ( .B0(n11), .B1(n108), .A0N(\reg_file[7][3] ), .A1N(n11), .Y(
        n24) );
  OAI2BB2X1M U22 ( .B0(n11), .B1(n109), .A0N(\reg_file[7][4] ), .A1N(n11), .Y(
        n25) );
  OAI2BB2X1M U23 ( .B0(n11), .B1(n110), .A0N(\reg_file[7][5] ), .A1N(n11), .Y(
        n26) );
  OAI2BB2X1M U24 ( .B0(n11), .B1(n111), .A0N(\reg_file[7][6] ), .A1N(n11), .Y(
        n27) );
  OAI2BB2X1M U25 ( .B0(n11), .B1(n112), .A0N(\reg_file[7][7] ), .A1N(n11), .Y(
        n28) );
  OAI2BB2X1M U26 ( .B0(n105), .B1(n14), .A0N(\reg_file[5][0] ), .A1N(n14), .Y(
        n37) );
  OAI2BB2X1M U27 ( .B0(n106), .B1(n14), .A0N(\reg_file[5][1] ), .A1N(n14), .Y(
        n38) );
  OAI2BB2X1M U28 ( .B0(n107), .B1(n14), .A0N(\reg_file[5][2] ), .A1N(n14), .Y(
        n39) );
  OAI2BB2X1M U29 ( .B0(n108), .B1(n14), .A0N(\reg_file[5][3] ), .A1N(n14), .Y(
        n40) );
  OAI2BB2X1M U30 ( .B0(n109), .B1(n14), .A0N(\reg_file[5][4] ), .A1N(n14), .Y(
        n41) );
  OAI2BB2X1M U31 ( .B0(n110), .B1(n14), .A0N(\reg_file[5][5] ), .A1N(n14), .Y(
        n42) );
  OAI2BB2X1M U32 ( .B0(n111), .B1(n14), .A0N(\reg_file[5][6] ), .A1N(n14), .Y(
        n43) );
  OAI2BB2X1M U33 ( .B0(n112), .B1(n14), .A0N(\reg_file[5][7] ), .A1N(n14), .Y(
        n44) );
  OAI2BB2X1M U34 ( .B0(n105), .B1(n20), .A0N(\reg_file[0][0] ), .A1N(n20), .Y(
        n77) );
  OAI2BB2X1M U35 ( .B0(n106), .B1(n20), .A0N(\reg_file[0][1] ), .A1N(n20), .Y(
        n78) );
  OAI2BB2X1M U36 ( .B0(n107), .B1(n20), .A0N(\reg_file[0][2] ), .A1N(n20), .Y(
        n79) );
  OAI2BB2X1M U37 ( .B0(n108), .B1(n20), .A0N(\reg_file[0][3] ), .A1N(n20), .Y(
        n80) );
  OAI2BB2X1M U38 ( .B0(n109), .B1(n20), .A0N(\reg_file[0][4] ), .A1N(n20), .Y(
        n81) );
  OAI2BB2X1M U39 ( .B0(n110), .B1(n20), .A0N(\reg_file[0][5] ), .A1N(n20), .Y(
        n82) );
  OAI2BB2X1M U40 ( .B0(n111), .B1(n20), .A0N(\reg_file[0][6] ), .A1N(n20), .Y(
        n83) );
  OAI2BB2X1M U41 ( .B0(n112), .B1(n20), .A0N(\reg_file[0][7] ), .A1N(n20), .Y(
        n84) );
  OAI2BB2X1M U42 ( .B0(n105), .B1(n15), .A0N(\reg_file[4][0] ), .A1N(n15), .Y(
        n45) );
  OAI2BB2X1M U43 ( .B0(n106), .B1(n15), .A0N(\reg_file[4][1] ), .A1N(n15), .Y(
        n46) );
  OAI2BB2X1M U44 ( .B0(n107), .B1(n15), .A0N(\reg_file[4][2] ), .A1N(n15), .Y(
        n47) );
  OAI2BB2X1M U45 ( .B0(n108), .B1(n15), .A0N(\reg_file[4][3] ), .A1N(n15), .Y(
        n48) );
  OAI2BB2X1M U46 ( .B0(n109), .B1(n15), .A0N(\reg_file[4][4] ), .A1N(n15), .Y(
        n49) );
  OAI2BB2X1M U47 ( .B0(n110), .B1(n15), .A0N(\reg_file[4][5] ), .A1N(n15), .Y(
        n50) );
  OAI2BB2X1M U48 ( .B0(n111), .B1(n15), .A0N(\reg_file[4][6] ), .A1N(n15), .Y(
        n51) );
  OAI2BB2X1M U49 ( .B0(n112), .B1(n15), .A0N(\reg_file[4][7] ), .A1N(n15), .Y(
        n52) );
  OAI2BB2X1M U50 ( .B0(n105), .B1(n95), .A0N(\reg_file[3][0] ), .A1N(n95), .Y(
        n53) );
  OAI2BB2X1M U51 ( .B0(n106), .B1(n95), .A0N(\reg_file[3][1] ), .A1N(n95), .Y(
        n54) );
  OAI2BB2X1M U52 ( .B0(n107), .B1(n95), .A0N(\reg_file[3][2] ), .A1N(n95), .Y(
        n55) );
  OAI2BB2X1M U53 ( .B0(n108), .B1(n95), .A0N(\reg_file[3][3] ), .A1N(n95), .Y(
        n56) );
  OAI2BB2X1M U54 ( .B0(n109), .B1(n95), .A0N(\reg_file[3][4] ), .A1N(n95), .Y(
        n57) );
  OAI2BB2X1M U55 ( .B0(n110), .B1(n95), .A0N(\reg_file[3][5] ), .A1N(n95), .Y(
        n58) );
  OAI2BB2X1M U56 ( .B0(n111), .B1(n95), .A0N(\reg_file[3][6] ), .A1N(n95), .Y(
        n59) );
  OAI2BB2X1M U57 ( .B0(n112), .B1(n95), .A0N(\reg_file[3][7] ), .A1N(n95), .Y(
        n60) );
  OAI2BB2X1M U58 ( .B0(n105), .B1(n94), .A0N(\reg_file[2][0] ), .A1N(n94), .Y(
        n61) );
  OAI2BB2X1M U59 ( .B0(n106), .B1(n94), .A0N(\reg_file[2][1] ), .A1N(n94), .Y(
        n62) );
  OAI2BB2X1M U60 ( .B0(n107), .B1(n94), .A0N(\reg_file[2][2] ), .A1N(n94), .Y(
        n63) );
  OAI2BB2X1M U61 ( .B0(n108), .B1(n94), .A0N(\reg_file[2][3] ), .A1N(n94), .Y(
        n64) );
  OAI2BB2X1M U62 ( .B0(n109), .B1(n94), .A0N(\reg_file[2][4] ), .A1N(n94), .Y(
        n65) );
  OAI2BB2X1M U63 ( .B0(n110), .B1(n94), .A0N(\reg_file[2][5] ), .A1N(n94), .Y(
        n66) );
  OAI2BB2X1M U64 ( .B0(n111), .B1(n94), .A0N(\reg_file[2][6] ), .A1N(n94), .Y(
        n67) );
  OAI2BB2X1M U65 ( .B0(n112), .B1(n94), .A0N(\reg_file[2][7] ), .A1N(n94), .Y(
        n68) );
  OAI2BB2X1M U66 ( .B0(n105), .B1(n93), .A0N(\reg_file[1][0] ), .A1N(n93), .Y(
        n69) );
  OAI2BB2X1M U67 ( .B0(n106), .B1(n93), .A0N(\reg_file[1][1] ), .A1N(n93), .Y(
        n70) );
  OAI2BB2X1M U68 ( .B0(n107), .B1(n93), .A0N(\reg_file[1][2] ), .A1N(n93), .Y(
        n71) );
  OAI2BB2X1M U69 ( .B0(n108), .B1(n93), .A0N(\reg_file[1][3] ), .A1N(n93), .Y(
        n72) );
  OAI2BB2X1M U70 ( .B0(n109), .B1(n93), .A0N(\reg_file[1][4] ), .A1N(n93), .Y(
        n73) );
  OAI2BB2X1M U71 ( .B0(n110), .B1(n93), .A0N(\reg_file[1][5] ), .A1N(n93), .Y(
        n74) );
  OAI2BB2X1M U72 ( .B0(n111), .B1(n93), .A0N(\reg_file[1][6] ), .A1N(n93), .Y(
        n75) );
  OAI2BB2X1M U73 ( .B0(n112), .B1(n93), .A0N(\reg_file[1][7] ), .A1N(n93), .Y(
        n76) );
  AND2X2M U74 ( .A(w_clk_en), .B(w_addr[2]), .Y(n12) );
  NAND3X2M U75 ( .A(w_addr[1]), .B(w_addr[0]), .C(n17), .Y(n16) );
  NAND3X2M U76 ( .A(w_addr[1]), .B(n104), .C(n17), .Y(n18) );
  NAND3X2M U77 ( .A(w_addr[0]), .B(n113), .C(n17), .Y(n19) );
  INVX2M U78 ( .A(w_data[0]), .Y(n105) );
  INVX2M U79 ( .A(w_data[1]), .Y(n106) );
  INVX2M U80 ( .A(w_data[2]), .Y(n107) );
  INVX2M U81 ( .A(w_data[3]), .Y(n108) );
  INVX2M U82 ( .A(w_data[4]), .Y(n109) );
  INVX2M U83 ( .A(w_data[5]), .Y(n110) );
  INVX2M U84 ( .A(w_data[6]), .Y(n111) );
  INVX2M U85 ( .A(w_data[7]), .Y(n112) );
  OAI2BB2X1M U86 ( .B0(n105), .B1(n96), .A0N(\reg_file[6][0] ), .A1N(n96), .Y(
        n29) );
  OAI2BB2X1M U87 ( .B0(n106), .B1(n96), .A0N(\reg_file[6][1] ), .A1N(n96), .Y(
        n30) );
  OAI2BB2X1M U88 ( .B0(n107), .B1(n96), .A0N(\reg_file[6][2] ), .A1N(n96), .Y(
        n31) );
  OAI2BB2X1M U89 ( .B0(n108), .B1(n96), .A0N(\reg_file[6][3] ), .A1N(n96), .Y(
        n32) );
  OAI2BB2X1M U90 ( .B0(n109), .B1(n96), .A0N(\reg_file[6][4] ), .A1N(n96), .Y(
        n33) );
  OAI2BB2X1M U91 ( .B0(n110), .B1(n96), .A0N(\reg_file[6][5] ), .A1N(n96), .Y(
        n34) );
  OAI2BB2X1M U92 ( .B0(n111), .B1(n96), .A0N(\reg_file[6][6] ), .A1N(n96), .Y(
        n35) );
  OAI2BB2X1M U93 ( .B0(n112), .B1(n96), .A0N(\reg_file[6][7] ), .A1N(n96), .Y(
        n36) );
  NAND3X2M U94 ( .A(n12), .B(n104), .C(w_addr[1]), .Y(n13) );
  INVX2M U95 ( .A(w_addr[1]), .Y(n113) );
  INVX2M U96 ( .A(w_addr[0]), .Y(n104) );
  MX2X2M U97 ( .A(n90), .B(n89), .S0(N12), .Y(r_data[7]) );
  MX4X1M U98 ( .A(\reg_file[4][7] ), .B(\reg_file[5][7] ), .C(\reg_file[6][7] ), .D(\reg_file[7][7] ), .S0(n91), .S1(N11), .Y(n89) );
  MX4X1M U99 ( .A(\reg_file[0][7] ), .B(\reg_file[1][7] ), .C(\reg_file[2][7] ), .D(\reg_file[3][7] ), .S0(n92), .S1(N11), .Y(n90) );
  MX2X2M U100 ( .A(n88), .B(n87), .S0(N12), .Y(r_data[6]) );
  MX4X1M U101 ( .A(\reg_file[4][6] ), .B(\reg_file[5][6] ), .C(
        \reg_file[6][6] ), .D(\reg_file[7][6] ), .S0(n91), .S1(N11), .Y(n87)
         );
  MX4X1M U102 ( .A(\reg_file[0][6] ), .B(\reg_file[1][6] ), .C(
        \reg_file[2][6] ), .D(\reg_file[3][6] ), .S0(n92), .S1(N11), .Y(n88)
         );
  MX2X2M U103 ( .A(n10), .B(n9), .S0(N12), .Y(r_data[4]) );
  MX4X1M U104 ( .A(\reg_file[4][4] ), .B(\reg_file[5][4] ), .C(
        \reg_file[6][4] ), .D(\reg_file[7][4] ), .S0(n91), .S1(N11), .Y(n9) );
  MX4X1M U105 ( .A(\reg_file[0][4] ), .B(\reg_file[1][4] ), .C(
        \reg_file[2][4] ), .D(\reg_file[3][4] ), .S0(n92), .S1(N11), .Y(n10)
         );
  MX2X2M U106 ( .A(n86), .B(n85), .S0(N12), .Y(r_data[5]) );
  MX4X1M U107 ( .A(\reg_file[4][5] ), .B(\reg_file[5][5] ), .C(
        \reg_file[6][5] ), .D(\reg_file[7][5] ), .S0(n91), .S1(N11), .Y(n85)
         );
  MX4X1M U108 ( .A(\reg_file[0][5] ), .B(\reg_file[1][5] ), .C(
        \reg_file[2][5] ), .D(\reg_file[3][5] ), .S0(n92), .S1(N11), .Y(n86)
         );
  BUFX2M U109 ( .A(N10), .Y(n92) );
  BUFX2M U110 ( .A(N10), .Y(n91) );
  MX2X2M U111 ( .A(n6), .B(n5), .S0(N12), .Y(r_data[2]) );
  MX4X1M U112 ( .A(\reg_file[4][2] ), .B(\reg_file[5][2] ), .C(
        \reg_file[6][2] ), .D(\reg_file[7][2] ), .S0(n91), .S1(N11), .Y(n5) );
  MX4X1M U113 ( .A(\reg_file[0][2] ), .B(\reg_file[1][2] ), .C(
        \reg_file[2][2] ), .D(\reg_file[3][2] ), .S0(n92), .S1(N11), .Y(n6) );
  MX2X2M U114 ( .A(n8), .B(n7), .S0(N12), .Y(r_data[3]) );
  MX4X1M U115 ( .A(\reg_file[4][3] ), .B(\reg_file[5][3] ), .C(
        \reg_file[6][3] ), .D(\reg_file[7][3] ), .S0(n91), .S1(N11), .Y(n7) );
  MX4X1M U116 ( .A(\reg_file[0][3] ), .B(\reg_file[1][3] ), .C(
        \reg_file[2][3] ), .D(\reg_file[3][3] ), .S0(n92), .S1(N11), .Y(n8) );
  MX2X2M U117 ( .A(n2), .B(n1), .S0(N12), .Y(r_data[0]) );
  MX4X1M U118 ( .A(\reg_file[4][0] ), .B(\reg_file[5][0] ), .C(
        \reg_file[6][0] ), .D(\reg_file[7][0] ), .S0(n91), .S1(N11), .Y(n1) );
  MX4X1M U119 ( .A(\reg_file[0][0] ), .B(\reg_file[1][0] ), .C(
        \reg_file[2][0] ), .D(\reg_file[3][0] ), .S0(n92), .S1(N11), .Y(n2) );
  MX2X2M U120 ( .A(n4), .B(n3), .S0(N12), .Y(r_data[1]) );
  MX4X1M U121 ( .A(\reg_file[4][1] ), .B(\reg_file[5][1] ), .C(
        \reg_file[6][1] ), .D(\reg_file[7][1] ), .S0(n91), .S1(N11), .Y(n3) );
  MX4X1M U122 ( .A(\reg_file[0][1] ), .B(\reg_file[1][1] ), .C(
        \reg_file[2][1] ), .D(\reg_file[3][1] ), .S0(n92), .S1(N11), .Y(n4) );
endmodule


module bit_sync_NUM_STAGES2_DEPTH8_ADDR_WIDTH3_0 ( dest_clk, reset_n, 
        async_bus, sync_bus );
  input [3:0] async_bus;
  output [3:0] sync_bus;
  input dest_clk, reset_n;
  wire   \sync_reg[3][0] , \sync_reg[2][0] , \sync_reg[1][0] ,
         \sync_reg[0][0] ;

  DFFRQX2M \sync_reg_reg[3][1]  ( .D(\sync_reg[3][0] ), .CK(dest_clk), .RN(
        reset_n), .Q(sync_bus[3]) );
  DFFRQX2M \sync_reg_reg[2][1]  ( .D(\sync_reg[2][0] ), .CK(dest_clk), .RN(
        reset_n), .Q(sync_bus[2]) );
  DFFRQX2M \sync_reg_reg[1][1]  ( .D(\sync_reg[1][0] ), .CK(dest_clk), .RN(
        reset_n), .Q(sync_bus[1]) );
  DFFRQX2M \sync_reg_reg[0][1]  ( .D(\sync_reg[0][0] ), .CK(dest_clk), .RN(
        reset_n), .Q(sync_bus[0]) );
  DFFRQX2M \sync_reg_reg[3][0]  ( .D(async_bus[3]), .CK(dest_clk), .RN(reset_n), .Q(\sync_reg[3][0] ) );
  DFFRQX2M \sync_reg_reg[2][0]  ( .D(async_bus[2]), .CK(dest_clk), .RN(reset_n), .Q(\sync_reg[2][0] ) );
  DFFRQX2M \sync_reg_reg[1][0]  ( .D(async_bus[1]), .CK(dest_clk), .RN(reset_n), .Q(\sync_reg[1][0] ) );
  DFFRQX2M \sync_reg_reg[0][0]  ( .D(async_bus[0]), .CK(dest_clk), .RN(reset_n), .Q(\sync_reg[0][0] ) );
endmodule


module bit_sync_NUM_STAGES2_DEPTH8_ADDR_WIDTH3_1 ( dest_clk, reset_n, 
        async_bus, sync_bus );
  input [3:0] async_bus;
  output [3:0] sync_bus;
  input dest_clk, reset_n;
  wire   \sync_reg[3][0] , \sync_reg[2][0] , \sync_reg[1][0] ,
         \sync_reg[0][0] ;

  DFFRQX2M \sync_reg_reg[3][1]  ( .D(\sync_reg[3][0] ), .CK(dest_clk), .RN(
        reset_n), .Q(sync_bus[3]) );
  DFFRQX2M \sync_reg_reg[2][1]  ( .D(\sync_reg[2][0] ), .CK(dest_clk), .RN(
        reset_n), .Q(sync_bus[2]) );
  DFFRQX2M \sync_reg_reg[1][1]  ( .D(\sync_reg[1][0] ), .CK(dest_clk), .RN(
        reset_n), .Q(sync_bus[1]) );
  DFFRQX2M \sync_reg_reg[0][1]  ( .D(\sync_reg[0][0] ), .CK(dest_clk), .RN(
        reset_n), .Q(sync_bus[0]) );
  DFFRQX2M \sync_reg_reg[3][0]  ( .D(async_bus[3]), .CK(dest_clk), .RN(reset_n), .Q(\sync_reg[3][0] ) );
  DFFRQX2M \sync_reg_reg[2][0]  ( .D(async_bus[2]), .CK(dest_clk), .RN(reset_n), .Q(\sync_reg[2][0] ) );
  DFFRQX2M \sync_reg_reg[1][0]  ( .D(async_bus[1]), .CK(dest_clk), .RN(reset_n), .Q(\sync_reg[1][0] ) );
  DFFRQX2M \sync_reg_reg[0][0]  ( .D(async_bus[0]), .CK(dest_clk), .RN(reset_n), .Q(\sync_reg[0][0] ) );
endmodule


module write_control_DATA_WIDTH8_DEPTH8_ADDR_WIDTH3 ( w_clk, w_reset_n, w_inc, 
        wq2_rptr, w_addr, w_ptr, w_full );
  input [3:0] wq2_rptr;
  output [2:0] w_addr;
  output [3:0] w_ptr;
  input w_clk, w_reset_n, w_inc;
  output w_full;
  wire   \w_ptr_bin[3] , w_full_next, n1, n2, n3, n4, n5, n6, n7, n8;
  wire   [3:0] w_bin_next;
  wire   [2:0] w_gray_next;

  DFFRQX2M \w_ptr_bin_reg[3]  ( .D(w_bin_next[3]), .CK(w_clk), .RN(w_reset_n), 
        .Q(\w_ptr_bin[3] ) );
  DFFRQX2M \w_ptr_bin_reg[2]  ( .D(w_bin_next[2]), .CK(w_clk), .RN(w_reset_n), 
        .Q(w_addr[2]) );
  DFFRQX2M \w_ptr_bin_reg[1]  ( .D(w_bin_next[1]), .CK(w_clk), .RN(w_reset_n), 
        .Q(w_addr[1]) );
  DFFRQX2M w_full_reg ( .D(w_full_next), .CK(w_clk), .RN(w_reset_n), .Q(w_full) );
  DFFRQX2M \w_ptr_bin_reg[0]  ( .D(w_bin_next[0]), .CK(w_clk), .RN(w_reset_n), 
        .Q(w_addr[0]) );
  DFFRQX2M \w_ptr_reg[3]  ( .D(w_bin_next[3]), .CK(w_clk), .RN(w_reset_n), .Q(
        w_ptr[3]) );
  DFFRQX2M \w_ptr_reg[0]  ( .D(w_gray_next[0]), .CK(w_clk), .RN(w_reset_n), 
        .Q(w_ptr[0]) );
  DFFRQX2M \w_ptr_reg[2]  ( .D(w_gray_next[2]), .CK(w_clk), .RN(w_reset_n), 
        .Q(w_ptr[2]) );
  DFFRQX2M \w_ptr_reg[1]  ( .D(w_gray_next[1]), .CK(w_clk), .RN(w_reset_n), 
        .Q(w_ptr[1]) );
  CLKXOR2X2M U3 ( .A(w_bin_next[2]), .B(w_bin_next[1]), .Y(w_gray_next[1]) );
  CLKXOR2X2M U4 ( .A(w_bin_next[1]), .B(w_bin_next[0]), .Y(w_gray_next[0]) );
  CLKXOR2X2M U5 ( .A(w_bin_next[3]), .B(w_bin_next[2]), .Y(w_gray_next[2]) );
  XNOR2X2M U6 ( .A(n7), .B(w_addr[2]), .Y(w_bin_next[2]) );
  NAND2X2M U7 ( .A(w_addr[1]), .B(n6), .Y(n7) );
  XNOR2X2M U8 ( .A(n5), .B(\w_ptr_bin[3] ), .Y(w_bin_next[3]) );
  NAND3X2M U9 ( .A(w_addr[1]), .B(n6), .C(w_addr[2]), .Y(n5) );
  NOR4X1M U10 ( .A(n1), .B(n2), .C(n3), .D(n4), .Y(w_full_next) );
  XNOR2X2M U11 ( .A(w_bin_next[3]), .B(wq2_rptr[3]), .Y(n1) );
  XNOR2X2M U12 ( .A(w_gray_next[2]), .B(wq2_rptr[2]), .Y(n2) );
  CLKXOR2X2M U13 ( .A(wq2_rptr[0]), .B(w_gray_next[0]), .Y(n3) );
  NOR2BX2M U14 ( .AN(w_inc), .B(w_full), .Y(n8) );
  AND2X2M U15 ( .A(w_addr[0]), .B(n8), .Y(n6) );
  CLKXOR2X2M U16 ( .A(n6), .B(w_addr[1]), .Y(w_bin_next[1]) );
  CLKXOR2X2M U17 ( .A(wq2_rptr[1]), .B(w_gray_next[1]), .Y(n4) );
  CLKXOR2X2M U18 ( .A(n8), .B(w_addr[0]), .Y(w_bin_next[0]) );
endmodule


module read_control_DATA_WIDTH8_DEPTH8_ADDR_WIDTH3 ( r_clk, r_reset_n, r_inc, 
        rq2_wptr, r_addr, r_ptr, r_empty );
  input [3:0] rq2_wptr;
  output [2:0] r_addr;
  output [3:0] r_ptr;
  input r_clk, r_reset_n, r_inc;
  output r_empty;
  wire   \r_ptr_bin[3] , r_empty_next, n1, n2, n3, n4, n5, n6, n7, n8;
  wire   [3:0] r_bin_next;
  wire   [2:0] r_gray_next;

  DFFRQX2M \r_ptr_bin_reg[3]  ( .D(r_bin_next[3]), .CK(r_clk), .RN(r_reset_n), 
        .Q(\r_ptr_bin[3] ) );
  DFFSQX2M r_empty_reg ( .D(r_empty_next), .CK(r_clk), .SN(r_reset_n), .Q(
        r_empty) );
  DFFRQX2M \r_ptr_bin_reg[2]  ( .D(r_bin_next[2]), .CK(r_clk), .RN(r_reset_n), 
        .Q(r_addr[2]) );
  DFFRQX2M \r_ptr_bin_reg[0]  ( .D(r_bin_next[0]), .CK(r_clk), .RN(r_reset_n), 
        .Q(r_addr[0]) );
  DFFRQX2M \r_ptr_bin_reg[1]  ( .D(r_bin_next[1]), .CK(r_clk), .RN(r_reset_n), 
        .Q(r_addr[1]) );
  DFFRQX2M \r_ptr_reg[0]  ( .D(r_gray_next[0]), .CK(r_clk), .RN(r_reset_n), 
        .Q(r_ptr[0]) );
  DFFRQX2M \r_ptr_reg[3]  ( .D(r_bin_next[3]), .CK(r_clk), .RN(r_reset_n), .Q(
        r_ptr[3]) );
  DFFRQX2M \r_ptr_reg[2]  ( .D(r_gray_next[2]), .CK(r_clk), .RN(r_reset_n), 
        .Q(r_ptr[2]) );
  DFFRQX2M \r_ptr_reg[1]  ( .D(r_gray_next[1]), .CK(r_clk), .RN(r_reset_n), 
        .Q(r_ptr[1]) );
  CLKXOR2X2M U3 ( .A(r_bin_next[3]), .B(r_bin_next[2]), .Y(r_gray_next[2]) );
  CLKXOR2X2M U4 ( .A(r_bin_next[2]), .B(r_bin_next[1]), .Y(r_gray_next[1]) );
  CLKXOR2X2M U5 ( .A(r_bin_next[1]), .B(r_bin_next[0]), .Y(r_gray_next[0]) );
  XNOR2X2M U6 ( .A(n5), .B(\r_ptr_bin[3] ), .Y(r_bin_next[3]) );
  NAND3X2M U7 ( .A(r_addr[1]), .B(n6), .C(r_addr[2]), .Y(n5) );
  XNOR2X2M U8 ( .A(n7), .B(r_addr[2]), .Y(r_bin_next[2]) );
  NAND2X2M U9 ( .A(r_addr[1]), .B(n6), .Y(n7) );
  NOR4X1M U10 ( .A(n1), .B(n2), .C(n3), .D(n4), .Y(r_empty_next) );
  CLKXOR2X2M U11 ( .A(rq2_wptr[3]), .B(r_bin_next[3]), .Y(n2) );
  CLKXOR2X2M U12 ( .A(rq2_wptr[2]), .B(r_gray_next[2]), .Y(n1) );
  CLKXOR2X2M U13 ( .A(rq2_wptr[1]), .B(r_gray_next[1]), .Y(n4) );
  NOR2BX2M U14 ( .AN(r_inc), .B(r_empty), .Y(n8) );
  AND2X2M U15 ( .A(r_addr[0]), .B(n8), .Y(n6) );
  CLKXOR2X2M U16 ( .A(rq2_wptr[0]), .B(r_gray_next[0]), .Y(n3) );
  CLKXOR2X2M U17 ( .A(n6), .B(r_addr[1]), .Y(r_bin_next[1]) );
  CLKXOR2X2M U18 ( .A(n8), .B(r_addr[0]), .Y(r_bin_next[0]) );
endmodule


module FIFO_top_DATA_WIDTH8_NUM_STAGES2_DEPTH8_ADDR_WIDTH3 ( w_clk, w_reset_n, 
        w_inc, w_data, r_clk, r_reset_n, r_inc, full, empty, r_data );
  input [7:0] w_data;
  output [7:0] r_data;
  input w_clk, w_reset_n, w_inc, r_clk, r_reset_n, r_inc;
  output full, empty;
  wire   _0_net_, n1, n2;
  wire   [2:0] w_addr;
  wire   [2:0] r_addr;
  wire   [3:0] r_ptr;
  wire   [3:0] wq2_rptr;
  wire   [3:0] w_ptr;
  wire   [3:0] rq2_wptr;

  FIFO_mem_DATA_WIDTH8_DEPTH8_ADDR_WIDTH3 dual_port_RAM ( .w_data(w_data), 
        .w_clk(w_clk), .w_clk_en(_0_net_), .w_rstn(n1), .w_addr(w_addr), 
        .r_addr(r_addr), .r_data(r_data) );
  bit_sync_NUM_STAGES2_DEPTH8_ADDR_WIDTH3_0 read_ptr_sync ( .dest_clk(w_clk), 
        .reset_n(n1), .async_bus(r_ptr), .sync_bus(wq2_rptr) );
  bit_sync_NUM_STAGES2_DEPTH8_ADDR_WIDTH3_1 write_ptr_sync ( .dest_clk(r_clk), 
        .reset_n(r_reset_n), .async_bus(w_ptr), .sync_bus(rq2_wptr) );
  write_control_DATA_WIDTH8_DEPTH8_ADDR_WIDTH3 write_con ( .w_clk(w_clk), 
        .w_reset_n(n1), .w_inc(w_inc), .wq2_rptr(wq2_rptr), .w_addr(w_addr), 
        .w_ptr(w_ptr), .w_full(full) );
  read_control_DATA_WIDTH8_DEPTH8_ADDR_WIDTH3 read_con ( .r_clk(r_clk), 
        .r_reset_n(r_reset_n), .r_inc(r_inc), .rq2_wptr(rq2_wptr), .r_addr(
        r_addr), .r_ptr(r_ptr), .r_empty(empty) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(w_reset_n), .Y(n2) );
  NOR2BX2M U3 ( .AN(w_inc), .B(full), .Y(_0_net_) );
endmodule


module registerfile_WORD_SIZE8_DEPTH16_ADDR_SIZE4 ( clk, rst_n, wr_en, rd_en, 
        address, wr_data, rd_data, rd_data_valid, reg0, reg1, reg2, reg3 );
  input [3:0] address;
  input [7:0] wr_data;
  output [7:0] rd_data;
  output [7:0] reg0;
  output [7:0] reg1;
  output [7:0] reg2;
  output [7:0] reg3;
  input clk, rst_n, wr_en, rd_en;
  output rd_data_valid;
  wire   N11, N12, N13, N14, \reg_file[4][7] , \reg_file[4][6] ,
         \reg_file[4][5] , \reg_file[4][4] , \reg_file[4][3] ,
         \reg_file[4][2] , \reg_file[4][1] , \reg_file[4][0] ,
         \reg_file[5][7] , \reg_file[5][6] , \reg_file[5][5] ,
         \reg_file[5][4] , \reg_file[5][3] , \reg_file[5][2] ,
         \reg_file[5][1] , \reg_file[5][0] , \reg_file[6][7] ,
         \reg_file[6][6] , \reg_file[6][5] , \reg_file[6][4] ,
         \reg_file[6][3] , \reg_file[6][2] , \reg_file[6][1] ,
         \reg_file[6][0] , \reg_file[7][7] , \reg_file[7][6] ,
         \reg_file[7][5] , \reg_file[7][4] , \reg_file[7][3] ,
         \reg_file[7][2] , \reg_file[7][1] , \reg_file[7][0] ,
         \reg_file[8][7] , \reg_file[8][6] , \reg_file[8][5] ,
         \reg_file[8][4] , \reg_file[8][3] , \reg_file[8][2] ,
         \reg_file[8][1] , \reg_file[8][0] , \reg_file[9][7] ,
         \reg_file[9][6] , \reg_file[9][5] , \reg_file[9][4] ,
         \reg_file[9][3] , \reg_file[9][2] , \reg_file[9][1] ,
         \reg_file[9][0] , \reg_file[10][7] , \reg_file[10][6] ,
         \reg_file[10][5] , \reg_file[10][4] , \reg_file[10][3] ,
         \reg_file[10][2] , \reg_file[10][1] , \reg_file[10][0] ,
         \reg_file[11][7] , \reg_file[11][6] , \reg_file[11][5] ,
         \reg_file[11][4] , \reg_file[11][3] , \reg_file[11][2] ,
         \reg_file[11][1] , \reg_file[11][0] , \reg_file[12][7] ,
         \reg_file[12][6] , \reg_file[12][5] , \reg_file[12][4] ,
         \reg_file[12][3] , \reg_file[12][2] , \reg_file[12][1] ,
         \reg_file[12][0] , \reg_file[13][7] , \reg_file[13][6] ,
         \reg_file[13][5] , \reg_file[13][4] , \reg_file[13][3] ,
         \reg_file[13][2] , \reg_file[13][1] , \reg_file[13][0] ,
         \reg_file[14][7] , \reg_file[14][6] , \reg_file[14][5] ,
         \reg_file[14][4] , \reg_file[14][3] , \reg_file[14][2] ,
         \reg_file[14][1] , \reg_file[14][0] , \reg_file[15][7] ,
         \reg_file[15][6] , \reg_file[15][5] , \reg_file[15][4] ,
         \reg_file[15][3] , \reg_file[15][2] , \reg_file[15][1] ,
         \reg_file[15][0] , N36, N37, N38, N39, N40, N41, N42, N43, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n1,
         n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227;
  assign N11 = address[0];
  assign N12 = address[1];
  assign N13 = address[2];
  assign N14 = address[3];

  DFFRQX2M \reg_file_reg[5][7]  ( .D(n136), .CK(clk), .RN(n209), .Q(
        \reg_file[5][7] ) );
  DFFRQX2M \reg_file_reg[5][6]  ( .D(n135), .CK(clk), .RN(n209), .Q(
        \reg_file[5][6] ) );
  DFFRQX2M \reg_file_reg[5][5]  ( .D(n134), .CK(clk), .RN(n209), .Q(
        \reg_file[5][5] ) );
  DFFRQX2M \reg_file_reg[5][4]  ( .D(n133), .CK(clk), .RN(n209), .Q(
        \reg_file[5][4] ) );
  DFFRQX2M \reg_file_reg[5][3]  ( .D(n132), .CK(clk), .RN(n209), .Q(
        \reg_file[5][3] ) );
  DFFRQX2M \reg_file_reg[5][2]  ( .D(n131), .CK(clk), .RN(n209), .Q(
        \reg_file[5][2] ) );
  DFFRQX2M \reg_file_reg[5][1]  ( .D(n130), .CK(clk), .RN(n209), .Q(
        \reg_file[5][1] ) );
  DFFRQX2M \reg_file_reg[5][0]  ( .D(n129), .CK(clk), .RN(n209), .Q(
        \reg_file[5][0] ) );
  DFFRQX2M \reg_file_reg[9][7]  ( .D(n104), .CK(clk), .RN(n207), .Q(
        \reg_file[9][7] ) );
  DFFRQX2M \reg_file_reg[9][6]  ( .D(n103), .CK(clk), .RN(n207), .Q(
        \reg_file[9][6] ) );
  DFFRQX2M \reg_file_reg[9][5]  ( .D(n102), .CK(clk), .RN(n207), .Q(
        \reg_file[9][5] ) );
  DFFRQX2M \reg_file_reg[9][4]  ( .D(n101), .CK(clk), .RN(n207), .Q(
        \reg_file[9][4] ) );
  DFFRQX2M \reg_file_reg[9][3]  ( .D(n100), .CK(clk), .RN(n207), .Q(
        \reg_file[9][3] ) );
  DFFRQX2M \reg_file_reg[9][2]  ( .D(n99), .CK(clk), .RN(n207), .Q(
        \reg_file[9][2] ) );
  DFFRQX2M \reg_file_reg[9][1]  ( .D(n98), .CK(clk), .RN(n207), .Q(
        \reg_file[9][1] ) );
  DFFRQX2M \reg_file_reg[9][0]  ( .D(n97), .CK(clk), .RN(n207), .Q(
        \reg_file[9][0] ) );
  DFFRQX2M \reg_file_reg[13][7]  ( .D(n72), .CK(clk), .RN(n205), .Q(
        \reg_file[13][7] ) );
  DFFRQX2M \reg_file_reg[13][6]  ( .D(n71), .CK(clk), .RN(n205), .Q(
        \reg_file[13][6] ) );
  DFFRQX2M \reg_file_reg[13][5]  ( .D(n70), .CK(clk), .RN(n205), .Q(
        \reg_file[13][5] ) );
  DFFRQX2M \reg_file_reg[13][4]  ( .D(n69), .CK(clk), .RN(n205), .Q(
        \reg_file[13][4] ) );
  DFFRQX2M \reg_file_reg[13][3]  ( .D(n68), .CK(clk), .RN(n205), .Q(
        \reg_file[13][3] ) );
  DFFRQX2M \reg_file_reg[13][2]  ( .D(n67), .CK(clk), .RN(n205), .Q(
        \reg_file[13][2] ) );
  DFFRQX2M \reg_file_reg[13][1]  ( .D(n66), .CK(clk), .RN(n204), .Q(
        \reg_file[13][1] ) );
  DFFRQX2M \reg_file_reg[13][0]  ( .D(n65), .CK(clk), .RN(n204), .Q(
        \reg_file[13][0] ) );
  DFFRQX2M \reg_file_reg[7][7]  ( .D(n120), .CK(clk), .RN(n208), .Q(
        \reg_file[7][7] ) );
  DFFRQX2M \reg_file_reg[7][6]  ( .D(n119), .CK(clk), .RN(n208), .Q(
        \reg_file[7][6] ) );
  DFFRQX2M \reg_file_reg[7][5]  ( .D(n118), .CK(clk), .RN(n208), .Q(
        \reg_file[7][5] ) );
  DFFRQX2M \reg_file_reg[7][4]  ( .D(n117), .CK(clk), .RN(n208), .Q(
        \reg_file[7][4] ) );
  DFFRQX2M \reg_file_reg[7][3]  ( .D(n116), .CK(clk), .RN(n208), .Q(
        \reg_file[7][3] ) );
  DFFRQX2M \reg_file_reg[7][2]  ( .D(n115), .CK(clk), .RN(n208), .Q(
        \reg_file[7][2] ) );
  DFFRQX2M \reg_file_reg[7][1]  ( .D(n114), .CK(clk), .RN(n208), .Q(
        \reg_file[7][1] ) );
  DFFRQX2M \reg_file_reg[7][0]  ( .D(n113), .CK(clk), .RN(n208), .Q(
        \reg_file[7][0] ) );
  DFFRQX2M \reg_file_reg[11][7]  ( .D(n88), .CK(clk), .RN(n206), .Q(
        \reg_file[11][7] ) );
  DFFRQX2M \reg_file_reg[11][6]  ( .D(n87), .CK(clk), .RN(n206), .Q(
        \reg_file[11][6] ) );
  DFFRQX2M \reg_file_reg[11][5]  ( .D(n86), .CK(clk), .RN(n206), .Q(
        \reg_file[11][5] ) );
  DFFRQX2M \reg_file_reg[11][4]  ( .D(n85), .CK(clk), .RN(n206), .Q(
        \reg_file[11][4] ) );
  DFFRQX2M \reg_file_reg[11][3]  ( .D(n84), .CK(clk), .RN(n206), .Q(
        \reg_file[11][3] ) );
  DFFRQX2M \reg_file_reg[11][2]  ( .D(n83), .CK(clk), .RN(n206), .Q(
        \reg_file[11][2] ) );
  DFFRQX2M \reg_file_reg[11][1]  ( .D(n82), .CK(clk), .RN(n206), .Q(
        \reg_file[11][1] ) );
  DFFRQX2M \reg_file_reg[11][0]  ( .D(n81), .CK(clk), .RN(n205), .Q(
        \reg_file[11][0] ) );
  DFFRQX2M \reg_file_reg[15][7]  ( .D(n56), .CK(clk), .RN(n204), .Q(
        \reg_file[15][7] ) );
  DFFRQX2M \reg_file_reg[15][6]  ( .D(n55), .CK(clk), .RN(n204), .Q(
        \reg_file[15][6] ) );
  DFFRQX2M \reg_file_reg[15][5]  ( .D(n54), .CK(clk), .RN(n204), .Q(
        \reg_file[15][5] ) );
  DFFRQX2M \reg_file_reg[15][4]  ( .D(n53), .CK(clk), .RN(n204), .Q(
        \reg_file[15][4] ) );
  DFFRQX2M \reg_file_reg[15][3]  ( .D(n52), .CK(clk), .RN(n203), .Q(
        \reg_file[15][3] ) );
  DFFRQX2M \reg_file_reg[15][2]  ( .D(n51), .CK(clk), .RN(n204), .Q(
        \reg_file[15][2] ) );
  DFFRQX2M \reg_file_reg[15][1]  ( .D(n50), .CK(clk), .RN(n203), .Q(
        \reg_file[15][1] ) );
  DFFRQX2M \reg_file_reg[15][0]  ( .D(n49), .CK(clk), .RN(n203), .Q(
        \reg_file[15][0] ) );
  DFFRQX2M \reg_file_reg[6][7]  ( .D(n128), .CK(clk), .RN(n209), .Q(
        \reg_file[6][7] ) );
  DFFRQX2M \reg_file_reg[6][6]  ( .D(n127), .CK(clk), .RN(n209), .Q(
        \reg_file[6][6] ) );
  DFFRQX2M \reg_file_reg[6][5]  ( .D(n126), .CK(clk), .RN(n209), .Q(
        \reg_file[6][5] ) );
  DFFRQX2M \reg_file_reg[6][4]  ( .D(n125), .CK(clk), .RN(n208), .Q(
        \reg_file[6][4] ) );
  DFFRQX2M \reg_file_reg[6][3]  ( .D(n124), .CK(clk), .RN(n208), .Q(
        \reg_file[6][3] ) );
  DFFRQX2M \reg_file_reg[6][2]  ( .D(n123), .CK(clk), .RN(n208), .Q(
        \reg_file[6][2] ) );
  DFFRQX2M \reg_file_reg[6][1]  ( .D(n122), .CK(clk), .RN(n208), .Q(
        \reg_file[6][1] ) );
  DFFRQX2M \reg_file_reg[6][0]  ( .D(n121), .CK(clk), .RN(n208), .Q(
        \reg_file[6][0] ) );
  DFFRQX2M \reg_file_reg[10][7]  ( .D(n96), .CK(clk), .RN(n206), .Q(
        \reg_file[10][7] ) );
  DFFRQX2M \reg_file_reg[10][6]  ( .D(n95), .CK(clk), .RN(n206), .Q(
        \reg_file[10][6] ) );
  DFFRQX2M \reg_file_reg[10][5]  ( .D(n94), .CK(clk), .RN(n206), .Q(
        \reg_file[10][5] ) );
  DFFRQX2M \reg_file_reg[10][4]  ( .D(n93), .CK(clk), .RN(n206), .Q(
        \reg_file[10][4] ) );
  DFFRQX2M \reg_file_reg[10][3]  ( .D(n92), .CK(clk), .RN(n206), .Q(
        \reg_file[10][3] ) );
  DFFRQX2M \reg_file_reg[10][2]  ( .D(n91), .CK(clk), .RN(n206), .Q(
        \reg_file[10][2] ) );
  DFFRQX2M \reg_file_reg[10][1]  ( .D(n90), .CK(clk), .RN(n206), .Q(
        \reg_file[10][1] ) );
  DFFRQX2M \reg_file_reg[10][0]  ( .D(n89), .CK(clk), .RN(n206), .Q(
        \reg_file[10][0] ) );
  DFFRQX2M \reg_file_reg[14][7]  ( .D(n64), .CK(clk), .RN(n204), .Q(
        \reg_file[14][7] ) );
  DFFRQX2M \reg_file_reg[14][6]  ( .D(n63), .CK(clk), .RN(n204), .Q(
        \reg_file[14][6] ) );
  DFFRQX2M \reg_file_reg[14][5]  ( .D(n62), .CK(clk), .RN(n204), .Q(
        \reg_file[14][5] ) );
  DFFRQX2M \reg_file_reg[14][4]  ( .D(n61), .CK(clk), .RN(n204), .Q(
        \reg_file[14][4] ) );
  DFFRQX2M \reg_file_reg[14][3]  ( .D(n60), .CK(clk), .RN(n204), .Q(
        \reg_file[14][3] ) );
  DFFRQX2M \reg_file_reg[14][2]  ( .D(n59), .CK(clk), .RN(n204), .Q(
        \reg_file[14][2] ) );
  DFFRQX2M \reg_file_reg[14][1]  ( .D(n58), .CK(clk), .RN(n204), .Q(
        \reg_file[14][1] ) );
  DFFRQX2M \reg_file_reg[14][0]  ( .D(n57), .CK(clk), .RN(n204), .Q(
        \reg_file[14][0] ) );
  DFFRQX2M \reg_file_reg[4][7]  ( .D(n144), .CK(clk), .RN(n210), .Q(
        \reg_file[4][7] ) );
  DFFRQX2M \reg_file_reg[4][6]  ( .D(n143), .CK(clk), .RN(n210), .Q(
        \reg_file[4][6] ) );
  DFFRQX2M \reg_file_reg[4][5]  ( .D(n142), .CK(clk), .RN(n210), .Q(
        \reg_file[4][5] ) );
  DFFRQX2M \reg_file_reg[4][4]  ( .D(n141), .CK(clk), .RN(n210), .Q(
        \reg_file[4][4] ) );
  DFFRQX2M \reg_file_reg[4][3]  ( .D(n140), .CK(clk), .RN(n209), .Q(
        \reg_file[4][3] ) );
  DFFRQX2M \reg_file_reg[4][2]  ( .D(n139), .CK(clk), .RN(n209), .Q(
        \reg_file[4][2] ) );
  DFFRQX2M \reg_file_reg[4][1]  ( .D(n138), .CK(clk), .RN(n209), .Q(
        \reg_file[4][1] ) );
  DFFRQX2M \reg_file_reg[4][0]  ( .D(n137), .CK(clk), .RN(n209), .Q(
        \reg_file[4][0] ) );
  DFFRQX2M \reg_file_reg[8][7]  ( .D(n112), .CK(clk), .RN(n208), .Q(
        \reg_file[8][7] ) );
  DFFRQX2M \reg_file_reg[8][6]  ( .D(n111), .CK(clk), .RN(n208), .Q(
        \reg_file[8][6] ) );
  DFFRQX2M \reg_file_reg[8][5]  ( .D(n110), .CK(clk), .RN(n207), .Q(
        \reg_file[8][5] ) );
  DFFRQX2M \reg_file_reg[8][4]  ( .D(n109), .CK(clk), .RN(n207), .Q(
        \reg_file[8][4] ) );
  DFFRQX2M \reg_file_reg[8][3]  ( .D(n108), .CK(clk), .RN(n207), .Q(
        \reg_file[8][3] ) );
  DFFRQX2M \reg_file_reg[8][2]  ( .D(n107), .CK(clk), .RN(n207), .Q(
        \reg_file[8][2] ) );
  DFFRQX2M \reg_file_reg[8][1]  ( .D(n106), .CK(clk), .RN(n207), .Q(
        \reg_file[8][1] ) );
  DFFRQX2M \reg_file_reg[8][0]  ( .D(n105), .CK(clk), .RN(n207), .Q(
        \reg_file[8][0] ) );
  DFFRQX2M \reg_file_reg[12][7]  ( .D(n80), .CK(clk), .RN(n205), .Q(
        \reg_file[12][7] ) );
  DFFRQX2M \reg_file_reg[12][6]  ( .D(n79), .CK(clk), .RN(n205), .Q(
        \reg_file[12][6] ) );
  DFFRQX2M \reg_file_reg[12][5]  ( .D(n78), .CK(clk), .RN(n205), .Q(
        \reg_file[12][5] ) );
  DFFRQX2M \reg_file_reg[12][4]  ( .D(n77), .CK(clk), .RN(n205), .Q(
        \reg_file[12][4] ) );
  DFFRQX2M \reg_file_reg[12][3]  ( .D(n76), .CK(clk), .RN(n205), .Q(
        \reg_file[12][3] ) );
  DFFRQX2M \reg_file_reg[12][2]  ( .D(n75), .CK(clk), .RN(n205), .Q(
        \reg_file[12][2] ) );
  DFFRQX2M \reg_file_reg[12][1]  ( .D(n74), .CK(clk), .RN(n205), .Q(
        \reg_file[12][1] ) );
  DFFRQX2M \reg_file_reg[12][0]  ( .D(n73), .CK(clk), .RN(n205), .Q(
        \reg_file[12][0] ) );
  DFFSQX2M \reg_file_reg[3][5]  ( .D(n150), .CK(clk), .SN(n203), .Q(reg3[5])
         );
  DFFRQX2M \rd_data_reg[7]  ( .D(n48), .CK(clk), .RN(n203), .Q(rd_data[7]) );
  DFFRQX2M \rd_data_reg[6]  ( .D(n47), .CK(clk), .RN(n203), .Q(rd_data[6]) );
  DFFRQX2M \rd_data_reg[5]  ( .D(n46), .CK(clk), .RN(n203), .Q(rd_data[5]) );
  DFFRQX2M \rd_data_reg[4]  ( .D(n45), .CK(clk), .RN(n203), .Q(rd_data[4]) );
  DFFRQX2M \rd_data_reg[3]  ( .D(n44), .CK(clk), .RN(n203), .Q(rd_data[3]) );
  DFFRQX2M \rd_data_reg[2]  ( .D(n43), .CK(clk), .RN(n203), .Q(rd_data[2]) );
  DFFRQX2M \rd_data_reg[1]  ( .D(n42), .CK(clk), .RN(n203), .Q(rd_data[1]) );
  DFFRQX2M \rd_data_reg[0]  ( .D(n41), .CK(clk), .RN(n203), .Q(rd_data[0]) );
  DFFRQX2M \reg_file_reg[3][0]  ( .D(n145), .CK(clk), .RN(n210), .Q(reg3[0])
         );
  DFFRQX2M \reg_file_reg[3][2]  ( .D(n147), .CK(clk), .RN(n210), .Q(reg3[2])
         );
  DFFRQX2M \reg_file_reg[3][4]  ( .D(n149), .CK(clk), .RN(n210), .Q(reg3[4])
         );
  DFFRQX2M \reg_file_reg[3][3]  ( .D(n148), .CK(clk), .RN(n210), .Q(reg3[3])
         );
  DFFRQX2M \reg_file_reg[3][7]  ( .D(n152), .CK(clk), .RN(n210), .Q(reg3[7])
         );
  DFFRQX2M \reg_file_reg[2][1]  ( .D(n154), .CK(clk), .RN(n210), .Q(reg2[1])
         );
  DFFRQX2M \reg_file_reg[3][6]  ( .D(n151), .CK(clk), .RN(n210), .Q(reg3[6])
         );
  DFFRQX2M \reg_file_reg[3][1]  ( .D(n146), .CK(clk), .RN(n210), .Q(reg3[1])
         );
  DFFSQX2M \reg_file_reg[2][0]  ( .D(n153), .CK(clk), .SN(n203), .Q(reg2[0])
         );
  DFFSQX2M \reg_file_reg[2][5]  ( .D(n158), .CK(clk), .SN(n203), .Q(reg2[5])
         );
  DFFRQX2M \reg_file_reg[2][3]  ( .D(n156), .CK(clk), .RN(n210), .Q(reg2[3])
         );
  DFFRQX2M \reg_file_reg[2][2]  ( .D(n155), .CK(clk), .RN(n210), .Q(reg2[2])
         );
  DFFRQX2M \reg_file_reg[2][6]  ( .D(n159), .CK(clk), .RN(n211), .Q(reg2[6])
         );
  DFFRQX2M \reg_file_reg[2][7]  ( .D(n160), .CK(clk), .RN(n211), .Q(reg2[7])
         );
  DFFRQX2M \reg_file_reg[2][4]  ( .D(n157), .CK(clk), .RN(n210), .Q(reg2[4])
         );
  DFFRQX2M rd_data_valid_reg ( .D(n219), .CK(clk), .RN(n207), .Q(rd_data_valid) );
  DFFRQX2M \reg_file_reg[0][1]  ( .D(n170), .CK(clk), .RN(n211), .Q(reg0[1])
         );
  DFFRQX2M \reg_file_reg[0][0]  ( .D(n169), .CK(clk), .RN(n211), .Q(reg0[0])
         );
  DFFRQX2M \reg_file_reg[0][2]  ( .D(n171), .CK(clk), .RN(n211), .Q(reg0[2])
         );
  DFFRQX2M \reg_file_reg[0][3]  ( .D(n172), .CK(clk), .RN(n211), .Q(reg0[3])
         );
  DFFRQX2M \reg_file_reg[0][4]  ( .D(n173), .CK(clk), .RN(n211), .Q(reg0[4])
         );
  DFFRQX2M \reg_file_reg[0][5]  ( .D(n174), .CK(clk), .RN(n212), .Q(reg0[5])
         );
  DFFRQX2M \reg_file_reg[0][7]  ( .D(n176), .CK(clk), .RN(n203), .Q(reg0[7])
         );
  DFFRQX2M \reg_file_reg[0][6]  ( .D(n175), .CK(clk), .RN(n212), .Q(reg0[6])
         );
  DFFRQX2M \reg_file_reg[1][7]  ( .D(n168), .CK(clk), .RN(n211), .Q(reg1[7])
         );
  DFFRQX2M \reg_file_reg[1][6]  ( .D(n167), .CK(clk), .RN(n211), .Q(reg1[6])
         );
  DFFRQX2M \reg_file_reg[1][1]  ( .D(n162), .CK(clk), .RN(n211), .Q(reg1[1])
         );
  DFFRQX2M \reg_file_reg[1][4]  ( .D(n165), .CK(clk), .RN(n211), .Q(reg1[4])
         );
  DFFRQX2M \reg_file_reg[1][5]  ( .D(n166), .CK(clk), .RN(n211), .Q(reg1[5])
         );
  DFFRQX2M \reg_file_reg[1][2]  ( .D(n163), .CK(clk), .RN(n211), .Q(reg1[2])
         );
  DFFRQX2M \reg_file_reg[1][3]  ( .D(n164), .CK(clk), .RN(n211), .Q(reg1[3])
         );
  DFFRQX2M \reg_file_reg[1][0]  ( .D(n161), .CK(clk), .RN(n211), .Q(reg1[0])
         );
  NOR2BX2M U3 ( .AN(n39), .B(n201), .Y(n31) );
  NOR2BX2M U4 ( .AN(n27), .B(n201), .Y(n16) );
  NOR2X2M U5 ( .A(n202), .B(N13), .Y(n23) );
  NOR2X2M U6 ( .A(N12), .B(N13), .Y(n26) );
  NOR2X2M U7 ( .A(n218), .B(n202), .Y(n15) );
  INVX2M U8 ( .A(n201), .Y(n199) );
  INVX2M U9 ( .A(n197), .Y(n198) );
  INVX2M U10 ( .A(n13), .Y(n219) );
  NAND2X2M U11 ( .A(n20), .B(n18), .Y(n21) );
  BUFX2M U12 ( .A(n202), .Y(n197) );
  NAND2X2M U13 ( .A(n33), .B(n20), .Y(n35) );
  NAND2BX2M U14 ( .AN(wr_en), .B(rd_en), .Y(n13) );
  NOR2BX2M U15 ( .AN(wr_en), .B(rd_en), .Y(n29) );
  NOR2BX2M U16 ( .AN(n27), .B(n200), .Y(n18) );
  NAND2X2M U17 ( .A(n20), .B(n16), .Y(n19) );
  NAND2X2M U18 ( .A(n23), .B(n16), .Y(n22) );
  NAND2X2M U19 ( .A(n23), .B(n18), .Y(n24) );
  NAND2X2M U20 ( .A(n26), .B(n16), .Y(n25) );
  NAND2X2M U21 ( .A(n26), .B(n18), .Y(n28) );
  NAND2X2M U22 ( .A(n18), .B(n15), .Y(n17) );
  NAND2X2M U23 ( .A(n15), .B(n16), .Y(n14) );
  NOR2BX2M U24 ( .AN(n39), .B(n200), .Y(n33) );
  NOR2X2M U25 ( .A(n218), .B(N12), .Y(n20) );
  NAND2X2M U26 ( .A(n31), .B(n23), .Y(n36) );
  NAND2X2M U27 ( .A(n33), .B(n23), .Y(n37) );
  NAND2X2M U28 ( .A(n31), .B(n26), .Y(n38) );
  NAND2X2M U29 ( .A(n33), .B(n26), .Y(n40) );
  NAND2X2M U30 ( .A(n31), .B(n15), .Y(n30) );
  NAND2X2M U31 ( .A(n33), .B(n15), .Y(n32) );
  NAND2X2M U32 ( .A(n31), .B(n20), .Y(n34) );
  BUFX2M U33 ( .A(n217), .Y(n203) );
  BUFX2M U34 ( .A(n217), .Y(n204) );
  BUFX2M U35 ( .A(n216), .Y(n205) );
  BUFX2M U36 ( .A(n216), .Y(n206) );
  BUFX2M U37 ( .A(n215), .Y(n207) );
  BUFX2M U38 ( .A(n215), .Y(n208) );
  BUFX2M U39 ( .A(n214), .Y(n209) );
  BUFX2M U40 ( .A(n214), .Y(n210) );
  BUFX2M U41 ( .A(n213), .Y(n211) );
  BUFX2M U42 ( .A(n213), .Y(n212) );
  AND2X2M U43 ( .A(N14), .B(n29), .Y(n27) );
  INVX2M U44 ( .A(n201), .Y(n200) );
  INVX2M U45 ( .A(wr_data[0]), .Y(n220) );
  INVX2M U46 ( .A(wr_data[1]), .Y(n221) );
  INVX2M U47 ( .A(wr_data[2]), .Y(n222) );
  INVX2M U48 ( .A(wr_data[3]), .Y(n223) );
  INVX2M U49 ( .A(wr_data[7]), .Y(n224) );
  INVX2M U50 ( .A(wr_data[4]), .Y(n227) );
  INVX2M U51 ( .A(N13), .Y(n218) );
  NOR2BX2M U52 ( .AN(n29), .B(N14), .Y(n39) );
  INVX2M U53 ( .A(wr_data[6]), .Y(n225) );
  BUFX2M U54 ( .A(rst_n), .Y(n216) );
  BUFX2M U55 ( .A(rst_n), .Y(n215) );
  BUFX2M U56 ( .A(rst_n), .Y(n214) );
  BUFX2M U57 ( .A(rst_n), .Y(n213) );
  BUFX2M U58 ( .A(rst_n), .Y(n217) );
  OAI2BB2X1M U59 ( .B0(n14), .B1(n220), .A0N(\reg_file[15][0] ), .A1N(n14), 
        .Y(n49) );
  OAI2BB2X1M U60 ( .B0(n14), .B1(n221), .A0N(\reg_file[15][1] ), .A1N(n14), 
        .Y(n50) );
  OAI2BB2X1M U61 ( .B0(n14), .B1(n222), .A0N(\reg_file[15][2] ), .A1N(n14), 
        .Y(n51) );
  OAI2BB2X1M U62 ( .B0(n14), .B1(n223), .A0N(\reg_file[15][3] ), .A1N(n14), 
        .Y(n52) );
  OAI2BB2X1M U63 ( .B0(n14), .B1(n227), .A0N(\reg_file[15][4] ), .A1N(n14), 
        .Y(n53) );
  OAI2BB2X1M U64 ( .B0(n14), .B1(n226), .A0N(\reg_file[15][5] ), .A1N(n14), 
        .Y(n54) );
  OAI2BB2X1M U65 ( .B0(n14), .B1(n225), .A0N(\reg_file[15][6] ), .A1N(n14), 
        .Y(n55) );
  OAI2BB2X1M U66 ( .B0(n14), .B1(n224), .A0N(\reg_file[15][7] ), .A1N(n14), 
        .Y(n56) );
  OAI2BB2X1M U67 ( .B0(n220), .B1(n17), .A0N(\reg_file[14][0] ), .A1N(n17), 
        .Y(n57) );
  OAI2BB2X1M U68 ( .B0(n221), .B1(n17), .A0N(\reg_file[14][1] ), .A1N(n17), 
        .Y(n58) );
  OAI2BB2X1M U69 ( .B0(n222), .B1(n17), .A0N(\reg_file[14][2] ), .A1N(n17), 
        .Y(n59) );
  OAI2BB2X1M U70 ( .B0(n223), .B1(n17), .A0N(\reg_file[14][3] ), .A1N(n17), 
        .Y(n60) );
  OAI2BB2X1M U71 ( .B0(n227), .B1(n17), .A0N(\reg_file[14][4] ), .A1N(n17), 
        .Y(n61) );
  OAI2BB2X1M U72 ( .B0(n226), .B1(n17), .A0N(\reg_file[14][5] ), .A1N(n17), 
        .Y(n62) );
  OAI2BB2X1M U73 ( .B0(n225), .B1(n17), .A0N(\reg_file[14][6] ), .A1N(n17), 
        .Y(n63) );
  OAI2BB2X1M U74 ( .B0(n224), .B1(n17), .A0N(\reg_file[14][7] ), .A1N(n17), 
        .Y(n64) );
  OAI2BB2X1M U75 ( .B0(n220), .B1(n22), .A0N(\reg_file[11][0] ), .A1N(n22), 
        .Y(n81) );
  OAI2BB2X1M U76 ( .B0(n221), .B1(n22), .A0N(\reg_file[11][1] ), .A1N(n22), 
        .Y(n82) );
  OAI2BB2X1M U77 ( .B0(n222), .B1(n22), .A0N(\reg_file[11][2] ), .A1N(n22), 
        .Y(n83) );
  OAI2BB2X1M U78 ( .B0(n223), .B1(n22), .A0N(\reg_file[11][3] ), .A1N(n22), 
        .Y(n84) );
  OAI2BB2X1M U79 ( .B0(n227), .B1(n22), .A0N(\reg_file[11][4] ), .A1N(n22), 
        .Y(n85) );
  OAI2BB2X1M U80 ( .B0(n226), .B1(n22), .A0N(\reg_file[11][5] ), .A1N(n22), 
        .Y(n86) );
  OAI2BB2X1M U81 ( .B0(n225), .B1(n22), .A0N(\reg_file[11][6] ), .A1N(n22), 
        .Y(n87) );
  OAI2BB2X1M U82 ( .B0(n224), .B1(n22), .A0N(\reg_file[11][7] ), .A1N(n22), 
        .Y(n88) );
  OAI2BB2X1M U83 ( .B0(n220), .B1(n24), .A0N(\reg_file[10][0] ), .A1N(n24), 
        .Y(n89) );
  OAI2BB2X1M U84 ( .B0(n221), .B1(n24), .A0N(\reg_file[10][1] ), .A1N(n24), 
        .Y(n90) );
  OAI2BB2X1M U85 ( .B0(n222), .B1(n24), .A0N(\reg_file[10][2] ), .A1N(n24), 
        .Y(n91) );
  OAI2BB2X1M U86 ( .B0(n223), .B1(n24), .A0N(\reg_file[10][3] ), .A1N(n24), 
        .Y(n92) );
  OAI2BB2X1M U87 ( .B0(n227), .B1(n24), .A0N(\reg_file[10][4] ), .A1N(n24), 
        .Y(n93) );
  OAI2BB2X1M U88 ( .B0(n226), .B1(n24), .A0N(\reg_file[10][5] ), .A1N(n24), 
        .Y(n94) );
  OAI2BB2X1M U89 ( .B0(n225), .B1(n24), .A0N(\reg_file[10][6] ), .A1N(n24), 
        .Y(n95) );
  OAI2BB2X1M U90 ( .B0(n224), .B1(n24), .A0N(\reg_file[10][7] ), .A1N(n24), 
        .Y(n96) );
  OAI2BB2X1M U91 ( .B0(n220), .B1(n25), .A0N(\reg_file[9][0] ), .A1N(n25), .Y(
        n97) );
  OAI2BB2X1M U92 ( .B0(n221), .B1(n25), .A0N(\reg_file[9][1] ), .A1N(n25), .Y(
        n98) );
  OAI2BB2X1M U93 ( .B0(n222), .B1(n25), .A0N(\reg_file[9][2] ), .A1N(n25), .Y(
        n99) );
  OAI2BB2X1M U94 ( .B0(n223), .B1(n25), .A0N(\reg_file[9][3] ), .A1N(n25), .Y(
        n100) );
  OAI2BB2X1M U95 ( .B0(n227), .B1(n25), .A0N(\reg_file[9][4] ), .A1N(n25), .Y(
        n101) );
  OAI2BB2X1M U96 ( .B0(n226), .B1(n25), .A0N(\reg_file[9][5] ), .A1N(n25), .Y(
        n102) );
  OAI2BB2X1M U97 ( .B0(n225), .B1(n25), .A0N(\reg_file[9][6] ), .A1N(n25), .Y(
        n103) );
  OAI2BB2X1M U98 ( .B0(n224), .B1(n25), .A0N(\reg_file[9][7] ), .A1N(n25), .Y(
        n104) );
  OAI2BB2X1M U99 ( .B0(n220), .B1(n28), .A0N(\reg_file[8][0] ), .A1N(n28), .Y(
        n105) );
  OAI2BB2X1M U100 ( .B0(n221), .B1(n28), .A0N(\reg_file[8][1] ), .A1N(n28), 
        .Y(n106) );
  OAI2BB2X1M U101 ( .B0(n222), .B1(n28), .A0N(\reg_file[8][2] ), .A1N(n28), 
        .Y(n107) );
  OAI2BB2X1M U102 ( .B0(n223), .B1(n28), .A0N(\reg_file[8][3] ), .A1N(n28), 
        .Y(n108) );
  OAI2BB2X1M U103 ( .B0(n227), .B1(n28), .A0N(\reg_file[8][4] ), .A1N(n28), 
        .Y(n109) );
  OAI2BB2X1M U104 ( .B0(n226), .B1(n28), .A0N(\reg_file[8][5] ), .A1N(n28), 
        .Y(n110) );
  OAI2BB2X1M U105 ( .B0(n225), .B1(n28), .A0N(\reg_file[8][6] ), .A1N(n28), 
        .Y(n111) );
  OAI2BB2X1M U106 ( .B0(n224), .B1(n28), .A0N(\reg_file[8][7] ), .A1N(n28), 
        .Y(n112) );
  OAI2BB2X1M U107 ( .B0(n220), .B1(n19), .A0N(\reg_file[13][0] ), .A1N(n19), 
        .Y(n65) );
  OAI2BB2X1M U108 ( .B0(n221), .B1(n19), .A0N(\reg_file[13][1] ), .A1N(n19), 
        .Y(n66) );
  OAI2BB2X1M U109 ( .B0(n222), .B1(n19), .A0N(\reg_file[13][2] ), .A1N(n19), 
        .Y(n67) );
  OAI2BB2X1M U110 ( .B0(n223), .B1(n19), .A0N(\reg_file[13][3] ), .A1N(n19), 
        .Y(n68) );
  OAI2BB2X1M U111 ( .B0(n227), .B1(n19), .A0N(\reg_file[13][4] ), .A1N(n19), 
        .Y(n69) );
  OAI2BB2X1M U112 ( .B0(n226), .B1(n19), .A0N(\reg_file[13][5] ), .A1N(n19), 
        .Y(n70) );
  OAI2BB2X1M U113 ( .B0(n225), .B1(n19), .A0N(\reg_file[13][6] ), .A1N(n19), 
        .Y(n71) );
  OAI2BB2X1M U114 ( .B0(n224), .B1(n19), .A0N(\reg_file[13][7] ), .A1N(n19), 
        .Y(n72) );
  OAI2BB2X1M U115 ( .B0(n220), .B1(n21), .A0N(\reg_file[12][0] ), .A1N(n21), 
        .Y(n73) );
  OAI2BB2X1M U116 ( .B0(n221), .B1(n21), .A0N(\reg_file[12][1] ), .A1N(n21), 
        .Y(n74) );
  OAI2BB2X1M U117 ( .B0(n222), .B1(n21), .A0N(\reg_file[12][2] ), .A1N(n21), 
        .Y(n75) );
  OAI2BB2X1M U118 ( .B0(n223), .B1(n21), .A0N(\reg_file[12][3] ), .A1N(n21), 
        .Y(n76) );
  OAI2BB2X1M U119 ( .B0(n227), .B1(n21), .A0N(\reg_file[12][4] ), .A1N(n21), 
        .Y(n77) );
  OAI2BB2X1M U120 ( .B0(n226), .B1(n21), .A0N(\reg_file[12][5] ), .A1N(n21), 
        .Y(n78) );
  OAI2BB2X1M U121 ( .B0(n225), .B1(n21), .A0N(\reg_file[12][6] ), .A1N(n21), 
        .Y(n79) );
  OAI2BB2X1M U122 ( .B0(n224), .B1(n21), .A0N(\reg_file[12][7] ), .A1N(n21), 
        .Y(n80) );
  AO22X1M U123 ( .A0(N43), .A1(n219), .B0(rd_data[0]), .B1(n13), .Y(n41) );
  MX4X1M U124 ( .A(n4), .B(n2), .C(n3), .D(n1), .S0(N14), .S1(N13), .Y(N43) );
  MX4X1M U125 ( .A(reg0[0]), .B(reg1[0]), .C(reg2[0]), .D(reg3[0]), .S0(N11), 
        .S1(N12), .Y(n4) );
  MX4X1M U126 ( .A(\reg_file[8][0] ), .B(\reg_file[9][0] ), .C(
        \reg_file[10][0] ), .D(\reg_file[11][0] ), .S0(N11), .S1(N12), .Y(n2)
         );
  AO22X1M U127 ( .A0(N42), .A1(n219), .B0(rd_data[1]), .B1(n13), .Y(n42) );
  MX4X1M U128 ( .A(n8), .B(n6), .C(n7), .D(n5), .S0(N14), .S1(N13), .Y(N42) );
  MX4X1M U129 ( .A(\reg_file[8][1] ), .B(\reg_file[9][1] ), .C(
        \reg_file[10][1] ), .D(\reg_file[11][1] ), .S0(N11), .S1(N12), .Y(n6)
         );
  MX4X1M U130 ( .A(\reg_file[12][1] ), .B(\reg_file[13][1] ), .C(
        \reg_file[14][1] ), .D(\reg_file[15][1] ), .S0(n199), .S1(N12), .Y(n5)
         );
  AO22X1M U131 ( .A0(N41), .A1(n219), .B0(rd_data[2]), .B1(n13), .Y(n43) );
  MX4X1M U132 ( .A(n12), .B(n10), .C(n11), .D(n9), .S0(N14), .S1(N13), .Y(N41)
         );
  MX4X1M U133 ( .A(reg0[2]), .B(reg1[2]), .C(reg2[2]), .D(reg3[2]), .S0(n199), 
        .S1(n198), .Y(n12) );
  MX4X1M U134 ( .A(\reg_file[8][2] ), .B(\reg_file[9][2] ), .C(
        \reg_file[10][2] ), .D(\reg_file[11][2] ), .S0(n199), .S1(n198), .Y(
        n10) );
  AO22X1M U135 ( .A0(N40), .A1(n219), .B0(rd_data[3]), .B1(n13), .Y(n44) );
  MX4X1M U136 ( .A(n180), .B(n178), .C(n179), .D(n177), .S0(N14), .S1(N13), 
        .Y(N40) );
  MX4X1M U137 ( .A(reg0[3]), .B(reg1[3]), .C(reg2[3]), .D(reg3[3]), .S0(n199), 
        .S1(n198), .Y(n180) );
  MX4X1M U138 ( .A(\reg_file[8][3] ), .B(\reg_file[9][3] ), .C(
        \reg_file[10][3] ), .D(\reg_file[11][3] ), .S0(n199), .S1(n198), .Y(
        n178) );
  AO22X1M U139 ( .A0(N39), .A1(n219), .B0(rd_data[4]), .B1(n13), .Y(n45) );
  MX4X1M U140 ( .A(n184), .B(n182), .C(n183), .D(n181), .S0(N14), .S1(N13), 
        .Y(N39) );
  MX4X1M U141 ( .A(reg0[4]), .B(reg1[4]), .C(reg2[4]), .D(reg3[4]), .S0(N11), 
        .S1(n198), .Y(n184) );
  MX4X1M U142 ( .A(\reg_file[8][4] ), .B(\reg_file[9][4] ), .C(
        \reg_file[10][4] ), .D(\reg_file[11][4] ), .S0(n199), .S1(n198), .Y(
        n182) );
  AO22X1M U143 ( .A0(N38), .A1(n219), .B0(rd_data[5]), .B1(n13), .Y(n46) );
  MX4X1M U144 ( .A(n188), .B(n186), .C(n187), .D(n185), .S0(N14), .S1(N13), 
        .Y(N38) );
  MX4X1M U145 ( .A(reg0[5]), .B(reg1[5]), .C(reg2[5]), .D(reg3[5]), .S0(N11), 
        .S1(N12), .Y(n188) );
  MX4X1M U146 ( .A(\reg_file[8][5] ), .B(\reg_file[9][5] ), .C(
        \reg_file[10][5] ), .D(\reg_file[11][5] ), .S0(N11), .S1(N12), .Y(n186) );
  AO22X1M U147 ( .A0(N37), .A1(n219), .B0(rd_data[6]), .B1(n13), .Y(n47) );
  MX4X1M U148 ( .A(n192), .B(n190), .C(n191), .D(n189), .S0(N14), .S1(N13), 
        .Y(N37) );
  MX4X1M U149 ( .A(reg0[6]), .B(reg1[6]), .C(reg2[6]), .D(reg3[6]), .S0(n200), 
        .S1(N12), .Y(n192) );
  MX4X1M U150 ( .A(\reg_file[8][6] ), .B(\reg_file[9][6] ), .C(
        \reg_file[10][6] ), .D(\reg_file[11][6] ), .S0(N11), .S1(N12), .Y(n190) );
  AO22X1M U151 ( .A0(N36), .A1(n219), .B0(rd_data[7]), .B1(n13), .Y(n48) );
  MX4X1M U152 ( .A(n196), .B(n194), .C(n195), .D(n193), .S0(N14), .S1(N13), 
        .Y(N36) );
  MX4X1M U153 ( .A(reg0[7]), .B(reg1[7]), .C(reg2[7]), .D(reg3[7]), .S0(n200), 
        .S1(N12), .Y(n196) );
  MX4X1M U154 ( .A(\reg_file[8][7] ), .B(\reg_file[9][7] ), .C(
        \reg_file[10][7] ), .D(\reg_file[11][7] ), .S0(N11), .S1(N12), .Y(n194) );
  MX4X1M U155 ( .A(reg0[1]), .B(reg1[1]), .C(reg2[1]), .D(reg3[1]), .S0(n199), 
        .S1(N12), .Y(n8) );
  MX4X1M U156 ( .A(\reg_file[4][0] ), .B(\reg_file[5][0] ), .C(
        \reg_file[6][0] ), .D(\reg_file[7][0] ), .S0(n200), .S1(N12), .Y(n3)
         );
  MX4X1M U157 ( .A(\reg_file[4][1] ), .B(\reg_file[5][1] ), .C(
        \reg_file[6][1] ), .D(\reg_file[7][1] ), .S0(n199), .S1(N12), .Y(n7)
         );
  MX4X1M U158 ( .A(\reg_file[4][2] ), .B(\reg_file[5][2] ), .C(
        \reg_file[6][2] ), .D(\reg_file[7][2] ), .S0(n199), .S1(n198), .Y(n11)
         );
  MX4X1M U159 ( .A(\reg_file[4][3] ), .B(\reg_file[5][3] ), .C(
        \reg_file[6][3] ), .D(\reg_file[7][3] ), .S0(n199), .S1(n198), .Y(n179) );
  MX4X1M U160 ( .A(\reg_file[4][4] ), .B(\reg_file[5][4] ), .C(
        \reg_file[6][4] ), .D(\reg_file[7][4] ), .S0(n199), .S1(n198), .Y(n183) );
  MX4X1M U161 ( .A(\reg_file[4][5] ), .B(\reg_file[5][5] ), .C(
        \reg_file[6][5] ), .D(\reg_file[7][5] ), .S0(N11), .S1(n198), .Y(n187)
         );
  MX4X1M U162 ( .A(\reg_file[4][6] ), .B(\reg_file[5][6] ), .C(
        \reg_file[6][6] ), .D(\reg_file[7][6] ), .S0(N11), .S1(N12), .Y(n191)
         );
  MX4X1M U163 ( .A(\reg_file[4][7] ), .B(\reg_file[5][7] ), .C(
        \reg_file[6][7] ), .D(\reg_file[7][7] ), .S0(N11), .S1(N12), .Y(n195)
         );
  MX4X1M U164 ( .A(\reg_file[12][0] ), .B(\reg_file[13][0] ), .C(
        \reg_file[14][0] ), .D(\reg_file[15][0] ), .S0(n200), .S1(N12), .Y(n1)
         );
  MX4X1M U165 ( .A(\reg_file[12][2] ), .B(\reg_file[13][2] ), .C(
        \reg_file[14][2] ), .D(\reg_file[15][2] ), .S0(n199), .S1(n198), .Y(n9) );
  MX4X1M U166 ( .A(\reg_file[12][3] ), .B(\reg_file[13][3] ), .C(
        \reg_file[14][3] ), .D(\reg_file[15][3] ), .S0(n199), .S1(n198), .Y(
        n177) );
  MX4X1M U167 ( .A(\reg_file[12][4] ), .B(\reg_file[13][4] ), .C(
        \reg_file[14][4] ), .D(\reg_file[15][4] ), .S0(n199), .S1(n198), .Y(
        n181) );
  MX4X1M U168 ( .A(\reg_file[12][5] ), .B(\reg_file[13][5] ), .C(
        \reg_file[14][5] ), .D(\reg_file[15][5] ), .S0(N11), .S1(n198), .Y(
        n185) );
  MX4X1M U169 ( .A(\reg_file[12][6] ), .B(\reg_file[13][6] ), .C(
        \reg_file[14][6] ), .D(\reg_file[15][6] ), .S0(N11), .S1(N12), .Y(n189) );
  MX4X1M U170 ( .A(\reg_file[12][7] ), .B(\reg_file[13][7] ), .C(
        \reg_file[14][7] ), .D(\reg_file[15][7] ), .S0(N11), .S1(N12), .Y(n193) );
  INVX2M U171 ( .A(N11), .Y(n201) );
  INVX2M U172 ( .A(N12), .Y(n202) );
  INVX2M U173 ( .A(wr_data[5]), .Y(n226) );
  OAI2BB2X1M U174 ( .B0(n220), .B1(n30), .A0N(\reg_file[7][0] ), .A1N(n30), 
        .Y(n113) );
  OAI2BB2X1M U175 ( .B0(n221), .B1(n30), .A0N(\reg_file[7][1] ), .A1N(n30), 
        .Y(n114) );
  OAI2BB2X1M U176 ( .B0(n222), .B1(n30), .A0N(\reg_file[7][2] ), .A1N(n30), 
        .Y(n115) );
  OAI2BB2X1M U177 ( .B0(n223), .B1(n30), .A0N(\reg_file[7][3] ), .A1N(n30), 
        .Y(n116) );
  OAI2BB2X1M U178 ( .B0(n227), .B1(n30), .A0N(\reg_file[7][4] ), .A1N(n30), 
        .Y(n117) );
  OAI2BB2X1M U179 ( .B0(n226), .B1(n30), .A0N(\reg_file[7][5] ), .A1N(n30), 
        .Y(n118) );
  OAI2BB2X1M U180 ( .B0(n225), .B1(n30), .A0N(\reg_file[7][6] ), .A1N(n30), 
        .Y(n119) );
  OAI2BB2X1M U181 ( .B0(n224), .B1(n30), .A0N(\reg_file[7][7] ), .A1N(n30), 
        .Y(n120) );
  OAI2BB2X1M U182 ( .B0(n220), .B1(n32), .A0N(\reg_file[6][0] ), .A1N(n32), 
        .Y(n121) );
  OAI2BB2X1M U183 ( .B0(n221), .B1(n32), .A0N(\reg_file[6][1] ), .A1N(n32), 
        .Y(n122) );
  OAI2BB2X1M U184 ( .B0(n222), .B1(n32), .A0N(\reg_file[6][2] ), .A1N(n32), 
        .Y(n123) );
  OAI2BB2X1M U185 ( .B0(n223), .B1(n32), .A0N(\reg_file[6][3] ), .A1N(n32), 
        .Y(n124) );
  OAI2BB2X1M U186 ( .B0(n227), .B1(n32), .A0N(\reg_file[6][4] ), .A1N(n32), 
        .Y(n125) );
  OAI2BB2X1M U187 ( .B0(n226), .B1(n32), .A0N(\reg_file[6][5] ), .A1N(n32), 
        .Y(n126) );
  OAI2BB2X1M U188 ( .B0(n225), .B1(n32), .A0N(\reg_file[6][6] ), .A1N(n32), 
        .Y(n127) );
  OAI2BB2X1M U189 ( .B0(n224), .B1(n32), .A0N(\reg_file[6][7] ), .A1N(n32), 
        .Y(n128) );
  OAI2BB2X1M U190 ( .B0(n220), .B1(n34), .A0N(\reg_file[5][0] ), .A1N(n34), 
        .Y(n129) );
  OAI2BB2X1M U191 ( .B0(n221), .B1(n34), .A0N(\reg_file[5][1] ), .A1N(n34), 
        .Y(n130) );
  OAI2BB2X1M U192 ( .B0(n222), .B1(n34), .A0N(\reg_file[5][2] ), .A1N(n34), 
        .Y(n131) );
  OAI2BB2X1M U193 ( .B0(n223), .B1(n34), .A0N(\reg_file[5][3] ), .A1N(n34), 
        .Y(n132) );
  OAI2BB2X1M U194 ( .B0(n227), .B1(n34), .A0N(\reg_file[5][4] ), .A1N(n34), 
        .Y(n133) );
  OAI2BB2X1M U195 ( .B0(n226), .B1(n34), .A0N(\reg_file[5][5] ), .A1N(n34), 
        .Y(n134) );
  OAI2BB2X1M U196 ( .B0(n225), .B1(n34), .A0N(\reg_file[5][6] ), .A1N(n34), 
        .Y(n135) );
  OAI2BB2X1M U197 ( .B0(n224), .B1(n34), .A0N(\reg_file[5][7] ), .A1N(n34), 
        .Y(n136) );
  OAI2BB2X1M U198 ( .B0(n220), .B1(n35), .A0N(\reg_file[4][0] ), .A1N(n35), 
        .Y(n137) );
  OAI2BB2X1M U199 ( .B0(n221), .B1(n35), .A0N(\reg_file[4][1] ), .A1N(n35), 
        .Y(n138) );
  OAI2BB2X1M U200 ( .B0(n222), .B1(n35), .A0N(\reg_file[4][2] ), .A1N(n35), 
        .Y(n139) );
  OAI2BB2X1M U201 ( .B0(n223), .B1(n35), .A0N(\reg_file[4][3] ), .A1N(n35), 
        .Y(n140) );
  OAI2BB2X1M U202 ( .B0(n227), .B1(n35), .A0N(\reg_file[4][4] ), .A1N(n35), 
        .Y(n141) );
  OAI2BB2X1M U203 ( .B0(n226), .B1(n35), .A0N(\reg_file[4][5] ), .A1N(n35), 
        .Y(n142) );
  OAI2BB2X1M U204 ( .B0(n225), .B1(n35), .A0N(\reg_file[4][6] ), .A1N(n35), 
        .Y(n143) );
  OAI2BB2X1M U205 ( .B0(n224), .B1(n35), .A0N(\reg_file[4][7] ), .A1N(n35), 
        .Y(n144) );
  OAI2BB2X1M U206 ( .B0(n220), .B1(n36), .A0N(reg3[0]), .A1N(n36), .Y(n145) );
  OAI2BB2X1M U207 ( .B0(n221), .B1(n36), .A0N(reg3[1]), .A1N(n36), .Y(n146) );
  OAI2BB2X1M U208 ( .B0(n222), .B1(n36), .A0N(reg3[2]), .A1N(n36), .Y(n147) );
  OAI2BB2X1M U209 ( .B0(n223), .B1(n36), .A0N(reg3[3]), .A1N(n36), .Y(n148) );
  OAI2BB2X1M U210 ( .B0(n227), .B1(n36), .A0N(reg3[4]), .A1N(n36), .Y(n149) );
  OAI2BB2X1M U211 ( .B0(n225), .B1(n36), .A0N(reg3[6]), .A1N(n36), .Y(n151) );
  OAI2BB2X1M U212 ( .B0(n224), .B1(n36), .A0N(reg3[7]), .A1N(n36), .Y(n152) );
  OAI2BB2X1M U213 ( .B0(n221), .B1(n37), .A0N(reg2[1]), .A1N(n37), .Y(n154) );
  OAI2BB2X1M U214 ( .B0(n222), .B1(n37), .A0N(reg2[2]), .A1N(n37), .Y(n155) );
  OAI2BB2X1M U215 ( .B0(n223), .B1(n37), .A0N(reg2[3]), .A1N(n37), .Y(n156) );
  OAI2BB2X1M U216 ( .B0(n227), .B1(n37), .A0N(reg2[4]), .A1N(n37), .Y(n157) );
  OAI2BB2X1M U217 ( .B0(n225), .B1(n37), .A0N(reg2[6]), .A1N(n37), .Y(n159) );
  OAI2BB2X1M U218 ( .B0(n224), .B1(n37), .A0N(reg2[7]), .A1N(n37), .Y(n160) );
  OAI2BB2X1M U219 ( .B0(n220), .B1(n38), .A0N(reg1[0]), .A1N(n38), .Y(n161) );
  OAI2BB2X1M U220 ( .B0(n221), .B1(n38), .A0N(reg1[1]), .A1N(n38), .Y(n162) );
  OAI2BB2X1M U221 ( .B0(n222), .B1(n38), .A0N(reg1[2]), .A1N(n38), .Y(n163) );
  OAI2BB2X1M U222 ( .B0(n223), .B1(n38), .A0N(reg1[3]), .A1N(n38), .Y(n164) );
  OAI2BB2X1M U223 ( .B0(n227), .B1(n38), .A0N(reg1[4]), .A1N(n38), .Y(n165) );
  OAI2BB2X1M U224 ( .B0(n226), .B1(n38), .A0N(reg1[5]), .A1N(n38), .Y(n166) );
  OAI2BB2X1M U225 ( .B0(n225), .B1(n38), .A0N(reg1[6]), .A1N(n38), .Y(n167) );
  OAI2BB2X1M U226 ( .B0(n224), .B1(n38), .A0N(reg1[7]), .A1N(n38), .Y(n168) );
  OAI2BB2X1M U227 ( .B0(n220), .B1(n40), .A0N(reg0[0]), .A1N(n40), .Y(n169) );
  OAI2BB2X1M U228 ( .B0(n221), .B1(n40), .A0N(reg0[1]), .A1N(n40), .Y(n170) );
  OAI2BB2X1M U229 ( .B0(n222), .B1(n40), .A0N(reg0[2]), .A1N(n40), .Y(n171) );
  OAI2BB2X1M U230 ( .B0(n223), .B1(n40), .A0N(reg0[3]), .A1N(n40), .Y(n172) );
  OAI2BB2X1M U231 ( .B0(n227), .B1(n40), .A0N(reg0[4]), .A1N(n40), .Y(n173) );
  OAI2BB2X1M U232 ( .B0(n226), .B1(n40), .A0N(reg0[5]), .A1N(n40), .Y(n174) );
  OAI2BB2X1M U233 ( .B0(n225), .B1(n40), .A0N(reg0[6]), .A1N(n40), .Y(n175) );
  OAI2BB2X1M U234 ( .B0(n224), .B1(n40), .A0N(reg0[7]), .A1N(n40), .Y(n176) );
  OAI2BB2X1M U235 ( .B0(n226), .B1(n36), .A0N(reg3[5]), .A1N(n36), .Y(n150) );
  OAI2BB2X1M U236 ( .B0(n220), .B1(n37), .A0N(reg2[0]), .A1N(n37), .Y(n153) );
  OAI2BB2X1M U237 ( .B0(n226), .B1(n37), .A0N(reg2[5]), .A1N(n37), .Y(n158) );
endmodule


module data_sampling_PRESCALE_WIDTH6_DATA_WIDTH8_FRAME_WIDTH11 ( clk, rst, 
        prescale, data_sampling_enable, rx_in, edge_count, sampled_bit );
  input [5:0] prescale;
  input [5:0] edge_count;
  input clk, rst, data_sampling_enable, rx_in;
  output sampled_bit;
  wire   N6, N7, N8, N9, N10, N12, N13, N14, N15, N16, N17, N18, N19, N20, n11,
         n13, n14, n16, n17, n18, n19, n20, n21, n22, \sub_26/carry[4] ,
         \sub_26/carry[3] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n12, n15,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40;
  wire   [2:0] sampled_bits;
  assign N6 = prescale[1];

  DFFSQX2M \sampled_bits_reg[2]  ( .D(n22), .CK(clk), .SN(rst), .Q(
        sampled_bits[2]) );
  DFFSQX2M \sampled_bits_reg[0]  ( .D(n20), .CK(clk), .SN(rst), .Q(
        sampled_bits[0]) );
  DFFSQX2M \sampled_bits_reg[1]  ( .D(n21), .CK(clk), .SN(rst), .Q(
        sampled_bits[1]) );
  DFFSQX2M sampled_bit_reg ( .D(n19), .CK(clk), .SN(rst), .Q(sampled_bit) );
  NOR2X2M U3 ( .A(prescale[5]), .B(\sub_26/carry[4] ), .Y(n1) );
  NOR2X2M U4 ( .A(n39), .B(N12), .Y(n17) );
  INVX2M U5 ( .A(data_sampling_enable), .Y(n39) );
  INVX2M U6 ( .A(rx_in), .Y(n40) );
  OAI2BB2X1M U7 ( .B0(n14), .B1(n40), .A0N(n14), .A1N(sampled_bits[0]), .Y(n20) );
  NAND2X2M U8 ( .A(N12), .B(data_sampling_enable), .Y(n14) );
  OAI2BB2X1M U9 ( .B0(n40), .B1(n16), .A0N(n16), .A1N(sampled_bits[1]), .Y(n21) );
  NAND2X2M U10 ( .A(N19), .B(n17), .Y(n16) );
  OAI2BB2X1M U11 ( .B0(n40), .B1(n18), .A0N(n18), .A1N(sampled_bits[2]), .Y(
        n22) );
  NAND3BX2M U12 ( .AN(N19), .B(n17), .C(N20), .Y(n18) );
  OAI2BB2X1M U13 ( .B0(n11), .B1(n39), .A0N(sampled_bit), .A1N(n39), .Y(n19)
         );
  AOI21X2M U14 ( .A0(sampled_bits[1]), .A1(sampled_bits[0]), .B0(n13), .Y(n11)
         );
  OA21X2M U15 ( .A0(sampled_bits[1]), .A1(sampled_bits[0]), .B0(
        sampled_bits[2]), .Y(n13) );
  OR2X2M U16 ( .A(prescale[2]), .B(N6), .Y(n2) );
  INVX2M U17 ( .A(prescale[2]), .Y(N7) );
  XNOR2X1M U18 ( .A(\sub_26/carry[4] ), .B(prescale[5]), .Y(N10) );
  OR2X1M U19 ( .A(prescale[4]), .B(\sub_26/carry[3] ), .Y(\sub_26/carry[4] )
         );
  XNOR2X1M U20 ( .A(\sub_26/carry[3] ), .B(prescale[4]), .Y(N9) );
  OR2X1M U21 ( .A(prescale[3]), .B(prescale[2]), .Y(\sub_26/carry[3] ) );
  XNOR2X1M U22 ( .A(prescale[2]), .B(prescale[3]), .Y(N8) );
  CLKINVX1M U23 ( .A(N6), .Y(N13) );
  OAI2BB1X1M U24 ( .A0N(N6), .A1N(prescale[2]), .B0(n2), .Y(N14) );
  OR2X1M U25 ( .A(n2), .B(prescale[3]), .Y(n3) );
  OAI2BB1X1M U26 ( .A0N(n2), .A1N(prescale[3]), .B0(n3), .Y(N15) );
  XNOR2X1M U27 ( .A(prescale[4]), .B(n3), .Y(N16) );
  NOR3X1M U28 ( .A(prescale[4]), .B(prescale[5]), .C(n3), .Y(N18) );
  OAI21X1M U29 ( .A0(prescale[4]), .A1(n3), .B0(prescale[5]), .Y(n4) );
  NAND2BX1M U30 ( .AN(N18), .B(n4), .Y(N17) );
  NOR2BX1M U31 ( .AN(edge_count[0]), .B(N6), .Y(n5) );
  OAI2B2X1M U32 ( .A1N(N7), .A0(n5), .B0(edge_count[1]), .B1(n5), .Y(n8) );
  NOR2BX1M U33 ( .AN(N6), .B(edge_count[0]), .Y(n6) );
  OAI2B2X1M U34 ( .A1N(edge_count[1]), .A0(n6), .B0(N7), .B1(n6), .Y(n7) );
  NAND4BBX1M U35 ( .AN(n1), .BN(edge_count[5]), .C(n8), .D(n7), .Y(n15) );
  CLKXOR2X2M U36 ( .A(N10), .B(edge_count[4]), .Y(n12) );
  CLKXOR2X2M U37 ( .A(N8), .B(edge_count[2]), .Y(n10) );
  CLKXOR2X2M U38 ( .A(N9), .B(edge_count[3]), .Y(n9) );
  NOR4X1M U39 ( .A(n15), .B(n12), .C(n10), .D(n9), .Y(N12) );
  NOR2BX1M U40 ( .AN(edge_count[0]), .B(N13), .Y(n23) );
  OAI2B2X1M U41 ( .A1N(N14), .A0(n23), .B0(edge_count[1]), .B1(n23), .Y(n26)
         );
  NOR2BX1M U42 ( .AN(N13), .B(edge_count[0]), .Y(n24) );
  OAI2B2X1M U43 ( .A1N(edge_count[1]), .A0(n24), .B0(N14), .B1(n24), .Y(n25)
         );
  NAND4BBX1M U44 ( .AN(N18), .BN(edge_count[5]), .C(n26), .D(n25), .Y(n30) );
  CLKXOR2X2M U45 ( .A(N17), .B(edge_count[4]), .Y(n29) );
  CLKXOR2X2M U46 ( .A(N15), .B(edge_count[2]), .Y(n28) );
  CLKXOR2X2M U47 ( .A(N16), .B(edge_count[3]), .Y(n27) );
  NOR4X1M U48 ( .A(n30), .B(n29), .C(n28), .D(n27), .Y(N19) );
  NOR2BX1M U49 ( .AN(edge_count[0]), .B(N6), .Y(n31) );
  OAI2B2X1M U50 ( .A1N(prescale[2]), .A0(n31), .B0(edge_count[1]), .B1(n31), 
        .Y(n34) );
  NOR2BX1M U51 ( .AN(N6), .B(edge_count[0]), .Y(n32) );
  OAI2B2X1M U52 ( .A1N(edge_count[1]), .A0(n32), .B0(prescale[2]), .B1(n32), 
        .Y(n33) );
  NAND3BX1M U53 ( .AN(edge_count[5]), .B(n34), .C(n33), .Y(n38) );
  CLKXOR2X2M U54 ( .A(prescale[5]), .B(edge_count[4]), .Y(n37) );
  CLKXOR2X2M U55 ( .A(prescale[3]), .B(edge_count[2]), .Y(n36) );
  CLKXOR2X2M U56 ( .A(prescale[4]), .B(edge_count[3]), .Y(n35) );
  NOR4X1M U57 ( .A(n38), .B(n37), .C(n36), .D(n35), .Y(N20) );
endmodule


module deserializer_DATA_WIDTH8 ( clk, rst, sampled_bit, deserializer_enable, 
        p_data );
  output [7:0] p_data;
  input clk, rst, sampled_bit, deserializer_enable;
  wire   n2, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n1, n3, n4, n5, n6;
  wire   [3:0] bit_count;
  wire   [7:0] p_data_reg;

  DFFRQX2M \p_data_reg_reg[7]  ( .D(n25), .CK(clk), .RN(rst), .Q(p_data_reg[7]) );
  DFFRQX2M \p_data_reg_reg[6]  ( .D(n27), .CK(clk), .RN(rst), .Q(p_data_reg[6]) );
  DFFRQX2M \p_data_reg_reg[5]  ( .D(n29), .CK(clk), .RN(rst), .Q(p_data_reg[5]) );
  DFFRQX2M \p_data_reg_reg[4]  ( .D(n31), .CK(clk), .RN(rst), .Q(p_data_reg[4]) );
  DFFRQX2M \p_data_reg_reg[3]  ( .D(n33), .CK(clk), .RN(rst), .Q(p_data_reg[3]) );
  DFFRQX2M \p_data_reg_reg[2]  ( .D(n35), .CK(clk), .RN(rst), .Q(p_data_reg[2]) );
  DFFRQX2M \p_data_reg_reg[1]  ( .D(n37), .CK(clk), .RN(rst), .Q(p_data_reg[1]) );
  DFFRQX2M \p_data_reg_reg[0]  ( .D(n39), .CK(clk), .RN(rst), .Q(p_data_reg[0]) );
  DFFRQX2M \p_data_reg[5]_inst  ( .D(n28), .CK(clk), .RN(rst), .Q(p_data[5])
         );
  DFFRQX2M \p_data_reg[1]_inst  ( .D(n36), .CK(clk), .RN(rst), .Q(p_data[1])
         );
  DFFRQX2M \p_data_reg[4]_inst  ( .D(n30), .CK(clk), .RN(rst), .Q(p_data[4])
         );
  DFFRQX2M \p_data_reg[0]_inst  ( .D(n38), .CK(clk), .RN(rst), .Q(p_data[0])
         );
  DFFRQX2M \p_data_reg[7]_inst  ( .D(n24), .CK(clk), .RN(rst), .Q(p_data[7])
         );
  DFFRQX2M \p_data_reg[3]_inst  ( .D(n32), .CK(clk), .RN(rst), .Q(p_data[3])
         );
  DFFRQX2M \p_data_reg[6]_inst  ( .D(n26), .CK(clk), .RN(rst), .Q(p_data[6])
         );
  DFFRQX2M \p_data_reg[2]_inst  ( .D(n34), .CK(clk), .RN(rst), .Q(p_data[2])
         );
  DFFRQX2M \bit_count_reg[2]  ( .D(n40), .CK(clk), .RN(rst), .Q(bit_count[2])
         );
  DFFRX1M \bit_count_reg[3]  ( .D(n42), .CK(clk), .RN(rst), .QN(n2) );
  DFFRQX2M \bit_count_reg[1]  ( .D(n41), .CK(clk), .RN(rst), .Q(bit_count[1])
         );
  DFFRQX2M \bit_count_reg[0]  ( .D(n43), .CK(clk), .RN(rst), .Q(bit_count[0])
         );
  NOR4X1M U3 ( .A(n2), .B(bit_count[0]), .C(bit_count[1]), .D(bit_count[2]), 
        .Y(n22) );
  INVX2M U4 ( .A(n23), .Y(n1) );
  NOR2X2M U5 ( .A(n5), .B(n13), .Y(n9) );
  AOI2B1X1M U6 ( .A1N(n22), .A0(n3), .B0(n1), .Y(n21) );
  NAND2X2M U7 ( .A(deserializer_enable), .B(n22), .Y(n7) );
  NAND2X2M U8 ( .A(n7), .B(n13), .Y(n23) );
  OAI32X1M U9 ( .A0(n1), .A1(bit_count[0]), .A2(n22), .B0(n3), .B1(n23), .Y(
        n43) );
  OAI32X1M U10 ( .A0(n19), .A1(bit_count[2]), .A2(n4), .B0(n20), .B1(n5), .Y(
        n40) );
  OAI32X1M U11 ( .A0(n19), .A1(n5), .A2(n4), .B0(n20), .B1(n2), .Y(n42) );
  NOR2X2M U12 ( .A(n13), .B(bit_count[2]), .Y(n15) );
  OAI22X1M U13 ( .A0(n21), .A1(n4), .B0(bit_count[1]), .B1(n19), .Y(n41) );
  NAND2X2M U14 ( .A(deserializer_enable), .B(n2), .Y(n13) );
  NAND2X2M U15 ( .A(bit_count[0]), .B(n23), .Y(n19) );
  OAI2BB2X1M U16 ( .B0(n6), .B1(n17), .A0N(n17), .A1N(p_data_reg[1]), .Y(n37)
         );
  NAND3X2M U17 ( .A(bit_count[0]), .B(n4), .C(n15), .Y(n17) );
  OAI2BB2X1M U18 ( .B0(n6), .B1(n18), .A0N(n18), .A1N(p_data_reg[0]), .Y(n39)
         );
  NAND3X2M U19 ( .A(n3), .B(n4), .C(n15), .Y(n18) );
  OAI2BB2X1M U20 ( .B0(n6), .B1(n12), .A0N(n12), .A1N(p_data_reg[4]), .Y(n31)
         );
  NAND3X2M U21 ( .A(n3), .B(n4), .C(n9), .Y(n12) );
  OAI2BB2X1M U22 ( .B0(n6), .B1(n16), .A0N(n16), .A1N(p_data_reg[2]), .Y(n35)
         );
  NAND3X2M U23 ( .A(bit_count[1]), .B(n3), .C(n15), .Y(n16) );
  OAI2BB2X1M U24 ( .B0(n6), .B1(n14), .A0N(n14), .A1N(p_data_reg[3]), .Y(n33)
         );
  NAND3X2M U25 ( .A(bit_count[1]), .B(bit_count[0]), .C(n15), .Y(n14) );
  OAI2BB2X1M U26 ( .B0(n6), .B1(n11), .A0N(n11), .A1N(p_data_reg[5]), .Y(n29)
         );
  NAND3X2M U27 ( .A(n9), .B(n4), .C(bit_count[0]), .Y(n11) );
  OAI2BB2X1M U28 ( .B0(n6), .B1(n10), .A0N(n10), .A1N(p_data_reg[6]), .Y(n27)
         );
  NAND3X2M U29 ( .A(n9), .B(n3), .C(bit_count[1]), .Y(n10) );
  OAI2BB2X1M U30 ( .B0(n8), .B1(n6), .A0N(n8), .A1N(p_data_reg[7]), .Y(n25) );
  NAND3X2M U31 ( .A(bit_count[0]), .B(n9), .C(bit_count[1]), .Y(n8) );
  OA21X2M U32 ( .A0(bit_count[1]), .A1(n22), .B0(n21), .Y(n20) );
  AO2B2X2M U33 ( .B0(p_data[0]), .B1(n7), .A0(p_data_reg[0]), .A1N(n7), .Y(n38) );
  AO2B2X2M U34 ( .B0(p_data[1]), .B1(n7), .A0(p_data_reg[1]), .A1N(n7), .Y(n36) );
  AO2B2X2M U35 ( .B0(p_data[2]), .B1(n7), .A0(p_data_reg[2]), .A1N(n7), .Y(n34) );
  AO2B2X2M U36 ( .B0(p_data[3]), .B1(n7), .A0(p_data_reg[3]), .A1N(n7), .Y(n32) );
  AO2B2X2M U37 ( .B0(p_data[4]), .B1(n7), .A0(p_data_reg[4]), .A1N(n7), .Y(n30) );
  AO2B2X2M U38 ( .B0(p_data[5]), .B1(n7), .A0(p_data_reg[5]), .A1N(n7), .Y(n28) );
  AO2B2X2M U39 ( .B0(p_data[6]), .B1(n7), .A0(p_data_reg[6]), .A1N(n7), .Y(n26) );
  AO2B2X2M U40 ( .B0(p_data[7]), .B1(n7), .A0(p_data_reg[7]), .A1N(n7), .Y(n24) );
  INVX2M U41 ( .A(bit_count[1]), .Y(n4) );
  INVX2M U42 ( .A(bit_count[0]), .Y(n3) );
  INVX2M U43 ( .A(bit_count[2]), .Y(n5) );
  INVX2M U44 ( .A(sampled_bit), .Y(n6) );
endmodule


module edge_bit_counter_PRESCALE_WIDTH6_DATA_WIDTH8_FRAME_WIDTH11 ( clk, rst, 
        edge_counter_enable, prescale, bit_count, edge_count );
  input [5:0] prescale;
  output [3:0] bit_count;
  output [5:0] edge_count;
  input clk, rst, edge_counter_enable;
  wire   N8, N9, N10, N11, N12, N13, N14, N15, N28, N29, N30, N31, N32, N33,
         N45, N46, N47, N48, N49, N50, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, \add_34/carry[5] , \add_34/carry[4] ,
         \add_34/carry[3] , \add_34/carry[2] , n1, n2, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n25, n26, n27, n28, n29, n30, n31;

  DFFRQX2M \bit_count_reg[3]  ( .D(n24), .CK(clk), .RN(rst), .Q(bit_count[3])
         );
  DFFRQX2M \bit_count_reg[1]  ( .D(n22), .CK(clk), .RN(rst), .Q(bit_count[1])
         );
  DFFRQX2M \bit_count_reg[2]  ( .D(n21), .CK(clk), .RN(rst), .Q(bit_count[2])
         );
  DFFRQX2M \bit_count_reg[0]  ( .D(n23), .CK(clk), .RN(rst), .Q(bit_count[0])
         );
  DFFRQX2M \edge_count_reg[5]  ( .D(N50), .CK(clk), .RN(rst), .Q(edge_count[5]) );
  DFFRQX2M \edge_count_reg[0]  ( .D(N45), .CK(clk), .RN(rst), .Q(edge_count[0]) );
  DFFRQX2M \edge_count_reg[4]  ( .D(N49), .CK(clk), .RN(rst), .Q(edge_count[4]) );
  DFFRQX2M \edge_count_reg[3]  ( .D(N48), .CK(clk), .RN(rst), .Q(edge_count[3]) );
  DFFRQX2M \edge_count_reg[2]  ( .D(N47), .CK(clk), .RN(rst), .Q(edge_count[2]) );
  DFFRQX2M \edge_count_reg[1]  ( .D(N46), .CK(clk), .RN(rst), .Q(edge_count[1]) );
  INVX2M U3 ( .A(n18), .Y(n26) );
  INVX2M U4 ( .A(edge_counter_enable), .Y(n27) );
  NOR2X2M U5 ( .A(n27), .B(N15), .Y(n18) );
  AND2X2M U6 ( .A(N29), .B(n18), .Y(N46) );
  AND2X2M U7 ( .A(N30), .B(n18), .Y(N47) );
  AND2X2M U8 ( .A(N31), .B(n18), .Y(N48) );
  AND2X2M U9 ( .A(N32), .B(n18), .Y(N49) );
  NOR2X2M U10 ( .A(n30), .B(n29), .Y(n14) );
  OAI32X1M U11 ( .A0(n16), .A1(bit_count[0]), .A2(n18), .B0(n26), .B1(n29), 
        .Y(n23) );
  OAI32X1M U12 ( .A0(n27), .A1(bit_count[3]), .A2(n13), .B0(n26), .B1(n31), 
        .Y(n21) );
  AOI32X1M U13 ( .A0(n14), .A1(n31), .A2(N15), .B0(bit_count[2]), .B1(n28), 
        .Y(n13) );
  INVX2M U14 ( .A(bit_count[2]), .Y(n31) );
  INVX2M U15 ( .A(n14), .Y(n28) );
  OAI32X1M U16 ( .A0(n15), .A1(n29), .A2(n16), .B0(n17), .B1(n30), .Y(n22) );
  AOI2BB1X2M U17 ( .A0N(n16), .A1N(bit_count[0]), .B0(n18), .Y(n17) );
  NAND2X2M U18 ( .A(n26), .B(n30), .Y(n15) );
  NAND2X2M U19 ( .A(edge_counter_enable), .B(n20), .Y(n16) );
  OAI21X2M U20 ( .A0(bit_count[2]), .A1(bit_count[1]), .B0(bit_count[3]), .Y(
        n20) );
  OAI2BB2X1M U21 ( .B0(n19), .B1(n16), .A0N(n18), .A1N(bit_count[3]), .Y(n24)
         );
  AOI31X2M U22 ( .A0(bit_count[2]), .A1(n26), .A2(n14), .B0(bit_count[3]), .Y(
        n19) );
  AND2X2M U23 ( .A(N33), .B(n18), .Y(N50) );
  AND2X2M U24 ( .A(N28), .B(n18), .Y(N45) );
  INVX2M U25 ( .A(bit_count[1]), .Y(n30) );
  INVX2M U26 ( .A(bit_count[0]), .Y(n29) );
  ADDHX1M U27 ( .A(edge_count[1]), .B(edge_count[0]), .CO(\add_34/carry[2] ), 
        .S(N29) );
  ADDHX1M U28 ( .A(edge_count[2]), .B(\add_34/carry[2] ), .CO(
        \add_34/carry[3] ), .S(N30) );
  ADDHX1M U29 ( .A(edge_count[3]), .B(\add_34/carry[3] ), .CO(
        \add_34/carry[4] ), .S(N31) );
  ADDHX1M U30 ( .A(edge_count[4]), .B(\add_34/carry[4] ), .CO(
        \add_34/carry[5] ), .S(N32) );
  OR2X2M U31 ( .A(prescale[1]), .B(prescale[0]), .Y(n1) );
  CLKINVX1M U32 ( .A(prescale[0]), .Y(N8) );
  OAI2BB1X1M U33 ( .A0N(prescale[0]), .A1N(prescale[1]), .B0(n1), .Y(N9) );
  OR2X1M U34 ( .A(n1), .B(prescale[2]), .Y(n2) );
  OAI2BB1X1M U35 ( .A0N(n1), .A1N(prescale[2]), .B0(n2), .Y(N10) );
  OR2X1M U36 ( .A(n2), .B(prescale[3]), .Y(n3) );
  OAI2BB1X1M U37 ( .A0N(n2), .A1N(prescale[3]), .B0(n3), .Y(N11) );
  OR2X1M U38 ( .A(n3), .B(prescale[4]), .Y(n4) );
  OAI2BB1X1M U39 ( .A0N(n3), .A1N(prescale[4]), .B0(n4), .Y(N12) );
  NOR2X1M U40 ( .A(n4), .B(prescale[5]), .Y(N14) );
  AO21XLM U41 ( .A0(n4), .A1(prescale[5]), .B0(N14), .Y(N13) );
  CLKINVX1M U42 ( .A(edge_count[0]), .Y(N28) );
  CLKXOR2X2M U43 ( .A(\add_34/carry[5] ), .B(edge_count[5]), .Y(N33) );
  NOR2BX1M U44 ( .AN(N8), .B(edge_count[0]), .Y(n5) );
  OAI2B2X1M U45 ( .A1N(edge_count[1]), .A0(n5), .B0(N9), .B1(n5), .Y(n9) );
  XNOR2X1M U46 ( .A(N13), .B(edge_count[5]), .Y(n8) );
  NOR2BX1M U47 ( .AN(edge_count[0]), .B(N8), .Y(n6) );
  OAI2B2X1M U48 ( .A1N(N9), .A0(n6), .B0(edge_count[1]), .B1(n6), .Y(n7) );
  NAND4BX1M U49 ( .AN(N14), .B(n9), .C(n8), .D(n7), .Y(n25) );
  CLKXOR2X2M U50 ( .A(N12), .B(edge_count[4]), .Y(n12) );
  CLKXOR2X2M U51 ( .A(N10), .B(edge_count[2]), .Y(n11) );
  CLKXOR2X2M U52 ( .A(N11), .B(edge_count[3]), .Y(n10) );
  NOR4X1M U53 ( .A(n25), .B(n12), .C(n11), .D(n10), .Y(N15) );
endmodule


module parity_check_DATA_WIDTH8 ( p_data, parity_check_enable, parity_type, 
        clk, rst, sampled_bit, parity_error );
  input [7:0] p_data;
  input parity_check_enable, parity_type, clk, rst, sampled_bit;
  output parity_error;
  wire   n1, n3, n4, n5, n6, n7, n8, n2;

  DFFRQX2M parity_error_reg ( .D(n8), .CK(clk), .RN(rst), .Q(parity_error) );
  OAI2BB2X1M U2 ( .B0(n1), .B1(n2), .A0N(parity_error), .A1N(n2), .Y(n8) );
  XOR3XLM U3 ( .A(n3), .B(n4), .C(n5), .Y(n1) );
  INVX2M U4 ( .A(parity_check_enable), .Y(n2) );
  XNOR2X2M U5 ( .A(sampled_bit), .B(parity_type), .Y(n5) );
  XOR3XLM U6 ( .A(p_data[5]), .B(p_data[4]), .C(n6), .Y(n4) );
  XNOR2X2M U7 ( .A(p_data[7]), .B(p_data[6]), .Y(n6) );
  XOR3XLM U8 ( .A(p_data[1]), .B(p_data[0]), .C(n7), .Y(n3) );
  XNOR2X2M U9 ( .A(p_data[3]), .B(p_data[2]), .Y(n7) );
endmodule


module start_check ( start_check_enable, clk, rst, sampled_bit, start_glitch
 );
  input start_check_enable, clk, rst, sampled_bit;
  output start_glitch;
  wire   n1;

  DFFRQX2M start_glitch_reg ( .D(n1), .CK(clk), .RN(rst), .Q(start_glitch) );
  AO2B2X2M U2 ( .B0(start_check_enable), .B1(sampled_bit), .A0(start_glitch), 
        .A1N(start_check_enable), .Y(n1) );
endmodule


module stop_check ( stop_check_enable, clk, rst, sampled_bit, stop_error );
  input stop_check_enable, clk, rst, sampled_bit;
  output stop_error;
  wire   n2, n1;

  DFFRQX2M stop_error_reg ( .D(n2), .CK(clk), .RN(rst), .Q(stop_error) );
  OAI2BB2X1M U2 ( .B0(sampled_bit), .B1(n1), .A0N(stop_error), .A1N(n1), .Y(n2) );
  INVX2M U3 ( .A(stop_check_enable), .Y(n1) );
endmodule


module FSM_DATA_WIDTH8_PRESCALE_WIDTH6_FRAME_WIDTH11 ( clk, rst, parity_enable, 
        rx_in, bit_count, edge_count, parity_error, stop_error, start_glitch, 
        prescale, parity_check_enable, edge_bit_counter_enable, 
        data_sampling_enable, start_check_enable, stop_check_enable, 
        deserializer_enable, data_valid );
  input [3:0] bit_count;
  input [5:0] edge_count;
  input [5:0] prescale;
  input clk, rst, parity_enable, rx_in, parity_error, stop_error, start_glitch;
  output parity_check_enable, edge_bit_counter_enable, data_sampling_enable,
         start_check_enable, stop_check_enable, deserializer_enable,
         data_valid;
  wire   N143, N144, N145, N146, N147, N148, N159, N160, N161, N163, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, \r116/EQ ,
         \r116/B[0] , \r116/B[1] , \r116/B[2] , \r116/B[3] , \r116/B[4] ,
         \r116/B[5] , \r116/B[9] , \r119/carry[4] , \r119/carry[3] ,
         \r117/carry[4] , \r117/carry[3] , n1, n2, n3, n4, n5, n6, n7, n8, n9,
         n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42;
  wire   [2:0] current_state;
  assign N143 = prescale[1];

  DFFRQX2M \current_state_reg[2]  ( .D(n76), .CK(clk), .RN(rst), .Q(
        current_state[2]) );
  DFFRQX2M \current_state_reg[1]  ( .D(n75), .CK(clk), .RN(rst), .Q(
        current_state[1]) );
  DFFRQX2M \current_state_reg[0]  ( .D(n77), .CK(clk), .RN(rst), .Q(
        current_state[0]) );
  NOR2X2M U3 ( .A(prescale[5]), .B(\r119/carry[4] ), .Y(n1) );
  NOR3X2M U4 ( .A(n39), .B(current_state[2]), .C(n34), .Y(n58) );
  NOR2X2M U5 ( .A(n36), .B(rx_in), .Y(n69) );
  OAI211X2M U6 ( .A0(n38), .A1(n73), .B0(n52), .C0(n74), .Y(
        edge_bit_counter_enable) );
  NAND2X2M U7 ( .A(n34), .B(n40), .Y(n73) );
  INVX2M U8 ( .A(\r116/EQ ), .Y(n40) );
  OAI21BX1M U9 ( .A0(n62), .A1(n33), .B0N(n56), .Y(n68) );
  OAI21BX1M U10 ( .A0(n54), .A1(n39), .B0N(n55), .Y(n75) );
  NOR3X2M U11 ( .A(n56), .B(n57), .C(n58), .Y(n54) );
  NOR3X2M U12 ( .A(n42), .B(n2), .C(n37), .Y(parity_check_enable) );
  INVX2M U13 ( .A(n57), .Y(n37) );
  INVX2M U14 ( .A(n58), .Y(n33) );
  INVX2M U15 ( .A(n65), .Y(n36) );
  OAI211X2M U16 ( .A0(current_state[0]), .A1(n38), .B0(n35), .C0(n74), .Y(
        data_sampling_enable) );
  INVX2M U17 ( .A(n69), .Y(n35) );
  AOI32X1M U18 ( .A0(n64), .A1(n38), .A2(n65), .B0(n66), .B1(n67), .Y(n77) );
  AOI21X2M U19 ( .A0(n65), .A1(n38), .B0(n55), .Y(n67) );
  OR2X2M U20 ( .A(start_glitch), .B(rx_in), .Y(n64) );
  AOI22X1M U21 ( .A0(current_state[0]), .A1(n68), .B0(n69), .B1(\r116/EQ ), 
        .Y(n66) );
  NOR3BX2M U22 ( .AN(n72), .B(bit_count[0]), .C(bit_count[1]), .Y(n62) );
  NOR3BX2M U23 ( .AN(bit_count[3]), .B(bit_count[2]), .C(n40), .Y(n72) );
  OAI22X1M U24 ( .A0(\r116/EQ ), .A1(n53), .B0(n70), .B1(n52), .Y(n56) );
  AOI21X2M U25 ( .A0(n60), .A1(n42), .B0(n71), .Y(n70) );
  AOI31X2M U26 ( .A0(n72), .A1(n41), .A2(bit_count[1]), .B0(n42), .Y(n71) );
  INVX2M U27 ( .A(bit_count[0]), .Y(n41) );
  NOR3X2M U28 ( .A(n53), .B(start_glitch), .C(n40), .Y(n55) );
  NAND3BX2M U29 ( .AN(bit_count[1]), .B(n72), .C(bit_count[0]), .Y(n60) );
  OAI2B1X2M U30 ( .A1N(n59), .A0(n60), .B0(n61), .Y(n76) );
  AOI32X1M U31 ( .A0(n58), .A1(n42), .A2(n62), .B0(current_state[2]), .B1(n63), 
        .Y(n61) );
  OAI21XLM U32 ( .A0(\r116/EQ ), .A1(n36), .B0(n52), .Y(n63) );
  NOR3X2M U33 ( .A(current_state[0]), .B(current_state[2]), .C(n39), .Y(n57)
         );
  OAI2BB2X1M U34 ( .B0(n2), .B1(n33), .A0N(N163), .A1N(n59), .Y(
        deserializer_enable) );
  OR4X1M U35 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n2) );
  OAI21X2M U36 ( .A0(parity_enable), .A1(n52), .B0(n37), .Y(n59) );
  NOR2X2M U37 ( .A(n52), .B(n2), .Y(stop_check_enable) );
  INVX2M U38 ( .A(current_state[0]), .Y(n34) );
  INVX2M U39 ( .A(current_state[1]), .Y(n39) );
  NOR2X2M U40 ( .A(n2), .B(n53), .Y(start_check_enable) );
  AOI21X2M U41 ( .A0(n38), .A1(current_state[0]), .B0(n57), .Y(n74) );
  NOR2X2M U42 ( .A(current_state[0]), .B(current_state[1]), .Y(n65) );
  NAND3X2M U43 ( .A(current_state[1]), .B(n34), .C(current_state[2]), .Y(n52)
         );
  INVX2M U44 ( .A(current_state[2]), .Y(n38) );
  NAND3X2M U45 ( .A(n39), .B(n38), .C(current_state[0]), .Y(n53) );
  NOR4X1M U46 ( .A(stop_error), .B(parity_error), .C(n38), .D(n36), .Y(
        data_valid) );
  OR2X2M U47 ( .A(N143), .B(prescale[0]), .Y(n3) );
  INVX2M U48 ( .A(parity_enable), .Y(n42) );
  INVX2M U49 ( .A(prescale[2]), .Y(N144) );
  XNOR2X1M U50 ( .A(\r119/carry[4] ), .B(prescale[5]), .Y(N161) );
  OR2X1M U51 ( .A(prescale[4]), .B(\r119/carry[3] ), .Y(\r119/carry[4] ) );
  XNOR2X1M U52 ( .A(\r119/carry[3] ), .B(prescale[4]), .Y(N160) );
  OR2X1M U53 ( .A(prescale[3]), .B(prescale[2]), .Y(\r119/carry[3] ) );
  XNOR2X1M U54 ( .A(prescale[2]), .B(prescale[3]), .Y(N159) );
  AND2X1M U55 ( .A(\r117/carry[4] ), .B(prescale[5]), .Y(N148) );
  CLKXOR2X2M U56 ( .A(prescale[5]), .B(\r117/carry[4] ), .Y(N147) );
  AND2X1M U57 ( .A(\r117/carry[3] ), .B(prescale[4]), .Y(\r117/carry[4] ) );
  CLKXOR2X2M U58 ( .A(prescale[4]), .B(\r117/carry[3] ), .Y(N146) );
  AND2X1M U59 ( .A(prescale[2]), .B(prescale[3]), .Y(\r117/carry[3] ) );
  CLKXOR2X2M U60 ( .A(prescale[3]), .B(prescale[2]), .Y(N145) );
  CLKINVX1M U61 ( .A(prescale[0]), .Y(\r116/B[0] ) );
  OAI2BB1X1M U62 ( .A0N(prescale[0]), .A1N(N143), .B0(n3), .Y(\r116/B[1] ) );
  OR2X1M U63 ( .A(n3), .B(prescale[2]), .Y(n4) );
  OAI2BB1X1M U64 ( .A0N(n3), .A1N(prescale[2]), .B0(n4), .Y(\r116/B[2] ) );
  OR2X1M U65 ( .A(n4), .B(prescale[3]), .Y(n5) );
  OAI2BB1X1M U66 ( .A0N(n4), .A1N(prescale[3]), .B0(n5), .Y(\r116/B[3] ) );
  OR2X1M U67 ( .A(n5), .B(prescale[4]), .Y(n6) );
  OAI2BB1X1M U68 ( .A0N(n5), .A1N(prescale[4]), .B0(n6), .Y(\r116/B[4] ) );
  NOR2X1M U69 ( .A(n6), .B(prescale[5]), .Y(\r116/B[9] ) );
  AO21XLM U70 ( .A0(n6), .A1(prescale[5]), .B0(\r116/B[9] ), .Y(\r116/B[5] )
         );
  NOR2BX1M U71 ( .AN(\r116/B[0] ), .B(edge_count[0]), .Y(n7) );
  OAI2B2X1M U72 ( .A1N(edge_count[1]), .A0(n7), .B0(\r116/B[1] ), .B1(n7), .Y(
        n11) );
  XNOR2X1M U73 ( .A(\r116/B[5] ), .B(edge_count[5]), .Y(n10) );
  NOR2BX1M U74 ( .AN(edge_count[0]), .B(\r116/B[0] ), .Y(n8) );
  OAI2B2X1M U75 ( .A1N(\r116/B[1] ), .A0(n8), .B0(edge_count[1]), .B1(n8), .Y(
        n9) );
  NAND4BX1M U76 ( .AN(\r116/B[9] ), .B(n11), .C(n10), .D(n9), .Y(n15) );
  CLKXOR2X2M U77 ( .A(\r116/B[4] ), .B(edge_count[4]), .Y(n14) );
  CLKXOR2X2M U78 ( .A(\r116/B[2] ), .B(edge_count[2]), .Y(n13) );
  CLKXOR2X2M U79 ( .A(\r116/B[3] ), .B(edge_count[3]), .Y(n12) );
  NOR4X1M U80 ( .A(n15), .B(n14), .C(n13), .D(n12), .Y(\r116/EQ ) );
  NOR2BX1M U81 ( .AN(edge_count[0]), .B(N143), .Y(n16) );
  OAI2B2X1M U82 ( .A1N(N144), .A0(n16), .B0(edge_count[1]), .B1(n16), .Y(n20)
         );
  NOR2BX1M U83 ( .AN(N143), .B(edge_count[0]), .Y(n17) );
  OAI2B2X1M U84 ( .A1N(edge_count[1]), .A0(n17), .B0(N144), .B1(n17), .Y(n19)
         );
  XNOR2X1M U85 ( .A(N148), .B(edge_count[5]), .Y(n18) );
  NAND3X1M U86 ( .A(n20), .B(n19), .C(n18), .Y(n24) );
  CLKXOR2X2M U87 ( .A(N147), .B(edge_count[4]), .Y(n23) );
  CLKXOR2X2M U88 ( .A(N145), .B(edge_count[2]), .Y(n22) );
  CLKXOR2X2M U89 ( .A(N146), .B(edge_count[3]), .Y(n21) );
  NOR2BX1M U90 ( .AN(edge_count[0]), .B(N143), .Y(n25) );
  OAI2B2X1M U91 ( .A1N(N144), .A0(n25), .B0(edge_count[1]), .B1(n25), .Y(n28)
         );
  NOR2BX1M U92 ( .AN(N143), .B(edge_count[0]), .Y(n26) );
  OAI2B2X1M U93 ( .A1N(edge_count[1]), .A0(n26), .B0(N144), .B1(n26), .Y(n27)
         );
  NAND4BBX1M U94 ( .AN(n1), .BN(edge_count[5]), .C(n28), .D(n27), .Y(n32) );
  CLKXOR2X2M U95 ( .A(N161), .B(edge_count[4]), .Y(n31) );
  CLKXOR2X2M U96 ( .A(N159), .B(edge_count[2]), .Y(n30) );
  CLKXOR2X2M U97 ( .A(N160), .B(edge_count[3]), .Y(n29) );
  NOR4X1M U98 ( .A(n32), .B(n31), .C(n30), .D(n29), .Y(N163) );
endmodule


module UART_rx_top_DATA_WIDTH8_FRAME_WIDTH11_PRESCALE_WIDTH6 ( clk, reset, 
        rx_in, prescale, parity_enable, parity_type, data_valid, p_data, 
        parity_error, framing_error );
  input [5:0] prescale;
  output [7:0] p_data;
  input clk, reset, rx_in, parity_enable, parity_type;
  output data_valid, parity_error, framing_error;
  wire   data_sampling_enable, sampled_bit, deserializer_enable,
         edge_bit_counter_enable, parity_check_enable, start_check_enable,
         start_glitch, stop_check_enable, n1, n2;
  wire   [5:0] edge_count;
  wire   [3:0] bit_count;

  data_sampling_PRESCALE_WIDTH6_DATA_WIDTH8_FRAME_WIDTH11 u_data_sampling ( 
        .clk(clk), .rst(n1), .prescale(prescale), .data_sampling_enable(
        data_sampling_enable), .rx_in(rx_in), .edge_count(edge_count), 
        .sampled_bit(sampled_bit) );
  deserializer_DATA_WIDTH8 u_deserializer ( .clk(clk), .rst(n1), .sampled_bit(
        sampled_bit), .deserializer_enable(deserializer_enable), .p_data(
        p_data) );
  edge_bit_counter_PRESCALE_WIDTH6_DATA_WIDTH8_FRAME_WIDTH11 u_edge_bit_counter ( 
        .clk(clk), .rst(n1), .edge_counter_enable(edge_bit_counter_enable), 
        .prescale(prescale), .bit_count(bit_count), .edge_count(edge_count) );
  parity_check_DATA_WIDTH8 u_parity_check ( .p_data(p_data), 
        .parity_check_enable(parity_check_enable), .parity_type(parity_type), 
        .clk(clk), .rst(n1), .sampled_bit(sampled_bit), .parity_error(
        parity_error) );
  start_check u_start_check ( .start_check_enable(start_check_enable), .clk(
        clk), .rst(n1), .sampled_bit(sampled_bit), .start_glitch(start_glitch)
         );
  stop_check u_stop_check ( .stop_check_enable(stop_check_enable), .clk(clk), 
        .rst(n1), .sampled_bit(sampled_bit), .stop_error(framing_error) );
  FSM_DATA_WIDTH8_PRESCALE_WIDTH6_FRAME_WIDTH11 u_FSM ( .clk(clk), .rst(n1), 
        .parity_enable(parity_enable), .rx_in(rx_in), .bit_count(bit_count), 
        .edge_count(edge_count), .parity_error(parity_error), .stop_error(
        framing_error), .start_glitch(start_glitch), .prescale(prescale), 
        .parity_check_enable(parity_check_enable), .edge_bit_counter_enable(
        edge_bit_counter_enable), .data_sampling_enable(data_sampling_enable), 
        .start_check_enable(start_check_enable), .stop_check_enable(
        stop_check_enable), .deserializer_enable(deserializer_enable), 
        .data_valid(data_valid) );
  INVX4M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(reset), .Y(n2) );
endmodule


module FSM_tx ( serial_done, data_valid, parity_en, clk, reset_n, serial_en, 
        mux_sel, busy, valid_to_capture );
  output [1:0] mux_sel;
  input serial_done, data_valid, parity_en, clk, reset_n;
  output serial_en, busy, valid_to_capture;
  wire   busy_reg, n5, n6, n7, n8, n1, n2, n3, n4;
  wire   [2:0] current_state;
  wire   [2:0] next_state;

  DFFSQX2M busy_reg_inst ( .D(busy_reg), .CK(clk), .SN(reset_n), .Q(busy) );
  DFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .CK(clk), .RN(reset_n), 
        .Q(current_state[1]) );
  DFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .CK(clk), .RN(reset_n), 
        .Q(current_state[0]) );
  DFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .CK(clk), .RN(reset_n), 
        .Q(current_state[2]) );
  INVX2M U3 ( .A(serial_en), .Y(mux_sel[0]) );
  INVX2M U4 ( .A(mux_sel[1]), .Y(n3) );
  AOI2B1X1M U5 ( .A1N(n6), .A0(n2), .B0(n3), .Y(next_state[2]) );
  NOR2BX2M U6 ( .AN(n5), .B(current_state[2]), .Y(serial_en) );
  NOR2X2M U7 ( .A(n4), .B(current_state[2]), .Y(mux_sel[1]) );
  INVX2M U8 ( .A(current_state[1]), .Y(n4) );
  CLKXOR2X2M U9 ( .A(current_state[1]), .B(current_state[0]), .Y(n5) );
  OAI211X2M U10 ( .A0(current_state[2]), .A1(n2), .B0(n8), .C0(n3), .Y(
        busy_reg) );
  NAND3X2M U11 ( .A(n2), .B(n4), .C(current_state[2]), .Y(n8) );
  INVX2M U12 ( .A(current_state[0]), .Y(n2) );
  NOR2X2M U13 ( .A(current_state[0]), .B(n7), .Y(next_state[0]) );
  AOI33X2M U14 ( .A0(n1), .A1(n4), .A2(data_valid), .B0(mux_sel[1]), .B1(
        serial_done), .B2(parity_en), .Y(n7) );
  INVX2M U15 ( .A(busy_reg), .Y(n1) );
  NOR3X2M U16 ( .A(n5), .B(current_state[2]), .C(current_state[0]), .Y(
        valid_to_capture) );
  OAI33X2M U17 ( .A0(n2), .A1(current_state[2]), .A2(current_state[1]), .B0(n3), .B1(current_state[0]), .B2(n6), .Y(next_state[1]) );
  NOR2BX2M U18 ( .AN(serial_done), .B(parity_en), .Y(n6) );
endmodule


module serializer ( p_data, serial_en, clk, valid_to_capture, reset_n, 
        serial_data, serial_done );
  input [7:0] p_data;
  input serial_en, clk, valid_to_capture, reset_n;
  output serial_data, serial_done;
  wire   N3, N4, N5, N10, N18, N21, n4, n5, n6, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n1, n2, n3, n7, n18, n19, n20, n21;
  wire   [7:0] captured_data;

  DFFRQX2M \captured_data_reg[5]  ( .D(n14), .CK(clk), .RN(reset_n), .Q(
        captured_data[5]) );
  DFFRQX2M \captured_data_reg[1]  ( .D(n10), .CK(clk), .RN(reset_n), .Q(
        captured_data[1]) );
  DFFRQX2M \captured_data_reg[2]  ( .D(n11), .CK(clk), .RN(reset_n), .Q(
        captured_data[2]) );
  DFFRQX2M \captured_data_reg[4]  ( .D(n13), .CK(clk), .RN(reset_n), .Q(
        captured_data[4]) );
  DFFRQX2M \captured_data_reg[0]  ( .D(n9), .CK(clk), .RN(reset_n), .Q(
        captured_data[0]) );
  DFFRQX2M serial_done_reg ( .D(N21), .CK(clk), .RN(reset_n), .Q(serial_done)
         );
  DFFRQX2M \count_reg[2]  ( .D(n17), .CK(clk), .RN(reset_n), .Q(N5) );
  DFFRQX2M \captured_data_reg[7]  ( .D(n16), .CK(clk), .RN(reset_n), .Q(
        captured_data[7]) );
  DFFRQX2M \captured_data_reg[3]  ( .D(n12), .CK(clk), .RN(reset_n), .Q(
        captured_data[3]) );
  DFFRQX2M \captured_data_reg[6]  ( .D(n15), .CK(clk), .RN(reset_n), .Q(
        captured_data[6]) );
  DFFRQX2M \count_reg[1]  ( .D(n7), .CK(clk), .RN(reset_n), .Q(N4) );
  DFFRQX2M \count_reg[0]  ( .D(N18), .CK(clk), .RN(reset_n), .Q(N3) );
  DFFRQX2M serial_data_reg ( .D(n8), .CK(clk), .RN(reset_n), .Q(serial_data)
         );
  OAI21X2M U3 ( .A0(n4), .A1(n19), .B0(serial_en), .Y(n5) );
  NOR3X2M U4 ( .A(n19), .B(n20), .C(n4), .Y(N21) );
  AOI21X2M U5 ( .A0(n19), .A1(n4), .B0(n5), .Y(n17) );
  INVX2M U6 ( .A(serial_en), .Y(n20) );
  INVX2M U7 ( .A(n1), .Y(n21) );
  NOR2X2M U8 ( .A(N3), .B(n5), .Y(N18) );
  BUFX2M U9 ( .A(valid_to_capture), .Y(n1) );
  AO22X1M U10 ( .A0(serial_data), .A1(n20), .B0(serial_en), .B1(N10), .Y(n8)
         );
  MX2X2M U11 ( .A(n3), .B(n2), .S0(N5), .Y(N10) );
  MX4X1M U12 ( .A(captured_data[4]), .B(captured_data[5]), .C(captured_data[6]), .D(captured_data[7]), .S0(N3), .S1(N4), .Y(n2) );
  MX4X1M U13 ( .A(captured_data[0]), .B(captured_data[1]), .C(captured_data[2]), .D(captured_data[3]), .S0(N3), .S1(N4), .Y(n3) );
  AO22X1M U14 ( .A0(n1), .A1(p_data[0]), .B0(captured_data[0]), .B1(n21), .Y(
        n9) );
  AO22X1M U15 ( .A0(p_data[1]), .A1(n1), .B0(captured_data[1]), .B1(n21), .Y(
        n10) );
  AO22X1M U16 ( .A0(p_data[2]), .A1(n1), .B0(captured_data[2]), .B1(n21), .Y(
        n11) );
  AO22X1M U17 ( .A0(p_data[3]), .A1(n1), .B0(captured_data[3]), .B1(n21), .Y(
        n12) );
  AO22X1M U18 ( .A0(p_data[4]), .A1(n1), .B0(captured_data[4]), .B1(n21), .Y(
        n13) );
  AO22X1M U19 ( .A0(p_data[5]), .A1(n1), .B0(captured_data[5]), .B1(n21), .Y(
        n14) );
  AO22X1M U20 ( .A0(p_data[6]), .A1(n1), .B0(captured_data[6]), .B1(n21), .Y(
        n15) );
  AO22X1M U21 ( .A0(p_data[7]), .A1(n1), .B0(captured_data[7]), .B1(n21), .Y(
        n16) );
  INVX2M U22 ( .A(n6), .Y(n7) );
  OAI211X2M U23 ( .A0(N3), .A1(N4), .B0(n18), .C0(n4), .Y(n6) );
  INVX2M U24 ( .A(n5), .Y(n18) );
  NAND2X2M U25 ( .A(N4), .B(N3), .Y(n4) );
  INVX2M U26 ( .A(N5), .Y(n19) );
endmodule


module parity_calc ( clk, reset_n, p_data, data_valid, busy, parity_typ, 
        parity_bit );
  input [7:0] p_data;
  input clk, reset_n, data_valid, busy, parity_typ;
  output parity_bit;
  wire   n1, n2, n3, n4, n5, n6, n7;

  DFFRQX2M parity_bit_reg ( .D(n7), .CK(clk), .RN(reset_n), .Q(parity_bit) );
  XOR3XLM U2 ( .A(p_data[5]), .B(p_data[4]), .C(n6), .Y(n3) );
  CLKXOR2X2M U3 ( .A(p_data[7]), .B(p_data[6]), .Y(n6) );
  XNOR2X2M U4 ( .A(p_data[3]), .B(p_data[2]), .Y(n5) );
  OAI2BB2X1M U5 ( .B0(n1), .B1(n2), .A0N(parity_bit), .A1N(n2), .Y(n7) );
  NAND2BX2M U6 ( .AN(busy), .B(data_valid), .Y(n2) );
  XOR3XLM U7 ( .A(n3), .B(parity_typ), .C(n4), .Y(n1) );
  XOR3XLM U8 ( .A(p_data[1]), .B(p_data[0]), .C(n5), .Y(n4) );
endmodule


module mux ( mux_sel, start_bit, stop_bit, serial_data, parity_bit, tx_out );
  input [1:0] mux_sel;
  input start_bit, stop_bit, serial_data, parity_bit;
  output tx_out;
  wire   n2, n3, n1;

  OAI2B2X4M U1 ( .A1N(mux_sel[1]), .A0(n2), .B0(mux_sel[1]), .B1(n3), .Y(
        tx_out) );
  AOI22X1M U2 ( .A0(start_bit), .A1(n1), .B0(stop_bit), .B1(mux_sel[0]), .Y(n3) );
  AOI22X1M U3 ( .A0(serial_data), .A1(n1), .B0(parity_bit), .B1(mux_sel[0]), 
        .Y(n2) );
  INVX2M U4 ( .A(mux_sel[0]), .Y(n1) );
endmodule


module UART_tx_top_DATA_WIDTH8 ( p_data, data_valid, parity_en, parity_typ, 
        clk, reset_n, tx_out, busy );
  input [7:0] p_data;
  input data_valid, parity_en, parity_typ, clk, reset_n;
  output tx_out, busy;
  wire   serial_en, serial_done, valid_to_capture, serial_data, parity_bit, n1,
         n2;
  wire   [1:0] mux_sel;

  FSM_tx dut_fsm ( .serial_done(serial_done), .data_valid(data_valid), 
        .parity_en(parity_en), .clk(clk), .reset_n(n1), .serial_en(serial_en), 
        .mux_sel(mux_sel), .busy(busy), .valid_to_capture(valid_to_capture) );
  serializer dut_serializer ( .p_data(p_data), .serial_en(serial_en), .clk(clk), .valid_to_capture(valid_to_capture), .reset_n(n1), .serial_data(serial_data), 
        .serial_done(serial_done) );
  parity_calc dut_parity ( .clk(clk), .reset_n(n1), .p_data(p_data), 
        .data_valid(data_valid), .busy(busy), .parity_typ(parity_typ), 
        .parity_bit(parity_bit) );
  mux dut_mux ( .mux_sel(mux_sel), .start_bit(1'b0), .stop_bit(1'b1), 
        .serial_data(serial_data), .parity_bit(parity_bit), .tx_out(tx_out) );
  INVX2M U3 ( .A(n2), .Y(n1) );
  INVX2M U4 ( .A(reset_n), .Y(n2) );
endmodule


module UART_top_DATA_WIDTH8_FRAME_WIDTH11_PRESCALE_WIDTH6 ( clk_tx, tx_p_data, 
        tx_data_valid, reset, parity_type, parity_enable, clk_rx, rx_in, 
        prescale, tx_data_out, tx_busy, rx_p_data_out, rx_data_valid, 
        parity_error, framing_error );
  input [7:0] tx_p_data;
  input [5:0] prescale;
  output [7:0] rx_p_data_out;
  input clk_tx, tx_data_valid, reset, parity_type, parity_enable, clk_rx,
         rx_in;
  output tx_data_out, tx_busy, rx_data_valid, parity_error, framing_error;
  wire   n1, n2;

  UART_rx_top_DATA_WIDTH8_FRAME_WIDTH11_PRESCALE_WIDTH6 dut_UART_RX ( .clk(
        clk_rx), .reset(n1), .rx_in(rx_in), .prescale(prescale), 
        .parity_enable(parity_enable), .parity_type(parity_type), .data_valid(
        rx_data_valid), .p_data(rx_p_data_out), .parity_error(parity_error), 
        .framing_error(framing_error) );
  UART_tx_top_DATA_WIDTH8 dut_UART_TX ( .p_data(tx_p_data), .data_valid(
        tx_data_valid), .parity_en(parity_enable), .parity_typ(parity_type), 
        .clk(clk_tx), .reset_n(n1), .tx_out(tx_data_out), .busy(tx_busy) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(reset), .Y(n2) );
endmodule


module system_controller_RF_DEPTH16_ADDR_WIDTH4_DATA_WIDTH8_ALU_OUT_WIDTH16 ( 
        clk, reset_n, UART_rx_data, UART_rx_valid, ALU_out, ALU_out_valid, 
        ALU_enable, ALU_fun, FIFO_full, FIFO_wr_data, FIFO_wr_inc, 
        gated_clk_enable, div_clk_enable, rd_reg, rd_reg_valid, wr_reg, addr, 
        read_enable, write_enable );
  input [7:0] UART_rx_data;
  input [15:0] ALU_out;
  output [3:0] ALU_fun;
  output [7:0] FIFO_wr_data;
  input [7:0] rd_reg;
  output [7:0] wr_reg;
  output [3:0] addr;
  input clk, reset_n, UART_rx_valid, ALU_out_valid, FIFO_full, rd_reg_valid;
  output ALU_enable, FIFO_wr_inc, gated_clk_enable, div_clk_enable,
         read_enable, write_enable;
  wire   n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n3, n4, n5, n6, n7, n8, n9, n10, n11, n24, n25, n26,
         n27, n28, n29, n30, n105, n106, n107, n108, n109;
  wire   [3:0] current_state;
  wire   [3:0] next_state;
  wire   [15:0] ALU_out_reg;

  DFFRQX2M \ALU_out_reg_reg[15]  ( .D(n100), .CK(clk), .RN(reset_n), .Q(
        ALU_out_reg[15]) );
  DFFRQX2M \ALU_out_reg_reg[14]  ( .D(n99), .CK(clk), .RN(reset_n), .Q(
        ALU_out_reg[14]) );
  DFFRQX2M \ALU_out_reg_reg[13]  ( .D(n98), .CK(clk), .RN(reset_n), .Q(
        ALU_out_reg[13]) );
  DFFRQX2M \ALU_out_reg_reg[12]  ( .D(n97), .CK(clk), .RN(reset_n), .Q(
        ALU_out_reg[12]) );
  DFFRQX2M \ALU_out_reg_reg[11]  ( .D(n96), .CK(clk), .RN(reset_n), .Q(
        ALU_out_reg[11]) );
  DFFRQX2M \ALU_out_reg_reg[10]  ( .D(n95), .CK(clk), .RN(reset_n), .Q(
        ALU_out_reg[10]) );
  DFFRQX2M \ALU_out_reg_reg[9]  ( .D(n94), .CK(clk), .RN(reset_n), .Q(
        ALU_out_reg[9]) );
  DFFRQX2M \ALU_out_reg_reg[8]  ( .D(n93), .CK(clk), .RN(reset_n), .Q(
        ALU_out_reg[8]) );
  DFFRX1M \ALU_out_reg_reg[7]  ( .D(n92), .CK(clk), .RN(reset_n), .QN(n16) );
  DFFRX1M \ALU_out_reg_reg[6]  ( .D(n91), .CK(clk), .RN(reset_n), .QN(n17) );
  DFFRX1M \ALU_out_reg_reg[5]  ( .D(n90), .CK(clk), .RN(reset_n), .QN(n18) );
  DFFRX1M \ALU_out_reg_reg[4]  ( .D(n89), .CK(clk), .RN(reset_n), .QN(n19) );
  DFFRX1M \ALU_out_reg_reg[3]  ( .D(n88), .CK(clk), .RN(reset_n), .QN(n20) );
  DFFRX1M \ALU_out_reg_reg[2]  ( .D(n87), .CK(clk), .RN(reset_n), .QN(n21) );
  DFFRX1M \ALU_out_reg_reg[1]  ( .D(n86), .CK(clk), .RN(reset_n), .QN(n22) );
  DFFRX1M \ALU_out_reg_reg[0]  ( .D(n85), .CK(clk), .RN(reset_n), .QN(n23) );
  DFFRX1M \addr_reg_reg[0]  ( .D(n101), .CK(clk), .RN(reset_n), .QN(n15) );
  DFFRX1M \addr_reg_reg[3]  ( .D(n104), .CK(clk), .RN(reset_n), .QN(n12) );
  DFFRX1M \addr_reg_reg[2]  ( .D(n103), .CK(clk), .RN(reset_n), .QN(n13) );
  DFFRX1M \addr_reg_reg[1]  ( .D(n102), .CK(clk), .RN(reset_n), .QN(n14) );
  DFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .CK(clk), .RN(reset_n), 
        .Q(current_state[0]) );
  DFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .CK(clk), .RN(reset_n), 
        .Q(current_state[2]) );
  DFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .CK(clk), .RN(reset_n), 
        .Q(current_state[1]) );
  DFFRQX2M \current_state_reg[3]  ( .D(next_state[3]), .CK(clk), .RN(reset_n), 
        .Q(current_state[3]) );
  INVX2M U3 ( .A(1'b0), .Y(div_clk_enable) );
  NOR2X2M U5 ( .A(n33), .B(n71), .Y(ALU_fun[2]) );
  NOR2X2M U6 ( .A(n35), .B(n71), .Y(ALU_fun[0]) );
  BUFX2M U7 ( .A(UART_rx_valid), .Y(n4) );
  OAI22X2M U8 ( .A0(n33), .A1(n48), .B0(n13), .B1(n73), .Y(addr[2]) );
  INVX2M U9 ( .A(write_enable), .Y(n24) );
  OR2X2M U10 ( .A(n37), .B(n109), .Y(n73) );
  AND3X2M U11 ( .A(n36), .B(n37), .C(n38), .Y(n31) );
  NOR2X2M U12 ( .A(n48), .B(n109), .Y(read_enable) );
  NOR2X2M U13 ( .A(n109), .B(n31), .Y(write_enable) );
  NOR2X2M U14 ( .A(n71), .B(n109), .Y(ALU_enable) );
  INVX2M U15 ( .A(n53), .Y(n25) );
  INVX2M U16 ( .A(n76), .Y(n8) );
  INVX2M U17 ( .A(n48), .Y(n9) );
  INVX2M U18 ( .A(n36), .Y(n26) );
  NOR3BX2M U19 ( .AN(n72), .B(n11), .C(n29), .Y(n59) );
  NAND3X2M U20 ( .A(n11), .B(n29), .C(n72), .Y(n71) );
  NOR2X2M U21 ( .A(n27), .B(n28), .Y(n61) );
  NAND2X2M U22 ( .A(n74), .B(n11), .Y(n48) );
  NAND3BX2M U23 ( .AN(n75), .B(n5), .C(n76), .Y(FIFO_wr_inc) );
  NAND2X2M U24 ( .A(n3), .B(n74), .Y(n37) );
  INVX2M U25 ( .A(n3), .Y(n11) );
  BUFX2M U26 ( .A(n52), .Y(n5) );
  NAND2X2M U27 ( .A(n59), .B(n7), .Y(n52) );
  NOR3BX2M U28 ( .AN(n63), .B(n32), .C(n30), .Y(n46) );
  NOR2X2M U29 ( .A(n34), .B(n71), .Y(ALU_fun[1]) );
  NOR2X2M U30 ( .A(n31), .B(n35), .Y(wr_reg[0]) );
  NOR2X2M U31 ( .A(n31), .B(n34), .Y(wr_reg[1]) );
  NOR2X2M U32 ( .A(n31), .B(n33), .Y(wr_reg[2]) );
  NOR2X2M U33 ( .A(n31), .B(n32), .Y(wr_reg[3]) );
  NOR2X2M U34 ( .A(n24), .B(n30), .Y(wr_reg[7]) );
  NOR2X2M U35 ( .A(n24), .B(n106), .Y(wr_reg[4]) );
  NOR2X2M U36 ( .A(n70), .B(n59), .Y(n40) );
  OAI211X2M U37 ( .A0(n39), .A1(n7), .B0(n10), .C0(n40), .Y(next_state[3]) );
  INVX2M U38 ( .A(ALU_enable), .Y(n10) );
  NOR2X2M U39 ( .A(n24), .B(n105), .Y(wr_reg[6]) );
  NAND4X2M U40 ( .A(n45), .B(n61), .C(n11), .D(n29), .Y(n76) );
  NOR2BX2M U41 ( .AN(n69), .B(n3), .Y(n63) );
  NAND3X2M U42 ( .A(n3), .B(n29), .C(n61), .Y(n36) );
  INVX2M U43 ( .A(n4), .Y(n109) );
  NAND3X2M U44 ( .A(n3), .B(n29), .C(n72), .Y(n38) );
  NAND3X2M U45 ( .A(n71), .B(n39), .C(n40), .Y(gated_clk_enable) );
  NOR2X2M U46 ( .A(n32), .B(n71), .Y(ALU_fun[3]) );
  NAND3X2M U47 ( .A(n4), .B(n3), .C(n69), .Y(n53) );
  NAND2X2M U48 ( .A(n4), .B(n108), .Y(n66) );
  INVX2M U49 ( .A(n43), .Y(n6) );
  OAI22X4M U50 ( .A0(n32), .A1(n48), .B0(n12), .B1(n73), .Y(addr[3]) );
  NOR3X2M U51 ( .A(current_state[2]), .B(current_state[3]), .C(n28), .Y(n74)
         );
  NOR2X2M U52 ( .A(n39), .B(FIFO_full), .Y(n75) );
  NOR2X2M U53 ( .A(n27), .B(current_state[1]), .Y(n72) );
  NAND3X2M U54 ( .A(n61), .B(n3), .C(current_state[3]), .Y(n39) );
  INVX2M U55 ( .A(current_state[3]), .Y(n29) );
  BUFX2M U56 ( .A(current_state[0]), .Y(n3) );
  INVX2M U57 ( .A(current_state[2]), .Y(n27) );
  INVX2M U58 ( .A(current_state[1]), .Y(n28) );
  OAI222X1M U59 ( .A0(n35), .A1(n48), .B0(n15), .B1(n73), .C0(n109), .C1(n38), 
        .Y(addr[0]) );
  OAI22X1M U60 ( .A0(n34), .A1(n48), .B0(n14), .B1(n73), .Y(addr[1]) );
  NOR3X2M U61 ( .A(current_state[2]), .B(current_state[3]), .C(
        current_state[1]), .Y(n69) );
  NOR2BX2M U62 ( .AN(UART_rx_data[5]), .B(n24), .Y(wr_reg[5]) );
  NOR2BX2M U63 ( .AN(rd_reg_valid), .B(FIFO_full), .Y(n45) );
  NAND2X2M U64 ( .A(UART_rx_data[2]), .B(n4), .Y(n33) );
  NAND2X2M U65 ( .A(UART_rx_data[1]), .B(n4), .Y(n34) );
  NAND2X2M U66 ( .A(UART_rx_data[3]), .B(n4), .Y(n32) );
  OAI21X2M U67 ( .A0(n23), .A1(n5), .B0(n84), .Y(FIFO_wr_data[0]) );
  AOI22X1M U68 ( .A0(rd_reg[0]), .A1(n8), .B0(n75), .B1(ALU_out_reg[8]), .Y(
        n84) );
  OAI21X2M U69 ( .A0(n22), .A1(n5), .B0(n83), .Y(FIFO_wr_data[1]) );
  AOI22X1M U70 ( .A0(rd_reg[1]), .A1(n8), .B0(n75), .B1(ALU_out_reg[9]), .Y(
        n83) );
  OAI21X2M U71 ( .A0(n21), .A1(n5), .B0(n82), .Y(FIFO_wr_data[2]) );
  AOI22X1M U72 ( .A0(rd_reg[2]), .A1(n8), .B0(n75), .B1(ALU_out_reg[10]), .Y(
        n82) );
  OAI21X2M U73 ( .A0(n20), .A1(n5), .B0(n81), .Y(FIFO_wr_data[3]) );
  AOI22X1M U74 ( .A0(rd_reg[3]), .A1(n8), .B0(n75), .B1(ALU_out_reg[11]), .Y(
        n81) );
  OAI21X2M U75 ( .A0(n19), .A1(n5), .B0(n80), .Y(FIFO_wr_data[4]) );
  AOI22X1M U76 ( .A0(rd_reg[4]), .A1(n8), .B0(n75), .B1(ALU_out_reg[12]), .Y(
        n80) );
  OAI21X2M U77 ( .A0(n18), .A1(n5), .B0(n79), .Y(FIFO_wr_data[5]) );
  AOI22X1M U78 ( .A0(rd_reg[5]), .A1(n8), .B0(n75), .B1(ALU_out_reg[13]), .Y(
        n79) );
  OAI21X2M U79 ( .A0(n17), .A1(n5), .B0(n78), .Y(FIFO_wr_data[6]) );
  AOI22X1M U80 ( .A0(rd_reg[6]), .A1(n8), .B0(n75), .B1(ALU_out_reg[14]), .Y(
        n78) );
  OAI21X2M U81 ( .A0(n16), .A1(n5), .B0(n77), .Y(FIFO_wr_data[7]) );
  AOI22X1M U82 ( .A0(rd_reg[7]), .A1(n8), .B0(n75), .B1(ALU_out_reg[15]), .Y(
        n77) );
  NAND2X2M U83 ( .A(UART_rx_data[0]), .B(n4), .Y(n35) );
  INVX2M U84 ( .A(FIFO_full), .Y(n7) );
  NAND3X2M U85 ( .A(n57), .B(n6), .C(n58), .Y(next_state[0]) );
  NOR3X2M U86 ( .A(n59), .B(n60), .C(n26), .Y(n58) );
  AOI33X2M U87 ( .A0(n54), .A1(n108), .A2(n67), .B0(n68), .B1(n29), .B2(n3), 
        .Y(n57) );
  NOR3X2M U88 ( .A(UART_rx_data[2]), .B(UART_rx_data[6]), .C(UART_rx_data[4]), 
        .Y(n67) );
  NAND4BX1M U89 ( .AN(read_enable), .B(n36), .C(n41), .D(n42), .Y(
        next_state[2]) );
  NAND4X2M U90 ( .A(UART_rx_data[0]), .B(UART_rx_data[2]), .C(n46), .D(n47), 
        .Y(n41) );
  NOR3BX2M U91 ( .AN(n40), .B(n43), .C(n44), .Y(n42) );
  NOR4X1M U92 ( .A(UART_rx_data[5]), .B(UART_rx_data[1]), .C(n105), .D(n106), 
        .Y(n47) );
  AND3X2M U93 ( .A(UART_rx_data[1]), .B(UART_rx_data[5]), .C(n46), .Y(n54) );
  NAND4X2M U94 ( .A(n49), .B(n6), .C(n50), .D(n51), .Y(next_state[1]) );
  AOI32X1M U95 ( .A0(n56), .A1(n29), .A2(current_state[1]), .B0(n26), .B1(n109), .Y(n49) );
  AOI31X2M U96 ( .A0(n54), .A1(UART_rx_data[0]), .A2(n55), .B0(n9), .Y(n50) );
  AND2X2M U97 ( .A(n5), .B(n53), .Y(n51) );
  AOI211X2M U98 ( .A0(n45), .A1(current_state[1]), .B0(n27), .C0(
        current_state[3]), .Y(n44) );
  OAI21X2M U99 ( .A0(n39), .A1(n7), .B0(n62), .Y(n43) );
  NAND4X2M U100 ( .A(n63), .B(UART_rx_data[2]), .C(n64), .D(n65), .Y(n62) );
  NOR3X2M U101 ( .A(n107), .B(n30), .C(n105), .Y(n64) );
  NOR4X1M U102 ( .A(n66), .B(UART_rx_data[1]), .C(UART_rx_data[5]), .D(
        UART_rx_data[4]), .Y(n65) );
  OAI22X1M U103 ( .A0(current_state[2]), .A1(n4), .B0(n3), .B1(n45), .Y(n56)
         );
  OAI22X1M U104 ( .A0(n108), .A1(n53), .B0(n25), .B1(n15), .Y(n101) );
  OAI22X1M U105 ( .A0(n107), .A1(n53), .B0(n25), .B1(n12), .Y(n104) );
  NOR3X2M U106 ( .A(n106), .B(UART_rx_data[6]), .C(UART_rx_data[2]), .Y(n55)
         );
  OAI21X2M U107 ( .A0(current_state[2]), .A1(current_state[1]), .B0(n4), .Y(
        n68) );
  INVX2M U108 ( .A(UART_rx_data[4]), .Y(n106) );
  AND3X2M U109 ( .A(n72), .B(n11), .C(current_state[3]), .Y(n70) );
  OAI2BB2X1M U110 ( .B0(n60), .B1(n23), .A0N(ALU_out[0]), .A1N(n60), .Y(n85)
         );
  OAI2BB2X1M U111 ( .B0(n60), .B1(n22), .A0N(ALU_out[1]), .A1N(n60), .Y(n86)
         );
  OAI2BB2X1M U112 ( .B0(n60), .B1(n21), .A0N(ALU_out[2]), .A1N(n60), .Y(n87)
         );
  OAI2BB2X1M U113 ( .B0(n60), .B1(n20), .A0N(ALU_out[3]), .A1N(n60), .Y(n88)
         );
  OAI2BB2X1M U114 ( .B0(n60), .B1(n19), .A0N(ALU_out[4]), .A1N(n60), .Y(n89)
         );
  OAI2BB2X1M U115 ( .B0(n60), .B1(n18), .A0N(ALU_out[5]), .A1N(n60), .Y(n90)
         );
  OAI2BB2X1M U116 ( .B0(n60), .B1(n17), .A0N(ALU_out[6]), .A1N(n60), .Y(n91)
         );
  OAI2BB2X1M U117 ( .B0(n60), .B1(n16), .A0N(ALU_out[7]), .A1N(n60), .Y(n92)
         );
  OAI2BB2X1M U118 ( .B0(n25), .B1(n14), .A0N(UART_rx_data[1]), .A1N(n25), .Y(
        n102) );
  OAI2BB2X1M U119 ( .B0(n25), .B1(n13), .A0N(UART_rx_data[2]), .A1N(n25), .Y(
        n103) );
  AND2X2M U120 ( .A(ALU_out_valid), .B(n70), .Y(n60) );
  INVX2M U121 ( .A(UART_rx_data[6]), .Y(n105) );
  INVX2M U122 ( .A(UART_rx_data[0]), .Y(n108) );
  INVX2M U123 ( .A(UART_rx_data[7]), .Y(n30) );
  INVX2M U124 ( .A(UART_rx_data[3]), .Y(n107) );
  AO2B2X2M U125 ( .B0(ALU_out[8]), .B1(n60), .A0(ALU_out_reg[8]), .A1N(n60), 
        .Y(n93) );
  AO2B2X2M U126 ( .B0(ALU_out[9]), .B1(n60), .A0(ALU_out_reg[9]), .A1N(n60), 
        .Y(n94) );
  AO2B2X2M U127 ( .B0(ALU_out[10]), .B1(n60), .A0(ALU_out_reg[10]), .A1N(n60), 
        .Y(n95) );
  AO2B2X2M U128 ( .B0(ALU_out[11]), .B1(n60), .A0(ALU_out_reg[11]), .A1N(n60), 
        .Y(n96) );
  AO2B2X2M U129 ( .B0(ALU_out[12]), .B1(n60), .A0(ALU_out_reg[12]), .A1N(n60), 
        .Y(n97) );
  AO2B2X2M U130 ( .B0(ALU_out[13]), .B1(n60), .A0(ALU_out_reg[13]), .A1N(n60), 
        .Y(n98) );
  AO2B2X2M U131 ( .B0(ALU_out[14]), .B1(n60), .A0(ALU_out_reg[14]), .A1N(n60), 
        .Y(n99) );
  AO2B2X2M U132 ( .B0(ALU_out[15]), .B1(n60), .A0(ALU_out_reg[15]), .A1N(n60), 
        .Y(n100) );
endmodule


module SYS_TOP ( RST_N, UART_CLK, REF_CLK, UART_RX_IN, UART_TX_O, parity_error, 
        framing_error );
  input RST_N, UART_CLK, REF_CLK, UART_RX_IN;
  output UART_TX_O, parity_error, framing_error;
  wire   sync_reset_RF, sync_reset_UART, UART_rx_valid_unsync,
         UART_rx_valid_sync, clk_tx, UART_tx_busy, FIFO_rd_inc, clk_rx,
         clk_gate_enable, ALU_clk, ALU_enable, ALU_out_valid, FIFO_wr_inc,
         FIFO_full, FIFO_empty_UART_tx, write_enable, read_enable,
         read_reg_valid, n1, n2, n3, n4, n5, n6, n7, n8;
  wire   [7:0] UART_rx_data_unsync;
  wire   [7:0] UART_rx_data_sync;
  wire   [7:0] div_ratio;
  wire   [7:0] div_ratio_rx;
  wire   [7:0] UART_config;
  wire   [7:0] Operand_A;
  wire   [7:0] Operand_B;
  wire   [3:0] ALU_FUN;
  wire   [15:0] ALU_OUT;
  wire   [7:0] FIFO_wr_data;
  wire   [7:0] FIFO_rd_data;
  wire   [3:0] addr;
  wire   [7:0] wr_reg;
  wire   [7:0] Rd_Reg;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3;

  reset_sync_NUM_STAGES2_0 dut_RST_SYNC_REF ( .destination_domain_clk(REF_CLK), 
        .async_reset_n(RST_N), .sync_reset(sync_reset_RF) );
  reset_sync_NUM_STAGES2_1 dut_RST_SYNC_UART ( .destination_domain_clk(
        UART_CLK), .async_reset_n(RST_N), .sync_reset(sync_reset_UART) );
  data_sync_NUM_STAGES2_BIT_WIDTH8 dut_DATA_SYNC ( .dest_clk(REF_CLK), 
        .dest_reset_n(n7), .unsync_bus(UART_rx_data_unsync), .bus_enable(
        UART_rx_valid_unsync), .sync_bus(UART_rx_data_sync), .enable_pulse(
        UART_rx_valid_sync) );
  pulse_synchronizer_NUM_STAGES2 dut_PULSE_GEN ( .clk(clk_tx), .rst_n(n5), 
        .level_sig(UART_tx_busy), .pulse_sig(FIFO_rd_inc) );
  clk_div_WIDTH8_0 dut_TX_CLOCK_DIVIDER ( .clk_ref(UART_CLK), .rst_n(n5), 
        .clk_en(1'b1), .div_ratio(div_ratio), .div_clk(clk_tx) );
  clk_div_WIDTH8_1 dut_Clock_Divider_RX ( .clk_ref(UART_CLK), .rst_n(n5), 
        .clk_en(1'b1), .div_ratio({1'b0, 1'b0, 1'b0, 1'b0, div_ratio_rx[3:0]}), 
        .div_clk(clk_rx) );
  clk_div_mux_WIDTH8 dut_CLOCK_DIVIDER_MUX ( .in(UART_config[7:2]), .out({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, div_ratio_rx[3:0]})
         );
  clock_gating dut_CLK_GATE ( .clk(REF_CLK), .clk_enable(clk_gate_enable), 
        .gated_clock(ALU_clk) );
  ALU_DATA_WIDTH8_OUT_WIDTH16 dut_ALU ( .A(Operand_A), .B(Operand_B), .enable(
        ALU_enable), .ALU_fun(ALU_FUN), .clk(ALU_clk), .reset_n(n7), .ALU_out(
        ALU_OUT), .out_valid(ALU_out_valid) );
  FIFO_top_DATA_WIDTH8_NUM_STAGES2_DEPTH8_ADDR_WIDTH3 dut_Async_fifo ( .w_clk(
        REF_CLK), .w_reset_n(n7), .w_inc(FIFO_wr_inc), .w_data(FIFO_wr_data), 
        .r_clk(clk_tx), .r_reset_n(n5), .r_inc(FIFO_rd_inc), .full(FIFO_full), 
        .empty(FIFO_empty_UART_tx), .r_data(FIFO_rd_data) );
  registerfile_WORD_SIZE8_DEPTH16_ADDR_SIZE4 dut_register_file ( .clk(REF_CLK), 
        .rst_n(n7), .wr_en(write_enable), .rd_en(read_enable), .address({
        addr[3:2], n4, n3}), .wr_data(wr_reg), .rd_data(Rd_Reg), 
        .rd_data_valid(read_reg_valid), .reg0(Operand_A), .reg1(Operand_B), 
        .reg2(UART_config), .reg3(div_ratio) );
  UART_top_DATA_WIDTH8_FRAME_WIDTH11_PRESCALE_WIDTH6 dut_UART ( .clk_tx(clk_tx), .tx_p_data(FIFO_rd_data), .tx_data_valid(n1), .reset(n5), .parity_type(
        UART_config[1]), .parity_enable(UART_config[0]), .clk_rx(clk_rx), 
        .rx_in(n2), .prescale(UART_config[7:2]), .tx_data_out(UART_TX_O), 
        .tx_busy(UART_tx_busy), .rx_p_data_out(UART_rx_data_unsync), 
        .rx_data_valid(UART_rx_valid_unsync), .parity_error(parity_error), 
        .framing_error(framing_error) );
  system_controller_RF_DEPTH16_ADDR_WIDTH4_DATA_WIDTH8_ALU_OUT_WIDTH16 dut_SYSTEM_CTRL ( 
        .clk(REF_CLK), .reset_n(n7), .UART_rx_data(UART_rx_data_sync), 
        .UART_rx_valid(UART_rx_valid_sync), .ALU_out(ALU_OUT), .ALU_out_valid(
        ALU_out_valid), .ALU_enable(ALU_enable), .ALU_fun(ALU_FUN), 
        .FIFO_full(FIFO_full), .FIFO_wr_data(FIFO_wr_data), .FIFO_wr_inc(
        FIFO_wr_inc), .gated_clk_enable(clk_gate_enable), .rd_reg(Rd_Reg), 
        .rd_reg_valid(read_reg_valid), .wr_reg(wr_reg), .addr(addr), 
        .read_enable(read_enable), .write_enable(write_enable) );
  INVX2M U2 ( .A(n6), .Y(n5) );
  BUFX2M U3 ( .A(addr[0]), .Y(n3) );
  BUFX2M U4 ( .A(addr[1]), .Y(n4) );
  BUFX2M U5 ( .A(UART_RX_IN), .Y(n2) );
  INVX2M U6 ( .A(FIFO_empty_UART_tx), .Y(n1) );
  INVX4M U7 ( .A(n8), .Y(n7) );
  INVX2M U8 ( .A(sync_reset_RF), .Y(n8) );
  INVX2M U9 ( .A(sync_reset_UART), .Y(n6) );
endmodule

