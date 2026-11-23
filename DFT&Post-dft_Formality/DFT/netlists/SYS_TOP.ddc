/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Tue Sep 30 05:26:40 2025
/////////////////////////////////////////////////////////////


module reset_sync_NUM_STAGES2_test_0 ( destination_domain_clk, async_reset_n, 
        sync_reset, test_si, test_se );
  input destination_domain_clk, async_reset_n, test_si, test_se;
  output sync_reset;
  wire   sync_reg_0_;

  SDFFRQX2M sync_reg_reg_0_ ( .D(1'b1), .SI(test_si), .SE(test_se), .CK(
        destination_domain_clk), .RN(async_reset_n), .Q(sync_reg_0_) );
  SDFFRQX1M sync_reg_reg_1_ ( .D(sync_reg_0_), .SI(sync_reg_0_), .SE(test_se), 
        .CK(destination_domain_clk), .RN(async_reset_n), .Q(sync_reset) );
endmodule


module reset_sync_NUM_STAGES2_test_1 ( destination_domain_clk, async_reset_n, 
        sync_reset, test_si, test_se );
  input destination_domain_clk, async_reset_n, test_si, test_se;
  output sync_reset;
  wire   sync_reg_0_;

  SDFFRQX2M sync_reg_reg_0_ ( .D(1'b1), .SI(test_si), .SE(test_se), .CK(
        destination_domain_clk), .RN(async_reset_n), .Q(sync_reg_0_) );
  SDFFRQX1M sync_reg_reg_1_ ( .D(sync_reg_0_), .SI(sync_reg_0_), .SE(test_se), 
        .CK(destination_domain_clk), .RN(async_reset_n), .Q(sync_reset) );
endmodule


module data_sync_NUM_STAGES2_BIT_WIDTH8_test_1 ( dest_clk, dest_reset_n, 
        unsync_bus, bus_enable, sync_bus, enable_pulse, test_si, test_se );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input dest_clk, dest_reset_n, bus_enable, test_si, test_se;
  output enable_pulse;
  wire   pulse_enable_flop, n1, n4, n6, n8, n10, n12, n14, n16, n18, n22;
  wire   [1:0] en_sync_reg;

  SDFFRQX2M pulse_enable_flop_reg ( .D(en_sync_reg[1]), .SI(enable_pulse), 
        .SE(test_se), .CK(dest_clk), .RN(dest_reset_n), .Q(pulse_enable_flop)
         );
  SDFFRQX2M en_sync_reg_reg_1_ ( .D(en_sync_reg[0]), .SI(en_sync_reg[0]), .SE(
        test_se), .CK(dest_clk), .RN(dest_reset_n), .Q(en_sync_reg[1]) );
  SDFFRQX2M sync_bus_reg_7_ ( .D(n18), .SI(sync_bus[6]), .SE(test_se), .CK(
        dest_clk), .RN(dest_reset_n), .Q(sync_bus[7]) );
  SDFFRQX2M sync_bus_reg_6_ ( .D(n16), .SI(sync_bus[5]), .SE(test_se), .CK(
        dest_clk), .RN(dest_reset_n), .Q(sync_bus[6]) );
  SDFFRQX2M sync_bus_reg_4_ ( .D(n12), .SI(sync_bus[3]), .SE(test_se), .CK(
        dest_clk), .RN(dest_reset_n), .Q(sync_bus[4]) );
  SDFFRQX2M sync_bus_reg_5_ ( .D(n14), .SI(sync_bus[4]), .SE(test_se), .CK(
        dest_clk), .RN(dest_reset_n), .Q(sync_bus[5]) );
  SDFFRQX2M sync_bus_reg_3_ ( .D(n10), .SI(sync_bus[2]), .SE(test_se), .CK(
        dest_clk), .RN(dest_reset_n), .Q(sync_bus[3]) );
  SDFFRQX2M sync_bus_reg_0_ ( .D(n4), .SI(pulse_enable_flop), .SE(test_se), 
        .CK(dest_clk), .RN(dest_reset_n), .Q(sync_bus[0]) );
  SDFFRQX2M sync_bus_reg_1_ ( .D(n6), .SI(sync_bus[0]), .SE(test_se), .CK(
        dest_clk), .RN(dest_reset_n), .Q(sync_bus[1]) );
  SDFFRQX2M sync_bus_reg_2_ ( .D(n8), .SI(sync_bus[1]), .SE(test_se), .CK(
        dest_clk), .RN(dest_reset_n), .Q(sync_bus[2]) );
  SDFFRQX2M enable_pulse_reg ( .D(n22), .SI(en_sync_reg[1]), .SE(test_se), 
        .CK(dest_clk), .RN(dest_reset_n), .Q(enable_pulse) );
  SDFFRQX2M en_sync_reg_reg_0_ ( .D(bus_enable), .SI(test_si), .SE(test_se), 
        .CK(dest_clk), .RN(dest_reset_n), .Q(en_sync_reg[0]) );
  INVX2M U3 ( .A(n1), .Y(n22) );
  NAND2BX2M U4 ( .AN(pulse_enable_flop), .B(en_sync_reg[1]), .Y(n1) );
  AO22X1M U5 ( .A0(unsync_bus[0]), .A1(n22), .B0(sync_bus[0]), .B1(n1), .Y(n4)
         );
  AO22X1M U6 ( .A0(unsync_bus[1]), .A1(n22), .B0(sync_bus[1]), .B1(n1), .Y(n6)
         );
  AO22X1M U7 ( .A0(unsync_bus[2]), .A1(n22), .B0(sync_bus[2]), .B1(n1), .Y(n8)
         );
  AO22X1M U8 ( .A0(unsync_bus[3]), .A1(n22), .B0(sync_bus[3]), .B1(n1), .Y(n10) );
  AO22X1M U9 ( .A0(unsync_bus[4]), .A1(n22), .B0(sync_bus[4]), .B1(n1), .Y(n12) );
  AO22X1M U10 ( .A0(unsync_bus[5]), .A1(n22), .B0(sync_bus[5]), .B1(n1), .Y(
        n14) );
  AO22X1M U11 ( .A0(unsync_bus[6]), .A1(n22), .B0(sync_bus[6]), .B1(n1), .Y(
        n16) );
  AO22X1M U12 ( .A0(unsync_bus[7]), .A1(n22), .B0(sync_bus[7]), .B1(n1), .Y(
        n18) );
endmodule


module pulse_synchronizer_NUM_STAGES2_test_1 ( clk, rst_n, level_sig, 
        pulse_sig, test_si, test_so, test_se );
  input clk, rst_n, level_sig, test_si, test_se;
  output pulse_sig, test_so;
  wire   sync_reg_0_, prev_stage;

  SDFFRQX2M sync_reg_reg_1_ ( .D(sync_reg_0_), .SI(sync_reg_0_), .SE(test_se), 
        .CK(clk), .RN(rst_n), .Q(test_so) );
  SDFFRQX2M prev_stage_reg ( .D(test_so), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(prev_stage) );
  SDFFRQX2M sync_reg_reg_0_ ( .D(level_sig), .SI(prev_stage), .SE(test_se), 
        .CK(clk), .RN(rst_n), .Q(sync_reg_0_) );
  NOR2BX2M U6 ( .AN(test_so), .B(prev_stage), .Y(pulse_sig) );
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


module clk_div_WIDTH8_test_1 ( clk_ref, rst_n, clk_en, div_ratio, div_clk, 
        test_si, test_so, test_se );
  input [7:0] div_ratio;
  input clk_ref, rst_n, clk_en, test_si, test_se;
  output div_clk, test_so;
  wire   N0, div_clk_reg, N9, flag, prev_div_ratio_6_, prev_div_ratio_5_,
         prev_div_ratio_4_, prev_div_ratio_3_, prev_div_ratio_2_,
         prev_div_ratio_1_, prev_div_ratio_0_, N18, N20, N21, N22, N23, N24,
         N25, N50, N51, N52, N53, N54, N55, N56, N57, N90, N91, N92, N93, N94,
         N95, N96, N97, n38, n51, n60, n1, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n34, n35, n36, n37, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n52, n53, n54, n55, n56, n57, n58,
         n59, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73;
  wire   [7:0] count;

  SDFFRQX2M count_reg_7_ ( .D(N97), .SI(count[6]), .SE(test_se), .CK(clk_ref), 
        .RN(rst_n), .Q(count[7]) );
  SDFFRQX2M flag_reg ( .D(n60), .SI(div_clk_reg), .SE(test_se), .CK(clk_ref), 
        .RN(rst_n), .Q(flag) );
  SDFFRQX2M prev_div_ratio_reg_0_ ( .D(div_ratio[0]), .SI(flag), .SE(test_se), 
        .CK(clk_ref), .RN(rst_n), .Q(prev_div_ratio_0_) );
  SDFFRQX2M prev_div_ratio_reg_7_ ( .D(div_ratio[7]), .SI(prev_div_ratio_6_), 
        .SE(test_se), .CK(clk_ref), .RN(rst_n), .Q(test_so) );
  SDFFRQX2M prev_div_ratio_reg_6_ ( .D(div_ratio[6]), .SI(prev_div_ratio_5_), 
        .SE(test_se), .CK(clk_ref), .RN(rst_n), .Q(prev_div_ratio_6_) );
  SDFFRQX2M prev_div_ratio_reg_5_ ( .D(div_ratio[5]), .SI(prev_div_ratio_4_), 
        .SE(test_se), .CK(clk_ref), .RN(rst_n), .Q(prev_div_ratio_5_) );
  SDFFRQX2M prev_div_ratio_reg_4_ ( .D(div_ratio[4]), .SI(prev_div_ratio_3_), 
        .SE(test_se), .CK(clk_ref), .RN(rst_n), .Q(prev_div_ratio_4_) );
  SDFFRQX2M prev_div_ratio_reg_3_ ( .D(div_ratio[3]), .SI(prev_div_ratio_2_), 
        .SE(test_se), .CK(clk_ref), .RN(rst_n), .Q(prev_div_ratio_3_) );
  SDFFRQX2M prev_div_ratio_reg_2_ ( .D(div_ratio[2]), .SI(prev_div_ratio_1_), 
        .SE(test_se), .CK(clk_ref), .RN(rst_n), .Q(prev_div_ratio_2_) );
  SDFFRQX2M prev_div_ratio_reg_1_ ( .D(div_ratio[1]), .SI(prev_div_ratio_0_), 
        .SE(test_se), .CK(clk_ref), .RN(rst_n), .Q(prev_div_ratio_1_) );
  SDFFRQX2M count_reg_0_ ( .D(N90), .SI(test_si), .SE(test_se), .CK(clk_ref), 
        .RN(rst_n), .Q(count[0]) );
  SDFFRQX2M count_reg_2_ ( .D(N92), .SI(count[1]), .SE(test_se), .CK(clk_ref), 
        .RN(rst_n), .Q(count[2]) );
  SDFFRQX2M count_reg_3_ ( .D(N93), .SI(count[2]), .SE(test_se), .CK(clk_ref), 
        .RN(rst_n), .Q(count[3]) );
  SDFFRQX2M count_reg_4_ ( .D(N94), .SI(count[3]), .SE(test_se), .CK(clk_ref), 
        .RN(rst_n), .Q(count[4]) );
  SDFFRQX2M count_reg_5_ ( .D(N95), .SI(count[4]), .SE(test_se), .CK(clk_ref), 
        .RN(rst_n), .Q(count[5]) );
  SDFFRQX2M count_reg_6_ ( .D(N96), .SI(count[5]), .SE(test_se), .CK(clk_ref), 
        .RN(rst_n), .Q(count[6]) );
  SDFFRQX2M count_reg_1_ ( .D(N91), .SI(n40), .SE(test_se), .CK(clk_ref), .RN(
        rst_n), .Q(count[1]) );
  SDFFRX1M div_clk_reg_reg ( .D(n51), .SI(count[7]), .SE(test_se), .CK(clk_ref), .RN(rst_n), .Q(div_clk_reg), .QN(n38) );
  NAND4X2M U7 ( .A(n39), .B(n37), .C(n36), .D(n35), .Y(n1) );
  INVX2M U9 ( .A(rst_n), .Y(n4) );
  OR2X2M U10 ( .A(div_ratio[2]), .B(div_ratio[1]), .Y(n5) );
  AOI21BX2M U11 ( .A0(div_ratio[1]), .A1(div_ratio[2]), .B0N(n5), .Y(n3) );
  INVX2M U12 ( .A(count[0]), .Y(n40) );
  MX2X2M U23 ( .A(div_clk_reg), .B(clk_ref), .S0(N0), .Y(N9) );
  MX2X2M U24 ( .A(N9), .B(1'b0), .S0(n4), .Y(div_clk) );
  CLKINVX1M U29 ( .A(div_ratio[1]), .Y(N18) );
  OR2X1M U30 ( .A(n5), .B(div_ratio[3]), .Y(n6) );
  OAI2BB1X1M U31 ( .A0N(n5), .A1N(div_ratio[3]), .B0(n6), .Y(N20) );
  OR2X1M U32 ( .A(n6), .B(div_ratio[4]), .Y(n7) );
  OAI2BB1X1M U33 ( .A0N(n6), .A1N(div_ratio[4]), .B0(n7), .Y(N21) );
  OR2X1M U34 ( .A(n7), .B(div_ratio[5]), .Y(n8) );
  OAI2BB1X1M U35 ( .A0N(n7), .A1N(div_ratio[5]), .B0(n8), .Y(N22) );
  XNOR2X1M U36 ( .A(div_ratio[6]), .B(n8), .Y(N23) );
  NOR3X1M U37 ( .A(div_ratio[6]), .B(div_ratio[7]), .C(n8), .Y(N25) );
  OAI21X1M U38 ( .A0(div_ratio[6]), .A1(n8), .B0(div_ratio[7]), .Y(n9) );
  NAND2BX1M U39 ( .AN(N25), .B(n9), .Y(N24) );
  XNOR2X1M U40 ( .A(N20), .B(count[2]), .Y(n39) );
  NOR2X1M U41 ( .A(n40), .B(N18), .Y(n10) );
  OAI22X1M U42 ( .A0(count[1]), .A1(n10), .B0(n10), .B1(n3), .Y(n37) );
  CLKNAND2X2M U43 ( .A(N18), .B(n40), .Y(n11) );
  AOI22X1M U44 ( .A0(n11), .A1(n3), .B0(n11), .B1(count[1]), .Y(n12) );
  NOR3X1M U45 ( .A(n12), .B(N25), .C(count[7]), .Y(n36) );
  CLKXOR2X2M U46 ( .A(N21), .B(count[3]), .Y(n34) );
  CLKXOR2X2M U47 ( .A(N22), .B(count[4]), .Y(n15) );
  CLKXOR2X2M U48 ( .A(N23), .B(count[5]), .Y(n14) );
  CLKXOR2X2M U49 ( .A(N24), .B(count[6]), .Y(n13) );
  NOR4X1M U50 ( .A(n34), .B(n15), .C(n14), .D(n13), .Y(n35) );
  MXI2X1M U51 ( .A(n41), .B(n42), .S0(flag), .Y(n60) );
  NAND2BX1M U52 ( .AN(n43), .B(n44), .Y(n41) );
  MXI2X1M U53 ( .A(n45), .B(n38), .S0(n46), .Y(n51) );
  AOI2BB1X1M U54 ( .A0N(div_ratio[0]), .A1N(n1), .B0(n42), .Y(n46) );
  CLKNAND2X2M U55 ( .A(n44), .B(n43), .Y(n42) );
  OAI211X1M U56 ( .A0(n38), .A1(n47), .B0(n48), .C0(clk_en), .Y(n45) );
  CLKINVX1M U57 ( .A(N0), .Y(n48) );
  NOR2BX1M U58 ( .AN(N57), .B(n49), .Y(N97) );
  NOR2BX1M U59 ( .AN(N56), .B(n49), .Y(N96) );
  NOR2BX1M U60 ( .AN(N55), .B(n49), .Y(N95) );
  NOR2BX1M U61 ( .AN(N54), .B(n49), .Y(N94) );
  NOR2BX1M U62 ( .AN(N53), .B(n49), .Y(N93) );
  NOR2BX1M U63 ( .AN(N52), .B(n49), .Y(N92) );
  NOR2BX1M U64 ( .AN(N51), .B(n49), .Y(N91) );
  NOR2BX1M U65 ( .AN(N50), .B(n49), .Y(N90) );
  OAI211X1M U66 ( .A0(div_ratio[0]), .A1(n1), .B0(n43), .C0(n44), .Y(n49) );
  NOR3BX1M U67 ( .AN(clk_en), .B(n47), .C(N0), .Y(n44) );
  CLKNAND2X2M U68 ( .A(n50), .B(n52), .Y(n47) );
  NOR4X1M U69 ( .A(n53), .B(n54), .C(n55), .D(n56), .Y(n52) );
  CLKXOR2X2M U70 ( .A(prev_div_ratio_4_), .B(div_ratio[4]), .Y(n56) );
  CLKXOR2X2M U71 ( .A(prev_div_ratio_3_), .B(div_ratio[3]), .Y(n55) );
  CLKXOR2X2M U72 ( .A(prev_div_ratio_2_), .B(div_ratio[2]), .Y(n54) );
  CLKXOR2X2M U73 ( .A(prev_div_ratio_1_), .B(div_ratio[1]), .Y(n53) );
  NOR4X1M U74 ( .A(n57), .B(n58), .C(n59), .D(n61), .Y(n50) );
  CLKXOR2X2M U75 ( .A(prev_div_ratio_0_), .B(div_ratio[0]), .Y(n61) );
  CLKXOR2X2M U76 ( .A(test_so), .B(div_ratio[7]), .Y(n59) );
  CLKXOR2X2M U77 ( .A(prev_div_ratio_6_), .B(div_ratio[6]), .Y(n58) );
  CLKXOR2X2M U78 ( .A(prev_div_ratio_5_), .B(div_ratio[5]), .Y(n57) );
  CLKNAND2X2M U79 ( .A(n62), .B(div_ratio[0]), .Y(n43) );
  MXI2X1M U80 ( .A(n1), .B(n63), .S0(flag), .Y(n62) );
  CLKNAND2X2M U81 ( .A(n64), .B(n65), .Y(n63) );
  NOR4X1M U82 ( .A(count[7]), .B(n66), .C(n67), .D(n68), .Y(n65) );
  CLKXOR2X2M U83 ( .A(count[2]), .B(div_ratio[3]), .Y(n68) );
  CLKXOR2X2M U84 ( .A(count[1]), .B(div_ratio[2]), .Y(n67) );
  CLKXOR2X2M U85 ( .A(count[0]), .B(div_ratio[1]), .Y(n66) );
  NOR4X1M U86 ( .A(n69), .B(n70), .C(n71), .D(n72), .Y(n64) );
  CLKXOR2X2M U87 ( .A(count[6]), .B(div_ratio[7]), .Y(n72) );
  CLKXOR2X2M U88 ( .A(count[5]), .B(div_ratio[6]), .Y(n71) );
  CLKXOR2X2M U89 ( .A(count[4]), .B(div_ratio[5]), .Y(n70) );
  CLKXOR2X2M U90 ( .A(count[3]), .B(div_ratio[4]), .Y(n69) );
  NOR4BX1M U91 ( .AN(n73), .B(div_ratio[2]), .C(div_ratio[3]), .D(div_ratio[1]), .Y(N0) );
  NOR4X1M U92 ( .A(div_ratio[7]), .B(div_ratio[6]), .C(div_ratio[5]), .D(
        div_ratio[4]), .Y(n73) );
  clk_div_WIDTH8_0_DW01_inc_0 r87 ( .A(count), .SUM({N57, N56, N55, N54, N53, 
        N52, N51, N50}) );
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


module clk_div_WIDTH8_test_0 ( clk_ref, rst_n, clk_en, div_ratio, div_clk, 
        test_si, test_so, test_se );
  input [7:0] div_ratio;
  input clk_ref, rst_n, clk_en, test_si, test_se;
  output div_clk, test_so;
  wire   N0, div_clk_reg, N9, flag, prev_div_ratio_6_, prev_div_ratio_5_,
         prev_div_ratio_4_, prev_div_ratio_3_, prev_div_ratio_2_,
         prev_div_ratio_1_, prev_div_ratio_0_, N18, N20, N21, N22, N23, N24,
         N25, N50, N51, N52, N53, N54, N55, N56, N57, N90, N91, N92, N93, N94,
         N95, N96, N97, n1, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n34, n35, n36, n37, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n52, n53, n54, n55, n56, n57, n58, n59, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77;
  wire   [7:0] count;

  SDFFRQX2M count_reg_7_ ( .D(N97), .SI(count[6]), .SE(test_se), .CK(clk_ref), 
        .RN(n4), .Q(count[7]) );
  SDFFRQX2M flag_reg ( .D(n75), .SI(div_clk_reg), .SE(test_se), .CK(clk_ref), 
        .RN(n4), .Q(flag) );
  SDFFRQX2M prev_div_ratio_reg_0_ ( .D(div_ratio[0]), .SI(flag), .SE(test_se), 
        .CK(clk_ref), .RN(n4), .Q(prev_div_ratio_0_) );
  SDFFRQX2M prev_div_ratio_reg_7_ ( .D(div_ratio[7]), .SI(prev_div_ratio_6_), 
        .SE(test_se), .CK(clk_ref), .RN(n4), .Q(test_so) );
  SDFFRQX2M prev_div_ratio_reg_6_ ( .D(div_ratio[6]), .SI(prev_div_ratio_5_), 
        .SE(test_se), .CK(clk_ref), .RN(n4), .Q(prev_div_ratio_6_) );
  SDFFRQX2M prev_div_ratio_reg_5_ ( .D(div_ratio[5]), .SI(prev_div_ratio_4_), 
        .SE(test_se), .CK(clk_ref), .RN(n4), .Q(prev_div_ratio_5_) );
  SDFFRQX2M prev_div_ratio_reg_4_ ( .D(div_ratio[4]), .SI(prev_div_ratio_3_), 
        .SE(test_se), .CK(clk_ref), .RN(n4), .Q(prev_div_ratio_4_) );
  SDFFRQX2M prev_div_ratio_reg_3_ ( .D(div_ratio[3]), .SI(prev_div_ratio_2_), 
        .SE(test_se), .CK(clk_ref), .RN(n4), .Q(prev_div_ratio_3_) );
  SDFFRQX2M prev_div_ratio_reg_2_ ( .D(div_ratio[2]), .SI(prev_div_ratio_1_), 
        .SE(test_se), .CK(clk_ref), .RN(n4), .Q(prev_div_ratio_2_) );
  SDFFRQX2M prev_div_ratio_reg_1_ ( .D(div_ratio[1]), .SI(prev_div_ratio_0_), 
        .SE(test_se), .CK(clk_ref), .RN(n4), .Q(prev_div_ratio_1_) );
  SDFFRQX2M count_reg_0_ ( .D(N90), .SI(test_si), .SE(test_se), .CK(clk_ref), 
        .RN(n4), .Q(count[0]) );
  SDFFRQX2M count_reg_2_ ( .D(N92), .SI(count[1]), .SE(test_se), .CK(clk_ref), 
        .RN(n4), .Q(count[2]) );
  SDFFRQX2M count_reg_3_ ( .D(N93), .SI(count[2]), .SE(test_se), .CK(clk_ref), 
        .RN(n4), .Q(count[3]) );
  SDFFRQX2M count_reg_4_ ( .D(N94), .SI(count[3]), .SE(test_se), .CK(clk_ref), 
        .RN(n4), .Q(count[4]) );
  SDFFRQX2M count_reg_5_ ( .D(N95), .SI(count[4]), .SE(test_se), .CK(clk_ref), 
        .RN(n4), .Q(count[5]) );
  SDFFRQX2M count_reg_6_ ( .D(N96), .SI(count[5]), .SE(test_se), .CK(clk_ref), 
        .RN(n4), .Q(count[6]) );
  SDFFRQX2M count_reg_1_ ( .D(N91), .SI(n41), .SE(test_se), .CK(clk_ref), .RN(
        n4), .Q(count[1]) );
  SDFFRX1M div_clk_reg_reg ( .D(n76), .SI(count[7]), .SE(test_se), .CK(clk_ref), .RN(rst_n), .Q(div_clk_reg), .QN(n77) );
  NAND4X2M U7 ( .A(n40), .B(n39), .C(n37), .D(n36), .Y(n1) );
  INVX2M U9 ( .A(n5), .Y(n4) );
  OR2X2M U10 ( .A(div_ratio[2]), .B(div_ratio[1]), .Y(n6) );
  AOI21BX2M U11 ( .A0(div_ratio[1]), .A1(div_ratio[2]), .B0N(n6), .Y(n3) );
  INVX2M U12 ( .A(rst_n), .Y(n5) );
  INVX2M U23 ( .A(count[0]), .Y(n41) );
  MX2X2M U24 ( .A(div_clk_reg), .B(clk_ref), .S0(N0), .Y(N9) );
  MX2X2M U29 ( .A(N9), .B(1'b0), .S0(n5), .Y(div_clk) );
  CLKINVX1M U30 ( .A(div_ratio[1]), .Y(N18) );
  OR2X1M U31 ( .A(n6), .B(div_ratio[3]), .Y(n7) );
  OAI2BB1X1M U32 ( .A0N(n6), .A1N(div_ratio[3]), .B0(n7), .Y(N20) );
  OR2X1M U33 ( .A(n7), .B(div_ratio[4]), .Y(n8) );
  OAI2BB1X1M U34 ( .A0N(n7), .A1N(div_ratio[4]), .B0(n8), .Y(N21) );
  OR2X1M U35 ( .A(n8), .B(div_ratio[5]), .Y(n9) );
  OAI2BB1X1M U36 ( .A0N(n8), .A1N(div_ratio[5]), .B0(n9), .Y(N22) );
  XNOR2X1M U37 ( .A(div_ratio[6]), .B(n9), .Y(N23) );
  NOR3X1M U38 ( .A(div_ratio[6]), .B(div_ratio[7]), .C(n9), .Y(N25) );
  OAI21X1M U39 ( .A0(div_ratio[6]), .A1(n9), .B0(div_ratio[7]), .Y(n10) );
  NAND2BX1M U40 ( .AN(N25), .B(n10), .Y(N24) );
  XNOR2X1M U41 ( .A(N20), .B(count[2]), .Y(n40) );
  NOR2X1M U42 ( .A(n41), .B(N18), .Y(n11) );
  OAI22X1M U43 ( .A0(count[1]), .A1(n11), .B0(n11), .B1(n3), .Y(n39) );
  CLKNAND2X2M U44 ( .A(N18), .B(n41), .Y(n12) );
  AOI22X1M U45 ( .A0(n12), .A1(n3), .B0(n12), .B1(count[1]), .Y(n13) );
  NOR3X1M U46 ( .A(n13), .B(N25), .C(count[7]), .Y(n37) );
  CLKXOR2X2M U47 ( .A(N21), .B(count[3]), .Y(n35) );
  CLKXOR2X2M U48 ( .A(N22), .B(count[4]), .Y(n34) );
  CLKXOR2X2M U49 ( .A(N23), .B(count[5]), .Y(n15) );
  CLKXOR2X2M U50 ( .A(N24), .B(count[6]), .Y(n14) );
  NOR4X1M U51 ( .A(n35), .B(n34), .C(n15), .D(n14), .Y(n36) );
  MXI2X1M U52 ( .A(n42), .B(n43), .S0(flag), .Y(n75) );
  NAND2BX1M U53 ( .AN(n44), .B(n45), .Y(n42) );
  MXI2X1M U54 ( .A(n46), .B(n77), .S0(n47), .Y(n76) );
  AOI2BB1X1M U55 ( .A0N(div_ratio[0]), .A1N(n1), .B0(n43), .Y(n47) );
  CLKNAND2X2M U56 ( .A(n45), .B(n44), .Y(n43) );
  OAI211X1M U57 ( .A0(n77), .A1(n48), .B0(n49), .C0(clk_en), .Y(n46) );
  CLKINVX1M U58 ( .A(N0), .Y(n49) );
  NOR2BX1M U59 ( .AN(N57), .B(n50), .Y(N97) );
  NOR2BX1M U60 ( .AN(N56), .B(n50), .Y(N96) );
  NOR2BX1M U61 ( .AN(N55), .B(n50), .Y(N95) );
  NOR2BX1M U62 ( .AN(N54), .B(n50), .Y(N94) );
  NOR2BX1M U63 ( .AN(N53), .B(n50), .Y(N93) );
  NOR2BX1M U64 ( .AN(N52), .B(n50), .Y(N92) );
  NOR2BX1M U65 ( .AN(N51), .B(n50), .Y(N91) );
  NOR2BX1M U66 ( .AN(N50), .B(n50), .Y(N90) );
  OAI211X1M U67 ( .A0(div_ratio[0]), .A1(n1), .B0(n44), .C0(n45), .Y(n50) );
  NOR3BX1M U68 ( .AN(clk_en), .B(n48), .C(N0), .Y(n45) );
  CLKNAND2X2M U69 ( .A(n52), .B(n53), .Y(n48) );
  NOR4X1M U70 ( .A(n54), .B(n55), .C(n56), .D(n57), .Y(n53) );
  CLKXOR2X2M U71 ( .A(prev_div_ratio_4_), .B(div_ratio[4]), .Y(n57) );
  CLKXOR2X2M U72 ( .A(prev_div_ratio_3_), .B(div_ratio[3]), .Y(n56) );
  CLKXOR2X2M U73 ( .A(prev_div_ratio_2_), .B(div_ratio[2]), .Y(n55) );
  CLKXOR2X2M U74 ( .A(prev_div_ratio_1_), .B(div_ratio[1]), .Y(n54) );
  NOR4X1M U75 ( .A(n58), .B(n59), .C(n61), .D(n62), .Y(n52) );
  CLKXOR2X2M U76 ( .A(prev_div_ratio_0_), .B(div_ratio[0]), .Y(n62) );
  CLKXOR2X2M U77 ( .A(test_so), .B(div_ratio[7]), .Y(n61) );
  CLKXOR2X2M U78 ( .A(prev_div_ratio_6_), .B(div_ratio[6]), .Y(n59) );
  CLKXOR2X2M U79 ( .A(prev_div_ratio_5_), .B(div_ratio[5]), .Y(n58) );
  CLKNAND2X2M U80 ( .A(n63), .B(div_ratio[0]), .Y(n44) );
  MXI2X1M U81 ( .A(n1), .B(n64), .S0(flag), .Y(n63) );
  CLKNAND2X2M U82 ( .A(n65), .B(n66), .Y(n64) );
  NOR4X1M U83 ( .A(count[7]), .B(n67), .C(n68), .D(n69), .Y(n66) );
  CLKXOR2X2M U84 ( .A(count[2]), .B(div_ratio[3]), .Y(n69) );
  CLKXOR2X2M U85 ( .A(count[1]), .B(div_ratio[2]), .Y(n68) );
  CLKXOR2X2M U86 ( .A(count[0]), .B(div_ratio[1]), .Y(n67) );
  NOR4X1M U87 ( .A(n70), .B(n71), .C(n72), .D(n73), .Y(n65) );
  CLKXOR2X2M U88 ( .A(count[6]), .B(div_ratio[7]), .Y(n73) );
  CLKXOR2X2M U89 ( .A(count[5]), .B(div_ratio[6]), .Y(n72) );
  CLKXOR2X2M U90 ( .A(count[4]), .B(div_ratio[5]), .Y(n71) );
  CLKXOR2X2M U91 ( .A(count[3]), .B(div_ratio[4]), .Y(n70) );
  NOR4BX1M U92 ( .AN(n74), .B(div_ratio[2]), .C(div_ratio[3]), .D(div_ratio[1]), .Y(N0) );
  NOR4X1M U93 ( .A(div_ratio[7]), .B(div_ratio[6]), .C(div_ratio[5]), .D(
        div_ratio[4]), .Y(n74) );
  clk_div_WIDTH8_1_DW01_inc_0 r87 ( .A(count), .SUM({N57, N56, N55, N54, N53, 
        N52, N51, N50}) );
endmodule


module clk_div_mux_WIDTH8 ( in, out );
  input [5:0] in;
  output [7:0] out;
  wire   n5, n6, n7, n8, n9, n14, n15, n16, n17;

  NAND4BX1M U11 ( .AN(in[4]), .B(in[3]), .C(n15), .D(n14), .Y(n6) );
  NAND4BX1M U12 ( .AN(in[3]), .B(in[4]), .C(n15), .D(n14), .Y(n7) );
  NOR3X2M U13 ( .A(n7), .B(in[1]), .C(in[0]), .Y(out[1]) );
  NOR3X2M U14 ( .A(n6), .B(in[1]), .C(in[0]), .Y(out[2]) );
  INVX2M U15 ( .A(in[2]), .Y(n15) );
  INVX2M U16 ( .A(in[5]), .Y(n14) );
  NOR4X1M U17 ( .A(n5), .B(in[3]), .C(in[5]), .D(in[4]), .Y(out[3]) );
  NAND3X2M U18 ( .A(n17), .B(n16), .C(in[2]), .Y(n5) );
  OAI211X2M U19 ( .A0(n8), .A1(n9), .B0(n17), .C0(n16), .Y(out[0]) );
  NOR4X1M U20 ( .A(in[5]), .B(in[4]), .C(in[3]), .D(n15), .Y(n8) );
  NAND2X2M U21 ( .A(n7), .B(n6), .Y(n9) );
  INVX2M U22 ( .A(in[0]), .Y(n17) );
  INVX2M U23 ( .A(in[1]), .Y(n16) );
  INVX2M U3 ( .A(1'b1), .Y(out[4]) );
  INVX2M U5 ( .A(1'b1), .Y(out[5]) );
  INVX2M U7 ( .A(1'b1), .Y(out[6]) );
  INVX2M U9 ( .A(1'b1), .Y(out[7]) );
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
  wire   u_div_SumTmp_1__0_, u_div_SumTmp_1__1_, u_div_SumTmp_1__2_,
         u_div_SumTmp_1__3_, u_div_SumTmp_1__4_, u_div_SumTmp_1__5_,
         u_div_SumTmp_1__6_, u_div_SumTmp_2__0_, u_div_SumTmp_2__1_,
         u_div_SumTmp_2__2_, u_div_SumTmp_2__3_, u_div_SumTmp_2__4_,
         u_div_SumTmp_2__5_, u_div_SumTmp_3__0_, u_div_SumTmp_3__1_,
         u_div_SumTmp_3__2_, u_div_SumTmp_3__3_, u_div_SumTmp_3__4_,
         u_div_SumTmp_4__0_, u_div_SumTmp_4__1_, u_div_SumTmp_4__2_,
         u_div_SumTmp_4__3_, u_div_SumTmp_5__0_, u_div_SumTmp_5__1_,
         u_div_SumTmp_5__2_, u_div_SumTmp_6__0_, u_div_SumTmp_6__1_,
         u_div_SumTmp_7__0_, u_div_CryTmp_0__1_, u_div_CryTmp_0__2_,
         u_div_CryTmp_0__3_, u_div_CryTmp_0__4_, u_div_CryTmp_0__5_,
         u_div_CryTmp_0__6_, u_div_CryTmp_0__7_, u_div_CryTmp_1__1_,
         u_div_CryTmp_1__2_, u_div_CryTmp_1__3_, u_div_CryTmp_1__4_,
         u_div_CryTmp_1__5_, u_div_CryTmp_1__6_, u_div_CryTmp_1__7_,
         u_div_CryTmp_2__1_, u_div_CryTmp_2__2_, u_div_CryTmp_2__3_,
         u_div_CryTmp_2__4_, u_div_CryTmp_2__5_, u_div_CryTmp_2__6_,
         u_div_CryTmp_3__1_, u_div_CryTmp_3__2_, u_div_CryTmp_3__3_,
         u_div_CryTmp_3__4_, u_div_CryTmp_3__5_, u_div_CryTmp_4__1_,
         u_div_CryTmp_4__2_, u_div_CryTmp_4__3_, u_div_CryTmp_4__4_,
         u_div_CryTmp_5__1_, u_div_CryTmp_5__2_, u_div_CryTmp_5__3_,
         u_div_CryTmp_6__1_, u_div_CryTmp_6__2_, u_div_CryTmp_7__1_,
         u_div_PartRem_1__1_, u_div_PartRem_1__2_, u_div_PartRem_1__3_,
         u_div_PartRem_1__4_, u_div_PartRem_1__5_, u_div_PartRem_1__6_,
         u_div_PartRem_1__7_, u_div_PartRem_2__1_, u_div_PartRem_2__2_,
         u_div_PartRem_2__3_, u_div_PartRem_2__4_, u_div_PartRem_2__5_,
         u_div_PartRem_2__6_, u_div_PartRem_3__1_, u_div_PartRem_3__2_,
         u_div_PartRem_3__3_, u_div_PartRem_3__4_, u_div_PartRem_3__5_,
         u_div_PartRem_4__1_, u_div_PartRem_4__2_, u_div_PartRem_4__3_,
         u_div_PartRem_4__4_, u_div_PartRem_5__1_, u_div_PartRem_5__2_,
         u_div_PartRem_5__3_, u_div_PartRem_6__1_, u_div_PartRem_6__2_,
         u_div_PartRem_7__1_, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21;

  ADDFX2M u_div_u_fa_PartRem_0_2_5 ( .A(u_div_PartRem_3__5_), .B(n13), .CI(
        u_div_CryTmp_2__5_), .CO(u_div_CryTmp_2__6_), .S(u_div_SumTmp_2__5_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_4_3 ( .A(u_div_PartRem_5__3_), .B(n15), .CI(
        u_div_CryTmp_4__3_), .CO(u_div_CryTmp_4__4_), .S(u_div_SumTmp_4__3_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_5_2 ( .A(u_div_PartRem_6__2_), .B(n16), .CI(
        u_div_CryTmp_5__2_), .CO(u_div_CryTmp_5__3_), .S(u_div_SumTmp_5__2_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_6_1 ( .A(u_div_PartRem_7__1_), .B(n17), .CI(
        u_div_CryTmp_6__1_), .CO(u_div_CryTmp_6__2_), .S(u_div_SumTmp_6__1_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_3_4 ( .A(u_div_PartRem_4__4_), .B(n14), .CI(
        u_div_CryTmp_3__4_), .CO(u_div_CryTmp_3__5_), .S(u_div_SumTmp_3__4_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_0_6 ( .A(u_div_PartRem_1__6_), .B(n12), .CI(
        u_div_CryTmp_0__6_), .CO(u_div_CryTmp_0__7_) );
  ADDFX2M u_div_u_fa_PartRem_0_0_7 ( .A(u_div_PartRem_1__7_), .B(n11), .CI(
        u_div_CryTmp_0__7_), .CO(quotient[0]) );
  ADDFX2M u_div_u_fa_PartRem_0_1_1 ( .A(u_div_PartRem_2__1_), .B(n17), .CI(
        u_div_CryTmp_1__1_), .CO(u_div_CryTmp_1__2_), .S(u_div_SumTmp_1__1_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_2_1 ( .A(u_div_PartRem_3__1_), .B(n17), .CI(
        u_div_CryTmp_2__1_), .CO(u_div_CryTmp_2__2_), .S(u_div_SumTmp_2__1_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_3_1 ( .A(u_div_PartRem_4__1_), .B(n17), .CI(
        u_div_CryTmp_3__1_), .CO(u_div_CryTmp_3__2_), .S(u_div_SumTmp_3__1_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_4_1 ( .A(u_div_PartRem_5__1_), .B(n17), .CI(
        u_div_CryTmp_4__1_), .CO(u_div_CryTmp_4__2_), .S(u_div_SumTmp_4__1_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_5_1 ( .A(u_div_PartRem_6__1_), .B(n17), .CI(
        u_div_CryTmp_5__1_), .CO(u_div_CryTmp_5__2_), .S(u_div_SumTmp_5__1_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_0_3 ( .A(u_div_PartRem_1__3_), .B(n15), .CI(
        u_div_CryTmp_0__3_), .CO(u_div_CryTmp_0__4_) );
  ADDFX2M u_div_u_fa_PartRem_0_0_4 ( .A(u_div_PartRem_1__4_), .B(n14), .CI(
        u_div_CryTmp_0__4_), .CO(u_div_CryTmp_0__5_) );
  ADDFX2M u_div_u_fa_PartRem_0_0_5 ( .A(u_div_PartRem_1__5_), .B(n13), .CI(
        u_div_CryTmp_0__5_), .CO(u_div_CryTmp_0__6_) );
  ADDFX2M u_div_u_fa_PartRem_0_1_4 ( .A(u_div_PartRem_2__4_), .B(n14), .CI(
        u_div_CryTmp_1__4_), .CO(u_div_CryTmp_1__5_), .S(u_div_SumTmp_1__4_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_0_1 ( .A(u_div_PartRem_1__1_), .B(n17), .CI(
        u_div_CryTmp_0__1_), .CO(u_div_CryTmp_0__2_) );
  ADDFX2M u_div_u_fa_PartRem_0_0_2 ( .A(u_div_PartRem_1__2_), .B(n16), .CI(
        u_div_CryTmp_0__2_), .CO(u_div_CryTmp_0__3_) );
  ADDFX2M u_div_u_fa_PartRem_0_1_3 ( .A(u_div_PartRem_2__3_), .B(n15), .CI(
        u_div_CryTmp_1__3_), .CO(u_div_CryTmp_1__4_), .S(u_div_SumTmp_1__3_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_1_5 ( .A(u_div_PartRem_2__5_), .B(n13), .CI(
        u_div_CryTmp_1__5_), .CO(u_div_CryTmp_1__6_), .S(u_div_SumTmp_1__5_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_1_2 ( .A(u_div_PartRem_2__2_), .B(n16), .CI(
        u_div_CryTmp_1__2_), .CO(u_div_CryTmp_1__3_), .S(u_div_SumTmp_1__2_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_2_4 ( .A(u_div_PartRem_3__4_), .B(n14), .CI(
        u_div_CryTmp_2__4_), .CO(u_div_CryTmp_2__5_), .S(u_div_SumTmp_2__4_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_2_3 ( .A(u_div_PartRem_3__3_), .B(n15), .CI(
        u_div_CryTmp_2__3_), .CO(u_div_CryTmp_2__4_), .S(u_div_SumTmp_2__3_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_2_2 ( .A(u_div_PartRem_3__2_), .B(n16), .CI(
        u_div_CryTmp_2__2_), .CO(u_div_CryTmp_2__3_), .S(u_div_SumTmp_2__2_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_3_3 ( .A(u_div_PartRem_4__3_), .B(n15), .CI(
        u_div_CryTmp_3__3_), .CO(u_div_CryTmp_3__4_), .S(u_div_SumTmp_3__3_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_3_2 ( .A(u_div_PartRem_4__2_), .B(n16), .CI(
        u_div_CryTmp_3__2_), .CO(u_div_CryTmp_3__3_), .S(u_div_SumTmp_3__2_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_4_2 ( .A(u_div_PartRem_5__2_), .B(n16), .CI(
        u_div_CryTmp_4__2_), .CO(u_div_CryTmp_4__3_), .S(u_div_SumTmp_4__2_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_1_6 ( .A(u_div_PartRem_2__6_), .B(n12), .CI(
        u_div_CryTmp_1__6_), .CO(u_div_CryTmp_1__7_), .S(u_div_SumTmp_1__6_)
         );
  INVX2M U1 ( .A(b[0]), .Y(n18) );
  XNOR2X2M U2 ( .A(n18), .B(a[7]), .Y(u_div_SumTmp_7__0_) );
  XNOR2X2M U3 ( .A(n18), .B(a[6]), .Y(u_div_SumTmp_6__0_) );
  XNOR2X2M U4 ( .A(n18), .B(a[5]), .Y(u_div_SumTmp_5__0_) );
  XNOR2X2M U5 ( .A(n18), .B(a[4]), .Y(u_div_SumTmp_4__0_) );
  XNOR2X2M U6 ( .A(n18), .B(a[3]), .Y(u_div_SumTmp_3__0_) );
  XNOR2X2M U7 ( .A(n18), .B(a[2]), .Y(u_div_SumTmp_2__0_) );
  XNOR2X2M U8 ( .A(n18), .B(a[1]), .Y(u_div_SumTmp_1__0_) );
  OR2X2M U9 ( .A(n18), .B(a[7]), .Y(u_div_CryTmp_7__1_) );
  INVX2M U10 ( .A(b[1]), .Y(n17) );
  NAND2X2M U11 ( .A(n2), .B(n10), .Y(u_div_CryTmp_0__1_) );
  NAND2X2M U12 ( .A(n2), .B(n3), .Y(u_div_CryTmp_5__1_) );
  INVX2M U13 ( .A(a[5]), .Y(n3) );
  INVX2M U14 ( .A(n18), .Y(n2) );
  NAND2X2M U15 ( .A(n4), .B(n5), .Y(u_div_CryTmp_4__1_) );
  INVX2M U16 ( .A(a[4]), .Y(n5) );
  INVX2M U17 ( .A(n18), .Y(n4) );
  NAND2X2M U18 ( .A(n6), .B(n7), .Y(u_div_CryTmp_3__1_) );
  INVX2M U19 ( .A(a[3]), .Y(n7) );
  INVX2M U20 ( .A(n18), .Y(n6) );
  NAND2X2M U21 ( .A(n6), .B(n8), .Y(u_div_CryTmp_2__1_) );
  INVX2M U22 ( .A(a[2]), .Y(n8) );
  NAND2X2M U23 ( .A(n4), .B(n9), .Y(u_div_CryTmp_1__1_) );
  INVX2M U24 ( .A(a[1]), .Y(n9) );
  NAND2X2M U25 ( .A(n2), .B(n1), .Y(u_div_CryTmp_6__1_) );
  INVX2M U26 ( .A(a[6]), .Y(n1) );
  INVX2M U27 ( .A(b[6]), .Y(n12) );
  INVX2M U28 ( .A(a[0]), .Y(n10) );
  INVX2M U29 ( .A(b[7]), .Y(n11) );
  INVX2M U30 ( .A(b[2]), .Y(n16) );
  INVX2M U31 ( .A(b[3]), .Y(n15) );
  INVX2M U32 ( .A(b[4]), .Y(n14) );
  INVX2M U33 ( .A(b[5]), .Y(n13) );
  CLKMX2X2M U34 ( .A(u_div_PartRem_2__6_), .B(u_div_SumTmp_1__6_), .S0(
        quotient[1]), .Y(u_div_PartRem_1__7_) );
  CLKMX2X2M U35 ( .A(u_div_PartRem_3__5_), .B(u_div_SumTmp_2__5_), .S0(
        quotient[2]), .Y(u_div_PartRem_2__6_) );
  CLKMX2X2M U36 ( .A(u_div_PartRem_4__4_), .B(u_div_SumTmp_3__4_), .S0(
        quotient[3]), .Y(u_div_PartRem_3__5_) );
  CLKMX2X2M U37 ( .A(u_div_PartRem_5__3_), .B(u_div_SumTmp_4__3_), .S0(
        quotient[4]), .Y(u_div_PartRem_4__4_) );
  CLKMX2X2M U38 ( .A(u_div_PartRem_6__2_), .B(u_div_SumTmp_5__2_), .S0(
        quotient[5]), .Y(u_div_PartRem_5__3_) );
  CLKMX2X2M U39 ( .A(u_div_PartRem_7__1_), .B(u_div_SumTmp_6__1_), .S0(
        quotient[6]), .Y(u_div_PartRem_6__2_) );
  CLKMX2X2M U40 ( .A(a[7]), .B(u_div_SumTmp_7__0_), .S0(quotient[7]), .Y(
        u_div_PartRem_7__1_) );
  CLKMX2X2M U41 ( .A(u_div_PartRem_2__5_), .B(u_div_SumTmp_1__5_), .S0(
        quotient[1]), .Y(u_div_PartRem_1__6_) );
  CLKMX2X2M U42 ( .A(u_div_PartRem_3__4_), .B(u_div_SumTmp_2__4_), .S0(
        quotient[2]), .Y(u_div_PartRem_2__5_) );
  CLKMX2X2M U43 ( .A(u_div_PartRem_4__3_), .B(u_div_SumTmp_3__3_), .S0(
        quotient[3]), .Y(u_div_PartRem_3__4_) );
  CLKMX2X2M U44 ( .A(u_div_PartRem_5__2_), .B(u_div_SumTmp_4__2_), .S0(
        quotient[4]), .Y(u_div_PartRem_4__3_) );
  CLKMX2X2M U45 ( .A(u_div_PartRem_6__1_), .B(u_div_SumTmp_5__1_), .S0(
        quotient[5]), .Y(u_div_PartRem_5__2_) );
  CLKMX2X2M U46 ( .A(a[6]), .B(u_div_SumTmp_6__0_), .S0(quotient[6]), .Y(
        u_div_PartRem_6__1_) );
  CLKMX2X2M U47 ( .A(u_div_PartRem_2__4_), .B(u_div_SumTmp_1__4_), .S0(
        quotient[1]), .Y(u_div_PartRem_1__5_) );
  CLKMX2X2M U48 ( .A(u_div_PartRem_3__3_), .B(u_div_SumTmp_2__3_), .S0(
        quotient[2]), .Y(u_div_PartRem_2__4_) );
  CLKMX2X2M U49 ( .A(u_div_PartRem_4__2_), .B(u_div_SumTmp_3__2_), .S0(
        quotient[3]), .Y(u_div_PartRem_3__3_) );
  CLKMX2X2M U50 ( .A(u_div_PartRem_5__1_), .B(u_div_SumTmp_4__1_), .S0(
        quotient[4]), .Y(u_div_PartRem_4__2_) );
  CLKMX2X2M U51 ( .A(a[5]), .B(u_div_SumTmp_5__0_), .S0(quotient[5]), .Y(
        u_div_PartRem_5__1_) );
  CLKMX2X2M U52 ( .A(u_div_PartRem_2__3_), .B(u_div_SumTmp_1__3_), .S0(
        quotient[1]), .Y(u_div_PartRem_1__4_) );
  CLKMX2X2M U53 ( .A(u_div_PartRem_3__2_), .B(u_div_SumTmp_2__2_), .S0(
        quotient[2]), .Y(u_div_PartRem_2__3_) );
  CLKMX2X2M U54 ( .A(u_div_PartRem_4__1_), .B(u_div_SumTmp_3__1_), .S0(
        quotient[3]), .Y(u_div_PartRem_3__2_) );
  CLKMX2X2M U55 ( .A(a[4]), .B(u_div_SumTmp_4__0_), .S0(quotient[4]), .Y(
        u_div_PartRem_4__1_) );
  CLKMX2X2M U56 ( .A(u_div_PartRem_2__2_), .B(u_div_SumTmp_1__2_), .S0(
        quotient[1]), .Y(u_div_PartRem_1__3_) );
  CLKMX2X2M U57 ( .A(u_div_PartRem_3__1_), .B(u_div_SumTmp_2__1_), .S0(
        quotient[2]), .Y(u_div_PartRem_2__2_) );
  CLKMX2X2M U58 ( .A(a[3]), .B(u_div_SumTmp_3__0_), .S0(quotient[3]), .Y(
        u_div_PartRem_3__1_) );
  CLKMX2X2M U59 ( .A(u_div_PartRem_2__1_), .B(u_div_SumTmp_1__1_), .S0(
        quotient[1]), .Y(u_div_PartRem_1__2_) );
  CLKMX2X2M U60 ( .A(a[2]), .B(u_div_SumTmp_2__0_), .S0(quotient[2]), .Y(
        u_div_PartRem_2__1_) );
  CLKMX2X2M U61 ( .A(a[1]), .B(u_div_SumTmp_1__0_), .S0(quotient[1]), .Y(
        u_div_PartRem_1__1_) );
  AND4X1M U62 ( .A(u_div_CryTmp_7__1_), .B(n19), .C(n17), .D(n16), .Y(
        quotient[7]) );
  AND3X1M U63 ( .A(n19), .B(n16), .C(u_div_CryTmp_6__2_), .Y(quotient[6]) );
  AND2X1M U64 ( .A(u_div_CryTmp_5__3_), .B(n19), .Y(quotient[5]) );
  AND2X1M U65 ( .A(n20), .B(n15), .Y(n19) );
  AND2X1M U66 ( .A(u_div_CryTmp_4__4_), .B(n20), .Y(quotient[4]) );
  AND3X1M U67 ( .A(n21), .B(n14), .C(n13), .Y(n20) );
  AND3X1M U68 ( .A(n21), .B(n13), .C(u_div_CryTmp_3__5_), .Y(quotient[3]) );
  AND2X1M U69 ( .A(u_div_CryTmp_2__6_), .B(n21), .Y(quotient[2]) );
  NOR2X1M U70 ( .A(b[6]), .B(b[7]), .Y(n21) );
  AND2X1M U71 ( .A(u_div_CryTmp_1__7_), .B(n11), .Y(quotient[1]) );
endmodule


module ALU_DATA_WIDTH8_OUT_WIDTH16_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [8:1] carry;

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
  XNOR2X2M U1 ( .A(n9), .B(A[0]), .Y(DIFF[0]) );
  INVX2M U2 ( .A(B[6]), .Y(n3) );
  INVX2M U3 ( .A(B[1]), .Y(n8) );
  NAND2X2M U4 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  INVX2M U5 ( .A(A[0]), .Y(n1) );
  INVX2M U6 ( .A(B[7]), .Y(n2) );
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
  wire   [7:2] carry;

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
  wire   ab_7__7_, ab_7__6_, ab_7__5_, ab_7__4_, ab_7__3_, ab_7__2_, ab_7__1_,
         ab_7__0_, ab_6__7_, ab_6__6_, ab_6__5_, ab_6__4_, ab_6__3_, ab_6__2_,
         ab_6__1_, ab_6__0_, ab_5__7_, ab_5__6_, ab_5__5_, ab_5__4_, ab_5__3_,
         ab_5__2_, ab_5__1_, ab_5__0_, ab_4__7_, ab_4__6_, ab_4__5_, ab_4__4_,
         ab_4__3_, ab_4__2_, ab_4__1_, ab_4__0_, ab_3__7_, ab_3__6_, ab_3__5_,
         ab_3__4_, ab_3__3_, ab_3__2_, ab_3__1_, ab_3__0_, ab_2__7_, ab_2__6_,
         ab_2__5_, ab_2__4_, ab_2__3_, ab_2__2_, ab_2__1_, ab_2__0_, ab_1__7_,
         ab_1__6_, ab_1__5_, ab_1__4_, ab_1__3_, ab_1__2_, ab_1__1_, ab_1__0_,
         ab_0__7_, ab_0__6_, ab_0__5_, ab_0__4_, ab_0__3_, ab_0__2_, ab_0__1_,
         CARRYB_7__6_, CARRYB_7__5_, CARRYB_7__4_, CARRYB_7__3_, CARRYB_7__2_,
         CARRYB_7__1_, CARRYB_7__0_, CARRYB_6__6_, CARRYB_6__5_, CARRYB_6__4_,
         CARRYB_6__3_, CARRYB_6__2_, CARRYB_6__1_, CARRYB_6__0_, CARRYB_5__6_,
         CARRYB_5__5_, CARRYB_5__4_, CARRYB_5__3_, CARRYB_5__2_, CARRYB_5__1_,
         CARRYB_5__0_, CARRYB_4__6_, CARRYB_4__5_, CARRYB_4__4_, CARRYB_4__3_,
         CARRYB_4__2_, CARRYB_4__1_, CARRYB_4__0_, CARRYB_3__6_, CARRYB_3__5_,
         CARRYB_3__4_, CARRYB_3__3_, CARRYB_3__2_, CARRYB_3__1_, CARRYB_3__0_,
         CARRYB_2__6_, CARRYB_2__5_, CARRYB_2__4_, CARRYB_2__3_, CARRYB_2__2_,
         CARRYB_2__1_, CARRYB_2__0_, SUMB_7__6_, SUMB_7__5_, SUMB_7__4_,
         SUMB_7__3_, SUMB_7__2_, SUMB_7__1_, SUMB_7__0_, SUMB_6__6_,
         SUMB_6__5_, SUMB_6__4_, SUMB_6__3_, SUMB_6__2_, SUMB_6__1_,
         SUMB_5__6_, SUMB_5__5_, SUMB_5__4_, SUMB_5__3_, SUMB_5__2_,
         SUMB_5__1_, SUMB_4__6_, SUMB_4__5_, SUMB_4__4_, SUMB_4__3_,
         SUMB_4__2_, SUMB_4__1_, SUMB_3__6_, SUMB_3__5_, SUMB_3__4_,
         SUMB_3__3_, SUMB_3__2_, SUMB_3__1_, SUMB_2__6_, SUMB_2__5_,
         SUMB_2__4_, SUMB_2__3_, SUMB_2__2_, SUMB_2__1_, SUMB_1__6_,
         SUMB_1__5_, SUMB_1__4_, SUMB_1__3_, SUMB_1__2_, SUMB_1__1_, A1_12_,
         A1_11_, A1_10_, A1_9_, A1_8_, A1_7_, A1_6_, A1_4_, A1_3_, A1_2_,
         A1_1_, A1_0_, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39;

  ADDFX2M S1_6_0 ( .A(ab_6__0_), .B(CARRYB_5__0_), .CI(SUMB_5__1_), .CO(
        CARRYB_6__0_), .S(A1_4_) );
  ADDFX2M S1_5_0 ( .A(ab_5__0_), .B(CARRYB_4__0_), .CI(SUMB_4__1_), .CO(
        CARRYB_5__0_), .S(A1_3_) );
  ADDFX2M S1_4_0 ( .A(ab_4__0_), .B(CARRYB_3__0_), .CI(SUMB_3__1_), .CO(
        CARRYB_4__0_), .S(A1_2_) );
  ADDFX2M S1_3_0 ( .A(ab_3__0_), .B(CARRYB_2__0_), .CI(SUMB_2__1_), .CO(
        CARRYB_3__0_), .S(A1_1_) );
  ADDFX2M S2_6_5 ( .A(ab_6__5_), .B(CARRYB_5__5_), .CI(SUMB_5__6_), .CO(
        CARRYB_6__5_), .S(SUMB_6__5_) );
  ADDFX2M S2_6_4 ( .A(ab_6__4_), .B(CARRYB_5__4_), .CI(SUMB_5__5_), .CO(
        CARRYB_6__4_), .S(SUMB_6__4_) );
  ADDFX2M S2_5_5 ( .A(ab_5__5_), .B(CARRYB_4__5_), .CI(SUMB_4__6_), .CO(
        CARRYB_5__5_), .S(SUMB_5__5_) );
  ADDFX2M S2_6_3 ( .A(ab_6__3_), .B(CARRYB_5__3_), .CI(SUMB_5__4_), .CO(
        CARRYB_6__3_), .S(SUMB_6__3_) );
  ADDFX2M S2_5_4 ( .A(ab_5__4_), .B(CARRYB_4__4_), .CI(SUMB_4__5_), .CO(
        CARRYB_5__4_), .S(SUMB_5__4_) );
  ADDFX2M S2_6_2 ( .A(ab_6__2_), .B(CARRYB_5__2_), .CI(SUMB_5__3_), .CO(
        CARRYB_6__2_), .S(SUMB_6__2_) );
  ADDFX2M S2_4_5 ( .A(ab_4__5_), .B(CARRYB_3__5_), .CI(SUMB_3__6_), .CO(
        CARRYB_4__5_), .S(SUMB_4__5_) );
  ADDFX2M S2_5_2 ( .A(ab_5__2_), .B(CARRYB_4__2_), .CI(SUMB_4__3_), .CO(
        CARRYB_5__2_), .S(SUMB_5__2_) );
  ADDFX2M S2_5_3 ( .A(ab_5__3_), .B(CARRYB_4__3_), .CI(SUMB_4__4_), .CO(
        CARRYB_5__3_), .S(SUMB_5__3_) );
  ADDFX2M S2_4_2 ( .A(ab_4__2_), .B(CARRYB_3__2_), .CI(SUMB_3__3_), .CO(
        CARRYB_4__2_), .S(SUMB_4__2_) );
  ADDFX2M S2_4_3 ( .A(ab_4__3_), .B(CARRYB_3__3_), .CI(SUMB_3__4_), .CO(
        CARRYB_4__3_), .S(SUMB_4__3_) );
  ADDFX2M S2_4_4 ( .A(ab_4__4_), .B(CARRYB_3__4_), .CI(SUMB_3__5_), .CO(
        CARRYB_4__4_), .S(SUMB_4__4_) );
  ADDFX2M S2_3_2 ( .A(ab_3__2_), .B(CARRYB_2__2_), .CI(SUMB_2__3_), .CO(
        CARRYB_3__2_), .S(SUMB_3__2_) );
  ADDFX2M S2_3_3 ( .A(ab_3__3_), .B(CARRYB_2__3_), .CI(SUMB_2__4_), .CO(
        CARRYB_3__3_), .S(SUMB_3__3_) );
  ADDFX2M S2_3_4 ( .A(ab_3__4_), .B(CARRYB_2__4_), .CI(SUMB_2__5_), .CO(
        CARRYB_3__4_), .S(SUMB_3__4_) );
  ADDFX2M S2_3_5 ( .A(ab_3__5_), .B(CARRYB_2__5_), .CI(SUMB_2__6_), .CO(
        CARRYB_3__5_), .S(SUMB_3__5_) );
  ADDFX2M S1_2_0 ( .A(ab_2__0_), .B(n9), .CI(SUMB_1__1_), .CO(CARRYB_2__0_), 
        .S(A1_0_) );
  ADDFX2M S2_2_2 ( .A(ab_2__2_), .B(n8), .CI(SUMB_1__3_), .CO(CARRYB_2__2_), 
        .S(SUMB_2__2_) );
  ADDFX2M S2_2_3 ( .A(ab_2__3_), .B(n7), .CI(SUMB_1__4_), .CO(CARRYB_2__3_), 
        .S(SUMB_2__3_) );
  ADDFX2M S2_2_4 ( .A(ab_2__4_), .B(n6), .CI(SUMB_1__5_), .CO(CARRYB_2__4_), 
        .S(SUMB_2__4_) );
  ADDFX2M S2_2_5 ( .A(ab_2__5_), .B(n5), .CI(SUMB_1__6_), .CO(CARRYB_2__5_), 
        .S(SUMB_2__5_) );
  ADDFX2M S4_0 ( .A(ab_7__0_), .B(CARRYB_6__0_), .CI(SUMB_6__1_), .CO(
        CARRYB_7__0_), .S(SUMB_7__0_) );
  ADDFX2M S4_5 ( .A(ab_7__5_), .B(CARRYB_6__5_), .CI(SUMB_6__6_), .CO(
        CARRYB_7__5_), .S(SUMB_7__5_) );
  ADDFX2M S4_4 ( .A(ab_7__4_), .B(CARRYB_6__4_), .CI(SUMB_6__5_), .CO(
        CARRYB_7__4_), .S(SUMB_7__4_) );
  ADDFX2M S4_3 ( .A(ab_7__3_), .B(CARRYB_6__3_), .CI(SUMB_6__4_), .CO(
        CARRYB_7__3_), .S(SUMB_7__3_) );
  ADDFX2M S4_2 ( .A(ab_7__2_), .B(CARRYB_6__2_), .CI(SUMB_6__3_), .CO(
        CARRYB_7__2_), .S(SUMB_7__2_) );
  ADDFX2M S2_6_1 ( .A(ab_6__1_), .B(CARRYB_5__1_), .CI(SUMB_5__2_), .CO(
        CARRYB_6__1_), .S(SUMB_6__1_) );
  ADDFX2M S2_5_1 ( .A(ab_5__1_), .B(CARRYB_4__1_), .CI(SUMB_4__2_), .CO(
        CARRYB_5__1_), .S(SUMB_5__1_) );
  ADDFX2M S2_4_1 ( .A(ab_4__1_), .B(CARRYB_3__1_), .CI(SUMB_3__2_), .CO(
        CARRYB_4__1_), .S(SUMB_4__1_) );
  ADDFX2M S2_3_1 ( .A(ab_3__1_), .B(CARRYB_2__1_), .CI(SUMB_2__2_), .CO(
        CARRYB_3__1_), .S(SUMB_3__1_) );
  ADDFX2M S3_6_6 ( .A(ab_6__6_), .B(CARRYB_5__6_), .CI(ab_5__7_), .CO(
        CARRYB_6__6_), .S(SUMB_6__6_) );
  ADDFX2M S3_5_6 ( .A(ab_5__6_), .B(CARRYB_4__6_), .CI(ab_4__7_), .CO(
        CARRYB_5__6_), .S(SUMB_5__6_) );
  ADDFX2M S3_4_6 ( .A(ab_4__6_), .B(CARRYB_3__6_), .CI(ab_3__7_), .CO(
        CARRYB_4__6_), .S(SUMB_4__6_) );
  ADDFX2M S3_3_6 ( .A(ab_3__6_), .B(CARRYB_2__6_), .CI(ab_2__7_), .CO(
        CARRYB_3__6_), .S(SUMB_3__6_) );
  ADDFX2M S3_2_6 ( .A(ab_2__6_), .B(n4), .CI(ab_1__7_), .CO(CARRYB_2__6_), .S(
        SUMB_2__6_) );
  ADDFX2M S2_2_1 ( .A(ab_2__1_), .B(n3), .CI(SUMB_1__2_), .CO(CARRYB_2__1_), 
        .S(SUMB_2__1_) );
  ADDFX2M S5_6 ( .A(ab_7__6_), .B(CARRYB_6__6_), .CI(ab_6__7_), .CO(
        CARRYB_7__6_), .S(SUMB_7__6_) );
  ADDFX2M S4_1 ( .A(ab_7__1_), .B(CARRYB_6__1_), .CI(SUMB_6__2_), .CO(
        CARRYB_7__1_), .S(SUMB_7__1_) );
  AND2X2M U2 ( .A(ab_0__2_), .B(ab_1__1_), .Y(n3) );
  AND2X2M U3 ( .A(ab_0__7_), .B(ab_1__6_), .Y(n4) );
  AND2X2M U4 ( .A(ab_0__6_), .B(ab_1__5_), .Y(n5) );
  AND2X2M U5 ( .A(ab_0__5_), .B(ab_1__4_), .Y(n6) );
  AND2X2M U6 ( .A(ab_0__4_), .B(ab_1__3_), .Y(n7) );
  AND2X2M U7 ( .A(ab_0__3_), .B(ab_1__2_), .Y(n8) );
  AND2X2M U8 ( .A(ab_0__1_), .B(ab_1__0_), .Y(n9) );
  AND2X2M U9 ( .A(CARRYB_7__6_), .B(ab_7__7_), .Y(n10) );
  CLKXOR2X2M U10 ( .A(CARRYB_7__6_), .B(ab_7__7_), .Y(A1_12_) );
  INVX2M U11 ( .A(ab_0__7_), .Y(n23) );
  INVX2M U12 ( .A(ab_0__6_), .Y(n22) );
  CLKXOR2X2M U13 ( .A(CARRYB_7__1_), .B(SUMB_7__2_), .Y(A1_7_) );
  CLKXOR2X2M U14 ( .A(ab_1__0_), .B(ab_0__1_), .Y(PRODUCT[1]) );
  CLKXOR2X2M U15 ( .A(CARRYB_7__2_), .B(SUMB_7__3_), .Y(A1_8_) );
  CLKXOR2X2M U16 ( .A(CARRYB_7__4_), .B(SUMB_7__5_), .Y(A1_10_) );
  CLKXOR2X2M U17 ( .A(CARRYB_7__3_), .B(SUMB_7__4_), .Y(A1_9_) );
  CLKXOR2X2M U18 ( .A(CARRYB_7__5_), .B(SUMB_7__6_), .Y(A1_11_) );
  INVX2M U19 ( .A(ab_0__5_), .Y(n21) );
  INVX2M U20 ( .A(ab_0__4_), .Y(n20) );
  INVX2M U21 ( .A(ab_0__3_), .Y(n19) );
  INVX2M U22 ( .A(ab_0__2_), .Y(n18) );
  XNOR2X2M U23 ( .A(ab_1__2_), .B(n19), .Y(SUMB_1__2_) );
  XNOR2X2M U24 ( .A(CARRYB_7__0_), .B(n17), .Y(A1_6_) );
  INVX2M U25 ( .A(SUMB_7__1_), .Y(n17) );
  AND2X2M U26 ( .A(CARRYB_7__0_), .B(SUMB_7__1_), .Y(n11) );
  AND2X2M U27 ( .A(CARRYB_7__1_), .B(SUMB_7__2_), .Y(n12) );
  AND2X2M U28 ( .A(CARRYB_7__3_), .B(SUMB_7__4_), .Y(n13) );
  AND2X2M U29 ( .A(CARRYB_7__5_), .B(SUMB_7__6_), .Y(n14) );
  AND2X2M U30 ( .A(CARRYB_7__2_), .B(SUMB_7__3_), .Y(n15) );
  AND2X2M U31 ( .A(CARRYB_7__4_), .B(SUMB_7__5_), .Y(n16) );
  XNOR2X2M U32 ( .A(ab_1__6_), .B(n23), .Y(SUMB_1__6_) );
  XNOR2X2M U33 ( .A(ab_1__5_), .B(n22), .Y(SUMB_1__5_) );
  XNOR2X2M U34 ( .A(ab_1__4_), .B(n21), .Y(SUMB_1__4_) );
  XNOR2X2M U35 ( .A(ab_1__3_), .B(n20), .Y(SUMB_1__3_) );
  XNOR2X2M U36 ( .A(ab_1__1_), .B(n18), .Y(SUMB_1__1_) );
  INVX2M U37 ( .A(A[6]), .Y(n25) );
  INVX2M U38 ( .A(A[7]), .Y(n24) );
  INVX2M U39 ( .A(A[1]), .Y(n30) );
  INVX2M U40 ( .A(A[0]), .Y(n31) );
  INVX2M U41 ( .A(A[2]), .Y(n29) );
  INVX2M U42 ( .A(A[3]), .Y(n28) );
  INVX2M U43 ( .A(B[6]), .Y(n33) );
  INVX2M U44 ( .A(A[5]), .Y(n26) );
  INVX2M U45 ( .A(A[4]), .Y(n27) );
  INVX2M U46 ( .A(B[7]), .Y(n32) );
  INVX2M U47 ( .A(B[1]), .Y(n38) );
  INVX2M U48 ( .A(B[0]), .Y(n39) );
  INVX2M U49 ( .A(B[3]), .Y(n36) );
  INVX2M U50 ( .A(B[2]), .Y(n37) );
  INVX2M U51 ( .A(B[5]), .Y(n34) );
  INVX2M U52 ( .A(B[4]), .Y(n35) );
  NOR2X1M U54 ( .A(n24), .B(n32), .Y(ab_7__7_) );
  NOR2X1M U55 ( .A(n24), .B(n33), .Y(ab_7__6_) );
  NOR2X1M U56 ( .A(n24), .B(n34), .Y(ab_7__5_) );
  NOR2X1M U57 ( .A(n24), .B(n35), .Y(ab_7__4_) );
  NOR2X1M U58 ( .A(n24), .B(n36), .Y(ab_7__3_) );
  NOR2X1M U59 ( .A(n24), .B(n37), .Y(ab_7__2_) );
  NOR2X1M U60 ( .A(n24), .B(n38), .Y(ab_7__1_) );
  NOR2X1M U61 ( .A(n24), .B(n39), .Y(ab_7__0_) );
  NOR2X1M U62 ( .A(n32), .B(n25), .Y(ab_6__7_) );
  NOR2X1M U63 ( .A(n33), .B(n25), .Y(ab_6__6_) );
  NOR2X1M U64 ( .A(n34), .B(n25), .Y(ab_6__5_) );
  NOR2X1M U65 ( .A(n35), .B(n25), .Y(ab_6__4_) );
  NOR2X1M U66 ( .A(n36), .B(n25), .Y(ab_6__3_) );
  NOR2X1M U67 ( .A(n37), .B(n25), .Y(ab_6__2_) );
  NOR2X1M U68 ( .A(n38), .B(n25), .Y(ab_6__1_) );
  NOR2X1M U69 ( .A(n39), .B(n25), .Y(ab_6__0_) );
  NOR2X1M U70 ( .A(n32), .B(n26), .Y(ab_5__7_) );
  NOR2X1M U71 ( .A(n33), .B(n26), .Y(ab_5__6_) );
  NOR2X1M U72 ( .A(n34), .B(n26), .Y(ab_5__5_) );
  NOR2X1M U73 ( .A(n35), .B(n26), .Y(ab_5__4_) );
  NOR2X1M U74 ( .A(n36), .B(n26), .Y(ab_5__3_) );
  NOR2X1M U75 ( .A(n37), .B(n26), .Y(ab_5__2_) );
  NOR2X1M U76 ( .A(n38), .B(n26), .Y(ab_5__1_) );
  NOR2X1M U77 ( .A(n39), .B(n26), .Y(ab_5__0_) );
  NOR2X1M U78 ( .A(n32), .B(n27), .Y(ab_4__7_) );
  NOR2X1M U79 ( .A(n33), .B(n27), .Y(ab_4__6_) );
  NOR2X1M U80 ( .A(n34), .B(n27), .Y(ab_4__5_) );
  NOR2X1M U81 ( .A(n35), .B(n27), .Y(ab_4__4_) );
  NOR2X1M U82 ( .A(n36), .B(n27), .Y(ab_4__3_) );
  NOR2X1M U83 ( .A(n37), .B(n27), .Y(ab_4__2_) );
  NOR2X1M U84 ( .A(n38), .B(n27), .Y(ab_4__1_) );
  NOR2X1M U85 ( .A(n39), .B(n27), .Y(ab_4__0_) );
  NOR2X1M U86 ( .A(n32), .B(n28), .Y(ab_3__7_) );
  NOR2X1M U87 ( .A(n33), .B(n28), .Y(ab_3__6_) );
  NOR2X1M U88 ( .A(n34), .B(n28), .Y(ab_3__5_) );
  NOR2X1M U89 ( .A(n35), .B(n28), .Y(ab_3__4_) );
  NOR2X1M U90 ( .A(n36), .B(n28), .Y(ab_3__3_) );
  NOR2X1M U91 ( .A(n37), .B(n28), .Y(ab_3__2_) );
  NOR2X1M U92 ( .A(n38), .B(n28), .Y(ab_3__1_) );
  NOR2X1M U93 ( .A(n39), .B(n28), .Y(ab_3__0_) );
  NOR2X1M U94 ( .A(n32), .B(n29), .Y(ab_2__7_) );
  NOR2X1M U95 ( .A(n33), .B(n29), .Y(ab_2__6_) );
  NOR2X1M U96 ( .A(n34), .B(n29), .Y(ab_2__5_) );
  NOR2X1M U97 ( .A(n35), .B(n29), .Y(ab_2__4_) );
  NOR2X1M U98 ( .A(n36), .B(n29), .Y(ab_2__3_) );
  NOR2X1M U99 ( .A(n37), .B(n29), .Y(ab_2__2_) );
  NOR2X1M U100 ( .A(n38), .B(n29), .Y(ab_2__1_) );
  NOR2X1M U101 ( .A(n39), .B(n29), .Y(ab_2__0_) );
  NOR2X1M U102 ( .A(n32), .B(n30), .Y(ab_1__7_) );
  NOR2X1M U103 ( .A(n33), .B(n30), .Y(ab_1__6_) );
  NOR2X1M U104 ( .A(n34), .B(n30), .Y(ab_1__5_) );
  NOR2X1M U105 ( .A(n35), .B(n30), .Y(ab_1__4_) );
  NOR2X1M U106 ( .A(n36), .B(n30), .Y(ab_1__3_) );
  NOR2X1M U107 ( .A(n37), .B(n30), .Y(ab_1__2_) );
  NOR2X1M U108 ( .A(n38), .B(n30), .Y(ab_1__1_) );
  NOR2X1M U109 ( .A(n39), .B(n30), .Y(ab_1__0_) );
  NOR2X1M U110 ( .A(n32), .B(n31), .Y(ab_0__7_) );
  NOR2X1M U111 ( .A(n33), .B(n31), .Y(ab_0__6_) );
  NOR2X1M U112 ( .A(n34), .B(n31), .Y(ab_0__5_) );
  NOR2X1M U113 ( .A(n35), .B(n31), .Y(ab_0__4_) );
  NOR2X1M U114 ( .A(n36), .B(n31), .Y(ab_0__3_) );
  NOR2X1M U115 ( .A(n37), .B(n31), .Y(ab_0__2_) );
  NOR2X1M U116 ( .A(n38), .B(n31), .Y(ab_0__1_) );
  NOR2X1M U117 ( .A(n39), .B(n31), .Y(PRODUCT[0]) );
  ALU_DATA_WIDTH8_OUT_WIDTH16_DW01_add_1 FS_1 ( .A({1'b0, A1_12_, A1_11_, 
        A1_10_, A1_9_, A1_8_, A1_7_, A1_6_, SUMB_7__0_, A1_4_, A1_3_, A1_2_, 
        A1_1_, A1_0_}), .B({n10, n14, n16, n13, n15, n12, n11, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[15:2]) );
endmodule


module ALU_DATA_WIDTH8_OUT_WIDTH16_test_1 ( A, B, enable, ALU_fun, clk, 
        reset_n, ALU_out, out_valid, test_si, test_se );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_fun;
  output [15:0] ALU_out;
  input enable, clk, reset_n, test_si, test_se;
  output out_valid;
  wire   N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102, N103, N104,
         N105, N106, N107, N108, N109, N110, N111, N112, N113, N114, N115,
         N116, N117, N118, N119, N120, N121, N122, N123, N124, N125, N128,
         N129, N130, N131, N132, N133, N134, N135, N168, N169, N170, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n3, n4, n5, n6, n7, n8, n9, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169,
         SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4,
         SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6,
         SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8;
  wire   [15:0] ALU_out_comb;

  SDFFRQX2M ALU_out_reg_15_ ( .D(ALU_out_comb[15]), .SI(ALU_out[14]), .SE(
        test_se), .CK(clk), .RN(reset_n), .Q(ALU_out[15]) );
  SDFFRQX2M ALU_out_reg_14_ ( .D(ALU_out_comb[14]), .SI(ALU_out[13]), .SE(
        test_se), .CK(clk), .RN(reset_n), .Q(ALU_out[14]) );
  SDFFRQX2M ALU_out_reg_13_ ( .D(ALU_out_comb[13]), .SI(ALU_out[12]), .SE(
        test_se), .CK(clk), .RN(reset_n), .Q(ALU_out[13]) );
  SDFFRQX2M ALU_out_reg_12_ ( .D(ALU_out_comb[12]), .SI(ALU_out[11]), .SE(
        test_se), .CK(clk), .RN(reset_n), .Q(ALU_out[12]) );
  SDFFRQX2M ALU_out_reg_11_ ( .D(ALU_out_comb[11]), .SI(ALU_out[10]), .SE(
        test_se), .CK(clk), .RN(reset_n), .Q(ALU_out[11]) );
  SDFFRQX2M ALU_out_reg_10_ ( .D(ALU_out_comb[10]), .SI(ALU_out[9]), .SE(
        test_se), .CK(clk), .RN(reset_n), .Q(ALU_out[10]) );
  SDFFRQX2M ALU_out_reg_9_ ( .D(ALU_out_comb[9]), .SI(ALU_out[8]), .SE(test_se), .CK(clk), .RN(reset_n), .Q(ALU_out[9]) );
  SDFFRQX2M ALU_out_reg_8_ ( .D(ALU_out_comb[8]), .SI(ALU_out[7]), .SE(test_se), .CK(clk), .RN(reset_n), .Q(ALU_out[8]) );
  SDFFRQX2M ALU_out_reg_7_ ( .D(ALU_out_comb[7]), .SI(ALU_out[6]), .SE(test_se), .CK(clk), .RN(reset_n), .Q(ALU_out[7]) );
  SDFFRQX2M ALU_out_reg_6_ ( .D(ALU_out_comb[6]), .SI(ALU_out[5]), .SE(test_se), .CK(clk), .RN(reset_n), .Q(ALU_out[6]) );
  SDFFRQX2M ALU_out_reg_5_ ( .D(ALU_out_comb[5]), .SI(ALU_out[4]), .SE(test_se), .CK(clk), .RN(reset_n), .Q(ALU_out[5]) );
  SDFFRQX2M ALU_out_reg_4_ ( .D(ALU_out_comb[4]), .SI(ALU_out[3]), .SE(test_se), .CK(clk), .RN(reset_n), .Q(ALU_out[4]) );
  SDFFRQX2M ALU_out_reg_3_ ( .D(ALU_out_comb[3]), .SI(ALU_out[2]), .SE(test_se), .CK(clk), .RN(reset_n), .Q(ALU_out[3]) );
  SDFFRQX2M ALU_out_reg_2_ ( .D(ALU_out_comb[2]), .SI(ALU_out[1]), .SE(test_se), .CK(clk), .RN(reset_n), .Q(ALU_out[2]) );
  SDFFRQX2M ALU_out_reg_1_ ( .D(ALU_out_comb[1]), .SI(ALU_out[0]), .SE(test_se), .CK(clk), .RN(reset_n), .Q(ALU_out[1]) );
  SDFFRQX2M ALU_out_reg_0_ ( .D(ALU_out_comb[0]), .SI(test_si), .SE(test_se), 
        .CK(clk), .RN(reset_n), .Q(ALU_out[0]) );
  SDFFRQX2M out_valid_reg ( .D(enable), .SI(ALU_out[15]), .SE(test_se), .CK(
        clk), .RN(reset_n), .Q(out_valid) );
  BUFX2M U8 ( .A(A[6]), .Y(n31) );
  BUFX2M U23 ( .A(A[1]), .Y(n9) );
  BUFX2M U24 ( .A(A[7]), .Y(n32) );
  BUFX2M U25 ( .A(B[6]), .Y(n6) );
  INVX2M U26 ( .A(n70), .Y(n154) );
  INVX2M U27 ( .A(n114), .Y(n152) );
  INVX2M U28 ( .A(n64), .Y(n151) );
  INVX2M U29 ( .A(n119), .Y(n150) );
  OAI2BB1X2M U30 ( .A0N(N120), .A1N(n52), .B0(n53), .Y(ALU_out_comb[10]) );
  OAI2BB1X2M U31 ( .A0N(N121), .A1N(n52), .B0(n53), .Y(ALU_out_comb[11]) );
  OAI2BB1X2M U32 ( .A0N(N122), .A1N(n52), .B0(n53), .Y(ALU_out_comb[12]) );
  OAI2BB1X2M U33 ( .A0N(N123), .A1N(n52), .B0(n53), .Y(ALU_out_comb[13]) );
  OAI2BB1X2M U34 ( .A0N(N125), .A1N(n52), .B0(n53), .Y(ALU_out_comb[15]) );
  OAI21X2M U35 ( .A0(n3), .A1(n129), .B0(n128), .Y(n69) );
  NOR2X2M U36 ( .A(n118), .B(n3), .Y(n70) );
  NOR2BX2M U37 ( .AN(n130), .B(n3), .Y(n58) );
  OAI2B1X2M U38 ( .A1N(n127), .A0(n118), .B0(n128), .Y(n114) );
  NAND2X2M U39 ( .A(enable), .B(n59), .Y(n53) );
  NAND2X2M U40 ( .A(n155), .B(n127), .Y(n64) );
  INVX2M U41 ( .A(enable), .Y(n147) );
  NOR2BX2M U42 ( .AN(n57), .B(n147), .Y(n52) );
  NAND2X2M U43 ( .A(n130), .B(n127), .Y(n119) );
  INVX2M U44 ( .A(n67), .Y(n149) );
  OAI2BB1X2M U45 ( .A0N(N119), .A1N(n52), .B0(n53), .Y(ALU_out_comb[9]) );
  OAI2BB1X2M U46 ( .A0N(N124), .A1N(n52), .B0(n53), .Y(ALU_out_comb[14]) );
  INVX2M U47 ( .A(n129), .Y(n155) );
  NOR3BX2M U48 ( .AN(n4), .B(n118), .C(ALU_fun[0]), .Y(n56) );
  NOR3BX2M U49 ( .AN(n4), .B(n153), .C(n129), .Y(n74) );
  NOR3X2M U50 ( .A(n3), .B(ALU_fun[2]), .C(n156), .Y(n57) );
  OAI2B11X2M U51 ( .A1N(N109), .A0(n119), .B0(n154), .C0(n152), .Y(n59) );
  NOR2X2M U52 ( .A(ALU_fun[2]), .B(ALU_fun[1]), .Y(n130) );
  NOR2X2M U53 ( .A(n153), .B(n4), .Y(n127) );
  NOR3X2M U54 ( .A(n156), .B(ALU_fun[2]), .C(ALU_fun[0]), .Y(n132) );
  NAND3X2M U55 ( .A(n130), .B(n153), .C(n4), .Y(n67) );
  NAND2X2M U56 ( .A(ALU_fun[2]), .B(ALU_fun[1]), .Y(n118) );
  NAND2X2M U57 ( .A(ALU_fun[2]), .B(n156), .Y(n129) );
  OAI2BB2X1M U58 ( .B0(n157), .B1(n64), .A0N(N117), .A1N(n57), .Y(n63) );
  INVX2M U59 ( .A(ALU_fun[0]), .Y(n153) );
  INVX2M U60 ( .A(ALU_fun[1]), .Y(n156) );
  NAND3X2M U61 ( .A(n130), .B(ALU_fun[0]), .C(n4), .Y(n128) );
  OR2X2M U62 ( .A(n4), .B(ALU_fun[0]), .Y(n3) );
  AND4X2M U63 ( .A(N170), .B(n155), .C(n4), .D(n153), .Y(n117) );
  OAI221X1M U64 ( .A0(n27), .A1(n152), .B0(n67), .B1(n162), .C0(n154), .Y(n106) );
  OAI221X1M U65 ( .A0(n28), .A1(n152), .B0(n67), .B1(n161), .C0(n154), .Y(n99)
         );
  OAI221X1M U66 ( .A0(n29), .A1(n152), .B0(n67), .B1(n160), .C0(n154), .Y(n92)
         );
  OAI221X1M U67 ( .A0(n30), .A1(n152), .B0(n67), .B1(n159), .C0(n154), .Y(n85)
         );
  OAI221X1M U68 ( .A0(n31), .A1(n152), .B0(n67), .B1(n158), .C0(n154), .Y(n78)
         );
  OAI221X1M U69 ( .A0(n32), .A1(n152), .B0(n157), .B1(n67), .C0(n154), .Y(n66)
         );
  INVX2M U70 ( .A(n33), .Y(n144) );
  OAI2B2X1M U71 ( .A1N(n5), .A0(n112), .B0(n5), .B1(n113), .Y(n111) );
  AOI221XLM U72 ( .A0(n149), .A1(n145), .B0(n9), .B1(n69), .C0(n151), .Y(n112)
         );
  AOI221XLM U73 ( .A0(n9), .A1(n149), .B0(n114), .B1(n145), .C0(n70), .Y(n113)
         );
  AOI31X2M U74 ( .A0(n86), .A1(n87), .A2(n88), .B0(n147), .Y(ALU_out_comb[4])
         );
  AOI22X1M U75 ( .A0(N105), .A1(n150), .B0(N96), .B1(n58), .Y(n86) );
  AOI221XLM U76 ( .A0(n28), .A1(n56), .B0(n74), .B1(n30), .C0(n89), .Y(n88) );
  AOI222X1M U77 ( .A0(N114), .A1(n57), .B0(n70), .B1(n160), .C0(n29), .C1(n151), .Y(n87) );
  AOI31X2M U78 ( .A0(n79), .A1(n80), .A2(n81), .B0(n147), .Y(ALU_out_comb[5])
         );
  AOI22X1M U79 ( .A0(N106), .A1(n150), .B0(N97), .B1(n58), .Y(n79) );
  AOI221XLM U80 ( .A0(n29), .A1(n56), .B0(n74), .B1(n31), .C0(n82), .Y(n81) );
  AOI222X1M U81 ( .A0(N115), .A1(n57), .B0(n70), .B1(n159), .C0(n30), .C1(n151), .Y(n80) );
  AOI31X2M U82 ( .A0(n71), .A1(n72), .A2(n73), .B0(n147), .Y(ALU_out_comb[6])
         );
  AOI22X1M U83 ( .A0(N107), .A1(n150), .B0(N98), .B1(n58), .Y(n71) );
  AOI221XLM U84 ( .A0(n30), .A1(n56), .B0(n74), .B1(n32), .C0(n75), .Y(n73) );
  AOI222X1M U85 ( .A0(N116), .A1(n57), .B0(n70), .B1(n158), .C0(n151), .C1(n31), .Y(n72) );
  AOI31X2M U86 ( .A0(n100), .A1(n101), .A2(n102), .B0(n147), .Y(
        ALU_out_comb[2]) );
  AOI22X1M U87 ( .A0(N103), .A1(n150), .B0(N94), .B1(n58), .Y(n100) );
  AOI221XLM U88 ( .A0(n9), .A1(n56), .B0(n28), .B1(n74), .C0(n103), .Y(n102)
         );
  AOI222X1M U89 ( .A0(N112), .A1(n57), .B0(n70), .B1(n162), .C0(n27), .C1(n151), .Y(n101) );
  AOI31X2M U90 ( .A0(n93), .A1(n94), .A2(n95), .B0(n147), .Y(ALU_out_comb[3])
         );
  AOI22X1M U91 ( .A0(N104), .A1(n150), .B0(N95), .B1(n58), .Y(n93) );
  AOI221XLM U92 ( .A0(n27), .A1(n56), .B0(n29), .B1(n74), .C0(n96), .Y(n95) );
  AOI222X1M U93 ( .A0(N113), .A1(n57), .B0(n70), .B1(n161), .C0(n28), .C1(n151), .Y(n94) );
  AOI31X2M U94 ( .A0(n120), .A1(n121), .A2(n122), .B0(n147), .Y(
        ALU_out_comb[0]) );
  AOI22X1M U95 ( .A0(N101), .A1(n150), .B0(N92), .B1(n58), .Y(n120) );
  AOI211X2M U96 ( .A0(n9), .A1(n74), .B0(n123), .C0(n124), .Y(n122) );
  AOI222X1M U97 ( .A0(N110), .A1(n57), .B0(n70), .B1(n163), .C0(n8), .C1(n151), 
        .Y(n121) );
  AOI31X2M U98 ( .A0(n107), .A1(n108), .A2(n109), .B0(n147), .Y(
        ALU_out_comb[1]) );
  AOI211X2M U99 ( .A0(n8), .A1(n56), .B0(n110), .C0(n111), .Y(n109) );
  AOI222X1M U100 ( .A0(n9), .A1(n151), .B0(n27), .B1(n74), .C0(n70), .C1(n145), 
        .Y(n108) );
  AOI222X1M U101 ( .A0(N93), .A1(n58), .B0(N111), .B1(n57), .C0(N102), .C1(
        n150), .Y(n107) );
  AOI31X2M U102 ( .A0(n60), .A1(n61), .A2(n62), .B0(n147), .Y(ALU_out_comb[7])
         );
  AOI22X1M U103 ( .A0(n31), .A1(n56), .B0(n70), .B1(n157), .Y(n60) );
  AOI221XLM U104 ( .A0(N108), .A1(n150), .B0(N99), .B1(n58), .C0(n63), .Y(n62)
         );
  AOI222X1M U105 ( .A0(n7), .A1(n148), .B0(N135), .B1(n65), .C0(n66), .C1(n164), .Y(n61) );
  INVX2M U106 ( .A(n44), .Y(n146) );
  OAI21X2M U107 ( .A0(n76), .A1(n165), .B0(n77), .Y(n75) );
  AOI22X1M U108 ( .A0(N134), .A1(n65), .B0(n78), .B1(n165), .Y(n77) );
  AOI221XLM U109 ( .A0(n149), .A1(n158), .B0(n31), .B1(n69), .C0(n151), .Y(n76) );
  INVX2M U110 ( .A(n6), .Y(n165) );
  AOI21X2M U111 ( .A0(n54), .A1(n55), .B0(n147), .Y(ALU_out_comb[8]) );
  AOI21X2M U112 ( .A0(N100), .A1(n58), .B0(n59), .Y(n54) );
  AOI22X1M U113 ( .A0(n32), .A1(n56), .B0(N118), .B1(n57), .Y(n55) );
  INVX2M U114 ( .A(n68), .Y(n148) );
  AOI221XLM U115 ( .A0(n69), .A1(n32), .B0(n157), .B1(n149), .C0(n151), .Y(n68) );
  BUFX2M U116 ( .A(ALU_fun[3]), .Y(n4) );
  OAI2BB1X2M U117 ( .A0N(N128), .A1N(n65), .B0(n131), .Y(n123) );
  AOI31X2M U118 ( .A0(N168), .A1(n4), .A2(n132), .B0(n117), .Y(n131) );
  OAI2BB1X2M U119 ( .A0N(N129), .A1N(n65), .B0(n115), .Y(n110) );
  AOI31X2M U120 ( .A0(N169), .A1(n4), .A2(n116), .B0(n117), .Y(n115) );
  NOR3X2M U121 ( .A(n153), .B(ALU_fun[2]), .C(n156), .Y(n116) );
  INVX2M U122 ( .A(n32), .Y(n157) );
  INVX2M U123 ( .A(n31), .Y(n158) );
  INVX2M U124 ( .A(n8), .Y(n163) );
  INVX2M U125 ( .A(n27), .Y(n162) );
  INVX2M U126 ( .A(n28), .Y(n161) );
  INVX2M U127 ( .A(n30), .Y(n159) );
  INVX2M U128 ( .A(n29), .Y(n160) );
  INVX2M U129 ( .A(n9), .Y(n145) );
  INVX2M U130 ( .A(n7), .Y(n164) );
  OAI2B2X1M U131 ( .A1N(B[0]), .A0(n125), .B0(B[0]), .B1(n126), .Y(n124) );
  AOI221XLM U132 ( .A0(n149), .A1(n163), .B0(n8), .B1(n69), .C0(n151), .Y(n125) );
  AOI221XLM U133 ( .A0(n8), .A1(n149), .B0(n114), .B1(n163), .C0(n70), .Y(n126) );
  AND3X2M U134 ( .A(n127), .B(ALU_fun[1]), .C(n133), .Y(n65) );
  AOI21X2M U135 ( .A0(n134), .A1(n135), .B0(ALU_fun[2]), .Y(n133) );
  NOR4X1M U136 ( .A(n7), .B(n6), .C(B[5]), .D(B[4]), .Y(n135) );
  NOR4X1M U137 ( .A(B[3]), .B(B[2]), .C(n5), .D(B[0]), .Y(n134) );
  OAI21X2M U138 ( .A0(n104), .A1(n169), .B0(n105), .Y(n103) );
  AOI22X1M U139 ( .A0(N130), .A1(n65), .B0(n106), .B1(n169), .Y(n105) );
  AOI221XLM U140 ( .A0(n149), .A1(n162), .B0(n27), .B1(n69), .C0(n151), .Y(
        n104) );
  INVX2M U141 ( .A(B[2]), .Y(n169) );
  OAI21X2M U142 ( .A0(n97), .A1(n168), .B0(n98), .Y(n96) );
  AOI22X1M U143 ( .A0(N131), .A1(n65), .B0(n99), .B1(n168), .Y(n98) );
  AOI221XLM U144 ( .A0(n149), .A1(n161), .B0(n28), .B1(n69), .C0(n151), .Y(n97) );
  INVX2M U145 ( .A(B[3]), .Y(n168) );
  OAI21X2M U146 ( .A0(n90), .A1(n167), .B0(n91), .Y(n89) );
  AOI22X1M U147 ( .A0(N132), .A1(n65), .B0(n92), .B1(n167), .Y(n91) );
  AOI221XLM U148 ( .A0(n149), .A1(n160), .B0(n29), .B1(n69), .C0(n151), .Y(n90) );
  INVX2M U149 ( .A(B[4]), .Y(n167) );
  OAI21X2M U150 ( .A0(n83), .A1(n166), .B0(n84), .Y(n82) );
  AOI22X1M U151 ( .A0(N133), .A1(n65), .B0(n85), .B1(n166), .Y(n84) );
  AOI221XLM U152 ( .A0(n149), .A1(n159), .B0(n30), .B1(n69), .C0(n151), .Y(n83) );
  INVX2M U153 ( .A(B[5]), .Y(n166) );
  BUFX2M U154 ( .A(A[0]), .Y(n8) );
  BUFX2M U155 ( .A(A[2]), .Y(n27) );
  BUFX2M U156 ( .A(A[3]), .Y(n28) );
  BUFX2M U157 ( .A(A[5]), .Y(n30) );
  BUFX2M U158 ( .A(A[4]), .Y(n29) );
  BUFX2M U159 ( .A(B[7]), .Y(n7) );
  BUFX2M U160 ( .A(B[1]), .Y(n5) );
  INVX2M U161 ( .A(B[0]), .Y(n143) );
  NOR2X1M U162 ( .A(n157), .B(n7), .Y(n139) );
  NAND2BX1M U163 ( .AN(B[4]), .B(n29), .Y(n48) );
  NAND2BX1M U164 ( .AN(n29), .B(B[4]), .Y(n37) );
  CLKNAND2X2M U165 ( .A(n48), .B(n37), .Y(n50) );
  NOR2X1M U166 ( .A(n168), .B(n28), .Y(n45) );
  NOR2X1M U167 ( .A(n169), .B(n27), .Y(n36) );
  NOR2X1M U168 ( .A(n143), .B(n8), .Y(n33) );
  CLKNAND2X2M U169 ( .A(n27), .B(n169), .Y(n47) );
  NAND2BX1M U170 ( .AN(n36), .B(n47), .Y(n42) );
  AOI21X1M U171 ( .A0(n33), .A1(n145), .B0(n5), .Y(n34) );
  AOI211X1M U172 ( .A0(n9), .A1(n144), .B0(n42), .C0(n34), .Y(n35) );
  CLKNAND2X2M U173 ( .A(n28), .B(n168), .Y(n46) );
  OAI31X1M U174 ( .A0(n45), .A1(n36), .A2(n35), .B0(n46), .Y(n38) );
  NAND2BX1M U175 ( .AN(n30), .B(B[5]), .Y(n137) );
  OAI211X1M U176 ( .A0(n50), .A1(n38), .B0(n37), .C0(n137), .Y(n39) );
  NAND2BX1M U177 ( .AN(B[5]), .B(n30), .Y(n49) );
  XNOR2X1M U178 ( .A(n31), .B(n6), .Y(n136) );
  AOI32X1M U179 ( .A0(n39), .A1(n49), .A2(n136), .B0(n6), .B1(n158), .Y(n40)
         );
  CLKNAND2X2M U180 ( .A(n7), .B(n157), .Y(n140) );
  OAI21X1M U181 ( .A0(n139), .A1(n40), .B0(n140), .Y(N170) );
  CLKNAND2X2M U182 ( .A(n8), .B(n143), .Y(n43) );
  OA21X1M U183 ( .A0(n43), .A1(n145), .B0(n5), .Y(n41) );
  AOI211X1M U184 ( .A0(n43), .A1(n145), .B0(n42), .C0(n41), .Y(n44) );
  AOI31X1M U185 ( .A0(n146), .A1(n47), .A2(n46), .B0(n45), .Y(n51) );
  OAI2B11X1M U186 ( .A1N(n51), .A0(n50), .B0(n49), .C0(n48), .Y(n138) );
  AOI32X1M U187 ( .A0(n138), .A1(n137), .A2(n136), .B0(n31), .B1(n165), .Y(
        n141) );
  AOI2B1X1M U188 ( .A1N(n141), .A0(n140), .B0(n139), .Y(n142) );
  CLKINVX1M U189 ( .A(n142), .Y(N169) );
  NOR2X1M U190 ( .A(N170), .B(N169), .Y(N168) );
  ALU_DATA_WIDTH8_OUT_WIDTH16_DW_div_uns_0 div_48 ( .a({n32, n31, n30, n29, 
        n28, n27, n9, n8}), .b({n7, n6, B[5:2], n5, B[0]}), .quotient({N135, 
        N134, N133, N132, N131, N130, N129, N128}), .remainder({
        SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, 
        SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6, 
        SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8}) );
  ALU_DATA_WIDTH8_OUT_WIDTH16_DW01_sub_0 sub_44 ( .A({1'b0, n32, n31, n30, n29, 
        n28, n27, n9, n8}), .B({1'b0, n7, n6, B[5:2], n5, B[0]}), .CI(1'b0), 
        .DIFF({N109, N108, N107, N106, N105, N104, N103, N102, N101}) );
  ALU_DATA_WIDTH8_OUT_WIDTH16_DW01_add_0 add_42 ( .A({1'b0, n32, n31, n30, n29, 
        n28, n27, n9, n8}), .B({1'b0, n7, n6, B[5:2], n5, B[0]}), .CI(1'b0), 
        .SUM({N100, N99, N98, N97, N96, N95, N94, N93, N92}) );
  ALU_DATA_WIDTH8_OUT_WIDTH16_DW02_mult_0 mult_46 ( .A({n32, n31, n30, n29, 
        n28, n27, n9, n8}), .B({n7, n6, B[5:2], n5, B[0]}), .TC(1'b0), 
        .PRODUCT({N125, N124, N123, N122, N121, N120, N119, N118, N117, N116, 
        N115, N114, N113, N112, N111, N110}) );
endmodule


module FIFO_mem_DATA_WIDTH8_DEPTH8_ADDR_WIDTH3_test_1 ( w_data, w_clk, 
        w_clk_en, w_rstn, w_addr, r_addr, r_data, test_si, test_so, test_se );
  input [7:0] w_data;
  input [2:0] w_addr;
  input [2:0] r_addr;
  output [7:0] r_data;
  input w_clk, w_clk_en, w_rstn, test_si, test_se;
  output test_so;
  wire   reg_file_0__7_, reg_file_0__6_, reg_file_0__5_, reg_file_0__4_,
         reg_file_0__3_, reg_file_0__2_, reg_file_0__1_, reg_file_0__0_,
         reg_file_1__7_, reg_file_1__6_, reg_file_1__5_, reg_file_1__4_,
         reg_file_1__3_, reg_file_1__2_, reg_file_1__1_, reg_file_1__0_,
         reg_file_2__7_, reg_file_2__6_, reg_file_2__5_, reg_file_2__4_,
         reg_file_2__3_, reg_file_2__2_, reg_file_2__1_, reg_file_2__0_,
         reg_file_3__7_, reg_file_3__6_, reg_file_3__5_, reg_file_3__4_,
         reg_file_3__3_, reg_file_3__2_, reg_file_3__1_, reg_file_3__0_,
         reg_file_4__7_, reg_file_4__6_, reg_file_4__5_, reg_file_4__4_,
         reg_file_4__3_, reg_file_4__2_, reg_file_4__1_, reg_file_4__0_,
         reg_file_5__7_, reg_file_5__6_, reg_file_5__5_, reg_file_5__4_,
         reg_file_5__3_, reg_file_5__2_, reg_file_5__1_, reg_file_5__0_,
         reg_file_6__7_, reg_file_6__6_, reg_file_6__5_, reg_file_6__4_,
         reg_file_6__3_, reg_file_6__2_, reg_file_6__1_, reg_file_6__0_,
         reg_file_7__6_, reg_file_7__5_, reg_file_7__4_, reg_file_7__3_,
         reg_file_7__2_, reg_file_7__1_, reg_file_7__0_, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n181, n182, n183, n184, n185;

  SDFFRQX2M reg_file_reg_1__7_ ( .D(n140), .SI(reg_file_1__6_), .SE(n185), 
        .CK(w_clk), .RN(n163), .Q(reg_file_1__7_) );
  SDFFRQX2M reg_file_reg_1__6_ ( .D(n139), .SI(reg_file_1__5_), .SE(n184), 
        .CK(w_clk), .RN(n163), .Q(reg_file_1__6_) );
  SDFFRQX2M reg_file_reg_1__5_ ( .D(n138), .SI(reg_file_1__4_), .SE(n183), 
        .CK(w_clk), .RN(n163), .Q(reg_file_1__5_) );
  SDFFRQX2M reg_file_reg_1__4_ ( .D(n137), .SI(reg_file_1__3_), .SE(n182), 
        .CK(w_clk), .RN(n163), .Q(reg_file_1__4_) );
  SDFFRQX2M reg_file_reg_1__3_ ( .D(n136), .SI(reg_file_1__2_), .SE(n185), 
        .CK(w_clk), .RN(n164), .Q(reg_file_1__3_) );
  SDFFRQX2M reg_file_reg_1__2_ ( .D(n135), .SI(reg_file_1__1_), .SE(n184), 
        .CK(w_clk), .RN(n164), .Q(reg_file_1__2_) );
  SDFFRQX2M reg_file_reg_1__1_ ( .D(n134), .SI(reg_file_1__0_), .SE(n183), 
        .CK(w_clk), .RN(n164), .Q(reg_file_1__1_) );
  SDFFRQX2M reg_file_reg_1__0_ ( .D(n133), .SI(reg_file_0__7_), .SE(n182), 
        .CK(w_clk), .RN(n164), .Q(reg_file_1__0_) );
  SDFFRQX2M reg_file_reg_5__7_ ( .D(n108), .SI(reg_file_5__6_), .SE(n185), 
        .CK(w_clk), .RN(n166), .Q(reg_file_5__7_) );
  SDFFRQX2M reg_file_reg_5__6_ ( .D(n107), .SI(reg_file_5__5_), .SE(n184), 
        .CK(w_clk), .RN(n166), .Q(reg_file_5__6_) );
  SDFFRQX2M reg_file_reg_5__5_ ( .D(n106), .SI(reg_file_5__4_), .SE(n183), 
        .CK(w_clk), .RN(n166), .Q(reg_file_5__5_) );
  SDFFRQX2M reg_file_reg_5__4_ ( .D(n105), .SI(reg_file_5__3_), .SE(n182), 
        .CK(w_clk), .RN(n166), .Q(reg_file_5__4_) );
  SDFFRQX2M reg_file_reg_5__3_ ( .D(n104), .SI(reg_file_5__2_), .SE(n185), 
        .CK(w_clk), .RN(n166), .Q(reg_file_5__3_) );
  SDFFRQX2M reg_file_reg_5__2_ ( .D(n103), .SI(reg_file_5__1_), .SE(n184), 
        .CK(w_clk), .RN(n166), .Q(reg_file_5__2_) );
  SDFFRQX2M reg_file_reg_5__1_ ( .D(n102), .SI(reg_file_5__0_), .SE(n183), 
        .CK(w_clk), .RN(n166), .Q(reg_file_5__1_) );
  SDFFRQX2M reg_file_reg_5__0_ ( .D(n101), .SI(reg_file_4__7_), .SE(n182), 
        .CK(w_clk), .RN(n166), .Q(reg_file_5__0_) );
  SDFFRQX2M reg_file_reg_3__7_ ( .D(n124), .SI(reg_file_3__6_), .SE(n185), 
        .CK(w_clk), .RN(n165), .Q(reg_file_3__7_) );
  SDFFRQX2M reg_file_reg_3__6_ ( .D(n123), .SI(reg_file_3__5_), .SE(n184), 
        .CK(w_clk), .RN(n165), .Q(reg_file_3__6_) );
  SDFFRQX2M reg_file_reg_3__5_ ( .D(n122), .SI(reg_file_3__4_), .SE(n183), 
        .CK(w_clk), .RN(n165), .Q(reg_file_3__5_) );
  SDFFRQX2M reg_file_reg_3__4_ ( .D(n121), .SI(reg_file_3__3_), .SE(n182), 
        .CK(w_clk), .RN(n165), .Q(reg_file_3__4_) );
  SDFFRQX2M reg_file_reg_3__3_ ( .D(n120), .SI(reg_file_3__2_), .SE(n185), 
        .CK(w_clk), .RN(n165), .Q(reg_file_3__3_) );
  SDFFRQX2M reg_file_reg_3__2_ ( .D(n119), .SI(reg_file_3__1_), .SE(n184), 
        .CK(w_clk), .RN(n165), .Q(reg_file_3__2_) );
  SDFFRQX2M reg_file_reg_3__1_ ( .D(n118), .SI(reg_file_3__0_), .SE(n183), 
        .CK(w_clk), .RN(n165), .Q(reg_file_3__1_) );
  SDFFRQX2M reg_file_reg_3__0_ ( .D(n117), .SI(reg_file_2__7_), .SE(n182), 
        .CK(w_clk), .RN(n165), .Q(reg_file_3__0_) );
  SDFFRQX2M reg_file_reg_7__7_ ( .D(n92), .SI(reg_file_7__6_), .SE(n185), .CK(
        w_clk), .RN(n167), .Q(test_so) );
  SDFFRQX2M reg_file_reg_7__6_ ( .D(n91), .SI(reg_file_7__5_), .SE(n184), .CK(
        w_clk), .RN(n167), .Q(reg_file_7__6_) );
  SDFFRQX2M reg_file_reg_7__5_ ( .D(n90), .SI(reg_file_7__4_), .SE(n183), .CK(
        w_clk), .RN(n167), .Q(reg_file_7__5_) );
  SDFFRQX2M reg_file_reg_7__4_ ( .D(n89), .SI(reg_file_7__3_), .SE(n182), .CK(
        w_clk), .RN(n167), .Q(reg_file_7__4_) );
  SDFFRQX2M reg_file_reg_7__3_ ( .D(n88), .SI(reg_file_7__2_), .SE(n185), .CK(
        w_clk), .RN(n168), .Q(reg_file_7__3_) );
  SDFFRQX2M reg_file_reg_7__2_ ( .D(n87), .SI(reg_file_7__1_), .SE(n184), .CK(
        w_clk), .RN(n168), .Q(reg_file_7__2_) );
  SDFFRQX2M reg_file_reg_7__1_ ( .D(n86), .SI(reg_file_7__0_), .SE(n183), .CK(
        w_clk), .RN(n168), .Q(reg_file_7__1_) );
  SDFFRQX2M reg_file_reg_7__0_ ( .D(n85), .SI(reg_file_6__7_), .SE(n182), .CK(
        w_clk), .RN(n168), .Q(reg_file_7__0_) );
  SDFFRQX2M reg_file_reg_2__7_ ( .D(n132), .SI(reg_file_2__6_), .SE(n185), 
        .CK(w_clk), .RN(n164), .Q(reg_file_2__7_) );
  SDFFRQX2M reg_file_reg_2__6_ ( .D(n131), .SI(reg_file_2__5_), .SE(n184), 
        .CK(w_clk), .RN(n164), .Q(reg_file_2__6_) );
  SDFFRQX2M reg_file_reg_2__5_ ( .D(n130), .SI(reg_file_2__4_), .SE(n183), 
        .CK(w_clk), .RN(n164), .Q(reg_file_2__5_) );
  SDFFRQX2M reg_file_reg_2__4_ ( .D(n129), .SI(reg_file_2__3_), .SE(n182), 
        .CK(w_clk), .RN(n164), .Q(reg_file_2__4_) );
  SDFFRQX2M reg_file_reg_2__3_ ( .D(n128), .SI(reg_file_2__2_), .SE(n185), 
        .CK(w_clk), .RN(n164), .Q(reg_file_2__3_) );
  SDFFRQX2M reg_file_reg_2__2_ ( .D(n127), .SI(reg_file_2__1_), .SE(n184), 
        .CK(w_clk), .RN(n164), .Q(reg_file_2__2_) );
  SDFFRQX2M reg_file_reg_2__1_ ( .D(n126), .SI(reg_file_2__0_), .SE(n183), 
        .CK(w_clk), .RN(n164), .Q(reg_file_2__1_) );
  SDFFRQX2M reg_file_reg_2__0_ ( .D(n125), .SI(reg_file_1__7_), .SE(n182), 
        .CK(w_clk), .RN(n164), .Q(reg_file_2__0_) );
  SDFFRQX2M reg_file_reg_6__7_ ( .D(n100), .SI(reg_file_6__6_), .SE(n185), 
        .CK(w_clk), .RN(n167), .Q(reg_file_6__7_) );
  SDFFRQX2M reg_file_reg_6__6_ ( .D(n99), .SI(reg_file_6__5_), .SE(n184), .CK(
        w_clk), .RN(n167), .Q(reg_file_6__6_) );
  SDFFRQX2M reg_file_reg_6__5_ ( .D(n98), .SI(reg_file_6__4_), .SE(n183), .CK(
        w_clk), .RN(n167), .Q(reg_file_6__5_) );
  SDFFRQX2M reg_file_reg_6__4_ ( .D(n97), .SI(reg_file_6__3_), .SE(n182), .CK(
        w_clk), .RN(n167), .Q(reg_file_6__4_) );
  SDFFRQX2M reg_file_reg_6__3_ ( .D(n96), .SI(reg_file_6__2_), .SE(n185), .CK(
        w_clk), .RN(n167), .Q(reg_file_6__3_) );
  SDFFRQX2M reg_file_reg_6__2_ ( .D(n95), .SI(reg_file_6__1_), .SE(n184), .CK(
        w_clk), .RN(n167), .Q(reg_file_6__2_) );
  SDFFRQX2M reg_file_reg_6__1_ ( .D(n94), .SI(reg_file_6__0_), .SE(n183), .CK(
        w_clk), .RN(n167), .Q(reg_file_6__1_) );
  SDFFRQX2M reg_file_reg_6__0_ ( .D(n93), .SI(reg_file_5__7_), .SE(n182), .CK(
        w_clk), .RN(n167), .Q(reg_file_6__0_) );
  SDFFRQX2M reg_file_reg_0__7_ ( .D(n148), .SI(reg_file_0__6_), .SE(n185), 
        .CK(w_clk), .RN(n163), .Q(reg_file_0__7_) );
  SDFFRQX2M reg_file_reg_0__6_ ( .D(n147), .SI(reg_file_0__5_), .SE(n184), 
        .CK(w_clk), .RN(n163), .Q(reg_file_0__6_) );
  SDFFRQX2M reg_file_reg_0__5_ ( .D(n146), .SI(reg_file_0__4_), .SE(n183), 
        .CK(w_clk), .RN(n163), .Q(reg_file_0__5_) );
  SDFFRQX2M reg_file_reg_0__4_ ( .D(n145), .SI(reg_file_0__3_), .SE(n182), 
        .CK(w_clk), .RN(n163), .Q(reg_file_0__4_) );
  SDFFRQX2M reg_file_reg_0__3_ ( .D(n144), .SI(reg_file_0__2_), .SE(n185), 
        .CK(w_clk), .RN(n163), .Q(reg_file_0__3_) );
  SDFFRQX2M reg_file_reg_0__2_ ( .D(n143), .SI(reg_file_0__1_), .SE(n184), 
        .CK(w_clk), .RN(n163), .Q(reg_file_0__2_) );
  SDFFRQX2M reg_file_reg_0__1_ ( .D(n142), .SI(reg_file_0__0_), .SE(n183), 
        .CK(w_clk), .RN(n163), .Q(reg_file_0__1_) );
  SDFFRQX2M reg_file_reg_0__0_ ( .D(n141), .SI(test_si), .SE(n182), .CK(w_clk), 
        .RN(n163), .Q(reg_file_0__0_) );
  SDFFRQX2M reg_file_reg_4__7_ ( .D(n116), .SI(reg_file_4__6_), .SE(n185), 
        .CK(w_clk), .RN(n165), .Q(reg_file_4__7_) );
  SDFFRQX2M reg_file_reg_4__6_ ( .D(n115), .SI(reg_file_4__5_), .SE(n184), 
        .CK(w_clk), .RN(n165), .Q(reg_file_4__6_) );
  SDFFRQX2M reg_file_reg_4__5_ ( .D(n114), .SI(reg_file_4__4_), .SE(n183), 
        .CK(w_clk), .RN(n165), .Q(reg_file_4__5_) );
  SDFFRQX2M reg_file_reg_4__4_ ( .D(n113), .SI(reg_file_4__3_), .SE(n182), 
        .CK(w_clk), .RN(n165), .Q(reg_file_4__4_) );
  SDFFRQX2M reg_file_reg_4__3_ ( .D(n112), .SI(reg_file_4__2_), .SE(n185), 
        .CK(w_clk), .RN(n166), .Q(reg_file_4__3_) );
  SDFFRQX2M reg_file_reg_4__2_ ( .D(n111), .SI(reg_file_4__1_), .SE(n184), 
        .CK(w_clk), .RN(n166), .Q(reg_file_4__2_) );
  SDFFRQX2M reg_file_reg_4__1_ ( .D(n110), .SI(reg_file_4__0_), .SE(n183), 
        .CK(w_clk), .RN(n166), .Q(reg_file_4__1_) );
  SDFFRQX2M reg_file_reg_4__0_ ( .D(n109), .SI(reg_file_3__7_), .SE(n182), 
        .CK(w_clk), .RN(n166), .Q(reg_file_4__0_) );
  BUFX2M U66 ( .A(n80), .Y(n159) );
  BUFX2M U67 ( .A(n82), .Y(n158) );
  BUFX2M U68 ( .A(n83), .Y(n157) );
  BUFX2M U69 ( .A(n77), .Y(n160) );
  BUFX2M U70 ( .A(n162), .Y(n167) );
  BUFX2M U71 ( .A(n162), .Y(n166) );
  BUFX2M U72 ( .A(n161), .Y(n165) );
  BUFX2M U73 ( .A(n161), .Y(n164) );
  BUFX2M U74 ( .A(n161), .Y(n163) );
  BUFX2M U75 ( .A(n162), .Y(n168) );
  BUFX2M U76 ( .A(w_rstn), .Y(n162) );
  BUFX2M U77 ( .A(w_rstn), .Y(n161) );
  NAND3X2M U78 ( .A(n169), .B(n178), .C(n76), .Y(n79) );
  NAND3X2M U79 ( .A(n169), .B(n178), .C(n81), .Y(n84) );
  NAND3X2M U80 ( .A(n76), .B(n178), .C(w_addr[0]), .Y(n78) );
  NAND3X2M U81 ( .A(w_addr[0]), .B(n76), .C(w_addr[1]), .Y(n75) );
  NOR2BX2M U82 ( .AN(w_clk_en), .B(w_addr[2]), .Y(n81) );
  OAI2BB2X1M U83 ( .B0(n75), .B1(n170), .A0N(reg_file_7__0_), .A1N(n75), .Y(
        n85) );
  OAI2BB2X1M U84 ( .B0(n75), .B1(n171), .A0N(reg_file_7__1_), .A1N(n75), .Y(
        n86) );
  OAI2BB2X1M U85 ( .B0(n75), .B1(n172), .A0N(reg_file_7__2_), .A1N(n75), .Y(
        n87) );
  OAI2BB2X1M U86 ( .B0(n75), .B1(n173), .A0N(reg_file_7__3_), .A1N(n75), .Y(
        n88) );
  OAI2BB2X1M U87 ( .B0(n75), .B1(n174), .A0N(reg_file_7__4_), .A1N(n75), .Y(
        n89) );
  OAI2BB2X1M U88 ( .B0(n75), .B1(n175), .A0N(reg_file_7__5_), .A1N(n75), .Y(
        n90) );
  OAI2BB2X1M U89 ( .B0(n75), .B1(n176), .A0N(reg_file_7__6_), .A1N(n75), .Y(
        n91) );
  OAI2BB2X1M U90 ( .B0(n75), .B1(n177), .A0N(test_so), .A1N(n75), .Y(n92) );
  OAI2BB2X1M U91 ( .B0(n170), .B1(n78), .A0N(reg_file_5__0_), .A1N(n78), .Y(
        n101) );
  OAI2BB2X1M U92 ( .B0(n171), .B1(n78), .A0N(reg_file_5__1_), .A1N(n78), .Y(
        n102) );
  OAI2BB2X1M U93 ( .B0(n172), .B1(n78), .A0N(reg_file_5__2_), .A1N(n78), .Y(
        n103) );
  OAI2BB2X1M U94 ( .B0(n173), .B1(n78), .A0N(reg_file_5__3_), .A1N(n78), .Y(
        n104) );
  OAI2BB2X1M U95 ( .B0(n174), .B1(n78), .A0N(reg_file_5__4_), .A1N(n78), .Y(
        n105) );
  OAI2BB2X1M U96 ( .B0(n175), .B1(n78), .A0N(reg_file_5__5_), .A1N(n78), .Y(
        n106) );
  OAI2BB2X1M U97 ( .B0(n176), .B1(n78), .A0N(reg_file_5__6_), .A1N(n78), .Y(
        n107) );
  OAI2BB2X1M U98 ( .B0(n177), .B1(n78), .A0N(reg_file_5__7_), .A1N(n78), .Y(
        n108) );
  OAI2BB2X1M U99 ( .B0(n170), .B1(n84), .A0N(reg_file_0__0_), .A1N(n84), .Y(
        n141) );
  OAI2BB2X1M U100 ( .B0(n171), .B1(n84), .A0N(reg_file_0__1_), .A1N(n84), .Y(
        n142) );
  OAI2BB2X1M U101 ( .B0(n172), .B1(n84), .A0N(reg_file_0__2_), .A1N(n84), .Y(
        n143) );
  OAI2BB2X1M U102 ( .B0(n173), .B1(n84), .A0N(reg_file_0__3_), .A1N(n84), .Y(
        n144) );
  OAI2BB2X1M U103 ( .B0(n174), .B1(n84), .A0N(reg_file_0__4_), .A1N(n84), .Y(
        n145) );
  OAI2BB2X1M U104 ( .B0(n175), .B1(n84), .A0N(reg_file_0__5_), .A1N(n84), .Y(
        n146) );
  OAI2BB2X1M U105 ( .B0(n176), .B1(n84), .A0N(reg_file_0__6_), .A1N(n84), .Y(
        n147) );
  OAI2BB2X1M U106 ( .B0(n177), .B1(n84), .A0N(reg_file_0__7_), .A1N(n84), .Y(
        n148) );
  OAI2BB2X1M U107 ( .B0(n170), .B1(n79), .A0N(reg_file_4__0_), .A1N(n79), .Y(
        n109) );
  OAI2BB2X1M U108 ( .B0(n171), .B1(n79), .A0N(reg_file_4__1_), .A1N(n79), .Y(
        n110) );
  OAI2BB2X1M U109 ( .B0(n172), .B1(n79), .A0N(reg_file_4__2_), .A1N(n79), .Y(
        n111) );
  OAI2BB2X1M U110 ( .B0(n173), .B1(n79), .A0N(reg_file_4__3_), .A1N(n79), .Y(
        n112) );
  OAI2BB2X1M U111 ( .B0(n174), .B1(n79), .A0N(reg_file_4__4_), .A1N(n79), .Y(
        n113) );
  OAI2BB2X1M U112 ( .B0(n175), .B1(n79), .A0N(reg_file_4__5_), .A1N(n79), .Y(
        n114) );
  OAI2BB2X1M U113 ( .B0(n176), .B1(n79), .A0N(reg_file_4__6_), .A1N(n79), .Y(
        n115) );
  OAI2BB2X1M U114 ( .B0(n177), .B1(n79), .A0N(reg_file_4__7_), .A1N(n79), .Y(
        n116) );
  OAI2BB2X1M U115 ( .B0(n170), .B1(n160), .A0N(reg_file_6__0_), .A1N(n160), 
        .Y(n93) );
  OAI2BB2X1M U116 ( .B0(n171), .B1(n160), .A0N(reg_file_6__1_), .A1N(n160), 
        .Y(n94) );
  OAI2BB2X1M U117 ( .B0(n172), .B1(n160), .A0N(reg_file_6__2_), .A1N(n160), 
        .Y(n95) );
  OAI2BB2X1M U118 ( .B0(n173), .B1(n160), .A0N(reg_file_6__3_), .A1N(n160), 
        .Y(n96) );
  OAI2BB2X1M U119 ( .B0(n174), .B1(n160), .A0N(reg_file_6__4_), .A1N(n160), 
        .Y(n97) );
  OAI2BB2X1M U120 ( .B0(n175), .B1(n160), .A0N(reg_file_6__5_), .A1N(n160), 
        .Y(n98) );
  OAI2BB2X1M U121 ( .B0(n176), .B1(n160), .A0N(reg_file_6__6_), .A1N(n160), 
        .Y(n99) );
  OAI2BB2X1M U122 ( .B0(n177), .B1(n160), .A0N(reg_file_6__7_), .A1N(n160), 
        .Y(n100) );
  OAI2BB2X1M U123 ( .B0(n170), .B1(n159), .A0N(reg_file_3__0_), .A1N(n159), 
        .Y(n117) );
  OAI2BB2X1M U124 ( .B0(n171), .B1(n159), .A0N(reg_file_3__1_), .A1N(n159), 
        .Y(n118) );
  OAI2BB2X1M U125 ( .B0(n172), .B1(n159), .A0N(reg_file_3__2_), .A1N(n159), 
        .Y(n119) );
  OAI2BB2X1M U126 ( .B0(n173), .B1(n159), .A0N(reg_file_3__3_), .A1N(n159), 
        .Y(n120) );
  OAI2BB2X1M U127 ( .B0(n174), .B1(n159), .A0N(reg_file_3__4_), .A1N(n159), 
        .Y(n121) );
  OAI2BB2X1M U128 ( .B0(n175), .B1(n159), .A0N(reg_file_3__5_), .A1N(n159), 
        .Y(n122) );
  OAI2BB2X1M U129 ( .B0(n176), .B1(n159), .A0N(reg_file_3__6_), .A1N(n159), 
        .Y(n123) );
  OAI2BB2X1M U130 ( .B0(n177), .B1(n159), .A0N(reg_file_3__7_), .A1N(n159), 
        .Y(n124) );
  OAI2BB2X1M U131 ( .B0(n170), .B1(n158), .A0N(reg_file_2__0_), .A1N(n158), 
        .Y(n125) );
  OAI2BB2X1M U132 ( .B0(n171), .B1(n158), .A0N(reg_file_2__1_), .A1N(n158), 
        .Y(n126) );
  OAI2BB2X1M U133 ( .B0(n172), .B1(n158), .A0N(reg_file_2__2_), .A1N(n158), 
        .Y(n127) );
  OAI2BB2X1M U134 ( .B0(n173), .B1(n158), .A0N(reg_file_2__3_), .A1N(n158), 
        .Y(n128) );
  OAI2BB2X1M U135 ( .B0(n174), .B1(n158), .A0N(reg_file_2__4_), .A1N(n158), 
        .Y(n129) );
  OAI2BB2X1M U136 ( .B0(n175), .B1(n158), .A0N(reg_file_2__5_), .A1N(n158), 
        .Y(n130) );
  OAI2BB2X1M U137 ( .B0(n176), .B1(n158), .A0N(reg_file_2__6_), .A1N(n158), 
        .Y(n131) );
  OAI2BB2X1M U138 ( .B0(n177), .B1(n158), .A0N(reg_file_2__7_), .A1N(n158), 
        .Y(n132) );
  OAI2BB2X1M U139 ( .B0(n170), .B1(n157), .A0N(reg_file_1__0_), .A1N(n157), 
        .Y(n133) );
  OAI2BB2X1M U140 ( .B0(n171), .B1(n157), .A0N(reg_file_1__1_), .A1N(n157), 
        .Y(n134) );
  OAI2BB2X1M U141 ( .B0(n172), .B1(n157), .A0N(reg_file_1__2_), .A1N(n157), 
        .Y(n135) );
  OAI2BB2X1M U142 ( .B0(n173), .B1(n157), .A0N(reg_file_1__3_), .A1N(n157), 
        .Y(n136) );
  OAI2BB2X1M U143 ( .B0(n174), .B1(n157), .A0N(reg_file_1__4_), .A1N(n157), 
        .Y(n137) );
  OAI2BB2X1M U144 ( .B0(n175), .B1(n157), .A0N(reg_file_1__5_), .A1N(n157), 
        .Y(n138) );
  OAI2BB2X1M U145 ( .B0(n176), .B1(n157), .A0N(reg_file_1__6_), .A1N(n157), 
        .Y(n139) );
  OAI2BB2X1M U146 ( .B0(n177), .B1(n157), .A0N(reg_file_1__7_), .A1N(n157), 
        .Y(n140) );
  AND2X2M U147 ( .A(w_clk_en), .B(w_addr[2]), .Y(n76) );
  NAND3X2M U148 ( .A(n76), .B(n169), .C(w_addr[1]), .Y(n77) );
  NAND3X2M U149 ( .A(w_addr[1]), .B(w_addr[0]), .C(n81), .Y(n80) );
  NAND3X2M U150 ( .A(w_addr[1]), .B(n169), .C(n81), .Y(n82) );
  NAND3X2M U151 ( .A(w_addr[0]), .B(n178), .C(n81), .Y(n83) );
  INVX2M U152 ( .A(w_data[0]), .Y(n170) );
  INVX2M U153 ( .A(w_data[1]), .Y(n171) );
  INVX2M U154 ( .A(w_data[2]), .Y(n172) );
  INVX2M U155 ( .A(w_data[3]), .Y(n173) );
  INVX2M U156 ( .A(w_data[4]), .Y(n174) );
  INVX2M U157 ( .A(w_data[5]), .Y(n175) );
  INVX2M U158 ( .A(w_data[6]), .Y(n176) );
  INVX2M U159 ( .A(w_data[7]), .Y(n177) );
  MX2X2M U160 ( .A(n154), .B(n153), .S0(r_addr[2]), .Y(r_data[7]) );
  MX4X1M U161 ( .A(reg_file_0__7_), .B(reg_file_1__7_), .C(reg_file_2__7_), 
        .D(reg_file_3__7_), .S0(n156), .S1(r_addr[1]), .Y(n154) );
  MX4X1M U162 ( .A(reg_file_4__7_), .B(reg_file_5__7_), .C(reg_file_6__7_), 
        .D(test_so), .S0(n155), .S1(r_addr[1]), .Y(n153) );
  MX2X2M U163 ( .A(n152), .B(n151), .S0(r_addr[2]), .Y(r_data[6]) );
  MX4X1M U164 ( .A(reg_file_0__6_), .B(reg_file_1__6_), .C(reg_file_2__6_), 
        .D(reg_file_3__6_), .S0(n156), .S1(r_addr[1]), .Y(n152) );
  MX4X1M U165 ( .A(reg_file_4__6_), .B(reg_file_5__6_), .C(reg_file_6__6_), 
        .D(reg_file_7__6_), .S0(n155), .S1(r_addr[1]), .Y(n151) );
  MX2X2M U166 ( .A(n70), .B(n69), .S0(r_addr[2]), .Y(r_data[2]) );
  MX4X1M U167 ( .A(reg_file_0__2_), .B(reg_file_1__2_), .C(reg_file_2__2_), 
        .D(reg_file_3__2_), .S0(n156), .S1(r_addr[1]), .Y(n70) );
  MX4X1M U168 ( .A(reg_file_4__2_), .B(reg_file_5__2_), .C(reg_file_6__2_), 
        .D(reg_file_7__2_), .S0(n155), .S1(r_addr[1]), .Y(n69) );
  MX2X2M U169 ( .A(n72), .B(n71), .S0(r_addr[2]), .Y(r_data[3]) );
  MX4X1M U170 ( .A(reg_file_0__3_), .B(reg_file_1__3_), .C(reg_file_2__3_), 
        .D(reg_file_3__3_), .S0(n156), .S1(r_addr[1]), .Y(n72) );
  MX4X1M U171 ( .A(reg_file_4__3_), .B(reg_file_5__3_), .C(reg_file_6__3_), 
        .D(reg_file_7__3_), .S0(n155), .S1(r_addr[1]), .Y(n71) );
  MX2X2M U172 ( .A(n66), .B(n65), .S0(r_addr[2]), .Y(r_data[0]) );
  MX4X1M U173 ( .A(reg_file_0__0_), .B(reg_file_1__0_), .C(reg_file_2__0_), 
        .D(reg_file_3__0_), .S0(n156), .S1(r_addr[1]), .Y(n66) );
  MX4X1M U174 ( .A(reg_file_4__0_), .B(reg_file_5__0_), .C(reg_file_6__0_), 
        .D(reg_file_7__0_), .S0(n155), .S1(r_addr[1]), .Y(n65) );
  MX2X2M U175 ( .A(n74), .B(n73), .S0(r_addr[2]), .Y(r_data[4]) );
  MX4X1M U176 ( .A(reg_file_0__4_), .B(reg_file_1__4_), .C(reg_file_2__4_), 
        .D(reg_file_3__4_), .S0(n156), .S1(r_addr[1]), .Y(n74) );
  MX4X1M U177 ( .A(reg_file_4__4_), .B(reg_file_5__4_), .C(reg_file_6__4_), 
        .D(reg_file_7__4_), .S0(n155), .S1(r_addr[1]), .Y(n73) );
  MX2X2M U178 ( .A(n150), .B(n149), .S0(r_addr[2]), .Y(r_data[5]) );
  MX4X1M U179 ( .A(reg_file_0__5_), .B(reg_file_1__5_), .C(reg_file_2__5_), 
        .D(reg_file_3__5_), .S0(n156), .S1(r_addr[1]), .Y(n150) );
  MX4X1M U180 ( .A(reg_file_4__5_), .B(reg_file_5__5_), .C(reg_file_6__5_), 
        .D(reg_file_7__5_), .S0(n155), .S1(r_addr[1]), .Y(n149) );
  MX2X2M U181 ( .A(n68), .B(n67), .S0(r_addr[2]), .Y(r_data[1]) );
  MX4X1M U182 ( .A(reg_file_0__1_), .B(reg_file_1__1_), .C(reg_file_2__1_), 
        .D(reg_file_3__1_), .S0(n156), .S1(r_addr[1]), .Y(n68) );
  MX4X1M U183 ( .A(reg_file_4__1_), .B(reg_file_5__1_), .C(reg_file_6__1_), 
        .D(reg_file_7__1_), .S0(n155), .S1(r_addr[1]), .Y(n67) );
  BUFX2M U184 ( .A(r_addr[0]), .Y(n155) );
  BUFX2M U185 ( .A(r_addr[0]), .Y(n156) );
  INVX2M U186 ( .A(w_addr[1]), .Y(n178) );
  INVX2M U187 ( .A(w_addr[0]), .Y(n169) );
  INVXLM U188 ( .A(test_se), .Y(n181) );
  INVXLM U189 ( .A(n181), .Y(n182) );
  INVXLM U190 ( .A(n181), .Y(n183) );
  INVXLM U191 ( .A(n181), .Y(n184) );
  INVXLM U192 ( .A(n181), .Y(n185) );
endmodule


module bit_sync_NUM_STAGES2_DEPTH8_ADDR_WIDTH3_test_0 ( dest_clk, reset_n, 
        async_bus, sync_bus, test_se );
  input [3:0] async_bus;
  output [3:0] sync_bus;
  input dest_clk, reset_n, test_se;
  wire   sync_reg_3__0_, sync_reg_2__0_, sync_reg_1__0_, sync_reg_0__0_;

  SDFFRQX2M sync_reg_reg_3__1_ ( .D(sync_reg_3__0_), .SI(sync_reg_3__0_), .SE(
        test_se), .CK(dest_clk), .RN(reset_n), .Q(sync_bus[3]) );
  SDFFRQX2M sync_reg_reg_2__1_ ( .D(sync_reg_2__0_), .SI(sync_reg_2__0_), .SE(
        test_se), .CK(dest_clk), .RN(reset_n), .Q(sync_bus[2]) );
  SDFFRQX2M sync_reg_reg_1__1_ ( .D(sync_reg_1__0_), .SI(sync_reg_1__0_), .SE(
        test_se), .CK(dest_clk), .RN(reset_n), .Q(sync_bus[1]) );
  SDFFRQX2M sync_reg_reg_0__1_ ( .D(sync_reg_0__0_), .SI(sync_reg_0__0_), .SE(
        test_se), .CK(dest_clk), .RN(reset_n), .Q(sync_bus[0]) );
  SDFFRQX2M sync_reg_reg_3__0_ ( .D(async_bus[3]), .SI(sync_bus[2]), .SE(
        test_se), .CK(dest_clk), .RN(reset_n), .Q(sync_reg_3__0_) );
  SDFFRQX2M sync_reg_reg_2__0_ ( .D(async_bus[2]), .SI(sync_bus[1]), .SE(
        test_se), .CK(dest_clk), .RN(reset_n), .Q(sync_reg_2__0_) );
  SDFFRQX2M sync_reg_reg_1__0_ ( .D(async_bus[1]), .SI(sync_bus[0]), .SE(
        test_se), .CK(dest_clk), .RN(reset_n), .Q(sync_reg_1__0_) );
  SDFFRQX2M sync_reg_reg_0__0_ ( .D(async_bus[0]), .SI(async_bus[3]), .SE(
        test_se), .CK(dest_clk), .RN(reset_n), .Q(sync_reg_0__0_) );
endmodule


module bit_sync_NUM_STAGES2_DEPTH8_ADDR_WIDTH3_test_1 ( dest_clk, reset_n, 
        async_bus, sync_bus, test_se );
  input [3:0] async_bus;
  output [3:0] sync_bus;
  input dest_clk, reset_n, test_se;
  wire   sync_reg_3__0_, sync_reg_2__0_, sync_reg_1__0_, sync_reg_0__0_;

  SDFFRQX2M sync_reg_reg_3__1_ ( .D(sync_reg_3__0_), .SI(sync_reg_3__0_), .SE(
        test_se), .CK(dest_clk), .RN(reset_n), .Q(sync_bus[3]) );
  SDFFRQX2M sync_reg_reg_2__1_ ( .D(sync_reg_2__0_), .SI(sync_reg_2__0_), .SE(
        test_se), .CK(dest_clk), .RN(reset_n), .Q(sync_bus[2]) );
  SDFFRQX2M sync_reg_reg_1__1_ ( .D(sync_reg_1__0_), .SI(sync_reg_1__0_), .SE(
        test_se), .CK(dest_clk), .RN(reset_n), .Q(sync_bus[1]) );
  SDFFRQX2M sync_reg_reg_0__1_ ( .D(sync_reg_0__0_), .SI(sync_reg_0__0_), .SE(
        test_se), .CK(dest_clk), .RN(reset_n), .Q(sync_bus[0]) );
  SDFFRQX2M sync_reg_reg_3__0_ ( .D(async_bus[3]), .SI(sync_bus[2]), .SE(
        test_se), .CK(dest_clk), .RN(reset_n), .Q(sync_reg_3__0_) );
  SDFFRQX2M sync_reg_reg_2__0_ ( .D(async_bus[2]), .SI(sync_bus[1]), .SE(
        test_se), .CK(dest_clk), .RN(reset_n), .Q(sync_reg_2__0_) );
  SDFFRQX2M sync_reg_reg_1__0_ ( .D(async_bus[1]), .SI(sync_bus[0]), .SE(
        test_se), .CK(dest_clk), .RN(reset_n), .Q(sync_reg_1__0_) );
  SDFFRQX2M sync_reg_reg_0__0_ ( .D(async_bus[0]), .SI(async_bus[3]), .SE(
        test_se), .CK(dest_clk), .RN(reset_n), .Q(sync_reg_0__0_) );
endmodule


module write_control_DATA_WIDTH8_DEPTH8_ADDR_WIDTH3_test_1 ( w_clk, w_reset_n, 
        w_inc, wq2_rptr, w_addr, w_ptr, w_full, test_si, test_se );
  input [3:0] wq2_rptr;
  output [2:0] w_addr;
  output [3:0] w_ptr;
  input w_clk, w_reset_n, w_inc, test_si, test_se;
  output w_full;
  wire   w_ptr_bin_3_, w_full_next, n10, n11, n12, n13, n14, n15, n16, n17;
  wire   [3:0] w_bin_next;
  wire   [2:0] w_gray_next;

  SDFFRQX2M w_ptr_bin_reg_3_ ( .D(w_bin_next[3]), .SI(w_addr[2]), .SE(test_se), 
        .CK(w_clk), .RN(w_reset_n), .Q(w_ptr_bin_3_) );
  SDFFRQX2M w_ptr_bin_reg_2_ ( .D(w_bin_next[2]), .SI(w_addr[1]), .SE(test_se), 
        .CK(w_clk), .RN(w_reset_n), .Q(w_addr[2]) );
  SDFFRQX2M w_full_reg ( .D(w_full_next), .SI(test_si), .SE(test_se), .CK(
        w_clk), .RN(w_reset_n), .Q(w_full) );
  SDFFRQX2M w_ptr_bin_reg_0_ ( .D(w_bin_next[0]), .SI(w_full), .SE(test_se), 
        .CK(w_clk), .RN(w_reset_n), .Q(w_addr[0]) );
  SDFFRQX2M w_ptr_bin_reg_1_ ( .D(w_bin_next[1]), .SI(w_addr[0]), .SE(test_se), 
        .CK(w_clk), .RN(w_reset_n), .Q(w_addr[1]) );
  SDFFRQX2M w_ptr_reg_0_ ( .D(w_gray_next[0]), .SI(w_ptr_bin_3_), .SE(test_se), 
        .CK(w_clk), .RN(w_reset_n), .Q(w_ptr[0]) );
  SDFFRQX2M w_ptr_reg_3_ ( .D(w_bin_next[3]), .SI(w_ptr[2]), .SE(test_se), 
        .CK(w_clk), .RN(w_reset_n), .Q(w_ptr[3]) );
  SDFFRQX2M w_ptr_reg_2_ ( .D(w_gray_next[2]), .SI(w_ptr[1]), .SE(test_se), 
        .CK(w_clk), .RN(w_reset_n), .Q(w_ptr[2]) );
  SDFFRQX2M w_ptr_reg_1_ ( .D(w_gray_next[1]), .SI(w_ptr[0]), .SE(test_se), 
        .CK(w_clk), .RN(w_reset_n), .Q(w_ptr[1]) );
  CLKXOR2X2M U12 ( .A(w_bin_next[2]), .B(w_bin_next[1]), .Y(w_gray_next[1]) );
  CLKXOR2X2M U13 ( .A(w_bin_next[1]), .B(w_bin_next[0]), .Y(w_gray_next[0]) );
  CLKXOR2X2M U14 ( .A(w_bin_next[3]), .B(w_bin_next[2]), .Y(w_gray_next[2]) );
  XNOR2X2M U15 ( .A(n16), .B(w_addr[2]), .Y(w_bin_next[2]) );
  NAND2X2M U16 ( .A(w_addr[1]), .B(n15), .Y(n16) );
  XNOR2X2M U17 ( .A(n14), .B(w_ptr_bin_3_), .Y(w_bin_next[3]) );
  NAND3X2M U18 ( .A(w_addr[1]), .B(n15), .C(w_addr[2]), .Y(n14) );
  NOR4X1M U19 ( .A(n10), .B(n11), .C(n12), .D(n13), .Y(w_full_next) );
  XNOR2X2M U20 ( .A(w_bin_next[3]), .B(wq2_rptr[3]), .Y(n10) );
  XNOR2X2M U21 ( .A(w_gray_next[2]), .B(wq2_rptr[2]), .Y(n11) );
  CLKXOR2X2M U22 ( .A(wq2_rptr[0]), .B(w_gray_next[0]), .Y(n12) );
  NOR2BX2M U23 ( .AN(w_inc), .B(w_full), .Y(n17) );
  AND2X2M U24 ( .A(w_addr[0]), .B(n17), .Y(n15) );
  CLKXOR2X2M U25 ( .A(n15), .B(w_addr[1]), .Y(w_bin_next[1]) );
  CLKXOR2X2M U26 ( .A(wq2_rptr[1]), .B(w_gray_next[1]), .Y(n13) );
  CLKXOR2X2M U27 ( .A(n17), .B(w_addr[0]), .Y(w_bin_next[0]) );
endmodule


module read_control_DATA_WIDTH8_DEPTH8_ADDR_WIDTH3_test_1 ( r_clk, r_reset_n, 
        r_inc, rq2_wptr, r_addr, r_ptr, r_empty, test_si, test_se );
  input [3:0] rq2_wptr;
  output [2:0] r_addr;
  output [3:0] r_ptr;
  input r_clk, r_reset_n, r_inc, test_si, test_se;
  output r_empty;
  wire   r_ptr_bin_3_, r_empty_next, n10, n11, n12, n13, n14, n15, n16, n17;
  wire   [3:0] r_bin_next;
  wire   [2:0] r_gray_next;

  SDFFRQX2M r_ptr_bin_reg_3_ ( .D(r_bin_next[3]), .SI(r_addr[2]), .SE(test_se), 
        .CK(r_clk), .RN(r_reset_n), .Q(r_ptr_bin_3_) );
  SDFFSQX2M r_empty_reg ( .D(r_empty_next), .SI(test_si), .SE(test_se), .CK(
        r_clk), .SN(r_reset_n), .Q(r_empty) );
  SDFFRQX2M r_ptr_bin_reg_0_ ( .D(r_bin_next[0]), .SI(r_empty), .SE(test_se), 
        .CK(r_clk), .RN(r_reset_n), .Q(r_addr[0]) );
  SDFFRQX2M r_ptr_bin_reg_2_ ( .D(r_bin_next[2]), .SI(r_addr[1]), .SE(test_se), 
        .CK(r_clk), .RN(r_reset_n), .Q(r_addr[2]) );
  SDFFRQX2M r_ptr_bin_reg_1_ ( .D(r_bin_next[1]), .SI(r_addr[0]), .SE(test_se), 
        .CK(r_clk), .RN(r_reset_n), .Q(r_addr[1]) );
  SDFFRQX2M r_ptr_reg_0_ ( .D(r_gray_next[0]), .SI(r_ptr_bin_3_), .SE(test_se), 
        .CK(r_clk), .RN(r_reset_n), .Q(r_ptr[0]) );
  SDFFRQX2M r_ptr_reg_3_ ( .D(r_bin_next[3]), .SI(r_ptr[2]), .SE(test_se), 
        .CK(r_clk), .RN(r_reset_n), .Q(r_ptr[3]) );
  SDFFRQX2M r_ptr_reg_2_ ( .D(r_gray_next[2]), .SI(r_ptr[1]), .SE(test_se), 
        .CK(r_clk), .RN(r_reset_n), .Q(r_ptr[2]) );
  SDFFRQX2M r_ptr_reg_1_ ( .D(r_gray_next[1]), .SI(r_ptr[0]), .SE(test_se), 
        .CK(r_clk), .RN(r_reset_n), .Q(r_ptr[1]) );
  CLKXOR2X2M U12 ( .A(r_bin_next[3]), .B(r_bin_next[2]), .Y(r_gray_next[2]) );
  CLKXOR2X2M U13 ( .A(r_bin_next[2]), .B(r_bin_next[1]), .Y(r_gray_next[1]) );
  CLKXOR2X2M U14 ( .A(r_bin_next[1]), .B(r_bin_next[0]), .Y(r_gray_next[0]) );
  XNOR2X2M U15 ( .A(n14), .B(r_ptr_bin_3_), .Y(r_bin_next[3]) );
  NAND3X2M U16 ( .A(r_addr[1]), .B(n15), .C(r_addr[2]), .Y(n14) );
  XNOR2X2M U17 ( .A(n16), .B(r_addr[2]), .Y(r_bin_next[2]) );
  NAND2X2M U18 ( .A(r_addr[1]), .B(n15), .Y(n16) );
  NOR4X1M U19 ( .A(n10), .B(n11), .C(n12), .D(n13), .Y(r_empty_next) );
  CLKXOR2X2M U20 ( .A(rq2_wptr[3]), .B(r_bin_next[3]), .Y(n11) );
  CLKXOR2X2M U21 ( .A(rq2_wptr[2]), .B(r_gray_next[2]), .Y(n10) );
  CLKXOR2X2M U22 ( .A(rq2_wptr[0]), .B(r_gray_next[0]), .Y(n12) );
  NOR2BX2M U23 ( .AN(r_inc), .B(r_empty), .Y(n17) );
  AND2X2M U24 ( .A(r_addr[0]), .B(n17), .Y(n15) );
  CLKXOR2X2M U25 ( .A(n15), .B(r_addr[1]), .Y(r_bin_next[1]) );
  CLKXOR2X2M U26 ( .A(rq2_wptr[1]), .B(r_gray_next[1]), .Y(n13) );
  CLKXOR2X2M U27 ( .A(n17), .B(r_addr[0]), .Y(r_bin_next[0]) );
endmodule


module FIFO_top_DATA_WIDTH8_NUM_STAGES2_DEPTH8_ADDR_WIDTH3_test_1 ( w_clk, 
        w_reset_n, w_inc, w_data, r_clk, r_reset_n, r_inc, full, empty, r_data, 
        test_si2, test_si1, test_so2, test_so1, test_se );
  input [7:0] w_data;
  output [7:0] r_data;
  input w_clk, w_reset_n, w_inc, r_clk, r_reset_n, r_inc, test_si2, test_si1,
         test_se;
  output full, empty, test_so2, test_so1;
  wire   n_0_net_, wq2_rptr_2_, wq2_rptr_1_, wq2_rptr_0_, rq2_wptr_2_,
         rq2_wptr_1_, rq2_wptr_0_, n1, n2, n3, n4, n5;
  wire   [2:0] w_addr;
  wire   [2:0] r_addr;
  wire   [3:0] r_ptr;
  wire   [3:0] w_ptr;

  INVX2M U1 ( .A(n4), .Y(n3) );
  INVX2M U2 ( .A(w_reset_n), .Y(n4) );
  INVX2M U3 ( .A(n2), .Y(n1) );
  INVX2M U4 ( .A(r_reset_n), .Y(n2) );
  NOR2BX2M U5 ( .AN(w_inc), .B(full), .Y(n_0_net_) );
  FIFO_mem_DATA_WIDTH8_DEPTH8_ADDR_WIDTH3_test_1 dual_port_RAM ( .w_data(
        w_data), .w_clk(w_clk), .w_clk_en(n_0_net_), .w_rstn(n3), .w_addr(
        w_addr), .r_addr(r_addr), .r_data(r_data), .test_si(test_si1), 
        .test_so(n5), .test_se(test_se) );
  bit_sync_NUM_STAGES2_DEPTH8_ADDR_WIDTH3_test_0 read_ptr_sync ( .dest_clk(
        w_clk), .reset_n(n3), .async_bus(r_ptr), .sync_bus({test_so1, 
        wq2_rptr_2_, wq2_rptr_1_, wq2_rptr_0_}), .test_se(test_se) );
  bit_sync_NUM_STAGES2_DEPTH8_ADDR_WIDTH3_test_1 write_ptr_sync ( .dest_clk(
        r_clk), .reset_n(n1), .async_bus(w_ptr), .sync_bus({test_so2, 
        rq2_wptr_2_, rq2_wptr_1_, rq2_wptr_0_}), .test_se(test_se) );
  write_control_DATA_WIDTH8_DEPTH8_ADDR_WIDTH3_test_1 write_con ( .w_clk(w_clk), .w_reset_n(n3), .w_inc(w_inc), .wq2_rptr({test_so1, wq2_rptr_2_, wq2_rptr_1_, 
        wq2_rptr_0_}), .w_addr(w_addr), .w_ptr(w_ptr), .w_full(full), 
        .test_si(test_si2), .test_se(test_se) );
  read_control_DATA_WIDTH8_DEPTH8_ADDR_WIDTH3_test_1 read_con ( .r_clk(r_clk), 
        .r_reset_n(n1), .r_inc(r_inc), .rq2_wptr({test_so2, rq2_wptr_2_, 
        rq2_wptr_1_, rq2_wptr_0_}), .r_addr(r_addr), .r_ptr(r_ptr), .r_empty(
        empty), .test_si(n5), .test_se(test_se) );
endmodule


module registerfile_WORD_SIZE8_DEPTH16_ADDR_SIZE4_test_1 ( clk, rst_n, wr_en, 
        rd_en, address, wr_data, rd_data, rd_data_valid, reg0, reg1, reg2, 
        reg3, test_si2, test_si1, test_so1, test_se );
  input [3:0] address;
  input [7:0] wr_data;
  output [7:0] rd_data;
  output [7:0] reg0;
  output [7:0] reg1;
  output [7:0] reg2;
  output [7:0] reg3;
  input clk, rst_n, wr_en, rd_en, test_si2, test_si1, test_se;
  output rd_data_valid, test_so1;
  wire   reg_file_4__7_, reg_file_4__6_, reg_file_4__5_, reg_file_4__4_,
         reg_file_4__3_, reg_file_4__2_, reg_file_4__1_, reg_file_4__0_,
         reg_file_5__7_, reg_file_5__6_, reg_file_5__5_, reg_file_5__4_,
         reg_file_5__3_, reg_file_5__2_, reg_file_5__1_, reg_file_5__0_,
         reg_file_6__7_, reg_file_6__6_, reg_file_6__5_, reg_file_6__4_,
         reg_file_6__3_, reg_file_6__2_, reg_file_6__1_, reg_file_6__0_,
         reg_file_7__7_, reg_file_7__6_, reg_file_7__5_, reg_file_7__4_,
         reg_file_7__3_, reg_file_7__2_, reg_file_7__1_, reg_file_7__0_,
         reg_file_8__7_, reg_file_8__6_, reg_file_8__5_, reg_file_8__4_,
         reg_file_8__3_, reg_file_8__2_, reg_file_8__1_, reg_file_8__0_,
         reg_file_9__7_, reg_file_9__6_, reg_file_9__5_, reg_file_9__4_,
         reg_file_9__3_, reg_file_9__2_, reg_file_9__1_, reg_file_9__0_,
         reg_file_10__7_, reg_file_10__6_, reg_file_10__5_, reg_file_10__4_,
         reg_file_10__3_, reg_file_10__2_, reg_file_10__1_, reg_file_10__0_,
         reg_file_11__7_, reg_file_11__6_, reg_file_11__5_, reg_file_11__4_,
         reg_file_11__3_, reg_file_11__2_, reg_file_11__1_, reg_file_11__0_,
         reg_file_12__7_, reg_file_12__6_, reg_file_12__5_, reg_file_12__4_,
         reg_file_12__3_, reg_file_12__2_, reg_file_12__1_, reg_file_12__0_,
         reg_file_13__7_, reg_file_13__6_, reg_file_13__5_, reg_file_13__4_,
         reg_file_13__3_, reg_file_13__2_, reg_file_13__1_, reg_file_13__0_,
         reg_file_14__7_, reg_file_14__6_, reg_file_14__5_, reg_file_14__4_,
         reg_file_14__3_, reg_file_14__2_, reg_file_14__1_, reg_file_14__0_,
         reg_file_15__6_, reg_file_15__5_, reg_file_15__4_, reg_file_15__3_,
         reg_file_15__2_, reg_file_15__1_, reg_file_15__0_, N36, N37, N38, N39,
         N40, N41, N42, N43, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212,
         n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223,
         n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234,
         n235, n236, n237, n238, n239, n240, n241, n242, n243, n244, n245,
         n246, n247, n248, n249, n250, n251, n252, n253, n254, n255, n256,
         n257, n258, n259, n260, n261, n262, n263, n264, n265, n266, n267,
         n268, n269, n270, n271, n272, n273, n274, n275, n276, n277, n278,
         n279, n280, n281, n282, n283, n284, n285, n286, n287, n288, n289,
         n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, n300,
         n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311,
         n312, n313, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n314, n315, n316, n317, n318, n319, n320, n321,
         n322, n323, n324, n325, n326, n327, n328, n329, n330, n331, n332,
         n333, n334, n335, n336, n337, n338, n339, n340, n341, n342, n343,
         n344, n345, n346, n347, n348, n349, n350, n351, n352, n353, n354,
         n355, n356, n357, n358, n359, n360, n361, n362, n363, n364, n365,
         n369, n370, n371, n372;

  SDFFRQX2M reg_file_reg_5__7_ ( .D(n273), .SI(reg_file_5__6_), .SE(n371), 
        .CK(clk), .RN(n348), .Q(reg_file_5__7_) );
  SDFFRQX2M reg_file_reg_5__6_ ( .D(n272), .SI(reg_file_5__5_), .SE(n370), 
        .CK(clk), .RN(n348), .Q(reg_file_5__6_) );
  SDFFRQX2M reg_file_reg_5__5_ ( .D(n271), .SI(reg_file_5__4_), .SE(n369), 
        .CK(clk), .RN(n348), .Q(reg_file_5__5_) );
  SDFFRQX2M reg_file_reg_5__4_ ( .D(n270), .SI(reg_file_5__3_), .SE(n372), 
        .CK(clk), .RN(n348), .Q(reg_file_5__4_) );
  SDFFRQX2M reg_file_reg_5__3_ ( .D(n269), .SI(reg_file_5__2_), .SE(n371), 
        .CK(clk), .RN(n347), .Q(reg_file_5__3_) );
  SDFFRQX2M reg_file_reg_5__2_ ( .D(n268), .SI(reg_file_5__1_), .SE(n370), 
        .CK(clk), .RN(n347), .Q(reg_file_5__2_) );
  SDFFRQX2M reg_file_reg_5__1_ ( .D(n267), .SI(reg_file_5__0_), .SE(n369), 
        .CK(clk), .RN(n347), .Q(reg_file_5__1_) );
  SDFFRQX2M reg_file_reg_5__0_ ( .D(n266), .SI(reg_file_4__7_), .SE(n372), 
        .CK(clk), .RN(n347), .Q(reg_file_5__0_) );
  SDFFRQX2M reg_file_reg_9__7_ ( .D(n241), .SI(reg_file_9__6_), .SE(n371), 
        .CK(clk), .RN(n345), .Q(reg_file_9__7_) );
  SDFFRQX2M reg_file_reg_9__6_ ( .D(n240), .SI(reg_file_9__5_), .SE(n370), 
        .CK(clk), .RN(n345), .Q(reg_file_9__6_) );
  SDFFRQX2M reg_file_reg_9__5_ ( .D(n239), .SI(reg_file_9__4_), .SE(n369), 
        .CK(clk), .RN(n345), .Q(reg_file_9__5_) );
  SDFFRQX2M reg_file_reg_9__4_ ( .D(n238), .SI(reg_file_9__3_), .SE(n372), 
        .CK(clk), .RN(n345), .Q(reg_file_9__4_) );
  SDFFRQX2M reg_file_reg_9__3_ ( .D(n237), .SI(reg_file_9__2_), .SE(n371), 
        .CK(clk), .RN(n345), .Q(reg_file_9__3_) );
  SDFFRQX2M reg_file_reg_9__2_ ( .D(n236), .SI(reg_file_9__1_), .SE(n370), 
        .CK(clk), .RN(n345), .Q(reg_file_9__2_) );
  SDFFRQX2M reg_file_reg_9__1_ ( .D(n235), .SI(reg_file_9__0_), .SE(n369), 
        .CK(clk), .RN(n345), .Q(reg_file_9__1_) );
  SDFFRQX2M reg_file_reg_9__0_ ( .D(n234), .SI(reg_file_8__7_), .SE(n372), 
        .CK(clk), .RN(n345), .Q(reg_file_9__0_) );
  SDFFRQX2M reg_file_reg_13__7_ ( .D(n209), .SI(reg_file_13__6_), .SE(n371), 
        .CK(clk), .RN(n343), .Q(reg_file_13__7_) );
  SDFFRQX2M reg_file_reg_13__6_ ( .D(n208), .SI(reg_file_13__5_), .SE(n370), 
        .CK(clk), .RN(n343), .Q(reg_file_13__6_) );
  SDFFRQX2M reg_file_reg_13__5_ ( .D(n207), .SI(reg_file_13__4_), .SE(n369), 
        .CK(clk), .RN(n343), .Q(reg_file_13__5_) );
  SDFFRQX2M reg_file_reg_13__4_ ( .D(n206), .SI(reg_file_13__3_), .SE(n372), 
        .CK(clk), .RN(n343), .Q(reg_file_13__4_) );
  SDFFRQX2M reg_file_reg_13__3_ ( .D(n205), .SI(reg_file_13__2_), .SE(n371), 
        .CK(clk), .RN(n343), .Q(reg_file_13__3_) );
  SDFFRQX2M reg_file_reg_13__2_ ( .D(n204), .SI(reg_file_13__1_), .SE(n370), 
        .CK(clk), .RN(n343), .Q(reg_file_13__2_) );
  SDFFRQX2M reg_file_reg_13__1_ ( .D(n203), .SI(reg_file_13__0_), .SE(n369), 
        .CK(clk), .RN(n343), .Q(reg_file_13__1_) );
  SDFFRQX2M reg_file_reg_13__0_ ( .D(n202), .SI(reg_file_12__7_), .SE(n372), 
        .CK(clk), .RN(n343), .Q(reg_file_13__0_) );
  SDFFRQX2M reg_file_reg_7__7_ ( .D(n257), .SI(reg_file_7__6_), .SE(n371), 
        .CK(clk), .RN(n347), .Q(reg_file_7__7_) );
  SDFFRQX2M reg_file_reg_7__6_ ( .D(n256), .SI(reg_file_7__5_), .SE(n370), 
        .CK(clk), .RN(n347), .Q(reg_file_7__6_) );
  SDFFRQX2M reg_file_reg_7__5_ ( .D(n255), .SI(reg_file_7__4_), .SE(n369), 
        .CK(clk), .RN(n346), .Q(reg_file_7__5_) );
  SDFFRQX2M reg_file_reg_7__4_ ( .D(n254), .SI(reg_file_7__3_), .SE(n372), 
        .CK(clk), .RN(n346), .Q(reg_file_7__4_) );
  SDFFRQX2M reg_file_reg_7__3_ ( .D(n253), .SI(reg_file_7__2_), .SE(n371), 
        .CK(clk), .RN(n346), .Q(reg_file_7__3_) );
  SDFFRQX2M reg_file_reg_7__2_ ( .D(n252), .SI(reg_file_7__1_), .SE(n370), 
        .CK(clk), .RN(n346), .Q(reg_file_7__2_) );
  SDFFRQX2M reg_file_reg_7__1_ ( .D(n251), .SI(reg_file_7__0_), .SE(n369), 
        .CK(clk), .RN(n346), .Q(reg_file_7__1_) );
  SDFFRQX2M reg_file_reg_7__0_ ( .D(n250), .SI(reg_file_6__7_), .SE(n372), 
        .CK(clk), .RN(n346), .Q(reg_file_7__0_) );
  SDFFRQX2M reg_file_reg_11__7_ ( .D(n225), .SI(reg_file_11__6_), .SE(n371), 
        .CK(clk), .RN(n344), .Q(reg_file_11__7_) );
  SDFFRQX2M reg_file_reg_11__6_ ( .D(n224), .SI(reg_file_11__5_), .SE(n370), 
        .CK(clk), .RN(n344), .Q(reg_file_11__6_) );
  SDFFRQX2M reg_file_reg_11__5_ ( .D(n223), .SI(reg_file_11__4_), .SE(n369), 
        .CK(clk), .RN(n344), .Q(reg_file_11__5_) );
  SDFFRQX2M reg_file_reg_11__4_ ( .D(n222), .SI(reg_file_11__3_), .SE(n372), 
        .CK(clk), .RN(n344), .Q(reg_file_11__4_) );
  SDFFRQX2M reg_file_reg_11__3_ ( .D(n221), .SI(reg_file_11__2_), .SE(n371), 
        .CK(clk), .RN(n344), .Q(reg_file_11__3_) );
  SDFFRQX2M reg_file_reg_11__2_ ( .D(n220), .SI(reg_file_11__1_), .SE(n370), 
        .CK(clk), .RN(n344), .Q(reg_file_11__2_) );
  SDFFRQX2M reg_file_reg_11__1_ ( .D(n219), .SI(reg_file_11__0_), .SE(n369), 
        .CK(clk), .RN(n344), .Q(reg_file_11__1_) );
  SDFFRQX2M reg_file_reg_11__0_ ( .D(n218), .SI(reg_file_10__7_), .SE(n372), 
        .CK(clk), .RN(n344), .Q(reg_file_11__0_) );
  SDFFRQX2M reg_file_reg_15__7_ ( .D(n193), .SI(reg_file_15__6_), .SE(n371), 
        .CK(clk), .RN(n342), .Q(test_so1) );
  SDFFRQX2M reg_file_reg_15__6_ ( .D(n192), .SI(reg_file_15__5_), .SE(n370), 
        .CK(clk), .RN(n342), .Q(reg_file_15__6_) );
  SDFFRQX2M reg_file_reg_15__5_ ( .D(n191), .SI(reg_file_15__4_), .SE(n369), 
        .CK(clk), .RN(n342), .Q(reg_file_15__5_) );
  SDFFRQX2M reg_file_reg_15__4_ ( .D(n190), .SI(reg_file_15__3_), .SE(n372), 
        .CK(clk), .RN(n342), .Q(reg_file_15__4_) );
  SDFFRQX2M reg_file_reg_15__3_ ( .D(n189), .SI(reg_file_15__2_), .SE(n371), 
        .CK(clk), .RN(n342), .Q(reg_file_15__3_) );
  SDFFRQX2M reg_file_reg_15__2_ ( .D(n188), .SI(reg_file_15__1_), .SE(n370), 
        .CK(clk), .RN(n342), .Q(reg_file_15__2_) );
  SDFFRQX2M reg_file_reg_15__1_ ( .D(n187), .SI(reg_file_15__0_), .SE(n369), 
        .CK(clk), .RN(n341), .Q(reg_file_15__1_) );
  SDFFRQX2M reg_file_reg_15__0_ ( .D(n186), .SI(reg_file_14__7_), .SE(n372), 
        .CK(clk), .RN(n342), .Q(reg_file_15__0_) );
  SDFFRQX2M reg_file_reg_6__7_ ( .D(n265), .SI(reg_file_6__6_), .SE(n371), 
        .CK(clk), .RN(n347), .Q(reg_file_6__7_) );
  SDFFRQX2M reg_file_reg_6__6_ ( .D(n264), .SI(reg_file_6__5_), .SE(n370), 
        .CK(clk), .RN(n347), .Q(reg_file_6__6_) );
  SDFFRQX2M reg_file_reg_6__5_ ( .D(n263), .SI(reg_file_6__4_), .SE(n369), 
        .CK(clk), .RN(n347), .Q(reg_file_6__5_) );
  SDFFRQX2M reg_file_reg_6__4_ ( .D(n262), .SI(reg_file_6__3_), .SE(n372), 
        .CK(clk), .RN(n347), .Q(reg_file_6__4_) );
  SDFFRQX2M reg_file_reg_6__3_ ( .D(n261), .SI(reg_file_6__2_), .SE(n371), 
        .CK(clk), .RN(n347), .Q(reg_file_6__3_) );
  SDFFRQX2M reg_file_reg_6__2_ ( .D(n260), .SI(reg_file_6__1_), .SE(n370), 
        .CK(clk), .RN(n347), .Q(reg_file_6__2_) );
  SDFFRQX2M reg_file_reg_6__1_ ( .D(n259), .SI(reg_file_6__0_), .SE(n369), 
        .CK(clk), .RN(n347), .Q(reg_file_6__1_) );
  SDFFRQX2M reg_file_reg_6__0_ ( .D(n258), .SI(reg_file_5__7_), .SE(n372), 
        .CK(clk), .RN(n347), .Q(reg_file_6__0_) );
  SDFFRQX2M reg_file_reg_10__7_ ( .D(n233), .SI(reg_file_10__6_), .SE(n371), 
        .CK(clk), .RN(n345), .Q(reg_file_10__7_) );
  SDFFRQX2M reg_file_reg_10__6_ ( .D(n232), .SI(reg_file_10__5_), .SE(n370), 
        .CK(clk), .RN(n345), .Q(reg_file_10__6_) );
  SDFFRQX2M reg_file_reg_10__5_ ( .D(n231), .SI(reg_file_10__4_), .SE(n369), 
        .CK(clk), .RN(n345), .Q(reg_file_10__5_) );
  SDFFRQX2M reg_file_reg_10__4_ ( .D(n230), .SI(reg_file_10__3_), .SE(n372), 
        .CK(clk), .RN(n345), .Q(reg_file_10__4_) );
  SDFFRQX2M reg_file_reg_10__3_ ( .D(n229), .SI(reg_file_10__2_), .SE(n371), 
        .CK(clk), .RN(n345), .Q(reg_file_10__3_) );
  SDFFRQX2M reg_file_reg_10__2_ ( .D(n228), .SI(reg_file_10__1_), .SE(n370), 
        .CK(clk), .RN(n344), .Q(reg_file_10__2_) );
  SDFFRQX2M reg_file_reg_10__1_ ( .D(n227), .SI(reg_file_10__0_), .SE(n369), 
        .CK(clk), .RN(n344), .Q(reg_file_10__1_) );
  SDFFRQX2M reg_file_reg_10__0_ ( .D(n226), .SI(reg_file_9__7_), .SE(n372), 
        .CK(clk), .RN(n344), .Q(reg_file_10__0_) );
  SDFFRQX2M reg_file_reg_14__7_ ( .D(n201), .SI(reg_file_14__6_), .SE(n371), 
        .CK(clk), .RN(n343), .Q(reg_file_14__7_) );
  SDFFRQX2M reg_file_reg_14__6_ ( .D(n200), .SI(reg_file_14__5_), .SE(n370), 
        .CK(clk), .RN(n342), .Q(reg_file_14__6_) );
  SDFFRQX2M reg_file_reg_14__5_ ( .D(n199), .SI(reg_file_14__4_), .SE(n369), 
        .CK(clk), .RN(n342), .Q(reg_file_14__5_) );
  SDFFRQX2M reg_file_reg_14__4_ ( .D(n198), .SI(reg_file_14__3_), .SE(n372), 
        .CK(clk), .RN(n342), .Q(reg_file_14__4_) );
  SDFFRQX2M reg_file_reg_14__3_ ( .D(n197), .SI(reg_file_14__2_), .SE(n371), 
        .CK(clk), .RN(n342), .Q(reg_file_14__3_) );
  SDFFRQX2M reg_file_reg_14__2_ ( .D(n196), .SI(reg_file_14__1_), .SE(n370), 
        .CK(clk), .RN(n342), .Q(reg_file_14__2_) );
  SDFFRQX2M reg_file_reg_14__1_ ( .D(n195), .SI(reg_file_14__0_), .SE(n369), 
        .CK(clk), .RN(n342), .Q(reg_file_14__1_) );
  SDFFRQX2M reg_file_reg_14__0_ ( .D(n194), .SI(reg_file_13__7_), .SE(n372), 
        .CK(clk), .RN(n342), .Q(reg_file_14__0_) );
  SDFFRQX2M reg_file_reg_4__7_ ( .D(n281), .SI(reg_file_4__6_), .SE(n371), 
        .CK(clk), .RN(n348), .Q(reg_file_4__7_) );
  SDFFRQX2M reg_file_reg_4__6_ ( .D(n280), .SI(reg_file_4__5_), .SE(n370), 
        .CK(clk), .RN(n348), .Q(reg_file_4__6_) );
  SDFFRQX2M reg_file_reg_4__5_ ( .D(n279), .SI(reg_file_4__4_), .SE(n369), 
        .CK(clk), .RN(n348), .Q(reg_file_4__5_) );
  SDFFRQX2M reg_file_reg_4__4_ ( .D(n278), .SI(reg_file_4__3_), .SE(n372), 
        .CK(clk), .RN(n348), .Q(reg_file_4__4_) );
  SDFFRQX2M reg_file_reg_4__3_ ( .D(n277), .SI(reg_file_4__2_), .SE(n371), 
        .CK(clk), .RN(n348), .Q(reg_file_4__3_) );
  SDFFRQX2M reg_file_reg_4__2_ ( .D(n276), .SI(reg_file_4__1_), .SE(n370), 
        .CK(clk), .RN(n348), .Q(reg_file_4__2_) );
  SDFFRQX2M reg_file_reg_4__1_ ( .D(n275), .SI(reg_file_4__0_), .SE(n369), 
        .CK(clk), .RN(n348), .Q(reg_file_4__1_) );
  SDFFRQX2M reg_file_reg_4__0_ ( .D(n274), .SI(reg3[7]), .SE(n372), .CK(clk), 
        .RN(n348), .Q(reg_file_4__0_) );
  SDFFRQX2M reg_file_reg_8__7_ ( .D(n249), .SI(reg_file_8__6_), .SE(n371), 
        .CK(clk), .RN(n346), .Q(reg_file_8__7_) );
  SDFFRQX2M reg_file_reg_8__6_ ( .D(n248), .SI(reg_file_8__5_), .SE(n370), 
        .CK(clk), .RN(n346), .Q(reg_file_8__6_) );
  SDFFRQX2M reg_file_reg_8__5_ ( .D(n247), .SI(reg_file_8__4_), .SE(n369), 
        .CK(clk), .RN(n346), .Q(reg_file_8__5_) );
  SDFFRQX2M reg_file_reg_8__4_ ( .D(n246), .SI(reg_file_8__3_), .SE(n372), 
        .CK(clk), .RN(n346), .Q(reg_file_8__4_) );
  SDFFRQX2M reg_file_reg_8__3_ ( .D(n245), .SI(reg_file_8__2_), .SE(n371), 
        .CK(clk), .RN(n346), .Q(reg_file_8__3_) );
  SDFFRQX2M reg_file_reg_8__2_ ( .D(n244), .SI(reg_file_8__1_), .SE(n370), 
        .CK(clk), .RN(n346), .Q(reg_file_8__2_) );
  SDFFRQX2M reg_file_reg_8__1_ ( .D(n243), .SI(reg_file_8__0_), .SE(n369), 
        .CK(clk), .RN(n346), .Q(reg_file_8__1_) );
  SDFFRQX2M reg_file_reg_8__0_ ( .D(n242), .SI(reg_file_7__7_), .SE(n372), 
        .CK(clk), .RN(n345), .Q(reg_file_8__0_) );
  SDFFRQX2M reg_file_reg_12__7_ ( .D(n217), .SI(reg_file_12__6_), .SE(n371), 
        .CK(clk), .RN(n344), .Q(reg_file_12__7_) );
  SDFFRQX2M reg_file_reg_12__6_ ( .D(n216), .SI(reg_file_12__5_), .SE(n370), 
        .CK(clk), .RN(n344), .Q(reg_file_12__6_) );
  SDFFRQX2M reg_file_reg_12__5_ ( .D(n215), .SI(reg_file_12__4_), .SE(n369), 
        .CK(clk), .RN(n344), .Q(reg_file_12__5_) );
  SDFFRQX2M reg_file_reg_12__4_ ( .D(n214), .SI(reg_file_12__3_), .SE(n372), 
        .CK(clk), .RN(n343), .Q(reg_file_12__4_) );
  SDFFRQX2M reg_file_reg_12__3_ ( .D(n213), .SI(reg_file_12__2_), .SE(n371), 
        .CK(clk), .RN(n343), .Q(reg_file_12__3_) );
  SDFFRQX2M reg_file_reg_12__2_ ( .D(n212), .SI(reg_file_12__1_), .SE(n370), 
        .CK(clk), .RN(n343), .Q(reg_file_12__2_) );
  SDFFRQX2M reg_file_reg_12__1_ ( .D(n211), .SI(reg_file_12__0_), .SE(n369), 
        .CK(clk), .RN(n343), .Q(reg_file_12__1_) );
  SDFFRQX2M reg_file_reg_12__0_ ( .D(n210), .SI(reg_file_11__7_), .SE(n372), 
        .CK(clk), .RN(n343), .Q(reg_file_12__0_) );
  SDFFRQX2M rd_data_reg_7_ ( .D(n185), .SI(rd_data[6]), .SE(n371), .CK(clk), 
        .RN(n341), .Q(rd_data[7]) );
  SDFFRQX2M rd_data_reg_6_ ( .D(n184), .SI(rd_data[5]), .SE(n370), .CK(clk), 
        .RN(n341), .Q(rd_data[6]) );
  SDFFRQX2M rd_data_reg_5_ ( .D(n183), .SI(rd_data[4]), .SE(n369), .CK(clk), 
        .RN(n341), .Q(rd_data[5]) );
  SDFFRQX2M rd_data_reg_4_ ( .D(n182), .SI(rd_data[3]), .SE(n372), .CK(clk), 
        .RN(n341), .Q(rd_data[4]) );
  SDFFRQX2M rd_data_reg_3_ ( .D(n181), .SI(rd_data[2]), .SE(n371), .CK(clk), 
        .RN(n341), .Q(rd_data[3]) );
  SDFFRQX2M rd_data_reg_2_ ( .D(n180), .SI(rd_data[1]), .SE(n370), .CK(clk), 
        .RN(n341), .Q(rd_data[2]) );
  SDFFRQX2M rd_data_reg_1_ ( .D(n179), .SI(rd_data[0]), .SE(n369), .CK(clk), 
        .RN(n341), .Q(rd_data[1]) );
  SDFFRQX2M rd_data_reg_0_ ( .D(n178), .SI(test_si1), .SE(n372), .CK(clk), 
        .RN(n341), .Q(rd_data[0]) );
  SDFFRQX2M reg_file_reg_1__7_ ( .D(n305), .SI(reg1[6]), .SE(n371), .CK(clk), 
        .RN(n350), .Q(reg1[7]) );
  SDFFRQX2M reg_file_reg_1__6_ ( .D(n304), .SI(reg1[5]), .SE(n370), .CK(clk), 
        .RN(n350), .Q(reg1[6]) );
  SDFFRQX2M reg_file_reg_1__1_ ( .D(n299), .SI(reg1[0]), .SE(n369), .CK(clk), 
        .RN(n349), .Q(reg1[1]) );
  SDFFRQX2M reg_file_reg_0__7_ ( .D(n313), .SI(reg0[6]), .SE(n372), .CK(clk), 
        .RN(n341), .Q(reg0[7]) );
  SDFFRQX2M reg_file_reg_0__6_ ( .D(n312), .SI(reg0[5]), .SE(n371), .CK(clk), 
        .RN(n350), .Q(reg0[6]) );
  SDFFRQX2M reg_file_reg_0__5_ ( .D(n311), .SI(reg0[4]), .SE(n370), .CK(clk), 
        .RN(n350), .Q(reg0[5]) );
  SDFFRQX2M reg_file_reg_0__4_ ( .D(n310), .SI(reg0[3]), .SE(n369), .CK(clk), 
        .RN(n350), .Q(reg0[4]) );
  SDFFRQX2M reg_file_reg_0__3_ ( .D(n309), .SI(reg0[2]), .SE(n372), .CK(clk), 
        .RN(n350), .Q(reg0[3]) );
  SDFFRQX2M reg_file_reg_0__2_ ( .D(n308), .SI(reg0[1]), .SE(n371), .CK(clk), 
        .RN(n350), .Q(reg0[2]) );
  SDFFRQX2M reg_file_reg_0__1_ ( .D(n307), .SI(reg0[0]), .SE(n370), .CK(clk), 
        .RN(n350), .Q(reg0[1]) );
  SDFFRQX2M reg_file_reg_0__0_ ( .D(n306), .SI(rd_data_valid), .SE(n369), .CK(
        clk), .RN(n350), .Q(reg0[0]) );
  SDFFRQX2M reg_file_reg_2__1_ ( .D(n291), .SI(reg2[0]), .SE(n372), .CK(clk), 
        .RN(n349), .Q(reg2[1]) );
  SDFFSQX2M reg_file_reg_2__0_ ( .D(n290), .SI(reg1[7]), .SE(test_se), .CK(clk), .SN(n341), .Q(reg2[0]) );
  SDFFRQX2M reg_file_reg_1__4_ ( .D(n302), .SI(reg1[3]), .SE(n371), .CK(clk), 
        .RN(n350), .Q(reg1[4]) );
  SDFFRQX2M reg_file_reg_1__5_ ( .D(n303), .SI(reg1[4]), .SE(n370), .CK(clk), 
        .RN(n350), .Q(reg1[5]) );
  SDFFRQX2M rd_data_valid_reg ( .D(n357), .SI(rd_data[7]), .SE(n369), .CK(clk), 
        .RN(n346), .Q(rd_data_valid) );
  SDFFSQX2M reg_file_reg_3__5_ ( .D(n287), .SI(reg3[4]), .SE(n369), .CK(clk), 
        .SN(n341), .Q(reg3[5]) );
  SDFFRQX2M reg_file_reg_3__0_ ( .D(n282), .SI(reg2[7]), .SE(n372), .CK(clk), 
        .RN(n348), .Q(reg3[0]) );
  SDFFRQX2M reg_file_reg_3__7_ ( .D(n289), .SI(test_si2), .SE(n371), .CK(clk), 
        .RN(n349), .Q(reg3[7]) );
  SDFFRQX2M reg_file_reg_3__6_ ( .D(n288), .SI(reg3[5]), .SE(n370), .CK(clk), 
        .RN(n349), .Q(reg3[6]) );
  SDFFRQX2M reg_file_reg_3__2_ ( .D(n284), .SI(reg3[1]), .SE(n369), .CK(clk), 
        .RN(n349), .Q(reg3[2]) );
  SDFFRQX2M reg_file_reg_3__4_ ( .D(n286), .SI(reg3[3]), .SE(n372), .CK(clk), 
        .RN(n349), .Q(reg3[4]) );
  SDFFRQX2M reg_file_reg_3__3_ ( .D(n285), .SI(reg3[2]), .SE(n371), .CK(clk), 
        .RN(n349), .Q(reg3[3]) );
  SDFFRQX2M reg_file_reg_3__1_ ( .D(n283), .SI(reg3[0]), .SE(n370), .CK(clk), 
        .RN(n348), .Q(reg3[1]) );
  SDFFSQX2M reg_file_reg_2__5_ ( .D(n295), .SI(reg2[4]), .SE(n372), .CK(clk), 
        .SN(n341), .Q(reg2[5]) );
  SDFFRQX2M reg_file_reg_2__6_ ( .D(n296), .SI(reg2[5]), .SE(n369), .CK(clk), 
        .RN(n349), .Q(reg2[6]) );
  SDFFRQX2M reg_file_reg_2__7_ ( .D(n297), .SI(reg2[6]), .SE(n372), .CK(clk), 
        .RN(n349), .Q(reg2[7]) );
  SDFFRQX2M reg_file_reg_2__3_ ( .D(n293), .SI(reg2[2]), .SE(n371), .CK(clk), 
        .RN(n349), .Q(reg2[3]) );
  SDFFRQX2M reg_file_reg_2__2_ ( .D(n292), .SI(reg2[1]), .SE(n370), .CK(clk), 
        .RN(n349), .Q(reg2[2]) );
  SDFFRQX2M reg_file_reg_2__4_ ( .D(n294), .SI(reg2[3]), .SE(n369), .CK(clk), 
        .RN(n349), .Q(reg2[4]) );
  SDFFRQX2M reg_file_reg_1__2_ ( .D(n300), .SI(reg1[1]), .SE(n372), .CK(clk), 
        .RN(n349), .Q(reg1[2]) );
  SDFFRQX2M reg_file_reg_1__3_ ( .D(n301), .SI(reg1[2]), .SE(n371), .CK(clk), 
        .RN(n350), .Q(reg1[3]) );
  SDFFRQX2M reg_file_reg_1__0_ ( .D(n298), .SI(reg0[7]), .SE(n370), .CK(clk), 
        .RN(n349), .Q(reg1[0]) );
  NOR2BX2M U140 ( .AN(n176), .B(n339), .Y(n168) );
  NOR2BX2M U141 ( .AN(n164), .B(n339), .Y(n153) );
  NOR2X2M U142 ( .A(n356), .B(n340), .Y(n152) );
  NOR2X2M U143 ( .A(n340), .B(address[2]), .Y(n160) );
  NOR2X2M U144 ( .A(address[1]), .B(address[2]), .Y(n163) );
  INVX2M U145 ( .A(n336), .Y(n337) );
  INVX2M U146 ( .A(n334), .Y(n335) );
  INVX2M U147 ( .A(n150), .Y(n357) );
  NAND2X2M U148 ( .A(n157), .B(n155), .Y(n158) );
  INVX2M U149 ( .A(n336), .Y(n338) );
  BUFX2M U150 ( .A(n339), .Y(n336) );
  BUFX2M U151 ( .A(n340), .Y(n334) );
  NAND2X2M U152 ( .A(n170), .B(n157), .Y(n172) );
  NAND2BX2M U153 ( .AN(wr_en), .B(rd_en), .Y(n150) );
  NOR2BX2M U154 ( .AN(wr_en), .B(rd_en), .Y(n166) );
  NOR2BX2M U155 ( .AN(n164), .B(address[0]), .Y(n155) );
  NAND2X2M U156 ( .A(n157), .B(n153), .Y(n156) );
  NAND2X2M U157 ( .A(n160), .B(n153), .Y(n159) );
  NAND2X2M U158 ( .A(n160), .B(n155), .Y(n161) );
  NAND2X2M U159 ( .A(n163), .B(n153), .Y(n162) );
  NAND2X2M U160 ( .A(n163), .B(n155), .Y(n165) );
  NAND2X2M U161 ( .A(n155), .B(n152), .Y(n154) );
  NAND2X2M U162 ( .A(n152), .B(n153), .Y(n151) );
  NOR2BX2M U163 ( .AN(n176), .B(address[0]), .Y(n170) );
  NOR2X2M U164 ( .A(n356), .B(address[1]), .Y(n157) );
  NAND2X2M U165 ( .A(n168), .B(n160), .Y(n173) );
  NAND2X2M U166 ( .A(n170), .B(n160), .Y(n174) );
  NAND2X2M U167 ( .A(n168), .B(n163), .Y(n175) );
  NAND2X2M U168 ( .A(n170), .B(n163), .Y(n177) );
  NAND2X2M U169 ( .A(n168), .B(n152), .Y(n167) );
  NAND2X2M U170 ( .A(n170), .B(n152), .Y(n169) );
  NAND2X2M U171 ( .A(n168), .B(n157), .Y(n171) );
  BUFX2M U172 ( .A(n355), .Y(n342) );
  BUFX2M U173 ( .A(n354), .Y(n343) );
  BUFX2M U174 ( .A(n354), .Y(n344) );
  BUFX2M U175 ( .A(n353), .Y(n345) );
  BUFX2M U176 ( .A(n353), .Y(n346) );
  BUFX2M U177 ( .A(n352), .Y(n347) );
  BUFX2M U178 ( .A(n352), .Y(n348) );
  BUFX2M U179 ( .A(n351), .Y(n349) );
  BUFX2M U180 ( .A(n355), .Y(n341) );
  BUFX2M U181 ( .A(n351), .Y(n350) );
  AND2X2M U182 ( .A(address[3]), .B(n166), .Y(n164) );
  INVX2M U183 ( .A(wr_data[0]), .Y(n358) );
  INVX2M U184 ( .A(wr_data[1]), .Y(n359) );
  INVX2M U185 ( .A(wr_data[2]), .Y(n360) );
  INVX2M U186 ( .A(wr_data[3]), .Y(n361) );
  INVX2M U187 ( .A(wr_data[7]), .Y(n362) );
  INVX2M U188 ( .A(wr_data[4]), .Y(n365) );
  INVX2M U189 ( .A(wr_data[6]), .Y(n363) );
  INVX2M U190 ( .A(address[2]), .Y(n356) );
  NOR2BX2M U191 ( .AN(n166), .B(address[3]), .Y(n176) );
  BUFX2M U192 ( .A(rst_n), .Y(n354) );
  BUFX2M U193 ( .A(rst_n), .Y(n353) );
  BUFX2M U194 ( .A(rst_n), .Y(n352) );
  BUFX2M U195 ( .A(rst_n), .Y(n351) );
  BUFX2M U196 ( .A(rst_n), .Y(n355) );
  OAI2BB2X1M U197 ( .B0(n151), .B1(n358), .A0N(reg_file_15__0_), .A1N(n151), 
        .Y(n186) );
  OAI2BB2X1M U198 ( .B0(n151), .B1(n359), .A0N(reg_file_15__1_), .A1N(n151), 
        .Y(n187) );
  OAI2BB2X1M U199 ( .B0(n151), .B1(n360), .A0N(reg_file_15__2_), .A1N(n151), 
        .Y(n188) );
  OAI2BB2X1M U200 ( .B0(n151), .B1(n361), .A0N(reg_file_15__3_), .A1N(n151), 
        .Y(n189) );
  OAI2BB2X1M U201 ( .B0(n151), .B1(n365), .A0N(reg_file_15__4_), .A1N(n151), 
        .Y(n190) );
  OAI2BB2X1M U202 ( .B0(n151), .B1(n364), .A0N(reg_file_15__5_), .A1N(n151), 
        .Y(n191) );
  OAI2BB2X1M U203 ( .B0(n151), .B1(n363), .A0N(reg_file_15__6_), .A1N(n151), 
        .Y(n192) );
  OAI2BB2X1M U204 ( .B0(n151), .B1(n362), .A0N(test_so1), .A1N(n151), .Y(n193)
         );
  OAI2BB2X1M U205 ( .B0(n358), .B1(n154), .A0N(reg_file_14__0_), .A1N(n154), 
        .Y(n194) );
  OAI2BB2X1M U206 ( .B0(n359), .B1(n154), .A0N(reg_file_14__1_), .A1N(n154), 
        .Y(n195) );
  OAI2BB2X1M U207 ( .B0(n360), .B1(n154), .A0N(reg_file_14__2_), .A1N(n154), 
        .Y(n196) );
  OAI2BB2X1M U208 ( .B0(n361), .B1(n154), .A0N(reg_file_14__3_), .A1N(n154), 
        .Y(n197) );
  OAI2BB2X1M U209 ( .B0(n365), .B1(n154), .A0N(reg_file_14__4_), .A1N(n154), 
        .Y(n198) );
  OAI2BB2X1M U210 ( .B0(n364), .B1(n154), .A0N(reg_file_14__5_), .A1N(n154), 
        .Y(n199) );
  OAI2BB2X1M U211 ( .B0(n363), .B1(n154), .A0N(reg_file_14__6_), .A1N(n154), 
        .Y(n200) );
  OAI2BB2X1M U212 ( .B0(n362), .B1(n154), .A0N(reg_file_14__7_), .A1N(n154), 
        .Y(n201) );
  OAI2BB2X1M U213 ( .B0(n358), .B1(n159), .A0N(reg_file_11__0_), .A1N(n159), 
        .Y(n218) );
  OAI2BB2X1M U214 ( .B0(n359), .B1(n159), .A0N(reg_file_11__1_), .A1N(n159), 
        .Y(n219) );
  OAI2BB2X1M U215 ( .B0(n360), .B1(n159), .A0N(reg_file_11__2_), .A1N(n159), 
        .Y(n220) );
  OAI2BB2X1M U216 ( .B0(n361), .B1(n159), .A0N(reg_file_11__3_), .A1N(n159), 
        .Y(n221) );
  OAI2BB2X1M U217 ( .B0(n365), .B1(n159), .A0N(reg_file_11__4_), .A1N(n159), 
        .Y(n222) );
  OAI2BB2X1M U218 ( .B0(n364), .B1(n159), .A0N(reg_file_11__5_), .A1N(n159), 
        .Y(n223) );
  OAI2BB2X1M U219 ( .B0(n363), .B1(n159), .A0N(reg_file_11__6_), .A1N(n159), 
        .Y(n224) );
  OAI2BB2X1M U220 ( .B0(n362), .B1(n159), .A0N(reg_file_11__7_), .A1N(n159), 
        .Y(n225) );
  OAI2BB2X1M U221 ( .B0(n358), .B1(n161), .A0N(reg_file_10__0_), .A1N(n161), 
        .Y(n226) );
  OAI2BB2X1M U222 ( .B0(n359), .B1(n161), .A0N(reg_file_10__1_), .A1N(n161), 
        .Y(n227) );
  OAI2BB2X1M U223 ( .B0(n360), .B1(n161), .A0N(reg_file_10__2_), .A1N(n161), 
        .Y(n228) );
  OAI2BB2X1M U224 ( .B0(n361), .B1(n161), .A0N(reg_file_10__3_), .A1N(n161), 
        .Y(n229) );
  OAI2BB2X1M U225 ( .B0(n365), .B1(n161), .A0N(reg_file_10__4_), .A1N(n161), 
        .Y(n230) );
  OAI2BB2X1M U226 ( .B0(n364), .B1(n161), .A0N(reg_file_10__5_), .A1N(n161), 
        .Y(n231) );
  OAI2BB2X1M U227 ( .B0(n363), .B1(n161), .A0N(reg_file_10__6_), .A1N(n161), 
        .Y(n232) );
  OAI2BB2X1M U228 ( .B0(n362), .B1(n161), .A0N(reg_file_10__7_), .A1N(n161), 
        .Y(n233) );
  OAI2BB2X1M U229 ( .B0(n358), .B1(n162), .A0N(reg_file_9__0_), .A1N(n162), 
        .Y(n234) );
  OAI2BB2X1M U230 ( .B0(n359), .B1(n162), .A0N(reg_file_9__1_), .A1N(n162), 
        .Y(n235) );
  OAI2BB2X1M U231 ( .B0(n360), .B1(n162), .A0N(reg_file_9__2_), .A1N(n162), 
        .Y(n236) );
  OAI2BB2X1M U232 ( .B0(n361), .B1(n162), .A0N(reg_file_9__3_), .A1N(n162), 
        .Y(n237) );
  OAI2BB2X1M U233 ( .B0(n365), .B1(n162), .A0N(reg_file_9__4_), .A1N(n162), 
        .Y(n238) );
  OAI2BB2X1M U234 ( .B0(n364), .B1(n162), .A0N(reg_file_9__5_), .A1N(n162), 
        .Y(n239) );
  OAI2BB2X1M U235 ( .B0(n363), .B1(n162), .A0N(reg_file_9__6_), .A1N(n162), 
        .Y(n240) );
  OAI2BB2X1M U236 ( .B0(n362), .B1(n162), .A0N(reg_file_9__7_), .A1N(n162), 
        .Y(n241) );
  OAI2BB2X1M U237 ( .B0(n358), .B1(n165), .A0N(reg_file_8__0_), .A1N(n165), 
        .Y(n242) );
  OAI2BB2X1M U238 ( .B0(n359), .B1(n165), .A0N(reg_file_8__1_), .A1N(n165), 
        .Y(n243) );
  OAI2BB2X1M U239 ( .B0(n360), .B1(n165), .A0N(reg_file_8__2_), .A1N(n165), 
        .Y(n244) );
  OAI2BB2X1M U240 ( .B0(n361), .B1(n165), .A0N(reg_file_8__3_), .A1N(n165), 
        .Y(n245) );
  OAI2BB2X1M U241 ( .B0(n365), .B1(n165), .A0N(reg_file_8__4_), .A1N(n165), 
        .Y(n246) );
  OAI2BB2X1M U242 ( .B0(n364), .B1(n165), .A0N(reg_file_8__5_), .A1N(n165), 
        .Y(n247) );
  OAI2BB2X1M U243 ( .B0(n363), .B1(n165), .A0N(reg_file_8__6_), .A1N(n165), 
        .Y(n248) );
  OAI2BB2X1M U244 ( .B0(n362), .B1(n165), .A0N(reg_file_8__7_), .A1N(n165), 
        .Y(n249) );
  OAI2BB2X1M U245 ( .B0(n358), .B1(n156), .A0N(reg_file_13__0_), .A1N(n156), 
        .Y(n202) );
  OAI2BB2X1M U246 ( .B0(n359), .B1(n156), .A0N(reg_file_13__1_), .A1N(n156), 
        .Y(n203) );
  OAI2BB2X1M U247 ( .B0(n360), .B1(n156), .A0N(reg_file_13__2_), .A1N(n156), 
        .Y(n204) );
  OAI2BB2X1M U248 ( .B0(n361), .B1(n156), .A0N(reg_file_13__3_), .A1N(n156), 
        .Y(n205) );
  OAI2BB2X1M U249 ( .B0(n365), .B1(n156), .A0N(reg_file_13__4_), .A1N(n156), 
        .Y(n206) );
  OAI2BB2X1M U250 ( .B0(n364), .B1(n156), .A0N(reg_file_13__5_), .A1N(n156), 
        .Y(n207) );
  OAI2BB2X1M U251 ( .B0(n363), .B1(n156), .A0N(reg_file_13__6_), .A1N(n156), 
        .Y(n208) );
  OAI2BB2X1M U252 ( .B0(n362), .B1(n156), .A0N(reg_file_13__7_), .A1N(n156), 
        .Y(n209) );
  OAI2BB2X1M U253 ( .B0(n358), .B1(n158), .A0N(reg_file_12__0_), .A1N(n158), 
        .Y(n210) );
  OAI2BB2X1M U254 ( .B0(n359), .B1(n158), .A0N(reg_file_12__1_), .A1N(n158), 
        .Y(n211) );
  OAI2BB2X1M U255 ( .B0(n360), .B1(n158), .A0N(reg_file_12__2_), .A1N(n158), 
        .Y(n212) );
  OAI2BB2X1M U256 ( .B0(n361), .B1(n158), .A0N(reg_file_12__3_), .A1N(n158), 
        .Y(n213) );
  OAI2BB2X1M U257 ( .B0(n365), .B1(n158), .A0N(reg_file_12__4_), .A1N(n158), 
        .Y(n214) );
  OAI2BB2X1M U258 ( .B0(n364), .B1(n158), .A0N(reg_file_12__5_), .A1N(n158), 
        .Y(n215) );
  OAI2BB2X1M U259 ( .B0(n363), .B1(n158), .A0N(reg_file_12__6_), .A1N(n158), 
        .Y(n216) );
  OAI2BB2X1M U260 ( .B0(n362), .B1(n158), .A0N(reg_file_12__7_), .A1N(n158), 
        .Y(n217) );
  AO22X1M U261 ( .A0(N43), .A1(n357), .B0(rd_data[0]), .B1(n150), .Y(n178) );
  MX4X1M U262 ( .A(n141), .B(n139), .C(n140), .D(n138), .S0(address[3]), .S1(
        address[2]), .Y(N43) );
  MX4X1M U263 ( .A(reg0[0]), .B(reg1[0]), .C(reg2[0]), .D(reg3[0]), .S0(
        address[0]), .S1(address[1]), .Y(n141) );
  MX4X1M U264 ( .A(reg_file_8__0_), .B(reg_file_9__0_), .C(reg_file_10__0_), 
        .D(reg_file_11__0_), .S0(address[0]), .S1(address[1]), .Y(n139) );
  AO22X1M U265 ( .A0(N42), .A1(n357), .B0(rd_data[1]), .B1(n150), .Y(n179) );
  MX4X1M U266 ( .A(n145), .B(n143), .C(n144), .D(n142), .S0(address[3]), .S1(
        address[2]), .Y(N42) );
  MX4X1M U267 ( .A(reg_file_8__1_), .B(reg_file_9__1_), .C(reg_file_10__1_), 
        .D(reg_file_11__1_), .S0(address[0]), .S1(address[1]), .Y(n143) );
  MX4X1M U268 ( .A(reg_file_12__1_), .B(reg_file_13__1_), .C(reg_file_14__1_), 
        .D(reg_file_15__1_), .S0(n338), .S1(n335), .Y(n142) );
  AO22X1M U269 ( .A0(N41), .A1(n357), .B0(rd_data[2]), .B1(n150), .Y(n180) );
  MX4X1M U270 ( .A(n149), .B(n147), .C(n148), .D(n146), .S0(address[3]), .S1(
        address[2]), .Y(N41) );
  MX4X1M U271 ( .A(reg0[2]), .B(reg1[2]), .C(reg2[2]), .D(reg3[2]), .S0(n337), 
        .S1(n335), .Y(n149) );
  MX4X1M U272 ( .A(reg_file_8__2_), .B(reg_file_9__2_), .C(reg_file_10__2_), 
        .D(reg_file_11__2_), .S0(n337), .S1(n335), .Y(n147) );
  AO22X1M U273 ( .A0(N40), .A1(n357), .B0(rd_data[3]), .B1(n150), .Y(n181) );
  MX4X1M U274 ( .A(n317), .B(n315), .C(n316), .D(n314), .S0(address[3]), .S1(
        address[2]), .Y(N40) );
  MX4X1M U275 ( .A(reg0[3]), .B(reg1[3]), .C(reg2[3]), .D(reg3[3]), .S0(n337), 
        .S1(n335), .Y(n317) );
  MX4X1M U276 ( .A(reg_file_8__3_), .B(reg_file_9__3_), .C(reg_file_10__3_), 
        .D(reg_file_11__3_), .S0(n337), .S1(n335), .Y(n315) );
  AO22X1M U277 ( .A0(N39), .A1(n357), .B0(rd_data[4]), .B1(n150), .Y(n182) );
  MX4X1M U278 ( .A(n321), .B(n319), .C(n320), .D(n318), .S0(address[3]), .S1(
        address[2]), .Y(N39) );
  MX4X1M U279 ( .A(reg0[4]), .B(reg1[4]), .C(reg2[4]), .D(reg3[4]), .S0(n338), 
        .S1(n335), .Y(n321) );
  MX4X1M U280 ( .A(reg_file_8__4_), .B(reg_file_9__4_), .C(reg_file_10__4_), 
        .D(reg_file_11__4_), .S0(n337), .S1(n335), .Y(n319) );
  AO22X1M U281 ( .A0(N38), .A1(n357), .B0(rd_data[5]), .B1(n150), .Y(n183) );
  MX4X1M U282 ( .A(n325), .B(n323), .C(n324), .D(n322), .S0(address[3]), .S1(
        address[2]), .Y(N38) );
  MX4X1M U283 ( .A(reg0[5]), .B(reg1[5]), .C(reg2[5]), .D(reg3[5]), .S0(n338), 
        .S1(address[1]), .Y(n325) );
  MX4X1M U284 ( .A(reg_file_8__5_), .B(reg_file_9__5_), .C(reg_file_10__5_), 
        .D(reg_file_11__5_), .S0(n338), .S1(address[1]), .Y(n323) );
  AO22X1M U285 ( .A0(N37), .A1(n357), .B0(rd_data[6]), .B1(n150), .Y(n184) );
  MX4X1M U286 ( .A(n329), .B(n327), .C(n328), .D(n326), .S0(address[3]), .S1(
        address[2]), .Y(N37) );
  MX4X1M U287 ( .A(reg0[6]), .B(reg1[6]), .C(reg2[6]), .D(reg3[6]), .S0(n338), 
        .S1(address[1]), .Y(n329) );
  MX4X1M U288 ( .A(reg_file_8__6_), .B(reg_file_9__6_), .C(reg_file_10__6_), 
        .D(reg_file_11__6_), .S0(n338), .S1(address[1]), .Y(n327) );
  AO22X1M U289 ( .A0(N36), .A1(n357), .B0(rd_data[7]), .B1(n150), .Y(n185) );
  MX4X1M U290 ( .A(n333), .B(n331), .C(n332), .D(n330), .S0(address[3]), .S1(
        address[2]), .Y(N36) );
  MX4X1M U291 ( .A(reg0[7]), .B(reg1[7]), .C(reg2[7]), .D(reg3[7]), .S0(n338), 
        .S1(address[1]), .Y(n333) );
  MX4X1M U292 ( .A(reg_file_8__7_), .B(reg_file_9__7_), .C(reg_file_10__7_), 
        .D(reg_file_11__7_), .S0(n338), .S1(address[1]), .Y(n331) );
  MX4X1M U293 ( .A(reg0[1]), .B(reg1[1]), .C(reg2[1]), .D(reg3[1]), .S0(n337), 
        .S1(address[1]), .Y(n145) );
  MX4X1M U294 ( .A(reg_file_4__0_), .B(reg_file_5__0_), .C(reg_file_6__0_), 
        .D(reg_file_7__0_), .S0(address[0]), .S1(address[1]), .Y(n140) );
  MX4X1M U295 ( .A(reg_file_4__1_), .B(reg_file_5__1_), .C(reg_file_6__1_), 
        .D(reg_file_7__1_), .S0(n337), .S1(address[1]), .Y(n144) );
  MX4X1M U296 ( .A(reg_file_4__2_), .B(reg_file_5__2_), .C(reg_file_6__2_), 
        .D(reg_file_7__2_), .S0(n337), .S1(n335), .Y(n148) );
  MX4X1M U297 ( .A(reg_file_4__3_), .B(reg_file_5__3_), .C(reg_file_6__3_), 
        .D(reg_file_7__3_), .S0(n337), .S1(n335), .Y(n316) );
  MX4X1M U298 ( .A(reg_file_4__4_), .B(reg_file_5__4_), .C(reg_file_6__4_), 
        .D(reg_file_7__4_), .S0(n337), .S1(n335), .Y(n320) );
  MX4X1M U299 ( .A(reg_file_4__5_), .B(reg_file_5__5_), .C(reg_file_6__5_), 
        .D(reg_file_7__5_), .S0(n338), .S1(address[1]), .Y(n324) );
  MX4X1M U300 ( .A(reg_file_4__6_), .B(reg_file_5__6_), .C(reg_file_6__6_), 
        .D(reg_file_7__6_), .S0(n338), .S1(address[1]), .Y(n328) );
  MX4X1M U301 ( .A(reg_file_4__7_), .B(reg_file_5__7_), .C(reg_file_6__7_), 
        .D(reg_file_7__7_), .S0(n338), .S1(address[1]), .Y(n332) );
  MX4X1M U302 ( .A(reg_file_12__0_), .B(reg_file_13__0_), .C(reg_file_14__0_), 
        .D(reg_file_15__0_), .S0(n337), .S1(n335), .Y(n138) );
  MX4X1M U303 ( .A(reg_file_12__2_), .B(reg_file_13__2_), .C(reg_file_14__2_), 
        .D(reg_file_15__2_), .S0(n337), .S1(n335), .Y(n146) );
  MX4X1M U304 ( .A(reg_file_12__3_), .B(reg_file_13__3_), .C(reg_file_14__3_), 
        .D(reg_file_15__3_), .S0(n337), .S1(n335), .Y(n314) );
  MX4X1M U305 ( .A(reg_file_12__4_), .B(reg_file_13__4_), .C(reg_file_14__4_), 
        .D(reg_file_15__4_), .S0(n337), .S1(n335), .Y(n318) );
  MX4X1M U306 ( .A(reg_file_12__5_), .B(reg_file_13__5_), .C(reg_file_14__5_), 
        .D(reg_file_15__5_), .S0(n338), .S1(address[1]), .Y(n322) );
  MX4X1M U307 ( .A(reg_file_12__6_), .B(reg_file_13__6_), .C(reg_file_14__6_), 
        .D(reg_file_15__6_), .S0(n338), .S1(address[1]), .Y(n326) );
  MX4X1M U308 ( .A(reg_file_12__7_), .B(reg_file_13__7_), .C(reg_file_14__7_), 
        .D(test_so1), .S0(n338), .S1(address[1]), .Y(n330) );
  INVX2M U309 ( .A(address[0]), .Y(n339) );
  INVX2M U310 ( .A(address[1]), .Y(n340) );
  INVX2M U311 ( .A(wr_data[5]), .Y(n364) );
  OAI2BB2X1M U312 ( .B0(n358), .B1(n167), .A0N(reg_file_7__0_), .A1N(n167), 
        .Y(n250) );
  OAI2BB2X1M U313 ( .B0(n359), .B1(n167), .A0N(reg_file_7__1_), .A1N(n167), 
        .Y(n251) );
  OAI2BB2X1M U314 ( .B0(n360), .B1(n167), .A0N(reg_file_7__2_), .A1N(n167), 
        .Y(n252) );
  OAI2BB2X1M U315 ( .B0(n361), .B1(n167), .A0N(reg_file_7__3_), .A1N(n167), 
        .Y(n253) );
  OAI2BB2X1M U316 ( .B0(n365), .B1(n167), .A0N(reg_file_7__4_), .A1N(n167), 
        .Y(n254) );
  OAI2BB2X1M U317 ( .B0(n364), .B1(n167), .A0N(reg_file_7__5_), .A1N(n167), 
        .Y(n255) );
  OAI2BB2X1M U318 ( .B0(n363), .B1(n167), .A0N(reg_file_7__6_), .A1N(n167), 
        .Y(n256) );
  OAI2BB2X1M U319 ( .B0(n362), .B1(n167), .A0N(reg_file_7__7_), .A1N(n167), 
        .Y(n257) );
  OAI2BB2X1M U320 ( .B0(n358), .B1(n169), .A0N(reg_file_6__0_), .A1N(n169), 
        .Y(n258) );
  OAI2BB2X1M U321 ( .B0(n359), .B1(n169), .A0N(reg_file_6__1_), .A1N(n169), 
        .Y(n259) );
  OAI2BB2X1M U322 ( .B0(n360), .B1(n169), .A0N(reg_file_6__2_), .A1N(n169), 
        .Y(n260) );
  OAI2BB2X1M U323 ( .B0(n361), .B1(n169), .A0N(reg_file_6__3_), .A1N(n169), 
        .Y(n261) );
  OAI2BB2X1M U324 ( .B0(n365), .B1(n169), .A0N(reg_file_6__4_), .A1N(n169), 
        .Y(n262) );
  OAI2BB2X1M U325 ( .B0(n364), .B1(n169), .A0N(reg_file_6__5_), .A1N(n169), 
        .Y(n263) );
  OAI2BB2X1M U326 ( .B0(n363), .B1(n169), .A0N(reg_file_6__6_), .A1N(n169), 
        .Y(n264) );
  OAI2BB2X1M U327 ( .B0(n362), .B1(n169), .A0N(reg_file_6__7_), .A1N(n169), 
        .Y(n265) );
  OAI2BB2X1M U328 ( .B0(n358), .B1(n171), .A0N(reg_file_5__0_), .A1N(n171), 
        .Y(n266) );
  OAI2BB2X1M U329 ( .B0(n359), .B1(n171), .A0N(reg_file_5__1_), .A1N(n171), 
        .Y(n267) );
  OAI2BB2X1M U330 ( .B0(n360), .B1(n171), .A0N(reg_file_5__2_), .A1N(n171), 
        .Y(n268) );
  OAI2BB2X1M U331 ( .B0(n361), .B1(n171), .A0N(reg_file_5__3_), .A1N(n171), 
        .Y(n269) );
  OAI2BB2X1M U332 ( .B0(n365), .B1(n171), .A0N(reg_file_5__4_), .A1N(n171), 
        .Y(n270) );
  OAI2BB2X1M U333 ( .B0(n364), .B1(n171), .A0N(reg_file_5__5_), .A1N(n171), 
        .Y(n271) );
  OAI2BB2X1M U334 ( .B0(n363), .B1(n171), .A0N(reg_file_5__6_), .A1N(n171), 
        .Y(n272) );
  OAI2BB2X1M U335 ( .B0(n362), .B1(n171), .A0N(reg_file_5__7_), .A1N(n171), 
        .Y(n273) );
  OAI2BB2X1M U336 ( .B0(n358), .B1(n172), .A0N(reg_file_4__0_), .A1N(n172), 
        .Y(n274) );
  OAI2BB2X1M U337 ( .B0(n359), .B1(n172), .A0N(reg_file_4__1_), .A1N(n172), 
        .Y(n275) );
  OAI2BB2X1M U338 ( .B0(n360), .B1(n172), .A0N(reg_file_4__2_), .A1N(n172), 
        .Y(n276) );
  OAI2BB2X1M U339 ( .B0(n361), .B1(n172), .A0N(reg_file_4__3_), .A1N(n172), 
        .Y(n277) );
  OAI2BB2X1M U340 ( .B0(n365), .B1(n172), .A0N(reg_file_4__4_), .A1N(n172), 
        .Y(n278) );
  OAI2BB2X1M U341 ( .B0(n364), .B1(n172), .A0N(reg_file_4__5_), .A1N(n172), 
        .Y(n279) );
  OAI2BB2X1M U342 ( .B0(n363), .B1(n172), .A0N(reg_file_4__6_), .A1N(n172), 
        .Y(n280) );
  OAI2BB2X1M U343 ( .B0(n362), .B1(n172), .A0N(reg_file_4__7_), .A1N(n172), 
        .Y(n281) );
  OAI2BB2X1M U344 ( .B0(n358), .B1(n173), .A0N(reg3[0]), .A1N(n173), .Y(n282)
         );
  OAI2BB2X1M U345 ( .B0(n359), .B1(n173), .A0N(reg3[1]), .A1N(n173), .Y(n283)
         );
  OAI2BB2X1M U346 ( .B0(n360), .B1(n173), .A0N(reg3[2]), .A1N(n173), .Y(n284)
         );
  OAI2BB2X1M U347 ( .B0(n361), .B1(n173), .A0N(reg3[3]), .A1N(n173), .Y(n285)
         );
  OAI2BB2X1M U348 ( .B0(n365), .B1(n173), .A0N(reg3[4]), .A1N(n173), .Y(n286)
         );
  OAI2BB2X1M U349 ( .B0(n363), .B1(n173), .A0N(reg3[6]), .A1N(n173), .Y(n288)
         );
  OAI2BB2X1M U350 ( .B0(n362), .B1(n173), .A0N(reg3[7]), .A1N(n173), .Y(n289)
         );
  OAI2BB2X1M U351 ( .B0(n359), .B1(n174), .A0N(reg2[1]), .A1N(n174), .Y(n291)
         );
  OAI2BB2X1M U352 ( .B0(n360), .B1(n174), .A0N(reg2[2]), .A1N(n174), .Y(n292)
         );
  OAI2BB2X1M U353 ( .B0(n361), .B1(n174), .A0N(reg2[3]), .A1N(n174), .Y(n293)
         );
  OAI2BB2X1M U354 ( .B0(n365), .B1(n174), .A0N(reg2[4]), .A1N(n174), .Y(n294)
         );
  OAI2BB2X1M U355 ( .B0(n363), .B1(n174), .A0N(reg2[6]), .A1N(n174), .Y(n296)
         );
  OAI2BB2X1M U356 ( .B0(n362), .B1(n174), .A0N(reg2[7]), .A1N(n174), .Y(n297)
         );
  OAI2BB2X1M U357 ( .B0(n358), .B1(n175), .A0N(reg1[0]), .A1N(n175), .Y(n298)
         );
  OAI2BB2X1M U358 ( .B0(n359), .B1(n175), .A0N(reg1[1]), .A1N(n175), .Y(n299)
         );
  OAI2BB2X1M U359 ( .B0(n360), .B1(n175), .A0N(reg1[2]), .A1N(n175), .Y(n300)
         );
  OAI2BB2X1M U360 ( .B0(n361), .B1(n175), .A0N(reg1[3]), .A1N(n175), .Y(n301)
         );
  OAI2BB2X1M U361 ( .B0(n365), .B1(n175), .A0N(reg1[4]), .A1N(n175), .Y(n302)
         );
  OAI2BB2X1M U362 ( .B0(n364), .B1(n175), .A0N(reg1[5]), .A1N(n175), .Y(n303)
         );
  OAI2BB2X1M U363 ( .B0(n363), .B1(n175), .A0N(reg1[6]), .A1N(n175), .Y(n304)
         );
  OAI2BB2X1M U364 ( .B0(n362), .B1(n175), .A0N(reg1[7]), .A1N(n175), .Y(n305)
         );
  OAI2BB2X1M U365 ( .B0(n358), .B1(n177), .A0N(reg0[0]), .A1N(n177), .Y(n306)
         );
  OAI2BB2X1M U366 ( .B0(n359), .B1(n177), .A0N(reg0[1]), .A1N(n177), .Y(n307)
         );
  OAI2BB2X1M U367 ( .B0(n360), .B1(n177), .A0N(reg0[2]), .A1N(n177), .Y(n308)
         );
  OAI2BB2X1M U368 ( .B0(n361), .B1(n177), .A0N(reg0[3]), .A1N(n177), .Y(n309)
         );
  OAI2BB2X1M U369 ( .B0(n365), .B1(n177), .A0N(reg0[4]), .A1N(n177), .Y(n310)
         );
  OAI2BB2X1M U370 ( .B0(n364), .B1(n177), .A0N(reg0[5]), .A1N(n177), .Y(n311)
         );
  OAI2BB2X1M U371 ( .B0(n363), .B1(n177), .A0N(reg0[6]), .A1N(n177), .Y(n312)
         );
  OAI2BB2X1M U372 ( .B0(n362), .B1(n177), .A0N(reg0[7]), .A1N(n177), .Y(n313)
         );
  OAI2BB2X1M U373 ( .B0(n364), .B1(n173), .A0N(reg3[5]), .A1N(n173), .Y(n287)
         );
  OAI2BB2X1M U374 ( .B0(n358), .B1(n174), .A0N(reg2[0]), .A1N(n174), .Y(n290)
         );
  OAI2BB2X1M U375 ( .B0(n364), .B1(n174), .A0N(reg2[5]), .A1N(n174), .Y(n295)
         );
  DLY1X1M U376 ( .A(test_se), .Y(n369) );
  DLY1X1M U377 ( .A(test_se), .Y(n370) );
  DLY1X1M U378 ( .A(test_se), .Y(n371) );
  DLY1X1M U379 ( .A(test_se), .Y(n372) );
endmodule


module data_sampling_PRESCALE_WIDTH6_DATA_WIDTH8_FRAME_WIDTH11_test_1 ( clk, 
        rst, prescale, data_sampling_enable, rx_in, edge_count, sampled_bit, 
        test_si, test_so, test_se );
  input [5:0] prescale;
  input [5:0] edge_count;
  input clk, rst, data_sampling_enable, rx_in, test_si, test_se;
  output sampled_bit, test_so;
  wire   sampled_bits_1_, sampled_bits_0_, N7, N8, N9, N10, N12, N13, N14, N15,
         N16, N17, N18, N19, N20, n11, n13, n14, n16, n17, n18, n20, n24, n25,
         n26, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n12, n15, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44;
  wire   [4:3] sub_26_carry;

  SDFFSQX2M sampled_bits_reg_2_ ( .D(n26), .SI(sampled_bits_1_), .SE(test_se), 
        .CK(clk), .SN(rst), .Q(test_so) );
  SDFFSQX2M sampled_bits_reg_0_ ( .D(n24), .SI(sampled_bit), .SE(test_se), 
        .CK(clk), .SN(rst), .Q(sampled_bits_0_) );
  SDFFSQX2M sampled_bits_reg_1_ ( .D(n25), .SI(sampled_bits_0_), .SE(test_se), 
        .CK(clk), .SN(rst), .Q(sampled_bits_1_) );
  SDFFSQX2M sampled_bit_reg ( .D(n20), .SI(test_si), .SE(test_se), .CK(clk), 
        .SN(rst), .Q(sampled_bit) );
  NOR2X2M U3 ( .A(prescale[5]), .B(sub_26_carry[4]), .Y(n1) );
  NOR2X2M U4 ( .A(n43), .B(N12), .Y(n17) );
  INVX2M U5 ( .A(data_sampling_enable), .Y(n43) );
  INVX2M U6 ( .A(rx_in), .Y(n44) );
  OAI2BB2X1M U7 ( .B0(n14), .B1(n44), .A0N(n14), .A1N(sampled_bits_0_), .Y(n24) );
  NAND2X2M U8 ( .A(N12), .B(data_sampling_enable), .Y(n14) );
  OAI2BB2X1M U9 ( .B0(n44), .B1(n16), .A0N(n16), .A1N(sampled_bits_1_), .Y(n25) );
  NAND2X2M U10 ( .A(N19), .B(n17), .Y(n16) );
  OAI2BB2X1M U11 ( .B0(n44), .B1(n18), .A0N(n18), .A1N(test_so), .Y(n26) );
  NAND3BX2M U12 ( .AN(N19), .B(n17), .C(N20), .Y(n18) );
  OR2X2M U13 ( .A(prescale[2]), .B(prescale[1]), .Y(n2) );
  INVX2M U14 ( .A(prescale[2]), .Y(N7) );
  OAI2BB2X1M U15 ( .B0(n11), .B1(n43), .A0N(sampled_bit), .A1N(n43), .Y(n20)
         );
  AOI21X2M U16 ( .A0(sampled_bits_1_), .A1(sampled_bits_0_), .B0(n13), .Y(n11)
         );
  OA21X2M U17 ( .A0(sampled_bits_1_), .A1(sampled_bits_0_), .B0(test_so), .Y(
        n13) );
  XNOR2X1M U18 ( .A(sub_26_carry[4]), .B(prescale[5]), .Y(N10) );
  OR2X1M U19 ( .A(prescale[4]), .B(sub_26_carry[3]), .Y(sub_26_carry[4]) );
  XNOR2X1M U24 ( .A(sub_26_carry[3]), .B(prescale[4]), .Y(N9) );
  OR2X1M U25 ( .A(prescale[3]), .B(prescale[2]), .Y(sub_26_carry[3]) );
  XNOR2X1M U26 ( .A(prescale[2]), .B(prescale[3]), .Y(N8) );
  CLKINVX1M U27 ( .A(prescale[1]), .Y(N13) );
  OAI2BB1X1M U28 ( .A0N(prescale[1]), .A1N(prescale[2]), .B0(n2), .Y(N14) );
  OR2X1M U29 ( .A(n2), .B(prescale[3]), .Y(n3) );
  OAI2BB1X1M U30 ( .A0N(n2), .A1N(prescale[3]), .B0(n3), .Y(N15) );
  XNOR2X1M U31 ( .A(prescale[4]), .B(n3), .Y(N16) );
  NOR3X1M U32 ( .A(prescale[4]), .B(prescale[5]), .C(n3), .Y(N18) );
  OAI21X1M U33 ( .A0(prescale[4]), .A1(n3), .B0(prescale[5]), .Y(n4) );
  NAND2BX1M U34 ( .AN(N18), .B(n4), .Y(N17) );
  NOR2BX1M U35 ( .AN(edge_count[0]), .B(prescale[1]), .Y(n5) );
  OAI2B2X1M U36 ( .A1N(N7), .A0(n5), .B0(edge_count[1]), .B1(n5), .Y(n8) );
  NOR2BX1M U37 ( .AN(prescale[1]), .B(edge_count[0]), .Y(n6) );
  OAI2B2X1M U38 ( .A1N(edge_count[1]), .A0(n6), .B0(N7), .B1(n6), .Y(n7) );
  NAND4BBX1M U39 ( .AN(n1), .BN(edge_count[5]), .C(n8), .D(n7), .Y(n15) );
  CLKXOR2X2M U40 ( .A(N10), .B(edge_count[4]), .Y(n12) );
  CLKXOR2X2M U41 ( .A(N8), .B(edge_count[2]), .Y(n10) );
  CLKXOR2X2M U42 ( .A(N9), .B(edge_count[3]), .Y(n9) );
  NOR4X1M U43 ( .A(n15), .B(n12), .C(n10), .D(n9), .Y(N12) );
  NOR2BX1M U44 ( .AN(edge_count[0]), .B(N13), .Y(n27) );
  OAI2B2X1M U45 ( .A1N(N14), .A0(n27), .B0(edge_count[1]), .B1(n27), .Y(n30)
         );
  NOR2BX1M U46 ( .AN(N13), .B(edge_count[0]), .Y(n28) );
  OAI2B2X1M U47 ( .A1N(edge_count[1]), .A0(n28), .B0(N14), .B1(n28), .Y(n29)
         );
  NAND4BBX1M U48 ( .AN(N18), .BN(edge_count[5]), .C(n30), .D(n29), .Y(n34) );
  CLKXOR2X2M U49 ( .A(N17), .B(edge_count[4]), .Y(n33) );
  CLKXOR2X2M U50 ( .A(N15), .B(edge_count[2]), .Y(n32) );
  CLKXOR2X2M U51 ( .A(N16), .B(edge_count[3]), .Y(n31) );
  NOR4X1M U52 ( .A(n34), .B(n33), .C(n32), .D(n31), .Y(N19) );
  NOR2BX1M U53 ( .AN(edge_count[0]), .B(prescale[1]), .Y(n35) );
  OAI2B2X1M U54 ( .A1N(prescale[2]), .A0(n35), .B0(edge_count[1]), .B1(n35), 
        .Y(n38) );
  NOR2BX1M U55 ( .AN(prescale[1]), .B(edge_count[0]), .Y(n36) );
  OAI2B2X1M U56 ( .A1N(edge_count[1]), .A0(n36), .B0(prescale[2]), .B1(n36), 
        .Y(n37) );
  NAND3BX1M U57 ( .AN(edge_count[5]), .B(n38), .C(n37), .Y(n42) );
  CLKXOR2X2M U58 ( .A(prescale[5]), .B(edge_count[4]), .Y(n41) );
  CLKXOR2X2M U59 ( .A(prescale[3]), .B(edge_count[2]), .Y(n40) );
  CLKXOR2X2M U60 ( .A(prescale[4]), .B(edge_count[3]), .Y(n39) );
  NOR4X1M U61 ( .A(n42), .B(n41), .C(n40), .D(n39), .Y(N20) );
endmodule


module deserializer_DATA_WIDTH8_test_1 ( clk, rst, sampled_bit, 
        deserializer_enable, p_data, test_si, test_so, test_se );
  output [7:0] p_data;
  input clk, rst, sampled_bit, deserializer_enable, test_si, test_se;
  output test_so;
  wire   p_data_reg_6_0, p_data_reg_5_0, p_data_reg_4_0, p_data_reg_3_0,
         p_data_reg_2_0, p_data_reg_1_0, p_data_reg_0_0, n22, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n21, n23, n24, n25, n26, n64, n65, n66,
         n69, n70, n71;
  wire   [2:0] bit_count;

  SDFFRQX2M p_data_reg_reg_7_ ( .D(n45), .SI(p_data_reg_6_0), .SE(n71), .CK(
        clk), .RN(n21), .Q(test_so) );
  SDFFRQX2M p_data_reg_reg_6_ ( .D(n47), .SI(p_data_reg_5_0), .SE(n70), .CK(
        clk), .RN(n21), .Q(p_data_reg_6_0) );
  SDFFRQX2M p_data_reg_reg_5_ ( .D(n49), .SI(p_data_reg_4_0), .SE(n71), .CK(
        clk), .RN(n21), .Q(p_data_reg_5_0) );
  SDFFRQX2M p_data_reg_reg_4_ ( .D(n51), .SI(p_data_reg_3_0), .SE(n70), .CK(
        clk), .RN(n21), .Q(p_data_reg_4_0) );
  SDFFRQX2M p_data_reg_reg_3_ ( .D(n53), .SI(p_data_reg_2_0), .SE(n71), .CK(
        clk), .RN(n21), .Q(p_data_reg_3_0) );
  SDFFRQX2M p_data_reg_reg_2_ ( .D(n55), .SI(p_data_reg_1_0), .SE(n70), .CK(
        clk), .RN(n21), .Q(p_data_reg_2_0) );
  SDFFRQX2M p_data_reg_reg_1_ ( .D(n57), .SI(p_data_reg_0_0), .SE(n71), .CK(
        clk), .RN(n21), .Q(p_data_reg_1_0) );
  SDFFRQX2M p_data_reg_reg_0_ ( .D(n59), .SI(p_data[7]), .SE(n70), .CK(clk), 
        .RN(n21), .Q(p_data_reg_0_0) );
  SDFFRQX2M p_data_reg_5_ ( .D(n48), .SI(p_data[4]), .SE(n71), .CK(clk), .RN(
        n21), .Q(p_data[5]) );
  SDFFRQX2M p_data_reg_1_ ( .D(n56), .SI(p_data[0]), .SE(n70), .CK(clk), .RN(
        n21), .Q(p_data[1]) );
  SDFFRQX2M p_data_reg_4_ ( .D(n50), .SI(p_data[3]), .SE(n71), .CK(clk), .RN(
        n21), .Q(p_data[4]) );
  SDFFRQX2M p_data_reg_0_ ( .D(n58), .SI(n66), .SE(n70), .CK(clk), .RN(n21), 
        .Q(p_data[0]) );
  SDFFRQX2M p_data_reg_7_ ( .D(n44), .SI(p_data[6]), .SE(n71), .CK(clk), .RN(
        n21), .Q(p_data[7]) );
  SDFFRQX2M p_data_reg_3_ ( .D(n52), .SI(p_data[2]), .SE(n70), .CK(clk), .RN(
        n21), .Q(p_data[3]) );
  SDFFRQX2M p_data_reg_6_ ( .D(n46), .SI(p_data[5]), .SE(n71), .CK(clk), .RN(
        n21), .Q(p_data[6]) );
  SDFFRQX2M p_data_reg_2_ ( .D(n54), .SI(p_data[1]), .SE(n70), .CK(clk), .RN(
        n21), .Q(p_data[2]) );
  SDFFRQX2M bit_count_reg_2_ ( .D(n60), .SI(n26), .SE(n71), .CK(clk), .RN(n21), 
        .Q(bit_count[2]) );
  SDFFRX1M bit_count_reg_3_ ( .D(n62), .SI(n64), .SE(n70), .CK(clk), .RN(n21), 
        .Q(n66), .QN(n22) );
  SDFFRQX2M bit_count_reg_1_ ( .D(n61), .SI(n25), .SE(n70), .CK(clk), .RN(n21), 
        .Q(bit_count[1]) );
  SDFFRQX2M bit_count_reg_0_ ( .D(n63), .SI(test_si), .SE(n71), .CK(clk), .RN(
        n21), .Q(bit_count[0]) );
  NOR4X1M U23 ( .A(n22), .B(bit_count[0]), .C(bit_count[1]), .D(bit_count[2]), 
        .Y(n42) );
  INVX2M U24 ( .A(n23), .Y(n21) );
  INVX2M U25 ( .A(rst), .Y(n23) );
  INVX2M U26 ( .A(n43), .Y(n24) );
  NOR2X2M U27 ( .A(n64), .B(n33), .Y(n29) );
  AOI2B1X1M U28 ( .A1N(n42), .A0(n25), .B0(n24), .Y(n41) );
  NAND2X2M U29 ( .A(deserializer_enable), .B(n42), .Y(n27) );
  NAND2X2M U30 ( .A(n27), .B(n33), .Y(n43) );
  OAI32X1M U31 ( .A0(n24), .A1(bit_count[0]), .A2(n42), .B0(n25), .B1(n43), 
        .Y(n63) );
  OAI32X1M U32 ( .A0(n39), .A1(bit_count[2]), .A2(n26), .B0(n40), .B1(n64), 
        .Y(n60) );
  OAI32X1M U33 ( .A0(n39), .A1(n64), .A2(n26), .B0(n40), .B1(n22), .Y(n62) );
  NOR2X2M U34 ( .A(n33), .B(bit_count[2]), .Y(n35) );
  OAI22X1M U35 ( .A0(n41), .A1(n26), .B0(bit_count[1]), .B1(n39), .Y(n61) );
  NAND2X2M U36 ( .A(deserializer_enable), .B(n22), .Y(n33) );
  NAND2X2M U37 ( .A(bit_count[0]), .B(n43), .Y(n39) );
  OAI2BB2X1M U38 ( .B0(n65), .B1(n38), .A0N(n38), .A1N(p_data_reg_0_0), .Y(n59) );
  NAND3X2M U39 ( .A(n25), .B(n26), .C(n35), .Y(n38) );
  OAI2BB2X1M U40 ( .B0(n65), .B1(n32), .A0N(n32), .A1N(p_data_reg_4_0), .Y(n51) );
  NAND3X2M U41 ( .A(n25), .B(n26), .C(n29), .Y(n32) );
  OAI2BB2X1M U42 ( .B0(n65), .B1(n37), .A0N(n37), .A1N(p_data_reg_1_0), .Y(n57) );
  NAND3X2M U43 ( .A(bit_count[0]), .B(n26), .C(n35), .Y(n37) );
  OAI2BB2X1M U44 ( .B0(n65), .B1(n36), .A0N(n36), .A1N(p_data_reg_2_0), .Y(n55) );
  NAND3X2M U45 ( .A(bit_count[1]), .B(n25), .C(n35), .Y(n36) );
  OAI2BB2X1M U46 ( .B0(n65), .B1(n34), .A0N(n34), .A1N(p_data_reg_3_0), .Y(n53) );
  NAND3X2M U47 ( .A(bit_count[1]), .B(bit_count[0]), .C(n35), .Y(n34) );
  OAI2BB2X1M U48 ( .B0(n65), .B1(n31), .A0N(n31), .A1N(p_data_reg_5_0), .Y(n49) );
  NAND3X2M U49 ( .A(n29), .B(n26), .C(bit_count[0]), .Y(n31) );
  OAI2BB2X1M U50 ( .B0(n65), .B1(n30), .A0N(n30), .A1N(p_data_reg_6_0), .Y(n47) );
  NAND3X2M U51 ( .A(n29), .B(n25), .C(bit_count[1]), .Y(n30) );
  OAI2BB2X1M U52 ( .B0(n28), .B1(n65), .A0N(n28), .A1N(test_so), .Y(n45) );
  NAND3X2M U53 ( .A(bit_count[0]), .B(n29), .C(bit_count[1]), .Y(n28) );
  OA21X2M U54 ( .A0(bit_count[1]), .A1(n42), .B0(n41), .Y(n40) );
  AO2B2X2M U55 ( .B0(p_data[0]), .B1(n27), .A0(p_data_reg_0_0), .A1N(n27), .Y(
        n58) );
  AO2B2X2M U56 ( .B0(p_data[1]), .B1(n27), .A0(p_data_reg_1_0), .A1N(n27), .Y(
        n56) );
  AO2B2X2M U57 ( .B0(p_data[2]), .B1(n27), .A0(p_data_reg_2_0), .A1N(n27), .Y(
        n54) );
  AO2B2X2M U58 ( .B0(p_data[3]), .B1(n27), .A0(p_data_reg_3_0), .A1N(n27), .Y(
        n52) );
  AO2B2X2M U59 ( .B0(p_data[4]), .B1(n27), .A0(p_data_reg_4_0), .A1N(n27), .Y(
        n50) );
  AO2B2X2M U60 ( .B0(p_data[5]), .B1(n27), .A0(p_data_reg_5_0), .A1N(n27), .Y(
        n48) );
  AO2B2X2M U61 ( .B0(p_data[6]), .B1(n27), .A0(p_data_reg_6_0), .A1N(n27), .Y(
        n46) );
  AO2B2X2M U62 ( .B0(p_data[7]), .B1(n27), .A0(test_so), .A1N(n27), .Y(n44) );
  INVX2M U63 ( .A(bit_count[1]), .Y(n26) );
  INVX2M U64 ( .A(bit_count[0]), .Y(n25) );
  INVX2M U65 ( .A(sampled_bit), .Y(n65) );
  INVX2M U66 ( .A(bit_count[2]), .Y(n64) );
  INVXLM U67 ( .A(test_se), .Y(n69) );
  INVXLM U68 ( .A(n69), .Y(n70) );
  INVXLM U69 ( .A(n69), .Y(n71) );
endmodule


module edge_bit_counter_PRESCALE_WIDTH6_DATA_WIDTH8_FRAME_WIDTH11_test_1 ( clk, 
        rst, edge_counter_enable, prescale, bit_count, edge_count, test_si, 
        test_se );
  input [5:0] prescale;
  output [3:0] bit_count;
  output [5:0] edge_count;
  input clk, rst, edge_counter_enable, test_si, test_se;
  wire   N8, N9, N10, N11, N12, N13, N14, N15, N28, N29, N30, N31, N32, N33,
         N45, N46, N47, N48, N49, N50, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n1, n2, n3, n4, n5, n6, n17, n18, n19, n20, n21,
         n22, n35, n36, n37, n38, n39, n40, n41, n44, n45;
  wire   [5:2] add_34_carry;

  SDFFRQX2M bit_count_reg_1_ ( .D(n32), .SI(n39), .SE(n45), .CK(clk), .RN(rst), 
        .Q(bit_count[1]) );
  SDFFRQX2M bit_count_reg_0_ ( .D(n33), .SI(test_si), .SE(n45), .CK(clk), .RN(
        rst), .Q(bit_count[0]) );
  SDFFRQX2M bit_count_reg_3_ ( .D(n34), .SI(n41), .SE(n45), .CK(clk), .RN(rst), 
        .Q(bit_count[3]) );
  SDFFRQX2M bit_count_reg_2_ ( .D(n31), .SI(n40), .SE(n45), .CK(clk), .RN(rst), 
        .Q(bit_count[2]) );
  SDFFRQX2M edge_count_reg_5_ ( .D(N50), .SI(edge_count[4]), .SE(n45), .CK(clk), .RN(rst), .Q(edge_count[5]) );
  SDFFRQX2M edge_count_reg_0_ ( .D(N45), .SI(bit_count[3]), .SE(n45), .CK(clk), 
        .RN(rst), .Q(edge_count[0]) );
  SDFFRQX2M edge_count_reg_4_ ( .D(N49), .SI(edge_count[3]), .SE(n45), .CK(clk), .RN(rst), .Q(edge_count[4]) );
  SDFFRQX2M edge_count_reg_3_ ( .D(N48), .SI(edge_count[2]), .SE(n45), .CK(clk), .RN(rst), .Q(edge_count[3]) );
  SDFFRQX2M edge_count_reg_2_ ( .D(N47), .SI(edge_count[1]), .SE(n45), .CK(clk), .RN(rst), .Q(edge_count[2]) );
  SDFFRQX2M edge_count_reg_1_ ( .D(N46), .SI(N28), .SE(n45), .CK(clk), .RN(rst), .Q(edge_count[1]) );
  INVX2M U8 ( .A(n28), .Y(n36) );
  INVX2M U9 ( .A(edge_counter_enable), .Y(n37) );
  NOR2X2M U15 ( .A(n37), .B(N15), .Y(n28) );
  AND2X2M U16 ( .A(N29), .B(n28), .Y(N46) );
  AND2X2M U17 ( .A(N30), .B(n28), .Y(N47) );
  AND2X2M U18 ( .A(N31), .B(n28), .Y(N48) );
  AND2X2M U19 ( .A(N32), .B(n28), .Y(N49) );
  NOR2X2M U20 ( .A(n40), .B(n39), .Y(n24) );
  OAI32X1M U21 ( .A0(n26), .A1(bit_count[0]), .A2(n28), .B0(n36), .B1(n39), 
        .Y(n33) );
  OAI32X1M U22 ( .A0(n37), .A1(bit_count[3]), .A2(n23), .B0(n36), .B1(n41), 
        .Y(n31) );
  AOI32X1M U23 ( .A0(n24), .A1(n41), .A2(N15), .B0(bit_count[2]), .B1(n38), 
        .Y(n23) );
  INVX2M U24 ( .A(bit_count[2]), .Y(n41) );
  INVX2M U25 ( .A(n24), .Y(n38) );
  OAI2BB2X1M U26 ( .B0(n29), .B1(n26), .A0N(n28), .A1N(bit_count[3]), .Y(n34)
         );
  AOI31X2M U27 ( .A0(bit_count[2]), .A1(n36), .A2(n24), .B0(bit_count[3]), .Y(
        n29) );
  NAND2X2M U28 ( .A(edge_counter_enable), .B(n30), .Y(n26) );
  OAI21X2M U29 ( .A0(bit_count[2]), .A1(bit_count[1]), .B0(bit_count[3]), .Y(
        n30) );
  OAI32X1M U30 ( .A0(n25), .A1(n39), .A2(n26), .B0(n27), .B1(n40), .Y(n32) );
  AOI2BB1X2M U31 ( .A0N(n26), .A1N(bit_count[0]), .B0(n28), .Y(n27) );
  NAND2X2M U32 ( .A(n36), .B(n40), .Y(n25) );
  AND2X2M U33 ( .A(N33), .B(n28), .Y(N50) );
  AND2X2M U34 ( .A(N28), .B(n28), .Y(N45) );
  OR2X2M U35 ( .A(prescale[1]), .B(prescale[0]), .Y(n1) );
  INVX2M U36 ( .A(bit_count[1]), .Y(n40) );
  INVX2M U37 ( .A(bit_count[0]), .Y(n39) );
  ADDHX1M U38 ( .A(edge_count[1]), .B(edge_count[0]), .CO(add_34_carry[2]), 
        .S(N29) );
  ADDHX1M U39 ( .A(edge_count[2]), .B(add_34_carry[2]), .CO(add_34_carry[3]), 
        .S(N30) );
  ADDHX1M U40 ( .A(edge_count[3]), .B(add_34_carry[3]), .CO(add_34_carry[4]), 
        .S(N31) );
  ADDHX1M U41 ( .A(edge_count[4]), .B(add_34_carry[4]), .CO(add_34_carry[5]), 
        .S(N32) );
  CLKINVX1M U42 ( .A(prescale[0]), .Y(N8) );
  OAI2BB1X1M U43 ( .A0N(prescale[0]), .A1N(prescale[1]), .B0(n1), .Y(N9) );
  OR2X1M U44 ( .A(n1), .B(prescale[2]), .Y(n2) );
  OAI2BB1X1M U45 ( .A0N(n1), .A1N(prescale[2]), .B0(n2), .Y(N10) );
  OR2X1M U46 ( .A(n2), .B(prescale[3]), .Y(n3) );
  OAI2BB1X1M U47 ( .A0N(n2), .A1N(prescale[3]), .B0(n3), .Y(N11) );
  OR2X1M U48 ( .A(n3), .B(prescale[4]), .Y(n4) );
  OAI2BB1X1M U49 ( .A0N(n3), .A1N(prescale[4]), .B0(n4), .Y(N12) );
  NOR2X1M U50 ( .A(n4), .B(prescale[5]), .Y(N14) );
  AO21XLM U51 ( .A0(n4), .A1(prescale[5]), .B0(N14), .Y(N13) );
  CLKINVX1M U52 ( .A(edge_count[0]), .Y(N28) );
  CLKXOR2X2M U53 ( .A(add_34_carry[5]), .B(edge_count[5]), .Y(N33) );
  NOR2BX1M U54 ( .AN(N8), .B(edge_count[0]), .Y(n5) );
  OAI2B2X1M U55 ( .A1N(edge_count[1]), .A0(n5), .B0(N9), .B1(n5), .Y(n19) );
  XNOR2X1M U56 ( .A(N13), .B(edge_count[5]), .Y(n18) );
  NOR2BX1M U57 ( .AN(edge_count[0]), .B(N8), .Y(n6) );
  OAI2B2X1M U58 ( .A1N(N9), .A0(n6), .B0(edge_count[1]), .B1(n6), .Y(n17) );
  NAND4BX1M U59 ( .AN(N14), .B(n19), .C(n18), .D(n17), .Y(n35) );
  CLKXOR2X2M U60 ( .A(N12), .B(edge_count[4]), .Y(n22) );
  CLKXOR2X2M U61 ( .A(N10), .B(edge_count[2]), .Y(n21) );
  CLKXOR2X2M U62 ( .A(N11), .B(edge_count[3]), .Y(n20) );
  NOR4X1M U63 ( .A(n35), .B(n22), .C(n21), .D(n20), .Y(N15) );
  INVXLM U64 ( .A(test_se), .Y(n44) );
  INVXLM U65 ( .A(n44), .Y(n45) );
endmodule


module parity_check_DATA_WIDTH8_test_1 ( p_data, parity_check_enable, 
        parity_type, clk, rst, sampled_bit, parity_error, test_si, test_se );
  input [7:0] p_data;
  input parity_check_enable, parity_type, clk, rst, sampled_bit, test_si,
         test_se;
  output parity_error;
  wire   n1, n3, n4, n5, n6, n7, n9, n2;

  SDFFRQX2M parity_error_reg ( .D(n9), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(parity_error) );
  OAI2BB2X1M U2 ( .B0(n1), .B1(n2), .A0N(parity_error), .A1N(n2), .Y(n9) );
  XOR3XLM U3 ( .A(n3), .B(n4), .C(n5), .Y(n1) );
  INVX2M U4 ( .A(parity_check_enable), .Y(n2) );
  XNOR2X2M U5 ( .A(sampled_bit), .B(parity_type), .Y(n5) );
  XOR3XLM U6 ( .A(p_data[5]), .B(p_data[4]), .C(n6), .Y(n4) );
  XNOR2X2M U7 ( .A(p_data[7]), .B(p_data[6]), .Y(n6) );
  XOR3XLM U8 ( .A(p_data[1]), .B(p_data[0]), .C(n7), .Y(n3) );
  XNOR2X2M U9 ( .A(p_data[3]), .B(p_data[2]), .Y(n7) );
endmodule


module start_check_test_1 ( start_check_enable, clk, rst, sampled_bit, 
        start_glitch, test_si, test_se );
  input start_check_enable, clk, rst, sampled_bit, test_si, test_se;
  output start_glitch;
  wire   n2;

  SDFFRQX2M start_glitch_reg ( .D(n2), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(start_glitch) );
  AO2B2X2M U2 ( .B0(start_check_enable), .B1(sampled_bit), .A0(start_glitch), 
        .A1N(start_check_enable), .Y(n2) );
endmodule


module stop_check_test_1 ( stop_check_enable, clk, rst, sampled_bit, 
        stop_error, test_si, test_se );
  input stop_check_enable, clk, rst, sampled_bit, test_si, test_se;
  output stop_error;
  wire   n3, n1, n5, n6;

  SDFFRQX2M stop_error_reg ( .D(n3), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(stop_error) );
  OAI2BB2X1M U2 ( .B0(sampled_bit), .B1(n1), .A0N(n6), .A1N(n1), .Y(n3) );
  INVX2M U3 ( .A(stop_check_enable), .Y(n1) );
  INVXLM U5 ( .A(stop_error), .Y(n5) );
  INVXLM U6 ( .A(n5), .Y(n6) );
endmodule


module FSM_DATA_WIDTH8_PRESCALE_WIDTH6_FRAME_WIDTH11_test_1 ( clk, rst, 
        parity_enable, rx_in, bit_count, edge_count, parity_error, stop_error, 
        start_glitch, prescale, parity_check_enable, edge_bit_counter_enable, 
        data_sampling_enable, start_check_enable, stop_check_enable, 
        deserializer_enable, data_valid, test_si2, test_si1, test_so2, 
        test_so1, test_se );
  input [3:0] bit_count;
  input [5:0] edge_count;
  input [5:0] prescale;
  input clk, rst, parity_enable, rx_in, parity_error, stop_error, start_glitch,
         test_si2, test_si1, test_se;
  output parity_check_enable, edge_bit_counter_enable, data_sampling_enable,
         start_check_enable, stop_check_enable, deserializer_enable,
         data_valid, test_so2, test_so1;
  wire   current_state_2_, current_state_1_, N144, N145, N146, N147, N148,
         N159, N160, N161, N163, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, r116_EQ, r116_B_0_, r116_B_1_, r116_B_2_, r116_B_3_,
         r116_B_4_, r116_B_5_, r116_B_9_, n1, n2, n3, n4, n5, n6, n7, n8, n9,
         n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n39, n40, n44, n45;
  wire   [4:3] r119_carry;
  wire   [4:3] r117_carry;

  SDFFRQX2M current_state_reg_1_ ( .D(n78), .SI(test_si2), .SE(test_se), .CK(
        clk), .RN(rst), .Q(current_state_1_) );
  SDFFRQX2M current_state_reg_2_ ( .D(n79), .SI(n39), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(current_state_2_) );
  SDFFRQX2M current_state_reg_0_ ( .D(n80), .SI(test_si1), .SE(test_se), .CK(
        clk), .RN(rst), .Q(test_so1) );
  NOR2X2M U6 ( .A(prescale[5]), .B(r119_carry[4]), .Y(n1) );
  NOR3X2M U7 ( .A(n39), .B(current_state_2_), .C(n34), .Y(n61) );
  INVX2M U8 ( .A(r116_EQ), .Y(n40) );
  OAI21BX1M U9 ( .A0(n65), .A1(n33), .B0N(n59), .Y(n71) );
  OAI21BX1M U10 ( .A0(n57), .A1(n39), .B0N(n58), .Y(n78) );
  NOR3X2M U11 ( .A(n59), .B(n60), .C(n61), .Y(n57) );
  OAI211X2M U12 ( .A0(test_so2), .A1(n76), .B0(n55), .C0(n77), .Y(
        edge_bit_counter_enable) );
  NAND2X2M U13 ( .A(n34), .B(n40), .Y(n76) );
  NOR3X2M U14 ( .A(n45), .B(n2), .C(n37), .Y(parity_check_enable) );
  NOR2X2M U15 ( .A(n36), .B(rx_in), .Y(n72) );
  INVX2M U16 ( .A(n60), .Y(n37) );
  INVX2M U17 ( .A(n61), .Y(n33) );
  INVX2M U18 ( .A(n68), .Y(n36) );
  NOR3BX2M U19 ( .AN(n75), .B(bit_count[0]), .C(bit_count[1]), .Y(n65) );
  NOR3BX2M U20 ( .AN(bit_count[3]), .B(bit_count[2]), .C(n40), .Y(n75) );
  OAI22X1M U21 ( .A0(r116_EQ), .A1(n56), .B0(n73), .B1(n55), .Y(n59) );
  AOI21X2M U22 ( .A0(n63), .A1(n45), .B0(n74), .Y(n73) );
  AOI31X2M U23 ( .A0(n75), .A1(n44), .A2(bit_count[1]), .B0(n45), .Y(n74) );
  INVX2M U24 ( .A(bit_count[0]), .Y(n44) );
  AOI32X1M U25 ( .A0(n67), .A1(test_so2), .A2(n68), .B0(n69), .B1(n70), .Y(n80) );
  OR2X2M U26 ( .A(start_glitch), .B(rx_in), .Y(n67) );
  AOI21X2M U27 ( .A0(n68), .A1(test_so2), .B0(n58), .Y(n70) );
  AOI22XLM U28 ( .A0(test_so1), .A1(n71), .B0(n72), .B1(r116_EQ), .Y(n69) );
  NAND3BX2M U29 ( .AN(bit_count[1]), .B(n75), .C(bit_count[0]), .Y(n63) );
  OAI2B1X2M U30 ( .A1N(n62), .A0(n63), .B0(n64), .Y(n79) );
  AOI32X1M U31 ( .A0(n61), .A1(n45), .A2(n65), .B0(current_state_2_), .B1(n66), 
        .Y(n64) );
  OAI21XLM U32 ( .A0(r116_EQ), .A1(n36), .B0(n55), .Y(n66) );
  OR2X2M U33 ( .A(prescale[1]), .B(prescale[0]), .Y(n3) );
  NOR3X2M U34 ( .A(n56), .B(start_glitch), .C(n40), .Y(n58) );
  OAI2BB2X1M U35 ( .B0(n2), .B1(n33), .A0N(N163), .A1N(n62), .Y(
        deserializer_enable) );
  OR4X1M U36 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n2) );
  INVX2M U37 ( .A(prescale[2]), .Y(N144) );
  NOR2X2M U38 ( .A(n2), .B(n56), .Y(start_check_enable) );
  NOR3X2M U39 ( .A(test_so1), .B(current_state_2_), .C(n39), .Y(n60) );
  OAI211X2M U40 ( .A0(test_so1), .A1(test_so2), .B0(n35), .C0(n77), .Y(
        data_sampling_enable) );
  INVX2M U41 ( .A(n72), .Y(n35) );
  AOI21X2M U42 ( .A0(test_so2), .A1(test_so1), .B0(n60), .Y(n77) );
  NOR2X2M U43 ( .A(test_so1), .B(current_state_1_), .Y(n68) );
  NAND3X2M U44 ( .A(current_state_1_), .B(n34), .C(current_state_2_), .Y(n55)
         );
  OAI21X2M U45 ( .A0(parity_enable), .A1(n55), .B0(n37), .Y(n62) );
  INVX2M U46 ( .A(current_state_2_), .Y(test_so2) );
  NOR2X2M U47 ( .A(n55), .B(n2), .Y(stop_check_enable) );
  INVX2M U48 ( .A(test_so1), .Y(n34) );
  INVX2M U49 ( .A(current_state_1_), .Y(n39) );
  NOR4X1M U50 ( .A(stop_error), .B(parity_error), .C(test_so2), .D(n36), .Y(
        data_valid) );
  NAND3X2M U51 ( .A(n39), .B(test_so2), .C(test_so1), .Y(n56) );
  INVX2M U52 ( .A(parity_enable), .Y(n45) );
  XNOR2X1M U53 ( .A(r119_carry[4]), .B(prescale[5]), .Y(N161) );
  OR2X1M U54 ( .A(prescale[4]), .B(r119_carry[3]), .Y(r119_carry[4]) );
  XNOR2X1M U55 ( .A(r119_carry[3]), .B(prescale[4]), .Y(N160) );
  OR2X1M U56 ( .A(prescale[3]), .B(prescale[2]), .Y(r119_carry[3]) );
  XNOR2X1M U57 ( .A(prescale[2]), .B(prescale[3]), .Y(N159) );
  AND2X1M U58 ( .A(r117_carry[4]), .B(prescale[5]), .Y(N148) );
  CLKXOR2X2M U59 ( .A(prescale[5]), .B(r117_carry[4]), .Y(N147) );
  AND2X1M U60 ( .A(r117_carry[3]), .B(prescale[4]), .Y(r117_carry[4]) );
  CLKXOR2X2M U61 ( .A(prescale[4]), .B(r117_carry[3]), .Y(N146) );
  AND2X1M U62 ( .A(prescale[2]), .B(prescale[3]), .Y(r117_carry[3]) );
  CLKXOR2X2M U63 ( .A(prescale[3]), .B(prescale[2]), .Y(N145) );
  CLKINVX1M U64 ( .A(prescale[0]), .Y(r116_B_0_) );
  OAI2BB1X1M U65 ( .A0N(prescale[0]), .A1N(prescale[1]), .B0(n3), .Y(r116_B_1_) );
  OR2X1M U66 ( .A(n3), .B(prescale[2]), .Y(n4) );
  OAI2BB1X1M U67 ( .A0N(n3), .A1N(prescale[2]), .B0(n4), .Y(r116_B_2_) );
  OR2X1M U68 ( .A(n4), .B(prescale[3]), .Y(n5) );
  OAI2BB1X1M U69 ( .A0N(n4), .A1N(prescale[3]), .B0(n5), .Y(r116_B_3_) );
  OR2X1M U70 ( .A(n5), .B(prescale[4]), .Y(n6) );
  OAI2BB1X1M U71 ( .A0N(n5), .A1N(prescale[4]), .B0(n6), .Y(r116_B_4_) );
  NOR2X1M U72 ( .A(n6), .B(prescale[5]), .Y(r116_B_9_) );
  AO21XLM U73 ( .A0(n6), .A1(prescale[5]), .B0(r116_B_9_), .Y(r116_B_5_) );
  NOR2BX1M U74 ( .AN(r116_B_0_), .B(edge_count[0]), .Y(n7) );
  OAI2B2X1M U75 ( .A1N(edge_count[1]), .A0(n7), .B0(r116_B_1_), .B1(n7), .Y(
        n11) );
  XNOR2X1M U76 ( .A(r116_B_5_), .B(edge_count[5]), .Y(n10) );
  NOR2BX1M U77 ( .AN(edge_count[0]), .B(r116_B_0_), .Y(n8) );
  OAI2B2X1M U78 ( .A1N(r116_B_1_), .A0(n8), .B0(edge_count[1]), .B1(n8), .Y(n9) );
  NAND4BX1M U79 ( .AN(r116_B_9_), .B(n11), .C(n10), .D(n9), .Y(n15) );
  CLKXOR2X2M U80 ( .A(r116_B_4_), .B(edge_count[4]), .Y(n14) );
  CLKXOR2X2M U81 ( .A(r116_B_2_), .B(edge_count[2]), .Y(n13) );
  CLKXOR2X2M U82 ( .A(r116_B_3_), .B(edge_count[3]), .Y(n12) );
  NOR4X1M U83 ( .A(n15), .B(n14), .C(n13), .D(n12), .Y(r116_EQ) );
  NOR2BX1M U84 ( .AN(edge_count[0]), .B(prescale[1]), .Y(n16) );
  OAI2B2X1M U85 ( .A1N(N144), .A0(n16), .B0(edge_count[1]), .B1(n16), .Y(n20)
         );
  NOR2BX1M U86 ( .AN(prescale[1]), .B(edge_count[0]), .Y(n17) );
  OAI2B2X1M U87 ( .A1N(edge_count[1]), .A0(n17), .B0(N144), .B1(n17), .Y(n19)
         );
  XNOR2X1M U88 ( .A(N148), .B(edge_count[5]), .Y(n18) );
  NAND3X1M U89 ( .A(n20), .B(n19), .C(n18), .Y(n24) );
  CLKXOR2X2M U90 ( .A(N147), .B(edge_count[4]), .Y(n23) );
  CLKXOR2X2M U91 ( .A(N145), .B(edge_count[2]), .Y(n22) );
  CLKXOR2X2M U92 ( .A(N146), .B(edge_count[3]), .Y(n21) );
  NOR2BX1M U93 ( .AN(edge_count[0]), .B(prescale[1]), .Y(n25) );
  OAI2B2X1M U94 ( .A1N(N144), .A0(n25), .B0(edge_count[1]), .B1(n25), .Y(n28)
         );
  NOR2BX1M U95 ( .AN(prescale[1]), .B(edge_count[0]), .Y(n26) );
  OAI2B2X1M U96 ( .A1N(edge_count[1]), .A0(n26), .B0(N144), .B1(n26), .Y(n27)
         );
  NAND4BBX1M U97 ( .AN(n1), .BN(edge_count[5]), .C(n28), .D(n27), .Y(n32) );
  CLKXOR2X2M U98 ( .A(N161), .B(edge_count[4]), .Y(n31) );
  CLKXOR2X2M U99 ( .A(N159), .B(edge_count[2]), .Y(n30) );
  CLKXOR2X2M U100 ( .A(N160), .B(edge_count[3]), .Y(n29) );
  NOR4X1M U101 ( .A(n32), .B(n31), .C(n30), .D(n29), .Y(N163) );
endmodule


module UART_rx_top_DATA_WIDTH8_FRAME_WIDTH11_PRESCALE_WIDTH6_test_1 ( clk, 
        reset, rx_in, prescale, parity_enable, parity_type, data_valid, p_data, 
        parity_error, framing_error, test_si3, test_si2, test_si1, test_so2, 
        test_so1, test_se );
  input [5:0] prescale;
  output [7:0] p_data;
  input clk, reset, rx_in, parity_enable, parity_type, test_si3, test_si2,
         test_si1, test_se;
  output data_valid, parity_error, framing_error, test_so2, test_so1;
  wire   data_sampling_enable, sampled_bit, deserializer_enable,
         edge_bit_counter_enable, parity_check_enable, start_check_enable,
         stop_check_enable, n1, n2, n3, n4, n5, n11, n12;
  wire   [5:0] edge_count;
  wire   [3:0] bit_count;

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(reset), .Y(n2) );
  INVXLM U3 ( .A(framing_error), .Y(n11) );
  INVXLM U4 ( .A(n11), .Y(n12) );
  data_sampling_PRESCALE_WIDTH6_DATA_WIDTH8_FRAME_WIDTH11_test_1 u_data_sampling ( 
        .clk(clk), .rst(n1), .prescale(prescale), .data_sampling_enable(
        data_sampling_enable), .rx_in(rx_in), .edge_count(edge_count), 
        .sampled_bit(sampled_bit), .test_si(n5), .test_so(n4), .test_se(
        test_se) );
  deserializer_DATA_WIDTH8_test_1 u_deserializer ( .clk(clk), .rst(n1), 
        .sampled_bit(sampled_bit), .deserializer_enable(deserializer_enable), 
        .p_data(p_data), .test_si(n4), .test_so(n3), .test_se(test_se) );
  edge_bit_counter_PRESCALE_WIDTH6_DATA_WIDTH8_FRAME_WIDTH11_test_1 u_edge_bit_counter ( 
        .clk(clk), .rst(n1), .edge_counter_enable(edge_bit_counter_enable), 
        .prescale(prescale), .bit_count(bit_count), .edge_count(edge_count), 
        .test_si(n3), .test_se(test_se) );
  parity_check_DATA_WIDTH8_test_1 u_parity_check ( .p_data(p_data), 
        .parity_check_enable(parity_check_enable), .parity_type(parity_type), 
        .clk(clk), .rst(n1), .sampled_bit(sampled_bit), .parity_error(
        parity_error), .test_si(edge_count[5]), .test_se(test_se) );
  start_check_test_1 u_start_check ( .start_check_enable(start_check_enable), 
        .clk(clk), .rst(n1), .sampled_bit(sampled_bit), .start_glitch(test_so2), .test_si(parity_error), .test_se(test_se) );
  stop_check_test_1 u_stop_check ( .stop_check_enable(stop_check_enable), 
        .clk(clk), .rst(n1), .sampled_bit(sampled_bit), .stop_error(
        framing_error), .test_si(test_si3), .test_se(test_se) );
  FSM_DATA_WIDTH8_PRESCALE_WIDTH6_FRAME_WIDTH11_test_1 u_FSM ( .clk(clk), 
        .rst(n1), .parity_enable(parity_enable), .rx_in(rx_in), .bit_count(
        bit_count), .edge_count(edge_count), .parity_error(parity_error), 
        .stop_error(n12), .start_glitch(test_so2), .prescale(prescale), 
        .parity_check_enable(parity_check_enable), .edge_bit_counter_enable(
        edge_bit_counter_enable), .data_sampling_enable(data_sampling_enable), 
        .start_check_enable(start_check_enable), .stop_check_enable(
        stop_check_enable), .deserializer_enable(deserializer_enable), 
        .data_valid(data_valid), .test_si2(test_si2), .test_si1(test_si1), 
        .test_so2(n5), .test_so1(test_so1), .test_se(test_se) );
endmodule


module FSM_tx_test_1 ( serial_done, data_valid, parity_en, clk, reset_n, 
        serial_en, mux_sel, busy, valid_to_capture, test_si, test_so, test_se
 );
  output [1:0] mux_sel;
  input serial_done, data_valid, parity_en, clk, reset_n, test_si, test_se;
  output serial_en, busy, valid_to_capture, test_so;
  wire   current_state_1_, current_state_0_, busy_reg0, n9, n10, n11, n12, n6,
         n7, n8, n13;
  wire   [2:0] next_state;

  SDFFRQX2M current_state_reg_1_ ( .D(next_state[1]), .SI(n7), .SE(test_se), 
        .CK(clk), .RN(reset_n), .Q(current_state_1_) );
  SDFFRQX2M current_state_reg_0_ ( .D(next_state[0]), .SI(busy), .SE(test_se), 
        .CK(clk), .RN(reset_n), .Q(current_state_0_) );
  SDFFRQX2M current_state_reg_2_ ( .D(next_state[2]), .SI(n13), .SE(test_se), 
        .CK(clk), .RN(reset_n), .Q(test_so) );
  SDFFSQX1M busy_reg ( .D(busy_reg0), .SI(test_si), .SE(test_se), .CK(clk), 
        .SN(reset_n), .Q(busy) );
  AOI2B1X1M U8 ( .A1N(n10), .A0(n7), .B0(n8), .Y(next_state[2]) );
  INVX2M U9 ( .A(mux_sel[1]), .Y(n8) );
  INVX2M U10 ( .A(serial_en), .Y(mux_sel[0]) );
  OAI33X2M U11 ( .A0(n7), .A1(test_so), .A2(current_state_1_), .B0(n8), .B1(
        current_state_0_), .B2(n10), .Y(next_state[1]) );
  OAI211X2M U12 ( .A0(test_so), .A1(n7), .B0(n12), .C0(n8), .Y(busy_reg0) );
  NAND3X2M U13 ( .A(n7), .B(n13), .C(test_so), .Y(n12) );
  NOR2BX2M U14 ( .AN(n9), .B(test_so), .Y(serial_en) );
  NOR2X2M U15 ( .A(n13), .B(test_so), .Y(mux_sel[1]) );
  INVX2M U16 ( .A(current_state_0_), .Y(n7) );
  NOR2BX2M U17 ( .AN(serial_done), .B(parity_en), .Y(n10) );
  NOR2X2M U18 ( .A(current_state_0_), .B(n11), .Y(next_state[0]) );
  AOI33X2M U19 ( .A0(n6), .A1(n13), .A2(data_valid), .B0(mux_sel[1]), .B1(
        serial_done), .B2(parity_en), .Y(n11) );
  INVX2M U20 ( .A(busy_reg0), .Y(n6) );
  INVX2M U21 ( .A(current_state_1_), .Y(n13) );
  CLKXOR2X2M U22 ( .A(current_state_1_), .B(current_state_0_), .Y(n9) );
  NOR3X2M U23 ( .A(n9), .B(test_so), .C(current_state_0_), .Y(valid_to_capture) );
endmodule


module serializer_test_1 ( p_data, serial_en, clk, valid_to_capture, reset_n, 
        serial_data, serial_done, test_si, test_se );
  input [7:0] p_data;
  input serial_en, clk, valid_to_capture, reset_n, test_si, test_se;
  output serial_data, serial_done;
  wire   N3, N4, N5, N10, N18, N21, n4, n5, n6, n10, n15, n17, n19, n21, n23,
         n25, n27, n29, n30, n1, n2, n3, n7, n31, n32, n33, n34, n35, n38, n39
;
  wire   [7:0] captured_data;

  SDFFRQX2M serial_data_reg ( .D(n10), .SI(n33), .SE(n39), .CK(clk), .RN(n2), 
        .Q(serial_data) );
  SDFFRQX2M captured_data_reg_5_ ( .D(n25), .SI(captured_data[4]), .SE(n39), 
        .CK(clk), .RN(n2), .Q(captured_data[5]) );
  SDFFRQX2M captured_data_reg_1_ ( .D(n17), .SI(captured_data[0]), .SE(n39), 
        .CK(clk), .RN(n2), .Q(captured_data[1]) );
  SDFFRQX2M captured_data_reg_7_ ( .D(n29), .SI(captured_data[6]), .SE(n39), 
        .CK(clk), .RN(reset_n), .Q(captured_data[7]) );
  SDFFRQX2M captured_data_reg_3_ ( .D(n21), .SI(captured_data[2]), .SE(n39), 
        .CK(clk), .RN(n2), .Q(captured_data[3]) );
  SDFFRQX2M captured_data_reg_6_ ( .D(n27), .SI(captured_data[5]), .SE(n39), 
        .CK(clk), .RN(n2), .Q(captured_data[6]) );
  SDFFRQX2M captured_data_reg_2_ ( .D(n19), .SI(captured_data[1]), .SE(n39), 
        .CK(clk), .RN(n2), .Q(captured_data[2]) );
  SDFFRQX2M captured_data_reg_4_ ( .D(n23), .SI(captured_data[3]), .SE(n39), 
        .CK(clk), .RN(n2), .Q(captured_data[4]) );
  SDFFRQX2M captured_data_reg_0_ ( .D(n15), .SI(test_si), .SE(n39), .CK(clk), 
        .RN(n2), .Q(captured_data[0]) );
  SDFFRQX2M serial_done_reg ( .D(N21), .SI(serial_data), .SE(n39), .CK(clk), 
        .RN(n2), .Q(serial_done) );
  SDFFRQX2M count_reg_2_ ( .D(n30), .SI(N4), .SE(n39), .CK(clk), .RN(n2), .Q(
        N5) );
  SDFFRQX2M count_reg_1_ ( .D(n31), .SI(N3), .SE(n39), .CK(clk), .RN(n2), .Q(
        N4) );
  SDFFRQX2M count_reg_0_ ( .D(N18), .SI(captured_data[7]), .SE(n39), .CK(clk), 
        .RN(n2), .Q(N3) );
  BUFX2M U3 ( .A(reset_n), .Y(n2) );
  OAI21X2M U4 ( .A0(n4), .A1(n33), .B0(serial_en), .Y(n5) );
  NOR3X2M U5 ( .A(n33), .B(n34), .C(n4), .Y(N21) );
  AOI21X2M U6 ( .A0(n33), .A1(n4), .B0(n5), .Y(n30) );
  INVX2M U7 ( .A(serial_en), .Y(n34) );
  INVX2M U8 ( .A(n1), .Y(n35) );
  NAND2X2M U9 ( .A(N4), .B(N3), .Y(n4) );
  AO22X1M U10 ( .A0(serial_data), .A1(n34), .B0(serial_en), .B1(N10), .Y(n10)
         );
  MX2X2M U11 ( .A(n7), .B(n3), .S0(N5), .Y(N10) );
  MX4X1M U12 ( .A(captured_data[0]), .B(captured_data[1]), .C(captured_data[2]), .D(captured_data[3]), .S0(N3), .S1(N4), .Y(n7) );
  MX4X1M U13 ( .A(captured_data[4]), .B(captured_data[5]), .C(captured_data[6]), .D(captured_data[7]), .S0(N3), .S1(N4), .Y(n3) );
  NOR2X2M U14 ( .A(N3), .B(n5), .Y(N18) );
  INVX2M U15 ( .A(N5), .Y(n33) );
  BUFX2M U16 ( .A(valid_to_capture), .Y(n1) );
  AO22X1M U17 ( .A0(n1), .A1(p_data[0]), .B0(captured_data[0]), .B1(n35), .Y(
        n15) );
  AO22X1M U18 ( .A0(p_data[1]), .A1(n1), .B0(captured_data[1]), .B1(n35), .Y(
        n17) );
  AO22X1M U19 ( .A0(p_data[2]), .A1(n1), .B0(captured_data[2]), .B1(n35), .Y(
        n19) );
  AO22X1M U20 ( .A0(p_data[3]), .A1(n1), .B0(captured_data[3]), .B1(n35), .Y(
        n21) );
  AO22X1M U21 ( .A0(p_data[4]), .A1(n1), .B0(captured_data[4]), .B1(n35), .Y(
        n23) );
  AO22X1M U22 ( .A0(p_data[5]), .A1(n1), .B0(captured_data[5]), .B1(n35), .Y(
        n25) );
  AO22X1M U36 ( .A0(p_data[6]), .A1(n1), .B0(captured_data[6]), .B1(n35), .Y(
        n27) );
  AO22X1M U37 ( .A0(p_data[7]), .A1(n1), .B0(captured_data[7]), .B1(n35), .Y(
        n29) );
  INVX2M U38 ( .A(n6), .Y(n31) );
  OAI211X2M U39 ( .A0(N3), .A1(N4), .B0(n32), .C0(n4), .Y(n6) );
  INVX2M U40 ( .A(n5), .Y(n32) );
  INVXLM U41 ( .A(test_se), .Y(n38) );
  INVXLM U42 ( .A(n38), .Y(n39) );
endmodule


module parity_calc_test_1 ( clk, reset_n, p_data, data_valid, busy, parity_typ, 
        parity_bit, test_si, test_se );
  input [7:0] p_data;
  input clk, reset_n, data_valid, busy, parity_typ, test_si, test_se;
  output parity_bit;
  wire   n1, n2, n3, n4, n5, n6, n8;

  SDFFRQX2M parity_bit_reg ( .D(n8), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(reset_n), .Q(parity_bit) );
  XNOR2X2M U2 ( .A(p_data[3]), .B(p_data[2]), .Y(n5) );
  XOR3XLM U3 ( .A(p_data[5]), .B(p_data[4]), .C(n6), .Y(n3) );
  CLKXOR2X2M U4 ( .A(p_data[7]), .B(p_data[6]), .Y(n6) );
  OAI2BB2X1M U5 ( .B0(n1), .B1(n2), .A0N(parity_bit), .A1N(n2), .Y(n8) );
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


module UART_tx_top_DATA_WIDTH8_test_1 ( p_data, data_valid, parity_en, 
        parity_typ, clk, reset_n, tx_out, busy, test_si, test_so, test_se );
  input [7:0] p_data;
  input data_valid, parity_en, parity_typ, clk, reset_n, test_si, test_se;
  output tx_out, busy, test_so;
  wire   serial_en, valid_to_capture, serial_data, parity_bit, n1;
  wire   [1:0] mux_sel;

  FSM_tx_test_1 dut_fsm ( .serial_done(test_so), .data_valid(data_valid), 
        .parity_en(parity_en), .clk(clk), .reset_n(reset_n), .serial_en(
        serial_en), .mux_sel(mux_sel), .busy(busy), .valid_to_capture(
        valid_to_capture), .test_si(test_si), .test_so(n1), .test_se(test_se)
         );
  serializer_test_1 dut_serializer ( .p_data(p_data), .serial_en(serial_en), 
        .clk(clk), .valid_to_capture(valid_to_capture), .reset_n(reset_n), 
        .serial_data(serial_data), .serial_done(test_so), .test_si(parity_bit), 
        .test_se(test_se) );
  parity_calc_test_1 dut_parity ( .clk(clk), .reset_n(reset_n), .p_data(p_data), .data_valid(data_valid), .busy(busy), .parity_typ(parity_typ), .parity_bit(
        parity_bit), .test_si(n1), .test_se(test_se) );
  mux dut_mux ( .mux_sel(mux_sel), .start_bit(1'b0), .stop_bit(1'b1), 
        .serial_data(serial_data), .parity_bit(parity_bit), .tx_out(tx_out) );
endmodule


module UART_top_DATA_WIDTH8_FRAME_WIDTH11_PRESCALE_WIDTH6_test_1 ( clk_tx, 
        tx_p_data, tx_data_valid, reset, parity_type, parity_enable, clk_rx, 
        rx_in, prescale, tx_data_out, tx_busy, rx_p_data_out, rx_data_valid, 
        parity_error, framing_error, test_si3, test_si2, test_si1, test_so2, 
        test_so1, test_se );
  input [7:0] tx_p_data;
  input [5:0] prescale;
  output [7:0] rx_p_data_out;
  input clk_tx, tx_data_valid, reset, parity_type, parity_enable, clk_rx,
         rx_in, test_si3, test_si2, test_si1, test_se;
  output tx_data_out, tx_busy, rx_data_valid, parity_error, framing_error,
         test_so2, test_so1;
  wire   n1, n2, n4;

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(reset), .Y(n2) );
  UART_rx_top_DATA_WIDTH8_FRAME_WIDTH11_PRESCALE_WIDTH6_test_1 dut_UART_RX ( 
        .clk(clk_rx), .reset(n1), .rx_in(rx_in), .prescale(prescale), 
        .parity_enable(parity_enable), .parity_type(parity_type), .data_valid(
        rx_data_valid), .p_data(rx_p_data_out), .parity_error(parity_error), 
        .framing_error(framing_error), .test_si3(test_si3), .test_si2(test_si2), .test_si1(test_si1), .test_so2(n4), .test_so1(test_so1), .test_se(test_se)
         );
  UART_tx_top_DATA_WIDTH8_test_1 dut_UART_TX ( .p_data(tx_p_data), 
        .data_valid(tx_data_valid), .parity_en(parity_enable), .parity_typ(
        parity_type), .clk(clk_tx), .reset_n(n1), .tx_out(tx_data_out), .busy(
        tx_busy), .test_si(n4), .test_so(test_so2), .test_se(test_se) );
endmodule



    module system_controller_RF_DEPTH16_ADDR_WIDTH4_DATA_WIDTH8_ALU_OUT_WIDTH16_test_1 ( 
        clk, reset_n, UART_rx_data, UART_rx_valid, ALU_out, ALU_out_valid, 
        ALU_enable, ALU_fun, FIFO_full, FIFO_wr_data, FIFO_wr_inc, 
        gated_clk_enable, div_clk_enable, rd_reg, rd_reg_valid, wr_reg, addr, 
        read_enable, write_enable, test_si, test_so, test_se );
  input [7:0] UART_rx_data;
  input [15:0] ALU_out;
  output [3:0] ALU_fun;
  output [7:0] FIFO_wr_data;
  input [7:0] rd_reg;
  output [7:0] wr_reg;
  output [3:0] addr;
  input clk, reset_n, UART_rx_valid, ALU_out_valid, FIFO_full, rd_reg_valid,
         test_si, test_se;
  output ALU_enable, FIFO_wr_inc, gated_clk_enable, div_clk_enable,
         read_enable, write_enable, test_so;
  wire   n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n28, n29, n30, n31, n32,
         n33, n34, n35, n48, n49, n50, n51, n52, n53, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146;
  wire   [3:0] current_state;
  wire   [3:0] next_state;
  wire   [15:8] ALU_out_reg;

  SDFFRQX2M ALU_out_reg_reg_15_ ( .D(n124), .SI(ALU_out_reg[14]), .SE(test_se), 
        .CK(clk), .RN(reset_n), .Q(ALU_out_reg[15]) );
  SDFFRQX2M ALU_out_reg_reg_14_ ( .D(n123), .SI(ALU_out_reg[13]), .SE(test_se), 
        .CK(clk), .RN(reset_n), .Q(ALU_out_reg[14]) );
  SDFFRQX2M ALU_out_reg_reg_13_ ( .D(n122), .SI(ALU_out_reg[12]), .SE(test_se), 
        .CK(clk), .RN(reset_n), .Q(ALU_out_reg[13]) );
  SDFFRQX2M ALU_out_reg_reg_12_ ( .D(n121), .SI(ALU_out_reg[11]), .SE(test_se), 
        .CK(clk), .RN(reset_n), .Q(ALU_out_reg[12]) );
  SDFFRQX2M ALU_out_reg_reg_11_ ( .D(n120), .SI(ALU_out_reg[10]), .SE(test_se), 
        .CK(clk), .RN(reset_n), .Q(ALU_out_reg[11]) );
  SDFFRQX2M ALU_out_reg_reg_10_ ( .D(n119), .SI(ALU_out_reg[9]), .SE(test_se), 
        .CK(clk), .RN(reset_n), .Q(ALU_out_reg[10]) );
  SDFFRQX2M ALU_out_reg_reg_9_ ( .D(n118), .SI(ALU_out_reg[8]), .SE(test_se), 
        .CK(clk), .RN(reset_n), .Q(ALU_out_reg[9]) );
  SDFFRQX2M ALU_out_reg_reg_8_ ( .D(n117), .SI(n139), .SE(test_se), .CK(clk), 
        .RN(reset_n), .Q(ALU_out_reg[8]) );
  SDFFRX1M ALU_out_reg_reg_7_ ( .D(n116), .SI(n140), .SE(test_se), .CK(clk), 
        .RN(reset_n), .Q(n139), .QN(n40) );
  SDFFRX1M ALU_out_reg_reg_6_ ( .D(n115), .SI(n141), .SE(test_se), .CK(clk), 
        .RN(reset_n), .Q(n140), .QN(n41) );
  SDFFRX1M ALU_out_reg_reg_5_ ( .D(n114), .SI(n142), .SE(test_se), .CK(clk), 
        .RN(reset_n), .Q(n141), .QN(n42) );
  SDFFRX1M ALU_out_reg_reg_4_ ( .D(n113), .SI(n143), .SE(test_se), .CK(clk), 
        .RN(reset_n), .Q(n142), .QN(n43) );
  SDFFRX1M ALU_out_reg_reg_3_ ( .D(n112), .SI(n144), .SE(test_se), .CK(clk), 
        .RN(reset_n), .Q(n143), .QN(n44) );
  SDFFRX1M ALU_out_reg_reg_2_ ( .D(n111), .SI(n145), .SE(test_se), .CK(clk), 
        .RN(reset_n), .Q(n144), .QN(n45) );
  SDFFRX1M ALU_out_reg_reg_1_ ( .D(n110), .SI(n146), .SE(test_se), .CK(clk), 
        .RN(reset_n), .Q(n145), .QN(n46) );
  SDFFRX1M ALU_out_reg_reg_0_ ( .D(n109), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(reset_n), .Q(n146), .QN(n47) );
  SDFFRX1M addr_reg_reg_0_ ( .D(n125), .SI(ALU_out_reg[15]), .SE(test_se), 
        .CK(clk), .RN(reset_n), .Q(n138), .QN(n39) );
  SDFFRX1M addr_reg_reg_3_ ( .D(n128), .SI(n136), .SE(test_se), .CK(clk), .RN(
        reset_n), .Q(n135), .QN(n36) );
  SDFFRX1M addr_reg_reg_1_ ( .D(n126), .SI(n138), .SE(test_se), .CK(clk), .RN(
        reset_n), .Q(n137), .QN(n38) );
  SDFFRQX2M current_state_reg_0_ ( .D(next_state[0]), .SI(n135), .SE(test_se), 
        .CK(clk), .RN(reset_n), .Q(current_state[0]) );
  SDFFRQX2M current_state_reg_2_ ( .D(next_state[2]), .SI(current_state[1]), 
        .SE(test_se), .CK(clk), .RN(reset_n), .Q(current_state[2]) );
  SDFFRQX2M current_state_reg_1_ ( .D(next_state[1]), .SI(n28), .SE(test_se), 
        .CK(clk), .RN(reset_n), .Q(current_state[1]) );
  SDFFRQX2M current_state_reg_3_ ( .D(next_state[3]), .SI(n52), .SE(test_se), 
        .CK(clk), .RN(reset_n), .Q(current_state[3]) );
  SDFFRX1M addr_reg_reg_2_ ( .D(n127), .SI(n137), .SE(test_se), .CK(clk), .RN(
        reset_n), .Q(n136), .QN(n37) );
  NOR2X2M U30 ( .A(n57), .B(n95), .Y(ALU_fun[2]) );
  NOR2X2M U31 ( .A(n59), .B(n95), .Y(ALU_fun[0]) );
  OAI22X2M U32 ( .A0(n57), .A1(n72), .B0(n37), .B1(n97), .Y(addr[2]) );
  INVX2M U33 ( .A(write_enable), .Y(n49) );
  OR2X2M U34 ( .A(n61), .B(n134), .Y(n97) );
  AND3X2M U35 ( .A(n60), .B(n61), .C(n62), .Y(n55) );
  NOR2X2M U36 ( .A(n72), .B(n134), .Y(read_enable) );
  NOR2X2M U37 ( .A(n134), .B(n55), .Y(write_enable) );
  NOR2X2M U38 ( .A(n95), .B(n134), .Y(ALU_enable) );
  INVX2M U39 ( .A(n77), .Y(n50) );
  INVX2M U40 ( .A(n100), .Y(n33) );
  INVX2M U41 ( .A(n72), .Y(n34) );
  INVX2M U42 ( .A(n60), .Y(n51) );
  NOR3BX2M U43 ( .AN(n96), .B(n48), .C(test_so), .Y(n83) );
  NOR2X2M U44 ( .A(n52), .B(n53), .Y(n85) );
  NAND2X2M U45 ( .A(n98), .B(n48), .Y(n72) );
  NAND3BX2M U46 ( .AN(n99), .B(n30), .C(n100), .Y(FIFO_wr_inc) );
  INVX2M U47 ( .A(n29), .Y(n134) );
  NAND2X2M U48 ( .A(n28), .B(n98), .Y(n61) );
  INVX2M U49 ( .A(n28), .Y(n48) );
  BUFX2M U50 ( .A(n76), .Y(n30) );
  NAND2X2M U51 ( .A(n83), .B(n32), .Y(n76) );
  NOR3BX2M U52 ( .AN(n87), .B(n56), .C(n129), .Y(n70) );
  NOR2X2M U53 ( .A(n55), .B(n59), .Y(wr_reg[0]) );
  NOR2X2M U54 ( .A(n55), .B(n58), .Y(wr_reg[1]) );
  NOR2X2M U55 ( .A(n55), .B(n57), .Y(wr_reg[2]) );
  NOR2X2M U56 ( .A(n55), .B(n56), .Y(wr_reg[3]) );
  NOR2X2M U57 ( .A(n49), .B(n129), .Y(wr_reg[7]) );
  NOR2X2M U58 ( .A(n49), .B(n131), .Y(wr_reg[4]) );
  NOR2X2M U59 ( .A(n49), .B(n130), .Y(wr_reg[6]) );
  NOR2X2M U60 ( .A(n94), .B(n83), .Y(n64) );
  OAI211X2M U61 ( .A0(n63), .A1(n32), .B0(n35), .C0(n64), .Y(next_state[3]) );
  INVX2M U62 ( .A(ALU_enable), .Y(n35) );
  NAND4X2M U63 ( .A(n69), .B(n85), .C(n48), .D(test_so), .Y(n100) );
  NOR2BX2M U64 ( .AN(n93), .B(n28), .Y(n87) );
  NAND3X2M U65 ( .A(n28), .B(test_so), .C(n85), .Y(n60) );
  NAND3X2M U66 ( .A(n28), .B(test_so), .C(n96), .Y(n62) );
  NAND3X2M U67 ( .A(n48), .B(test_so), .C(n96), .Y(n95) );
  NAND3X2M U68 ( .A(n29), .B(n28), .C(n93), .Y(n77) );
  NAND2X2M U69 ( .A(n29), .B(n133), .Y(n90) );
  INVX2M U70 ( .A(n67), .Y(n31) );
  NOR2X2M U71 ( .A(n58), .B(n95), .Y(ALU_fun[1]) );
  NOR2X2M U72 ( .A(n56), .B(n95), .Y(ALU_fun[3]) );
  NAND3X2M U73 ( .A(n95), .B(n63), .C(n64), .Y(gated_clk_enable) );
  OAI22X4M U74 ( .A0(n56), .A1(n72), .B0(n36), .B1(n97), .Y(addr[3]) );
  NOR3X2M U75 ( .A(current_state[2]), .B(current_state[3]), .C(n53), .Y(n98)
         );
  NOR2X2M U76 ( .A(n63), .B(FIFO_full), .Y(n99) );
  NOR2X2M U77 ( .A(n52), .B(current_state[1]), .Y(n96) );
  NAND3X2M U78 ( .A(n85), .B(n28), .C(current_state[3]), .Y(n63) );
  INVX2M U79 ( .A(current_state[3]), .Y(test_so) );
  BUFX2M U80 ( .A(UART_rx_valid), .Y(n29) );
  BUFX2M U81 ( .A(current_state[0]), .Y(n28) );
  INVX2M U82 ( .A(current_state[2]), .Y(n52) );
  INVX2M U83 ( .A(current_state[1]), .Y(n53) );
  OAI222X1M U84 ( .A0(n59), .A1(n72), .B0(n39), .B1(n97), .C0(n134), .C1(n62), 
        .Y(addr[0]) );
  OAI22X1M U85 ( .A0(n58), .A1(n72), .B0(n38), .B1(n97), .Y(addr[1]) );
  NAND3X2M U86 ( .A(n81), .B(n31), .C(n82), .Y(next_state[0]) );
  NOR3X2M U87 ( .A(n83), .B(n84), .C(n51), .Y(n82) );
  AOI33X2M U88 ( .A0(n78), .A1(n133), .A2(n91), .B0(n92), .B1(test_so), .B2(
        n28), .Y(n81) );
  NOR3X2M U89 ( .A(UART_rx_data[2]), .B(UART_rx_data[6]), .C(UART_rx_data[4]), 
        .Y(n91) );
  NOR3X2M U90 ( .A(current_state[2]), .B(current_state[3]), .C(
        current_state[1]), .Y(n93) );
  NOR2BX2M U91 ( .AN(UART_rx_data[5]), .B(n49), .Y(wr_reg[5]) );
  OAI21X2M U92 ( .A0(n47), .A1(n30), .B0(n108), .Y(FIFO_wr_data[0]) );
  AOI22X1M U93 ( .A0(rd_reg[0]), .A1(n33), .B0(n99), .B1(ALU_out_reg[8]), .Y(
        n108) );
  OAI21X2M U94 ( .A0(n46), .A1(n30), .B0(n107), .Y(FIFO_wr_data[1]) );
  AOI22X1M U95 ( .A0(rd_reg[1]), .A1(n33), .B0(n99), .B1(ALU_out_reg[9]), .Y(
        n107) );
  OAI21X2M U96 ( .A0(n45), .A1(n30), .B0(n106), .Y(FIFO_wr_data[2]) );
  AOI22X1M U97 ( .A0(rd_reg[2]), .A1(n33), .B0(n99), .B1(ALU_out_reg[10]), .Y(
        n106) );
  OAI21X2M U98 ( .A0(n44), .A1(n30), .B0(n105), .Y(FIFO_wr_data[3]) );
  AOI22X1M U99 ( .A0(rd_reg[3]), .A1(n33), .B0(n99), .B1(ALU_out_reg[11]), .Y(
        n105) );
  OAI21X2M U100 ( .A0(n43), .A1(n30), .B0(n104), .Y(FIFO_wr_data[4]) );
  AOI22X1M U101 ( .A0(rd_reg[4]), .A1(n33), .B0(n99), .B1(ALU_out_reg[12]), 
        .Y(n104) );
  OAI21X2M U102 ( .A0(n42), .A1(n30), .B0(n103), .Y(FIFO_wr_data[5]) );
  AOI22X1M U103 ( .A0(rd_reg[5]), .A1(n33), .B0(n99), .B1(ALU_out_reg[13]), 
        .Y(n103) );
  OAI21X2M U104 ( .A0(n41), .A1(n30), .B0(n102), .Y(FIFO_wr_data[6]) );
  AOI22X1M U105 ( .A0(rd_reg[6]), .A1(n33), .B0(n99), .B1(ALU_out_reg[14]), 
        .Y(n102) );
  OAI21X2M U106 ( .A0(n40), .A1(n30), .B0(n101), .Y(FIFO_wr_data[7]) );
  AOI22X1M U107 ( .A0(rd_reg[7]), .A1(n33), .B0(n99), .B1(ALU_out_reg[15]), 
        .Y(n101) );
  NOR2BX2M U108 ( .AN(rd_reg_valid), .B(FIFO_full), .Y(n69) );
  NAND2X2M U109 ( .A(UART_rx_data[2]), .B(n29), .Y(n57) );
  NAND2X2M U110 ( .A(UART_rx_data[1]), .B(n29), .Y(n58) );
  NAND2X2M U111 ( .A(UART_rx_data[3]), .B(n29), .Y(n56) );
  NAND2X2M U112 ( .A(UART_rx_data[0]), .B(n29), .Y(n59) );
  NAND4X2M U113 ( .A(n73), .B(n31), .C(n74), .D(n75), .Y(next_state[1]) );
  AOI32X1M U114 ( .A0(n80), .A1(test_so), .A2(current_state[1]), .B0(n51), 
        .B1(n134), .Y(n73) );
  AOI31X2M U115 ( .A0(n78), .A1(UART_rx_data[0]), .A2(n79), .B0(n34), .Y(n74)
         );
  AND2X2M U116 ( .A(n30), .B(n77), .Y(n75) );
  AND3X2M U117 ( .A(n96), .B(n48), .C(current_state[3]), .Y(n94) );
  AND2X2M U118 ( .A(ALU_out_valid), .B(n94), .Y(n84) );
  INVX2M U119 ( .A(FIFO_full), .Y(n32) );
  NAND4BX1M U120 ( .AN(read_enable), .B(n60), .C(n65), .D(n66), .Y(
        next_state[2]) );
  NAND4X2M U121 ( .A(UART_rx_data[0]), .B(UART_rx_data[2]), .C(n70), .D(n71), 
        .Y(n65) );
  NOR3BX2M U122 ( .AN(n64), .B(n67), .C(n68), .Y(n66) );
  NOR4X1M U123 ( .A(UART_rx_data[5]), .B(UART_rx_data[1]), .C(n130), .D(n131), 
        .Y(n71) );
  AND3X2M U124 ( .A(UART_rx_data[1]), .B(UART_rx_data[5]), .C(n70), .Y(n78) );
  AO2B2X2M U125 ( .B0(ALU_out[8]), .B1(n84), .A0(ALU_out_reg[8]), .A1N(n84), 
        .Y(n117) );
  AO2B2X2M U126 ( .B0(ALU_out[9]), .B1(n84), .A0(ALU_out_reg[9]), .A1N(n84), 
        .Y(n118) );
  AO2B2X2M U127 ( .B0(ALU_out[10]), .B1(n84), .A0(ALU_out_reg[10]), .A1N(n84), 
        .Y(n119) );
  AO2B2X2M U128 ( .B0(ALU_out[11]), .B1(n84), .A0(ALU_out_reg[11]), .A1N(n84), 
        .Y(n120) );
  AO2B2X2M U129 ( .B0(ALU_out[12]), .B1(n84), .A0(ALU_out_reg[12]), .A1N(n84), 
        .Y(n121) );
  AO2B2X2M U130 ( .B0(ALU_out[13]), .B1(n84), .A0(ALU_out_reg[13]), .A1N(n84), 
        .Y(n122) );
  AO2B2X2M U131 ( .B0(ALU_out[14]), .B1(n84), .A0(ALU_out_reg[14]), .A1N(n84), 
        .Y(n123) );
  AO2B2X2M U132 ( .B0(ALU_out[15]), .B1(n84), .A0(ALU_out_reg[15]), .A1N(n84), 
        .Y(n124) );
  AOI211X2M U133 ( .A0(n69), .A1(current_state[1]), .B0(n52), .C0(
        current_state[3]), .Y(n68) );
  OAI21X2M U134 ( .A0(n63), .A1(n32), .B0(n86), .Y(n67) );
  NAND4X2M U135 ( .A(n87), .B(UART_rx_data[2]), .C(n88), .D(n89), .Y(n86) );
  NOR3X2M U136 ( .A(n132), .B(n129), .C(n130), .Y(n88) );
  NOR4X1M U137 ( .A(n90), .B(UART_rx_data[1]), .C(UART_rx_data[5]), .D(
        UART_rx_data[4]), .Y(n89) );
  OAI22X1M U138 ( .A0(current_state[2]), .A1(n29), .B0(n28), .B1(n69), .Y(n80)
         );
  OAI22X1M U139 ( .A0(n133), .A1(n77), .B0(n50), .B1(n39), .Y(n125) );
  OAI22X1M U140 ( .A0(n132), .A1(n77), .B0(n50), .B1(n36), .Y(n128) );
  NOR3X2M U141 ( .A(n131), .B(UART_rx_data[6]), .C(UART_rx_data[2]), .Y(n79)
         );
  OAI21X2M U142 ( .A0(current_state[2]), .A1(current_state[1]), .B0(n29), .Y(
        n92) );
  OAI2BB2X1M U143 ( .B0(n84), .B1(n47), .A0N(ALU_out[0]), .A1N(n84), .Y(n109)
         );
  OAI2BB2X1M U144 ( .B0(n84), .B1(n46), .A0N(ALU_out[1]), .A1N(n84), .Y(n110)
         );
  OAI2BB2X1M U145 ( .B0(n84), .B1(n45), .A0N(ALU_out[2]), .A1N(n84), .Y(n111)
         );
  OAI2BB2X1M U146 ( .B0(n84), .B1(n44), .A0N(ALU_out[3]), .A1N(n84), .Y(n112)
         );
  OAI2BB2X1M U147 ( .B0(n84), .B1(n43), .A0N(ALU_out[4]), .A1N(n84), .Y(n113)
         );
  OAI2BB2X1M U148 ( .B0(n84), .B1(n42), .A0N(ALU_out[5]), .A1N(n84), .Y(n114)
         );
  OAI2BB2X1M U149 ( .B0(n84), .B1(n41), .A0N(ALU_out[6]), .A1N(n84), .Y(n115)
         );
  OAI2BB2X1M U150 ( .B0(n84), .B1(n40), .A0N(ALU_out[7]), .A1N(n84), .Y(n116)
         );
  OAI2BB2X1M U151 ( .B0(n50), .B1(n38), .A0N(UART_rx_data[1]), .A1N(n50), .Y(
        n126) );
  OAI2BB2X1M U152 ( .B0(n50), .B1(n37), .A0N(UART_rx_data[2]), .A1N(n50), .Y(
        n127) );
  INVX2M U153 ( .A(UART_rx_data[4]), .Y(n131) );
  INVX2M U154 ( .A(UART_rx_data[6]), .Y(n130) );
  INVX2M U155 ( .A(UART_rx_data[0]), .Y(n133) );
  INVX2M U156 ( .A(UART_rx_data[7]), .Y(n129) );
  INVX2M U157 ( .A(UART_rx_data[3]), .Y(n132) );
  INVX2M U3 ( .A(1'b0), .Y(div_clk_enable) );
endmodule


module mux2x1_2 ( in0, in1, sel, out );
  input in0, in1, sel;
  output out;


  MX2X2M U1 ( .A(in0), .B(in1), .S0(sel), .Y(out) );
endmodule


module mux2x1_5 ( in0, in1, sel, out );
  input in0, in1, sel;
  output out;


  MX2X6M U1 ( .A(in0), .B(in1), .S0(sel), .Y(out) );
endmodule


module mux2x1_4 ( in0, in1, sel, out );
  input in0, in1, sel;
  output out;


  MX2X2M U1 ( .A(in0), .B(in1), .S0(sel), .Y(out) );
endmodule


module mux2x1_3 ( in0, in1, sel, out );
  input in0, in1, sel;
  output out;


  MX2X2M U1 ( .A(in0), .B(in1), .S0(sel), .Y(out) );
endmodule


module mux2x1_0 ( in0, in1, sel, out );
  input in0, in1, sel;
  output out;


  MX2X2M U1 ( .A(in0), .B(in1), .S0(sel), .Y(out) );
endmodule


module mux2x1_1 ( in0, in1, sel, out );
  input in0, in1, sel;
  output out;


  MX2X2M U1 ( .A(in0), .B(in1), .S0(sel), .Y(out) );
endmodule


module mux2x1_6 ( in0, in1, sel, out );
  input in0, in1, sel;
  output out;


  MX2X2M U1 ( .A(in0), .B(in1), .S0(sel), .Y(out) );
endmodule


module SYS_TOP ( RST_N, UART_CLK, REF_CLK, UART_RX_IN, UART_TX_O, parity_error, 
        framing_error, scan_clk, scan_rst, test_mode, SI, SE, SO, test_si4, 
        test_so4 );
  input [2:0] SI;
  output [2:0] SO;
  input RST_N, UART_CLK, REF_CLK, UART_RX_IN, scan_clk, scan_rst, test_mode,
         SE, test_si4;
  output UART_TX_O, parity_error, framing_error, test_so4;
  wire   REF_clk_scan, reset_n_scan, sync_reset_RF, UART_clk_scan,
         sync_reset_UART, reset_REF_scan, UART_rx_valid_unsync,
         UART_rx_valid_sync, TX_clk_scan, reset_UART_scan, UART_tx_busy,
         FIFO_rd_inc, clk_tx, clk_rx, n_0_net_, ALU_clk, clk_gate_enable,
         ALU_enable, ALU_out_valid, FIFO_wr_inc, FIFO_full, FIFO_empty_UART_tx,
         write_enable, read_enable, read_reg_valid, RX_clk_scan, n1, n2, n3,
         n4, n5, n6, n7, n8, n9, n13, n16, n17, n18, n19, n20, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4;
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

  INVX2M U3 ( .A(n7), .Y(n6) );
  OR2X2M U4 ( .A(clk_gate_enable), .B(n2), .Y(n_0_net_) );
  BUFX2M U5 ( .A(addr[0]), .Y(n4) );
  BUFX2M U6 ( .A(addr[1]), .Y(n5) );
  INVX2M U7 ( .A(FIFO_empty_UART_tx), .Y(n1) );
  INVX4M U8 ( .A(n9), .Y(n8) );
  INVX2M U9 ( .A(reset_REF_scan), .Y(n9) );
  INVX2M U10 ( .A(reset_UART_scan), .Y(n7) );
  BUFX2M U11 ( .A(UART_RX_IN), .Y(n3) );
  BUFX2M U12 ( .A(test_mode), .Y(n2) );
  DLY1X1M U19 ( .A(n27), .Y(n25) );
  INVXLM U20 ( .A(n36), .Y(n26) );
  INVXLM U21 ( .A(n26), .Y(n27) );
  INVXLM U22 ( .A(n26), .Y(n28) );
  INVXLM U23 ( .A(n26), .Y(n29) );
  INVXLM U24 ( .A(n26), .Y(n30) );
  INVXLM U25 ( .A(n37), .Y(n31) );
  INVXLM U26 ( .A(n31), .Y(n32) );
  INVXLM U27 ( .A(n38), .Y(n33) );
  INVXLM U28 ( .A(n33), .Y(n34) );
  INVXLM U29 ( .A(SE), .Y(n35) );
  INVXLM U30 ( .A(n35), .Y(n36) );
  INVXLM U31 ( .A(n35), .Y(n37) );
  INVXLM U32 ( .A(n35), .Y(n38) );
  reset_sync_NUM_STAGES2_test_0 dut_RST_SYNC_REF ( .destination_domain_clk(
        REF_clk_scan), .async_reset_n(reset_n_scan), .sync_reset(sync_reset_RF), .test_si(n18), .test_se(n32) );
  reset_sync_NUM_STAGES2_test_1 dut_RST_SYNC_UART ( .destination_domain_clk(
        UART_clk_scan), .async_reset_n(reset_n_scan), .sync_reset(
        sync_reset_UART), .test_si(sync_reset_RF), .test_se(n34) );
  data_sync_NUM_STAGES2_BIT_WIDTH8_test_1 dut_DATA_SYNC ( .dest_clk(
        REF_clk_scan), .dest_reset_n(n8), .unsync_bus(UART_rx_data_unsync), 
        .bus_enable(UART_rx_valid_unsync), .sync_bus(UART_rx_data_sync), 
        .enable_pulse(UART_rx_valid_sync), .test_si(n19), .test_se(n34) );
  pulse_synchronizer_NUM_STAGES2_test_1 dut_PULSE_GEN ( .clk(TX_clk_scan), 
        .rst_n(n6), .level_sig(UART_tx_busy), .pulse_sig(FIFO_rd_inc), 
        .test_si(UART_rx_data_sync[7]), .test_so(n18), .test_se(n32) );
  clk_div_WIDTH8_test_1 dut_TX_CLOCK_DIVIDER ( .clk_ref(UART_clk_scan), 
        .rst_n(n6), .clk_en(1'b1), .div_ratio(div_ratio), .div_clk(clk_tx), 
        .test_si(n17), .test_so(n16), .test_se(n29) );
  clk_div_WIDTH8_test_0 dut_Clock_Divider_RX ( .clk_ref(UART_clk_scan), 
        .rst_n(n6), .clk_en(1'b1), .div_ratio({1'b0, 1'b0, 1'b0, 1'b0, 
        div_ratio_rx[3:0]}), .div_clk(clk_rx), .test_si(n20), .test_so(n19), 
        .test_se(n28) );
  clk_div_mux_WIDTH8 dut_CLOCK_DIVIDER_MUX ( .in(UART_config[7:2]), .out({
        SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, 
        SYNOPSYS_UNCONNECTED_4, div_ratio_rx[3:0]}) );
  clock_gating dut_CLK_GATE ( .clk(REF_clk_scan), .clk_enable(n_0_net_), 
        .gated_clock(ALU_clk) );
  ALU_DATA_WIDTH8_OUT_WIDTH16_test_1 dut_ALU ( .A(Operand_A), .B(Operand_B), 
        .enable(ALU_enable), .ALU_fun(ALU_FUN), .clk(ALU_clk), .reset_n(n8), 
        .ALU_out(ALU_OUT), .out_valid(ALU_out_valid), .test_si(SI[2]), 
        .test_se(n30) );
  FIFO_top_DATA_WIDTH8_NUM_STAGES2_DEPTH8_ADDR_WIDTH3_test_1 dut_Async_fifo ( 
        .w_clk(REF_clk_scan), .w_reset_n(n8), .w_inc(FIFO_wr_inc), .w_data(
        FIFO_wr_data), .r_clk(TX_clk_scan), .r_reset_n(n6), .r_inc(FIFO_rd_inc), .full(FIFO_full), .empty(FIFO_empty_UART_tx), .r_data(FIFO_rd_data), 
        .test_si2(SI[1]), .test_si1(ALU_out_valid), .test_so2(n20), .test_so1(
        SO[2]), .test_se(SE) );
  registerfile_WORD_SIZE8_DEPTH16_ADDR_SIZE4_test_1 dut_register_file ( .clk(
        REF_clk_scan), .rst_n(n8), .wr_en(write_enable), .rd_en(read_enable), 
        .address({addr[3:2], n5, n4}), .wr_data(wr_reg), .rd_data(Rd_Reg), 
        .rd_data_valid(read_reg_valid), .reg0(Operand_A), .reg1(Operand_B), 
        .reg2(UART_config), .reg3(div_ratio), .test_si2(test_si4), .test_si1(
        n13), .test_so1(test_so4), .test_se(SE) );
  UART_top_DATA_WIDTH8_FRAME_WIDTH11_PRESCALE_WIDTH6_test_1 dut_UART ( 
        .clk_tx(TX_clk_scan), .tx_p_data(FIFO_rd_data), .tx_data_valid(n1), 
        .reset(n6), .parity_type(UART_config[1]), .parity_enable(
        UART_config[0]), .clk_rx(RX_clk_scan), .rx_in(n3), .prescale(
        UART_config[7:2]), .tx_data_out(UART_TX_O), .tx_busy(UART_tx_busy), 
        .rx_p_data_out(UART_rx_data_unsync), .rx_data_valid(
        UART_rx_valid_unsync), .parity_error(parity_error), .framing_error(
        SO[0]), .test_si3(div_ratio[6]), .test_si2(SI[0]), .test_si1(n16), 
        .test_so2(n13), .test_so1(SO[1]), .test_se(SE) );
  system_controller_RF_DEPTH16_ADDR_WIDTH4_DATA_WIDTH8_ALU_OUT_WIDTH16_test_1 dut_SYSTEM_CTRL ( 
        .clk(REF_clk_scan), .reset_n(n8), .UART_rx_data(UART_rx_data_sync), 
        .UART_rx_valid(UART_rx_valid_sync), .ALU_out(ALU_OUT), .ALU_out_valid(
        ALU_out_valid), .ALU_enable(ALU_enable), .ALU_fun(ALU_FUN), 
        .FIFO_full(FIFO_full), .FIFO_wr_data(FIFO_wr_data), .FIFO_wr_inc(
        FIFO_wr_inc), .gated_clk_enable(clk_gate_enable), .rd_reg(Rd_Reg), 
        .rd_reg_valid(read_reg_valid), .wr_reg(wr_reg), .addr(addr), 
        .read_enable(read_enable), .write_enable(write_enable), .test_si(
        sync_reset_UART), .test_so(n17), .test_se(n25) );
  mux2x1_2 U1_mux2x1 ( .in0(UART_CLK), .in1(scan_clk), .sel(n2), .out(
        UART_clk_scan) );
  mux2x1_5 U2_mux2x1 ( .in0(REF_CLK), .in1(scan_clk), .sel(n2), .out(
        REF_clk_scan) );
  mux2x1_4 U4_mux2x1 ( .in0(clk_rx), .in1(scan_clk), .sel(n2), .out(
        RX_clk_scan) );
  mux2x1_3 U3_mux2x1 ( .in0(clk_tx), .in1(scan_clk), .sel(n2), .out(
        TX_clk_scan) );
  mux2x1_0 U5_mux2x1 ( .in0(RST_N), .in1(scan_rst), .sel(n2), .out(
        reset_n_scan) );
  mux2x1_1 U6_mux2x1 ( .in0(sync_reset_RF), .in1(scan_rst), .sel(n2), .out(
        reset_REF_scan) );
  mux2x1_6 U7_mux2x1 ( .in0(sync_reset_UART), .in1(scan_rst), .sel(n2), .out(
        reset_UART_scan) );
  BUFX2M U18 ( .A(SO[0]), .Y(framing_error) );
endmodule

