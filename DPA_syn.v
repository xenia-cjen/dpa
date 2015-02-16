
module p_dff_WORD20_NSEL5_0 ( clk, reset, en, sel, d, q );
  input [4:0] sel;
  input [19:0] d;
  output [19:0] q;
  input clk, reset, en;
  wire   n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42;

  DFFRX1 \q_reg[1]  ( .D(n45), .CK(clk), .RN(n9), .Q(q[1]) );
  DFFRX1 \q_reg[2]  ( .D(n46), .CK(clk), .RN(n12), .Q(q[2]) );
  DFFRX1 \q_reg[11]  ( .D(n55), .CK(clk), .RN(n8), .Q(q[11]) );
  DFFRX1 \q_reg[3]  ( .D(n47), .CK(clk), .RN(n7), .Q(q[3]) );
  DFFRX1 \q_reg[4]  ( .D(n48), .CK(clk), .RN(n2), .Q(q[4]) );
  DFFRX1 \q_reg[5]  ( .D(n49), .CK(clk), .RN(n10), .Q(q[5]) );
  DFFRX1 \q_reg[16]  ( .D(n60), .CK(clk), .RN(n8), .Q(q[16]) );
  DFFRX1 \q_reg[6]  ( .D(n50), .CK(clk), .RN(n2), .Q(q[6]) );
  DFFRX1 \q_reg[17]  ( .D(n61), .CK(clk), .RN(n9), .Q(q[17]) );
  DFFRX1 \q_reg[8]  ( .D(n52), .CK(clk), .RN(n10), .Q(q[8]) );
  DFFRX1 \q_reg[10]  ( .D(n54), .CK(clk), .RN(n2), .Q(q[10]) );
  DFFRX1 \q_reg[9]  ( .D(n53), .CK(clk), .RN(n7), .Q(q[9]) );
  DFFRX1 \q_reg[18]  ( .D(n62), .CK(clk), .RN(n9), .Q(q[18]) );
  DFFRX1 \q_reg[7]  ( .D(n51), .CK(clk), .RN(n2), .Q(q[7]) );
  DFFRX1 \q_reg[12]  ( .D(n56), .CK(clk), .RN(n8), .Q(q[12]) );
  DFFRX1 \q_reg[19]  ( .D(n63), .CK(clk), .RN(n10), .Q(q[19]) );
  DFFRX1 \q_reg[13]  ( .D(n57), .CK(clk), .RN(n9), .Q(q[13]) );
  DFFRX1 \q_reg[14]  ( .D(n58), .CK(clk), .RN(n7), .Q(q[14]) );
  DFFRX1 \q_reg[15]  ( .D(n59), .CK(clk), .RN(n8), .Q(q[15]) );
  DFFRX1 \q_reg[0]  ( .D(n44), .CK(clk), .RN(n10), .Q(q[0]) );
  NOR2X1 U3 ( .A(sel[1]), .B(sel[2]), .Y(n1) );
  CLKINVX1 U4 ( .A(n42), .Y(n2) );
  INVXL U5 ( .A(n32), .Y(n3) );
  INVXL U6 ( .A(n1), .Y(n4) );
  INVXL U7 ( .A(n1), .Y(n5) );
  INVX1 U8 ( .A(n12), .Y(n6) );
  CLKINVX1 U9 ( .A(n6), .Y(n7) );
  CLKINVX1 U10 ( .A(n6), .Y(n8) );
  CLKINVX1 U11 ( .A(n6), .Y(n9) );
  CLKINVX1 U12 ( .A(n6), .Y(n10) );
  CLKINVX1 U13 ( .A(n42), .Y(n12) );
  CLKBUFX3 U14 ( .A(reset), .Y(n42) );
  INVXL U15 ( .A(n24), .Y(n21) );
  NOR2XL U16 ( .A(n19), .B(n20), .Y(n18) );
  MX2XL U17 ( .A(d[14]), .B(q[14]), .S0(n20), .Y(n58) );
  MX2XL U18 ( .A(d[12]), .B(q[12]), .S0(n24), .Y(n56) );
  MX2XL U19 ( .A(q[4]), .B(d[4]), .S0(n36), .Y(n48) );
  MX2XL U20 ( .A(q[8]), .B(d[8]), .S0(n25), .Y(n52) );
  MX2XL U21 ( .A(d[6]), .B(q[6]), .S0(n35), .Y(n50) );
  NOR2XL U22 ( .A(n34), .B(n35), .Y(n33) );
  CLKMX2X2 U23 ( .A(d[19]), .B(q[19]), .S0(n13), .Y(n63) );
  OAI31XL U24 ( .A0(sel[2]), .A1(sel[3]), .A2(sel[0]), .B0(n14), .Y(n13) );
  CLKMX2X2 U25 ( .A(q[18]), .B(d[18]), .S0(n14), .Y(n62) );
  OA21XL U26 ( .A0(sel[3]), .A1(n5), .B0(n15), .Y(n14) );
  CLKMX2X2 U27 ( .A(d[17]), .B(q[17]), .S0(n16), .Y(n61) );
  OAI31XL U28 ( .A0(sel[0]), .A1(sel[3]), .A2(n4), .B0(n15), .Y(n16) );
  CLKMX2X2 U29 ( .A(q[16]), .B(d[16]), .S0(n15), .Y(n60) );
  NOR2BX1 U30 ( .AN(sel[4]), .B(n17), .Y(n15) );
  CLKMX2X2 U31 ( .A(q[15]), .B(d[15]), .S0(n18), .Y(n59) );
  OAI21XL U32 ( .A0(sel[4]), .A1(sel[1]), .B0(n21), .Y(n20) );
  CLKMX2X2 U33 ( .A(q[13]), .B(d[13]), .S0(n22), .Y(n57) );
  OA21XL U34 ( .A0(n23), .A1(sel[1]), .B0(n21), .Y(n22) );
  OAI21XL U35 ( .A0(sel[4]), .A1(sel[2]), .B0(n25), .Y(n24) );
  CLKMX2X2 U36 ( .A(q[11]), .B(d[11]), .S0(n26), .Y(n55) );
  AOI21X1 U37 ( .A0(n27), .A1(n28), .B0(n17), .Y(n26) );
  NAND3X1 U38 ( .A(sel[1]), .B(sel[0]), .C(sel[3]), .Y(n28) );
  OAI21XL U39 ( .A0(sel[4]), .A1(sel[2]), .B0(n29), .Y(n27) );
  CLKMX2X2 U40 ( .A(q[10]), .B(d[10]), .S0(n30), .Y(n54) );
  OA21XL U41 ( .A0(sel[4]), .A1(n4), .B0(n25), .Y(n30) );
  CLKMX2X2 U42 ( .A(q[9]), .B(d[9]), .S0(n31), .Y(n53) );
  OA21XL U43 ( .A0(n5), .A1(n23), .B0(n25), .Y(n31) );
  CLKINVX1 U44 ( .A(n19), .Y(n23) );
  NOR2X1 U45 ( .A(sel[0]), .B(sel[4]), .Y(n19) );
  NOR2X1 U46 ( .A(n17), .B(n32), .Y(n25) );
  CLKMX2X2 U47 ( .A(q[7]), .B(d[7]), .S0(n33), .Y(n51) );
  OAI21XL U48 ( .A0(sel[1]), .A1(n29), .B0(n36), .Y(n35) );
  CLKMX2X2 U49 ( .A(q[5]), .B(d[5]), .S0(n37), .Y(n49) );
  OA21XL U50 ( .A0(sel[1]), .A1(n38), .B0(n36), .Y(n37) );
  OA21XL U51 ( .A0(sel[2]), .A1(n29), .B0(en), .Y(n36) );
  CLKMX2X2 U52 ( .A(q[3]), .B(d[3]), .S0(n39), .Y(n47) );
  OA21XL U53 ( .A0(sel[2]), .A1(n38), .B0(n40), .Y(n39) );
  CLKMX2X2 U54 ( .A(q[2]), .B(d[2]), .S0(n40), .Y(n46) );
  OA21XL U55 ( .A0(n4), .A1(n3), .B0(en), .Y(n40) );
  CLKMX2X2 U56 ( .A(q[1]), .B(d[1]), .S0(n41), .Y(n45) );
  OA21XL U57 ( .A0(n5), .A1(n38), .B0(en), .Y(n41) );
  CLKINVX1 U58 ( .A(n34), .Y(n38) );
  NOR2X1 U59 ( .A(n3), .B(sel[0]), .Y(n34) );
  CLKINVX1 U60 ( .A(n32), .Y(n29) );
  NOR2X1 U61 ( .A(sel[3]), .B(sel[4]), .Y(n32) );
  CLKMX2X2 U62 ( .A(d[0]), .B(q[0]), .S0(n17), .Y(n44) );
  CLKINVX1 U63 ( .A(en), .Y(n17) );
endmodule


module p_dff_WORD20_NSEL5_4 ( clk, reset, en, sel, d, q );
  input [4:0] sel;
  input [19:0] d;
  output [19:0] q;
  input clk, reset, en;
  wire   n1, n2, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84;

  DFFRX1 \q_reg[0]  ( .D(n84), .CK(clk), .RN(n12), .Q(n15), .QN(n1) );
  DFFRX1 \q_reg[12]  ( .D(n72), .CK(clk), .RN(n16), .Q(q[12]) );
  DFFRX1 \q_reg[19]  ( .D(n65), .CK(clk), .RN(n11), .Q(q[19]) );
  DFFRX1 \q_reg[13]  ( .D(n71), .CK(clk), .RN(n12), .Q(q[13]) );
  DFFRX1 \q_reg[14]  ( .D(n70), .CK(clk), .RN(n5), .Q(q[14]) );
  DFFRX1 \q_reg[15]  ( .D(n69), .CK(clk), .RN(n13), .Q(q[15]) );
  DFFRX1 \q_reg[1]  ( .D(n83), .CK(clk), .RN(n14), .Q(q[1]) );
  DFFRX1 \q_reg[2]  ( .D(n82), .CK(clk), .RN(n12), .Q(q[2]) );
  DFFRX1 \q_reg[5]  ( .D(n79), .CK(clk), .RN(n16), .Q(q[5]) );
  DFFRX1 \q_reg[11]  ( .D(n73), .CK(clk), .RN(n13), .Q(q[11]) );
  DFFRX1 \q_reg[16]  ( .D(n68), .CK(clk), .RN(n14), .Q(q[16]) );
  DFFRX1 \q_reg[3]  ( .D(n81), .CK(clk), .RN(n16), .Q(q[3]) );
  DFFRX1 \q_reg[7]  ( .D(n77), .CK(clk), .RN(n11), .Q(q[7]) );
  DFFRX1 \q_reg[10]  ( .D(n74), .CK(clk), .RN(n13), .Q(q[10]) );
  DFFRX1 \q_reg[9]  ( .D(n75), .CK(clk), .RN(n5), .Q(q[9]) );
  DFFRX1 \q_reg[18]  ( .D(n66), .CK(clk), .RN(n14), .Q(q[18]) );
  DFFRX1 \q_reg[17]  ( .D(n67), .CK(clk), .RN(n13), .Q(q[17]) );
  DFFRX1 \q_reg[4]  ( .D(n80), .CK(clk), .RN(n11), .Q(q[4]) );
  DFFRX1 \q_reg[8]  ( .D(n76), .CK(clk), .RN(n12), .Q(q[8]) );
  DFFRX1 \q_reg[6]  ( .D(n78), .CK(clk), .RN(n14), .Q(q[6]) );
  CLKINVX1 U3 ( .A(reset), .Y(n16) );
  NOR2X1 U4 ( .A(sel[1]), .B(sel[2]), .Y(n2) );
  INVX1 U5 ( .A(n1), .Y(q[0]) );
  INVXL U6 ( .A(n11), .Y(n4) );
  INVXL U7 ( .A(n4), .Y(n5) );
  INVXL U8 ( .A(n35), .Y(n6) );
  INVXL U9 ( .A(n35), .Y(n7) );
  INVXL U10 ( .A(n2), .Y(n8) );
  INVXL U11 ( .A(n2), .Y(n9) );
  CLKINVX1 U12 ( .A(n16), .Y(n10) );
  CLKINVX1 U13 ( .A(n10), .Y(n11) );
  CLKINVX1 U14 ( .A(n10), .Y(n12) );
  CLKINVX1 U15 ( .A(n10), .Y(n13) );
  CLKINVX1 U16 ( .A(n10), .Y(n14) );
  OA21X2 U17 ( .A0(sel[2]), .A1(n7), .B0(en), .Y(n39) );
  INVX1 U18 ( .A(en), .Y(n21) );
  INVXL U19 ( .A(n28), .Y(n25) );
  NOR2XL U20 ( .A(n23), .B(n24), .Y(n22) );
  MX2XL U21 ( .A(d[14]), .B(q[14]), .S0(n24), .Y(n70) );
  MX2XL U22 ( .A(d[12]), .B(q[12]), .S0(n28), .Y(n72) );
  MX2XL U23 ( .A(q[8]), .B(d[8]), .S0(n29), .Y(n76) );
  MX2XL U24 ( .A(d[6]), .B(q[6]), .S0(n38), .Y(n78) );
  AOI21XL U25 ( .A0(n31), .A1(n32), .B0(n21), .Y(n30) );
  NOR2XL U26 ( .A(n37), .B(n38), .Y(n36) );
  MX2XL U27 ( .A(d[0]), .B(n15), .S0(n21), .Y(n84) );
  MX2XL U28 ( .A(q[4]), .B(d[4]), .S0(n39), .Y(n80) );
  CLKMX2X2 U29 ( .A(d[19]), .B(q[19]), .S0(n17), .Y(n65) );
  OAI31XL U30 ( .A0(sel[2]), .A1(sel[3]), .A2(sel[0]), .B0(n18), .Y(n17) );
  CLKMX2X2 U31 ( .A(q[18]), .B(d[18]), .S0(n18), .Y(n66) );
  OA21XL U32 ( .A0(sel[3]), .A1(n9), .B0(n19), .Y(n18) );
  CLKMX2X2 U33 ( .A(d[17]), .B(q[17]), .S0(n20), .Y(n67) );
  OAI31XL U34 ( .A0(sel[0]), .A1(sel[3]), .A2(n8), .B0(n19), .Y(n20) );
  CLKMX2X2 U35 ( .A(q[16]), .B(d[16]), .S0(n19), .Y(n68) );
  NOR2BX1 U36 ( .AN(sel[4]), .B(n21), .Y(n19) );
  CLKMX2X2 U37 ( .A(q[15]), .B(d[15]), .S0(n22), .Y(n69) );
  OAI21XL U38 ( .A0(sel[4]), .A1(sel[1]), .B0(n25), .Y(n24) );
  CLKMX2X2 U39 ( .A(q[13]), .B(d[13]), .S0(n26), .Y(n71) );
  OA21XL U40 ( .A0(n27), .A1(sel[1]), .B0(n25), .Y(n26) );
  OAI21XL U41 ( .A0(sel[4]), .A1(sel[2]), .B0(n29), .Y(n28) );
  CLKMX2X2 U42 ( .A(q[11]), .B(d[11]), .S0(n30), .Y(n73) );
  NAND3X1 U43 ( .A(sel[1]), .B(sel[0]), .C(sel[3]), .Y(n32) );
  OAI21XL U44 ( .A0(sel[4]), .A1(sel[2]), .B0(n7), .Y(n31) );
  CLKMX2X2 U45 ( .A(q[10]), .B(d[10]), .S0(n33), .Y(n74) );
  OA21XL U46 ( .A0(sel[4]), .A1(n8), .B0(n29), .Y(n33) );
  CLKMX2X2 U47 ( .A(q[9]), .B(d[9]), .S0(n34), .Y(n75) );
  OA21XL U48 ( .A0(n9), .A1(n27), .B0(n29), .Y(n34) );
  CLKINVX1 U49 ( .A(n23), .Y(n27) );
  NOR2X1 U50 ( .A(sel[0]), .B(sel[4]), .Y(n23) );
  NOR2X1 U51 ( .A(n21), .B(n35), .Y(n29) );
  CLKMX2X2 U52 ( .A(q[7]), .B(d[7]), .S0(n36), .Y(n77) );
  OAI21XL U53 ( .A0(sel[1]), .A1(n6), .B0(n39), .Y(n38) );
  CLKMX2X2 U54 ( .A(q[5]), .B(d[5]), .S0(n40), .Y(n79) );
  OA21XL U55 ( .A0(sel[1]), .A1(n41), .B0(n39), .Y(n40) );
  CLKMX2X2 U56 ( .A(q[3]), .B(d[3]), .S0(n42), .Y(n81) );
  OA21XL U57 ( .A0(sel[2]), .A1(n41), .B0(n43), .Y(n42) );
  CLKMX2X2 U58 ( .A(q[2]), .B(d[2]), .S0(n43), .Y(n82) );
  OA21XL U59 ( .A0(n8), .A1(n6), .B0(en), .Y(n43) );
  CLKMX2X2 U60 ( .A(q[1]), .B(d[1]), .S0(n64), .Y(n83) );
  OA21XL U61 ( .A0(n9), .A1(n41), .B0(en), .Y(n64) );
  CLKINVX1 U62 ( .A(n37), .Y(n41) );
  NOR2X1 U63 ( .A(n6), .B(sel[0]), .Y(n37) );
  NOR2X1 U64 ( .A(sel[3]), .B(sel[4]), .Y(n35) );
endmodule


module p_dff_WORD20_NSEL5_3 ( clk, reset, en, sel, d, q );
  input [4:0] sel;
  input [19:0] d;
  output [19:0] q;
  input clk, reset, en;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79;

  DFFRX1 \q_reg[7]  ( .D(n72), .CK(clk), .RN(n12), .Q(q[7]) );
  DFFRX1 \q_reg[12]  ( .D(n67), .CK(clk), .RN(n8), .Q(q[12]) );
  DFFRX1 \q_reg[19]  ( .D(n42), .CK(clk), .RN(n9), .Q(q[19]) );
  DFFRX1 \q_reg[13]  ( .D(n66), .CK(clk), .RN(n2), .Q(q[13]) );
  DFFRX1 \q_reg[14]  ( .D(n65), .CK(clk), .RN(n10), .Q(q[14]) );
  DFFRX1 \q_reg[15]  ( .D(n64), .CK(clk), .RN(n9), .Q(q[15]) );
  DFFRX1 \q_reg[18]  ( .D(n43), .CK(clk), .RN(n11), .Q(q[18]) );
  DFFRX1 \q_reg[0]  ( .D(n79), .CK(clk), .RN(n9), .Q(q[0]) );
  DFFRX1 \q_reg[16]  ( .D(n63), .CK(clk), .RN(n12), .Q(q[16]) );
  DFFRX1 \q_reg[17]  ( .D(n62), .CK(clk), .RN(n10), .Q(q[17]) );
  DFFRX1 \q_reg[1]  ( .D(n78), .CK(clk), .RN(n11), .Q(q[1]) );
  DFFRX1 \q_reg[2]  ( .D(n77), .CK(clk), .RN(n12), .Q(q[2]) );
  DFFRX1 \q_reg[11]  ( .D(n68), .CK(clk), .RN(n8), .Q(q[11]) );
  DFFRX1 \q_reg[3]  ( .D(n76), .CK(clk), .RN(n10), .Q(q[3]) );
  DFFRX1 \q_reg[5]  ( .D(n74), .CK(clk), .RN(n2), .Q(q[5]) );
  DFFRX1 \q_reg[10]  ( .D(n69), .CK(clk), .RN(n11), .Q(q[10]) );
  DFFRX1 \q_reg[9]  ( .D(n70), .CK(clk), .RN(n10), .Q(q[9]) );
  DFFRX1 \q_reg[4]  ( .D(n75), .CK(clk), .RN(n8), .Q(q[4]) );
  DFFRX1 \q_reg[8]  ( .D(n71), .CK(clk), .RN(n9), .Q(q[8]) );
  DFFRX1 \q_reg[6]  ( .D(n73), .CK(clk), .RN(n11), .Q(q[6]) );
  CLKINVX1 U3 ( .A(n41), .Y(n12) );
  NOR2X1 U4 ( .A(sel[1]), .B(sel[2]), .Y(n1) );
  INVXL U5 ( .A(n41), .Y(n2) );
  INVXL U6 ( .A(n31), .Y(n3) );
  INVXL U7 ( .A(n31), .Y(n4) );
  OA21X2 U8 ( .A0(sel[2]), .A1(n4), .B0(en), .Y(n35) );
  INVXL U9 ( .A(n1), .Y(n5) );
  INVXL U10 ( .A(n1), .Y(n6) );
  CLKINVX1 U11 ( .A(n12), .Y(n7) );
  CLKINVX1 U12 ( .A(n7), .Y(n8) );
  CLKINVX1 U13 ( .A(n7), .Y(n9) );
  CLKINVX1 U14 ( .A(n7), .Y(n10) );
  CLKINVX1 U15 ( .A(n7), .Y(n11) );
  CLKBUFX3 U16 ( .A(reset), .Y(n41) );
  INVXL U17 ( .A(n24), .Y(n21) );
  MX2XL U18 ( .A(d[14]), .B(q[14]), .S0(n20), .Y(n65) );
  NOR2XL U19 ( .A(n19), .B(n20), .Y(n18) );
  MX2XL U20 ( .A(q[8]), .B(d[8]), .S0(n25), .Y(n71) );
  MX2XL U21 ( .A(d[6]), .B(q[6]), .S0(n34), .Y(n73) );
  MX2XL U22 ( .A(d[12]), .B(q[12]), .S0(n24), .Y(n67) );
  NOR2XL U23 ( .A(n33), .B(n34), .Y(n32) );
  MX2XL U24 ( .A(q[4]), .B(d[4]), .S0(n35), .Y(n75) );
  CLKMX2X2 U25 ( .A(d[19]), .B(q[19]), .S0(n13), .Y(n42) );
  OAI31XL U26 ( .A0(sel[2]), .A1(sel[3]), .A2(sel[0]), .B0(n14), .Y(n13) );
  CLKMX2X2 U27 ( .A(q[18]), .B(d[18]), .S0(n14), .Y(n43) );
  OA21XL U28 ( .A0(sel[3]), .A1(n6), .B0(n15), .Y(n14) );
  CLKMX2X2 U29 ( .A(d[17]), .B(q[17]), .S0(n16), .Y(n62) );
  OAI31XL U30 ( .A0(sel[0]), .A1(sel[3]), .A2(n5), .B0(n15), .Y(n16) );
  CLKMX2X2 U31 ( .A(q[16]), .B(d[16]), .S0(n15), .Y(n63) );
  NOR2BX1 U32 ( .AN(sel[4]), .B(n17), .Y(n15) );
  CLKMX2X2 U33 ( .A(q[15]), .B(d[15]), .S0(n18), .Y(n64) );
  OAI21XL U34 ( .A0(sel[4]), .A1(sel[1]), .B0(n21), .Y(n20) );
  CLKMX2X2 U35 ( .A(q[13]), .B(d[13]), .S0(n22), .Y(n66) );
  OA21XL U36 ( .A0(n23), .A1(sel[1]), .B0(n21), .Y(n22) );
  OAI21XL U37 ( .A0(sel[4]), .A1(sel[2]), .B0(n25), .Y(n24) );
  CLKMX2X2 U38 ( .A(q[11]), .B(d[11]), .S0(n26), .Y(n68) );
  AOI21X1 U39 ( .A0(n27), .A1(n28), .B0(n17), .Y(n26) );
  NAND3X1 U40 ( .A(sel[1]), .B(sel[0]), .C(sel[3]), .Y(n28) );
  OAI21XL U41 ( .A0(sel[4]), .A1(sel[2]), .B0(n4), .Y(n27) );
  CLKMX2X2 U42 ( .A(q[10]), .B(d[10]), .S0(n29), .Y(n69) );
  OA21XL U43 ( .A0(sel[4]), .A1(n5), .B0(n25), .Y(n29) );
  CLKMX2X2 U44 ( .A(q[9]), .B(d[9]), .S0(n30), .Y(n70) );
  OA21XL U45 ( .A0(n6), .A1(n23), .B0(n25), .Y(n30) );
  CLKINVX1 U46 ( .A(n19), .Y(n23) );
  NOR2X1 U47 ( .A(sel[0]), .B(sel[4]), .Y(n19) );
  NOR2X1 U48 ( .A(n17), .B(n31), .Y(n25) );
  CLKMX2X2 U49 ( .A(q[7]), .B(d[7]), .S0(n32), .Y(n72) );
  OAI21XL U50 ( .A0(sel[1]), .A1(n3), .B0(n35), .Y(n34) );
  CLKMX2X2 U51 ( .A(q[5]), .B(d[5]), .S0(n36), .Y(n74) );
  OA21XL U52 ( .A0(sel[1]), .A1(n37), .B0(n35), .Y(n36) );
  CLKMX2X2 U53 ( .A(q[3]), .B(d[3]), .S0(n38), .Y(n76) );
  OA21XL U54 ( .A0(sel[2]), .A1(n37), .B0(n39), .Y(n38) );
  CLKMX2X2 U55 ( .A(q[2]), .B(d[2]), .S0(n39), .Y(n77) );
  OA21XL U56 ( .A0(n5), .A1(n3), .B0(en), .Y(n39) );
  CLKMX2X2 U57 ( .A(q[1]), .B(d[1]), .S0(n40), .Y(n78) );
  OA21XL U58 ( .A0(n6), .A1(n37), .B0(en), .Y(n40) );
  CLKINVX1 U59 ( .A(n33), .Y(n37) );
  NOR2X1 U60 ( .A(n3), .B(sel[0]), .Y(n33) );
  NOR2X1 U61 ( .A(sel[3]), .B(sel[4]), .Y(n31) );
  CLKMX2X2 U62 ( .A(d[0]), .B(q[0]), .S0(n17), .Y(n79) );
  CLKINVX1 U63 ( .A(en), .Y(n17) );
endmodule


module CONT_DW01_add_1 ( A, B, CI, SUM, CO );
  input [19:0] A;
  input [19:0] B;
  output [19:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [19:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_19 ( .A(A[19]), .B(B[19]), .C(carry[19]), .Y(SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  AND2X2 U1 ( .A(A[0]), .B(B[0]), .Y(n1) );
  XOR2XL U2 ( .A(A[0]), .B(B[0]), .Y(SUM[0]) );
endmodule


module CONT_DW01_add_2 ( A, B, CI, SUM, CO );
  input [19:0] A;
  input [19:0] B;
  output [19:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [19:1] carry;

  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_19 ( .A(A[19]), .B(B[19]), .C(carry[19]), .Y(SUM[19]) );
  AND2X2 U1 ( .A(A[0]), .B(B[0]), .Y(n1) );
  XOR2X1 U2 ( .A(A[0]), .B(B[0]), .Y(SUM[0]) );
endmodule


module CONT_DW01_inc_0 ( A, SUM );
  input [19:0] A;
  output [19:0] SUM;

  wire   [19:2] carry;

  ADDHXL U1_1_18 ( .A(A[18]), .B(carry[18]), .CO(carry[19]), .S(SUM[18]) );
  ADDHXL U1_1_17 ( .A(A[17]), .B(carry[17]), .CO(carry[18]), .S(SUM[17]) );
  ADDHXL U1_1_14 ( .A(A[14]), .B(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  ADDHXL U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ADDHXL U1_1_16 ( .A(A[16]), .B(carry[16]), .CO(carry[17]), .S(SUM[16]) );
  ADDHXL U1_1_15 ( .A(A[15]), .B(carry[15]), .CO(carry[16]), .S(SUM[15]) );
  ADDHXL U1_1_13 ( .A(A[13]), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADDHXL U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHXL U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  XOR2X1 U1 ( .A(carry[19]), .B(A[19]), .Y(SUM[19]) );
endmodule


module CONT_DW01_inc_1 ( A, SUM );
  input [20:0] A;
  output [20:0] SUM;

  wire   [20:2] carry;

  ADDHXL U1_1_17 ( .A(A[17]), .B(carry[17]), .CO(carry[18]), .S(SUM[17]) );
  ADDHXL U1_1_14 ( .A(A[14]), .B(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  ADDHXL U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_18 ( .A(A[18]), .B(carry[18]), .CO(carry[19]), .S(SUM[18]) );
  ADDHXL U1_1_16 ( .A(A[16]), .B(carry[16]), .CO(carry[17]), .S(SUM[16]) );
  ADDHXL U1_1_15 ( .A(A[15]), .B(carry[15]), .CO(carry[16]), .S(SUM[15]) );
  ADDHXL U1_1_13 ( .A(A[13]), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  ADDHXL U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADDHXL U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHXL U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  XOR2X1 U1_1_19 ( .A(A[19]), .B(carry[19]), .Y(SUM[19]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module CONT_DW01_inc_2 ( A, SUM );
  input [20:0] A;
  output [20:0] SUM;

  wire   [20:2] carry;

  ADDHXL U1_1_14 ( .A(A[14]), .B(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  ADDHXL U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_15 ( .A(A[15]), .B(carry[15]), .CO(carry[16]), .S(SUM[15]) );
  ADDHXL U1_1_13 ( .A(A[13]), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  ADDHXL U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADDHXL U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHXL U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHXL U1_1_17 ( .A(A[17]), .B(carry[17]), .CO(carry[18]), .S(SUM[17]) );
  ADDHXL U1_1_18 ( .A(A[18]), .B(carry[18]), .CO(carry[19]), .S(SUM[18]) );
  ADDHXL U1_1_16 ( .A(A[16]), .B(carry[16]), .CO(carry[17]), .S(SUM[16]) );
  XOR2X1 U1_1_19 ( .A(A[19]), .B(carry[19]), .Y(SUM[19]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module CONT_DW_div_uns_0 ( a, b, quotient, remainder, divide_by_0 );
  input [20:0] a;
  input [2:0] b;
  output [20:0] quotient;
  output [2:0] remainder;
  output divide_by_0;
  wire   n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, \u_div/SumTmp[0][1] , \u_div/SumTmp[0][2] ,
         \u_div/SumTmp[1][1] , \u_div/SumTmp[1][2] , \u_div/SumTmp[2][1] ,
         \u_div/SumTmp[2][2] , \u_div/SumTmp[3][1] , \u_div/SumTmp[3][2] ,
         \u_div/SumTmp[4][1] , \u_div/SumTmp[4][2] , \u_div/SumTmp[5][1] ,
         \u_div/SumTmp[5][2] , \u_div/SumTmp[6][1] , \u_div/SumTmp[6][2] ,
         \u_div/SumTmp[7][1] , \u_div/SumTmp[7][2] , \u_div/SumTmp[8][1] ,
         \u_div/SumTmp[8][2] , \u_div/SumTmp[9][1] , \u_div/SumTmp[9][2] ,
         \u_div/SumTmp[10][1] , \u_div/SumTmp[10][2] , \u_div/SumTmp[11][1] ,
         \u_div/SumTmp[11][2] , \u_div/SumTmp[12][1] , \u_div/SumTmp[12][2] ,
         \u_div/SumTmp[13][1] , \u_div/SumTmp[13][2] , \u_div/SumTmp[14][1] ,
         \u_div/SumTmp[14][2] , \u_div/SumTmp[15][1] , \u_div/SumTmp[15][2] ,
         \u_div/SumTmp[16][1] , \u_div/SumTmp[16][2] , \u_div/SumTmp[17][1] ,
         \u_div/SumTmp[17][2] , \u_div/SumTmp[18][1] , \u_div/SumTmp[18][2] ,
         \u_div/CryTmp[0][1] , \u_div/CryTmp[1][1] , \u_div/CryTmp[2][1] ,
         \u_div/CryTmp[3][1] , \u_div/CryTmp[4][1] , \u_div/CryTmp[5][1] ,
         \u_div/CryTmp[6][1] , \u_div/CryTmp[7][1] , \u_div/CryTmp[8][1] ,
         \u_div/CryTmp[9][1] , \u_div/CryTmp[10][1] , \u_div/CryTmp[11][1] ,
         \u_div/CryTmp[12][1] , \u_div/CryTmp[13][1] , \u_div/CryTmp[14][1] ,
         \u_div/CryTmp[15][1] , \u_div/CryTmp[16][1] , \u_div/CryTmp[17][1] ,
         \u_div/CryTmp[18][1] , \u_div/CryTmp[19][1] , \u_div/PartRem[1][1] ,
         \u_div/PartRem[1][2] , \u_div/PartRem[2][1] , \u_div/PartRem[2][2] ,
         \u_div/PartRem[3][1] , \u_div/PartRem[3][2] , \u_div/PartRem[4][1] ,
         \u_div/PartRem[4][2] , \u_div/PartRem[5][1] , \u_div/PartRem[5][2] ,
         \u_div/PartRem[6][1] , \u_div/PartRem[6][2] , \u_div/PartRem[7][1] ,
         \u_div/PartRem[7][2] , \u_div/PartRem[8][1] , \u_div/PartRem[8][2] ,
         \u_div/PartRem[9][1] , \u_div/PartRem[9][2] , \u_div/PartRem[10][1] ,
         \u_div/PartRem[10][2] , \u_div/PartRem[11][1] ,
         \u_div/PartRem[11][2] , \u_div/PartRem[12][1] ,
         \u_div/PartRem[12][2] , \u_div/PartRem[13][1] ,
         \u_div/PartRem[13][2] , \u_div/PartRem[14][1] ,
         \u_div/PartRem[14][2] , \u_div/PartRem[15][1] ,
         \u_div/PartRem[15][2] , \u_div/PartRem[16][1] ,
         \u_div/PartRem[16][2] , \u_div/PartRem[17][1] ,
         \u_div/PartRem[17][2] , \u_div/PartRem[18][1] ,
         \u_div/PartRem[18][2] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56;
  assign \u_div/CryTmp[0][1]  = a[0];
  assign \u_div/CryTmp[1][1]  = a[1];
  assign \u_div/CryTmp[2][1]  = a[2];
  assign \u_div/CryTmp[3][1]  = a[3];
  assign \u_div/CryTmp[4][1]  = a[4];
  assign \u_div/CryTmp[5][1]  = a[5];
  assign \u_div/CryTmp[6][1]  = a[6];
  assign \u_div/CryTmp[7][1]  = a[7];
  assign \u_div/CryTmp[8][1]  = a[8];
  assign \u_div/CryTmp[9][1]  = a[9];
  assign \u_div/CryTmp[10][1]  = a[10];
  assign \u_div/CryTmp[11][1]  = a[11];
  assign \u_div/CryTmp[12][1]  = a[12];
  assign \u_div/CryTmp[13][1]  = a[13];
  assign \u_div/CryTmp[14][1]  = a[14];
  assign \u_div/CryTmp[15][1]  = a[15];
  assign \u_div/CryTmp[16][1]  = a[16];
  assign \u_div/CryTmp[17][1]  = a[17];
  assign \u_div/CryTmp[18][1]  = a[18];
  assign \u_div/CryTmp[19][1]  = a[19];

  CLKMX2X2 \u_div/u_mx_PartRem_0_0_1  ( .A(\u_div/PartRem[1][1] ), .B(
        \u_div/SumTmp[0][1] ), .S0(n75), .Y(remainder[1]) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_1_1  ( .A(\u_div/PartRem[2][1] ), .B(
        \u_div/SumTmp[1][1] ), .S0(n74), .Y(\u_div/PartRem[1][2] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_1_0  ( .A(\u_div/CryTmp[1][1] ), .B(n36), 
        .S0(n74), .Y(\u_div/PartRem[1][1] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_2_1  ( .A(\u_div/PartRem[3][1] ), .B(
        \u_div/SumTmp[2][1] ), .S0(n73), .Y(\u_div/PartRem[2][2] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_3_1  ( .A(\u_div/PartRem[4][1] ), .B(
        \u_div/SumTmp[3][1] ), .S0(n72), .Y(\u_div/PartRem[3][2] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_4_1  ( .A(\u_div/PartRem[5][1] ), .B(
        \u_div/SumTmp[4][1] ), .S0(n71), .Y(\u_div/PartRem[4][2] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_5_1  ( .A(\u_div/PartRem[6][1] ), .B(
        \u_div/SumTmp[5][1] ), .S0(n70), .Y(\u_div/PartRem[5][2] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_6_1  ( .A(\u_div/PartRem[7][1] ), .B(
        \u_div/SumTmp[6][1] ), .S0(n69), .Y(\u_div/PartRem[6][2] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_7_1  ( .A(\u_div/PartRem[8][1] ), .B(
        \u_div/SumTmp[7][1] ), .S0(n68), .Y(\u_div/PartRem[7][2] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_8_1  ( .A(\u_div/PartRem[9][1] ), .B(
        \u_div/SumTmp[8][1] ), .S0(n67), .Y(\u_div/PartRem[8][2] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_9_1  ( .A(\u_div/PartRem[10][1] ), .B(
        \u_div/SumTmp[9][1] ), .S0(n66), .Y(\u_div/PartRem[9][2] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_10_1  ( .A(\u_div/PartRem[11][1] ), .B(
        \u_div/SumTmp[10][1] ), .S0(n65), .Y(\u_div/PartRem[10][2] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_11_1  ( .A(\u_div/PartRem[12][1] ), .B(
        \u_div/SumTmp[11][1] ), .S0(n64), .Y(\u_div/PartRem[11][2] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_12_1  ( .A(\u_div/PartRem[13][1] ), .B(
        \u_div/SumTmp[12][1] ), .S0(n63), .Y(\u_div/PartRem[12][2] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_13_1  ( .A(\u_div/PartRem[14][1] ), .B(
        \u_div/SumTmp[13][1] ), .S0(n62), .Y(\u_div/PartRem[13][2] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_14_1  ( .A(\u_div/PartRem[15][1] ), .B(
        \u_div/SumTmp[14][1] ), .S0(n61), .Y(\u_div/PartRem[14][2] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_15_1  ( .A(\u_div/PartRem[16][1] ), .B(
        \u_div/SumTmp[15][1] ), .S0(n60), .Y(\u_div/PartRem[15][2] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_16_1  ( .A(\u_div/PartRem[17][1] ), .B(
        \u_div/SumTmp[16][1] ), .S0(n59), .Y(\u_div/PartRem[16][2] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_17_1  ( .A(\u_div/PartRem[18][1] ), .B(
        \u_div/SumTmp[17][1] ), .S0(n58), .Y(\u_div/PartRem[17][2] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_2_0  ( .A(\u_div/CryTmp[2][1] ), .B(n35), 
        .S0(n73), .Y(\u_div/PartRem[2][1] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_3_0  ( .A(\u_div/CryTmp[3][1] ), .B(n34), 
        .S0(n72), .Y(\u_div/PartRem[3][1] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_4_0  ( .A(\u_div/CryTmp[4][1] ), .B(n33), 
        .S0(n71), .Y(\u_div/PartRem[4][1] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_5_0  ( .A(\u_div/CryTmp[5][1] ), .B(n32), 
        .S0(n70), .Y(\u_div/PartRem[5][1] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_6_0  ( .A(\u_div/CryTmp[6][1] ), .B(n31), 
        .S0(n69), .Y(\u_div/PartRem[6][1] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_7_0  ( .A(\u_div/CryTmp[7][1] ), .B(n30), 
        .S0(n68), .Y(\u_div/PartRem[7][1] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_8_0  ( .A(\u_div/CryTmp[8][1] ), .B(n29), 
        .S0(n67), .Y(\u_div/PartRem[8][1] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_9_0  ( .A(\u_div/CryTmp[9][1] ), .B(n28), 
        .S0(n66), .Y(\u_div/PartRem[9][1] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_10_0  ( .A(\u_div/CryTmp[10][1] ), .B(n27), 
        .S0(n65), .Y(\u_div/PartRem[10][1] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_11_0  ( .A(\u_div/CryTmp[11][1] ), .B(n26), 
        .S0(n64), .Y(\u_div/PartRem[11][1] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_12_0  ( .A(\u_div/CryTmp[12][1] ), .B(n25), 
        .S0(n63), .Y(\u_div/PartRem[12][1] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_13_0  ( .A(\u_div/CryTmp[13][1] ), .B(n24), 
        .S0(n62), .Y(\u_div/PartRem[13][1] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_14_0  ( .A(\u_div/CryTmp[14][1] ), .B(n23), 
        .S0(n61), .Y(\u_div/PartRem[14][1] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_15_0  ( .A(\u_div/CryTmp[15][1] ), .B(n22), 
        .S0(n60), .Y(\u_div/PartRem[15][1] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_16_0  ( .A(\u_div/CryTmp[16][1] ), .B(n21), 
        .S0(n59), .Y(\u_div/PartRem[16][1] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_17_0  ( .A(\u_div/CryTmp[17][1] ), .B(n20), 
        .S0(n58), .Y(\u_div/PartRem[17][1] ) );
  MX2X1 \u_div/u_mx_PartRem_0_18_1  ( .A(\u_div/CryTmp[19][1] ), .B(
        \u_div/SumTmp[18][1] ), .S0(n57), .Y(\u_div/PartRem[18][2] ) );
  MX2X1 \u_div/u_mx_PartRem_0_18_0  ( .A(\u_div/CryTmp[18][1] ), .B(n19), .S0(
        n57), .Y(\u_div/PartRem[18][1] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(
        \u_div/SumTmp[0][2] ), .S0(n75), .Y(remainder[2]) );
  OAI2BB1X1 U1 ( .A0N(\u_div/PartRem[17][2] ), .A1N(n54), .B0(n1), .Y(n59) );
  MXI2X1 U2 ( .A(\u_div/PartRem[18][2] ), .B(\u_div/SumTmp[17][2] ), .S0(n58), 
        .Y(n1) );
  OAI2BB1X1 U3 ( .A0N(\u_div/PartRem[16][2] ), .A1N(n53), .B0(n2), .Y(n60) );
  MXI2X1 U4 ( .A(\u_div/PartRem[17][2] ), .B(\u_div/SumTmp[16][2] ), .S0(n59), 
        .Y(n2) );
  OAI2BB1X1 U5 ( .A0N(\u_div/PartRem[15][2] ), .A1N(n52), .B0(n3), .Y(n61) );
  MXI2X1 U6 ( .A(\u_div/PartRem[16][2] ), .B(\u_div/SumTmp[15][2] ), .S0(n60), 
        .Y(n3) );
  OAI2BB1X1 U7 ( .A0N(\u_div/PartRem[14][2] ), .A1N(n51), .B0(n4), .Y(n62) );
  MXI2X1 U8 ( .A(\u_div/PartRem[15][2] ), .B(\u_div/SumTmp[14][2] ), .S0(n61), 
        .Y(n4) );
  OAI2BB1X1 U9 ( .A0N(\u_div/PartRem[13][2] ), .A1N(n50), .B0(n5), .Y(n63) );
  MXI2X1 U10 ( .A(\u_div/PartRem[14][2] ), .B(\u_div/SumTmp[13][2] ), .S0(n62), 
        .Y(n5) );
  OAI2BB1X1 U11 ( .A0N(\u_div/PartRem[12][2] ), .A1N(n49), .B0(n6), .Y(n64) );
  MXI2X1 U12 ( .A(\u_div/PartRem[13][2] ), .B(\u_div/SumTmp[12][2] ), .S0(n63), 
        .Y(n6) );
  OAI2BB1X1 U13 ( .A0N(\u_div/PartRem[11][2] ), .A1N(n48), .B0(n7), .Y(n65) );
  MXI2X1 U14 ( .A(\u_div/PartRem[12][2] ), .B(\u_div/SumTmp[11][2] ), .S0(n64), 
        .Y(n7) );
  OAI2BB1X1 U15 ( .A0N(\u_div/PartRem[10][2] ), .A1N(n47), .B0(n8), .Y(n66) );
  MXI2X1 U16 ( .A(\u_div/PartRem[11][2] ), .B(\u_div/SumTmp[10][2] ), .S0(n65), 
        .Y(n8) );
  OAI2BB1X1 U17 ( .A0N(\u_div/PartRem[9][2] ), .A1N(n46), .B0(n9), .Y(n67) );
  MXI2X1 U18 ( .A(\u_div/PartRem[10][2] ), .B(\u_div/SumTmp[9][2] ), .S0(n66), 
        .Y(n9) );
  OAI2BB1X1 U19 ( .A0N(\u_div/PartRem[8][2] ), .A1N(n45), .B0(n10), .Y(n68) );
  MXI2X1 U20 ( .A(\u_div/PartRem[9][2] ), .B(\u_div/SumTmp[8][2] ), .S0(n67), 
        .Y(n10) );
  OAI2BB1X1 U21 ( .A0N(\u_div/PartRem[7][2] ), .A1N(n44), .B0(n11), .Y(n69) );
  MXI2X1 U22 ( .A(\u_div/PartRem[8][2] ), .B(\u_div/SumTmp[7][2] ), .S0(n68), 
        .Y(n11) );
  OAI2BB1X1 U23 ( .A0N(\u_div/PartRem[6][2] ), .A1N(n43), .B0(n12), .Y(n70) );
  MXI2X1 U24 ( .A(\u_div/PartRem[7][2] ), .B(\u_div/SumTmp[6][2] ), .S0(n69), 
        .Y(n12) );
  OAI2BB1X1 U25 ( .A0N(\u_div/PartRem[5][2] ), .A1N(n42), .B0(n13), .Y(n71) );
  MXI2X1 U26 ( .A(\u_div/PartRem[6][2] ), .B(\u_div/SumTmp[5][2] ), .S0(n70), 
        .Y(n13) );
  OAI2BB1X1 U27 ( .A0N(\u_div/PartRem[4][2] ), .A1N(n41), .B0(n14), .Y(n72) );
  MXI2X1 U28 ( .A(\u_div/PartRem[5][2] ), .B(\u_div/SumTmp[4][2] ), .S0(n71), 
        .Y(n14) );
  OAI2BB1X1 U29 ( .A0N(\u_div/PartRem[3][2] ), .A1N(n40), .B0(n15), .Y(n73) );
  MXI2X1 U30 ( .A(\u_div/PartRem[4][2] ), .B(\u_div/SumTmp[3][2] ), .S0(n72), 
        .Y(n15) );
  OAI2BB1X1 U31 ( .A0N(\u_div/PartRem[18][2] ), .A1N(n55), .B0(n16), .Y(n58)
         );
  MXI2X1 U32 ( .A(a[20]), .B(\u_div/SumTmp[18][2] ), .S0(n57), .Y(n16) );
  OAI2BB1X1 U33 ( .A0N(\u_div/PartRem[2][2] ), .A1N(n39), .B0(n17), .Y(n74) );
  MXI2X1 U34 ( .A(\u_div/PartRem[3][2] ), .B(\u_div/SumTmp[2][2] ), .S0(n73), 
        .Y(n17) );
  OAI2BB1X1 U35 ( .A0N(\u_div/PartRem[1][2] ), .A1N(n38), .B0(n18), .Y(n75) );
  MXI2X1 U36 ( .A(\u_div/PartRem[2][2] ), .B(\u_div/SumTmp[1][2] ), .S0(n74), 
        .Y(n18) );
  CLKINVX1 U37 ( .A(\u_div/CryTmp[18][1] ), .Y(n19) );
  CLKINVX1 U38 ( .A(\u_div/CryTmp[17][1] ), .Y(n20) );
  CLKINVX1 U39 ( .A(\u_div/CryTmp[16][1] ), .Y(n21) );
  CLKINVX1 U40 ( .A(\u_div/CryTmp[15][1] ), .Y(n22) );
  CLKINVX1 U41 ( .A(\u_div/CryTmp[14][1] ), .Y(n23) );
  CLKINVX1 U42 ( .A(\u_div/CryTmp[13][1] ), .Y(n24) );
  CLKINVX1 U43 ( .A(\u_div/CryTmp[12][1] ), .Y(n25) );
  CLKINVX1 U44 ( .A(\u_div/CryTmp[11][1] ), .Y(n26) );
  CLKINVX1 U45 ( .A(\u_div/CryTmp[10][1] ), .Y(n27) );
  CLKINVX1 U46 ( .A(\u_div/CryTmp[9][1] ), .Y(n28) );
  CLKINVX1 U47 ( .A(\u_div/CryTmp[8][1] ), .Y(n29) );
  CLKINVX1 U48 ( .A(\u_div/CryTmp[7][1] ), .Y(n30) );
  CLKINVX1 U49 ( .A(\u_div/CryTmp[6][1] ), .Y(n31) );
  CLKINVX1 U50 ( .A(\u_div/CryTmp[5][1] ), .Y(n32) );
  CLKINVX1 U51 ( .A(\u_div/CryTmp[4][1] ), .Y(n33) );
  CLKINVX1 U52 ( .A(\u_div/CryTmp[3][1] ), .Y(n34) );
  CLKINVX1 U53 ( .A(\u_div/CryTmp[2][1] ), .Y(n35) );
  CLKINVX1 U54 ( .A(\u_div/CryTmp[1][1] ), .Y(n36) );
  MXI2X1 U55 ( .A(n37), .B(\u_div/CryTmp[0][1] ), .S0(n75), .Y(remainder[0])
         );
  CLKINVX1 U56 ( .A(\u_div/CryTmp[0][1] ), .Y(n37) );
  OR2X1 U57 ( .A(\u_div/CryTmp[0][1] ), .B(\u_div/PartRem[1][1] ), .Y(n38) );
  XNOR2X1 U58 ( .A(\u_div/PartRem[1][1] ), .B(\u_div/CryTmp[0][1] ), .Y(
        \u_div/SumTmp[0][1] ) );
  XOR2X1 U59 ( .A(\u_div/PartRem[1][2] ), .B(n38), .Y(\u_div/SumTmp[0][2] ) );
  OR2X1 U60 ( .A(\u_div/CryTmp[1][1] ), .B(\u_div/PartRem[2][1] ), .Y(n39) );
  XNOR2X1 U61 ( .A(\u_div/PartRem[2][1] ), .B(\u_div/CryTmp[1][1] ), .Y(
        \u_div/SumTmp[1][1] ) );
  XOR2X1 U62 ( .A(\u_div/PartRem[2][2] ), .B(n39), .Y(\u_div/SumTmp[1][2] ) );
  OR2X1 U63 ( .A(\u_div/CryTmp[2][1] ), .B(\u_div/PartRem[3][1] ), .Y(n40) );
  XNOR2X1 U64 ( .A(\u_div/PartRem[3][1] ), .B(\u_div/CryTmp[2][1] ), .Y(
        \u_div/SumTmp[2][1] ) );
  XOR2X1 U65 ( .A(\u_div/PartRem[3][2] ), .B(n40), .Y(\u_div/SumTmp[2][2] ) );
  OR2X1 U66 ( .A(\u_div/CryTmp[3][1] ), .B(\u_div/PartRem[4][1] ), .Y(n41) );
  XNOR2X1 U67 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/CryTmp[3][1] ), .Y(
        \u_div/SumTmp[3][1] ) );
  XOR2X1 U68 ( .A(\u_div/PartRem[4][2] ), .B(n41), .Y(\u_div/SumTmp[3][2] ) );
  OR2X1 U69 ( .A(\u_div/CryTmp[4][1] ), .B(\u_div/PartRem[5][1] ), .Y(n42) );
  XNOR2X1 U70 ( .A(\u_div/PartRem[5][1] ), .B(\u_div/CryTmp[4][1] ), .Y(
        \u_div/SumTmp[4][1] ) );
  XOR2X1 U71 ( .A(\u_div/PartRem[5][2] ), .B(n42), .Y(\u_div/SumTmp[4][2] ) );
  OR2X1 U72 ( .A(\u_div/CryTmp[5][1] ), .B(\u_div/PartRem[6][1] ), .Y(n43) );
  XNOR2X1 U73 ( .A(\u_div/PartRem[6][1] ), .B(\u_div/CryTmp[5][1] ), .Y(
        \u_div/SumTmp[5][1] ) );
  XOR2X1 U74 ( .A(\u_div/PartRem[6][2] ), .B(n43), .Y(\u_div/SumTmp[5][2] ) );
  OR2X1 U75 ( .A(\u_div/CryTmp[6][1] ), .B(\u_div/PartRem[7][1] ), .Y(n44) );
  XNOR2X1 U76 ( .A(\u_div/PartRem[7][1] ), .B(\u_div/CryTmp[6][1] ), .Y(
        \u_div/SumTmp[6][1] ) );
  XOR2X1 U77 ( .A(\u_div/PartRem[7][2] ), .B(n44), .Y(\u_div/SumTmp[6][2] ) );
  OR2X1 U78 ( .A(\u_div/CryTmp[7][1] ), .B(\u_div/PartRem[8][1] ), .Y(n45) );
  XNOR2X1 U79 ( .A(\u_div/PartRem[8][1] ), .B(\u_div/CryTmp[7][1] ), .Y(
        \u_div/SumTmp[7][1] ) );
  XOR2X1 U80 ( .A(\u_div/PartRem[8][2] ), .B(n45), .Y(\u_div/SumTmp[7][2] ) );
  OR2X1 U81 ( .A(\u_div/CryTmp[8][1] ), .B(\u_div/PartRem[9][1] ), .Y(n46) );
  XNOR2X1 U82 ( .A(\u_div/PartRem[9][1] ), .B(\u_div/CryTmp[8][1] ), .Y(
        \u_div/SumTmp[8][1] ) );
  XOR2X1 U83 ( .A(\u_div/PartRem[9][2] ), .B(n46), .Y(\u_div/SumTmp[8][2] ) );
  OR2X1 U84 ( .A(\u_div/CryTmp[9][1] ), .B(\u_div/PartRem[10][1] ), .Y(n47) );
  XNOR2X1 U85 ( .A(\u_div/PartRem[10][1] ), .B(\u_div/CryTmp[9][1] ), .Y(
        \u_div/SumTmp[9][1] ) );
  XOR2X1 U86 ( .A(\u_div/PartRem[10][2] ), .B(n47), .Y(\u_div/SumTmp[9][2] )
         );
  OR2X1 U87 ( .A(\u_div/CryTmp[10][1] ), .B(\u_div/PartRem[11][1] ), .Y(n48)
         );
  XNOR2X1 U88 ( .A(\u_div/PartRem[11][1] ), .B(\u_div/CryTmp[10][1] ), .Y(
        \u_div/SumTmp[10][1] ) );
  XOR2X1 U89 ( .A(\u_div/PartRem[11][2] ), .B(n48), .Y(\u_div/SumTmp[10][2] )
         );
  OR2X1 U90 ( .A(\u_div/CryTmp[11][1] ), .B(\u_div/PartRem[12][1] ), .Y(n49)
         );
  XNOR2X1 U91 ( .A(\u_div/PartRem[12][1] ), .B(\u_div/CryTmp[11][1] ), .Y(
        \u_div/SumTmp[11][1] ) );
  XOR2X1 U92 ( .A(\u_div/PartRem[12][2] ), .B(n49), .Y(\u_div/SumTmp[11][2] )
         );
  OR2X1 U93 ( .A(\u_div/CryTmp[12][1] ), .B(\u_div/PartRem[13][1] ), .Y(n50)
         );
  XNOR2X1 U94 ( .A(\u_div/PartRem[13][1] ), .B(\u_div/CryTmp[12][1] ), .Y(
        \u_div/SumTmp[12][1] ) );
  XOR2X1 U95 ( .A(\u_div/PartRem[13][2] ), .B(n50), .Y(\u_div/SumTmp[12][2] )
         );
  OR2X1 U96 ( .A(\u_div/CryTmp[13][1] ), .B(\u_div/PartRem[14][1] ), .Y(n51)
         );
  XNOR2X1 U97 ( .A(\u_div/PartRem[14][1] ), .B(\u_div/CryTmp[13][1] ), .Y(
        \u_div/SumTmp[13][1] ) );
  XOR2X1 U98 ( .A(\u_div/PartRem[14][2] ), .B(n51), .Y(\u_div/SumTmp[13][2] )
         );
  OR2X1 U99 ( .A(\u_div/CryTmp[14][1] ), .B(\u_div/PartRem[15][1] ), .Y(n52)
         );
  XNOR2X1 U100 ( .A(\u_div/PartRem[15][1] ), .B(\u_div/CryTmp[14][1] ), .Y(
        \u_div/SumTmp[14][1] ) );
  XOR2X1 U101 ( .A(\u_div/PartRem[15][2] ), .B(n52), .Y(\u_div/SumTmp[14][2] )
         );
  OR2X1 U102 ( .A(\u_div/CryTmp[15][1] ), .B(\u_div/PartRem[16][1] ), .Y(n53)
         );
  XNOR2X1 U103 ( .A(\u_div/PartRem[16][1] ), .B(\u_div/CryTmp[15][1] ), .Y(
        \u_div/SumTmp[15][1] ) );
  XOR2X1 U104 ( .A(\u_div/PartRem[16][2] ), .B(n53), .Y(\u_div/SumTmp[15][2] )
         );
  OR2X1 U105 ( .A(\u_div/CryTmp[16][1] ), .B(\u_div/PartRem[17][1] ), .Y(n54)
         );
  XNOR2X1 U106 ( .A(\u_div/PartRem[17][1] ), .B(\u_div/CryTmp[16][1] ), .Y(
        \u_div/SumTmp[16][1] ) );
  XOR2X1 U107 ( .A(\u_div/PartRem[17][2] ), .B(n54), .Y(\u_div/SumTmp[16][2] )
         );
  OR2X1 U108 ( .A(\u_div/CryTmp[17][1] ), .B(\u_div/PartRem[18][1] ), .Y(n55)
         );
  XNOR2X1 U109 ( .A(\u_div/PartRem[18][1] ), .B(\u_div/CryTmp[17][1] ), .Y(
        \u_div/SumTmp[17][1] ) );
  XOR2X1 U110 ( .A(\u_div/PartRem[18][2] ), .B(n55), .Y(\u_div/SumTmp[17][2] )
         );
  NOR2X1 U111 ( .A(\u_div/CryTmp[18][1] ), .B(\u_div/CryTmp[19][1] ), .Y(n56)
         );
  NOR2BX1 U112 ( .AN(a[20]), .B(n56), .Y(n57) );
  XNOR2X1 U113 ( .A(\u_div/CryTmp[19][1] ), .B(\u_div/CryTmp[18][1] ), .Y(
        \u_div/SumTmp[18][1] ) );
  XNOR2X1 U114 ( .A(a[20]), .B(n56), .Y(\u_div/SumTmp[18][2] ) );
endmodule


module CONT_DW01_inc_3 ( A, SUM );
  input [20:0] A;
  output [20:0] SUM;

  wire   [20:2] carry;

  ADDHX1 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX1 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1 U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHX1 U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHX1 U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHX1 U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHX1 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1 U1_1_18 ( .A(A[18]), .B(carry[18]), .CO(carry[19]), .S(SUM[18]) );
  ADDHX1 U1_1_16 ( .A(A[16]), .B(carry[16]), .CO(carry[17]), .S(SUM[16]) );
  ADDHX1 U1_1_15 ( .A(A[15]), .B(carry[15]), .CO(carry[16]), .S(SUM[15]) );
  ADDHX1 U1_1_14 ( .A(A[14]), .B(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  ADDHX1 U1_1_13 ( .A(A[13]), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  ADDHX1 U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ADDHX1 U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADDHX1 U1_1_17 ( .A(A[17]), .B(carry[17]), .CO(carry[18]), .S(SUM[17]) );
  ADDHX1 U1_1_19 ( .A(A[19]), .B(carry[19]), .CO(SUM[20]), .S(SUM[19]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module CONT_DW01_inc_4 ( A, SUM );
  input [19:0] A;
  output [19:0] SUM;

  wire   [19:2] carry;

  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_17 ( .A(A[17]), .B(carry[17]), .CO(carry[18]), .S(SUM[17]) );
  ADDHXL U1_1_16 ( .A(A[16]), .B(carry[16]), .CO(carry[17]), .S(SUM[16]) );
  ADDHXL U1_1_15 ( .A(A[15]), .B(carry[15]), .CO(carry[16]), .S(SUM[15]) );
  ADDHXL U1_1_14 ( .A(A[14]), .B(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  ADDHXL U1_1_13 ( .A(A[13]), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  ADDHXL U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ADDHXL U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADDHXL U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHXL U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHXL U1_1_18 ( .A(A[18]), .B(carry[18]), .CO(carry[19]), .S(SUM[18]) );
  XOR2X1 U1 ( .A(carry[19]), .B(A[19]), .Y(SUM[19]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module CONT_DW_div_uns_1 ( a, b, quotient, remainder, divide_by_0 );
  input [19:0] a;
  input [2:0] b;
  output [19:0] quotient;
  output [2:0] remainder;
  output divide_by_0;
  wire   n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, \u_div/SumTmp[0][1] , \u_div/SumTmp[0][2] ,
         \u_div/SumTmp[1][1] , \u_div/SumTmp[1][2] , \u_div/SumTmp[2][1] ,
         \u_div/SumTmp[2][2] , \u_div/SumTmp[3][1] , \u_div/SumTmp[3][2] ,
         \u_div/SumTmp[4][1] , \u_div/SumTmp[4][2] , \u_div/SumTmp[5][1] ,
         \u_div/SumTmp[5][2] , \u_div/SumTmp[6][1] , \u_div/SumTmp[6][2] ,
         \u_div/SumTmp[7][1] , \u_div/SumTmp[7][2] , \u_div/SumTmp[8][1] ,
         \u_div/SumTmp[8][2] , \u_div/SumTmp[9][1] , \u_div/SumTmp[9][2] ,
         \u_div/SumTmp[10][1] , \u_div/SumTmp[10][2] , \u_div/SumTmp[11][1] ,
         \u_div/SumTmp[11][2] , \u_div/SumTmp[12][1] , \u_div/SumTmp[12][2] ,
         \u_div/SumTmp[13][1] , \u_div/SumTmp[13][2] , \u_div/SumTmp[14][1] ,
         \u_div/SumTmp[14][2] , \u_div/SumTmp[15][1] , \u_div/SumTmp[15][2] ,
         \u_div/SumTmp[16][1] , \u_div/SumTmp[16][2] , \u_div/SumTmp[17][1] ,
         \u_div/SumTmp[17][2] , \u_div/CryTmp[0][1] , \u_div/CryTmp[1][1] ,
         \u_div/CryTmp[2][1] , \u_div/CryTmp[3][1] , \u_div/CryTmp[4][1] ,
         \u_div/CryTmp[5][1] , \u_div/CryTmp[6][1] , \u_div/CryTmp[7][1] ,
         \u_div/CryTmp[8][1] , \u_div/CryTmp[9][1] , \u_div/CryTmp[10][1] ,
         \u_div/CryTmp[11][1] , \u_div/CryTmp[12][1] , \u_div/CryTmp[13][1] ,
         \u_div/CryTmp[14][1] , \u_div/CryTmp[15][1] , \u_div/CryTmp[16][1] ,
         \u_div/CryTmp[17][1] , \u_div/CryTmp[18][1] , \u_div/PartRem[1][1] ,
         \u_div/PartRem[1][2] , \u_div/PartRem[2][1] , \u_div/PartRem[2][2] ,
         \u_div/PartRem[3][1] , \u_div/PartRem[3][2] , \u_div/PartRem[4][1] ,
         \u_div/PartRem[4][2] , \u_div/PartRem[5][1] , \u_div/PartRem[5][2] ,
         \u_div/PartRem[6][1] , \u_div/PartRem[6][2] , \u_div/PartRem[7][1] ,
         \u_div/PartRem[7][2] , \u_div/PartRem[8][1] , \u_div/PartRem[8][2] ,
         \u_div/PartRem[9][1] , \u_div/PartRem[9][2] , \u_div/PartRem[10][1] ,
         \u_div/PartRem[10][2] , \u_div/PartRem[11][1] ,
         \u_div/PartRem[11][2] , \u_div/PartRem[12][1] ,
         \u_div/PartRem[12][2] , \u_div/PartRem[13][1] ,
         \u_div/PartRem[13][2] , \u_div/PartRem[14][1] ,
         \u_div/PartRem[14][2] , \u_div/PartRem[15][1] ,
         \u_div/PartRem[15][2] , \u_div/PartRem[16][1] ,
         \u_div/PartRem[16][2] , \u_div/PartRem[17][1] ,
         \u_div/PartRem[17][2] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53;
  assign \u_div/CryTmp[0][1]  = a[0];
  assign \u_div/CryTmp[1][1]  = a[1];
  assign \u_div/CryTmp[2][1]  = a[2];
  assign \u_div/CryTmp[3][1]  = a[3];
  assign \u_div/CryTmp[4][1]  = a[4];
  assign \u_div/CryTmp[5][1]  = a[5];
  assign \u_div/CryTmp[6][1]  = a[6];
  assign \u_div/CryTmp[7][1]  = a[7];
  assign \u_div/CryTmp[8][1]  = a[8];
  assign \u_div/CryTmp[9][1]  = a[9];
  assign \u_div/CryTmp[10][1]  = a[10];
  assign \u_div/CryTmp[11][1]  = a[11];
  assign \u_div/CryTmp[12][1]  = a[12];
  assign \u_div/CryTmp[13][1]  = a[13];
  assign \u_div/CryTmp[14][1]  = a[14];
  assign \u_div/CryTmp[15][1]  = a[15];
  assign \u_div/CryTmp[16][1]  = a[16];
  assign \u_div/CryTmp[17][1]  = a[17];
  assign \u_div/CryTmp[18][1]  = a[18];

  CLKMX2X2 \u_div/u_mx_PartRem_0_0_0  ( .A(\u_div/CryTmp[0][1] ), .B(n35), 
        .S0(n71), .Y(remainder[0]) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_0_1  ( .A(\u_div/PartRem[1][1] ), .B(
        \u_div/SumTmp[0][1] ), .S0(n71), .Y(remainder[1]) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(
        \u_div/SumTmp[0][2] ), .S0(n71), .Y(remainder[2]) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_1_1  ( .A(\u_div/PartRem[2][1] ), .B(
        \u_div/SumTmp[1][1] ), .S0(n70), .Y(\u_div/PartRem[1][2] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_2_1  ( .A(\u_div/PartRem[3][1] ), .B(
        \u_div/SumTmp[2][1] ), .S0(n69), .Y(\u_div/PartRem[2][2] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_3_1  ( .A(\u_div/PartRem[4][1] ), .B(
        \u_div/SumTmp[3][1] ), .S0(n68), .Y(\u_div/PartRem[3][2] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_4_1  ( .A(\u_div/PartRem[5][1] ), .B(
        \u_div/SumTmp[4][1] ), .S0(n67), .Y(\u_div/PartRem[4][2] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_5_1  ( .A(\u_div/PartRem[6][1] ), .B(
        \u_div/SumTmp[5][1] ), .S0(n66), .Y(\u_div/PartRem[5][2] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_6_1  ( .A(\u_div/PartRem[7][1] ), .B(
        \u_div/SumTmp[6][1] ), .S0(n65), .Y(\u_div/PartRem[6][2] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_7_1  ( .A(\u_div/PartRem[8][1] ), .B(
        \u_div/SumTmp[7][1] ), .S0(n64), .Y(\u_div/PartRem[7][2] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_8_1  ( .A(\u_div/PartRem[9][1] ), .B(
        \u_div/SumTmp[8][1] ), .S0(n63), .Y(\u_div/PartRem[8][2] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_9_1  ( .A(\u_div/PartRem[10][1] ), .B(
        \u_div/SumTmp[9][1] ), .S0(n62), .Y(\u_div/PartRem[9][2] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_10_1  ( .A(\u_div/PartRem[11][1] ), .B(
        \u_div/SumTmp[10][1] ), .S0(n61), .Y(\u_div/PartRem[10][2] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_11_1  ( .A(\u_div/PartRem[12][1] ), .B(
        \u_div/SumTmp[11][1] ), .S0(n60), .Y(\u_div/PartRem[11][2] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_12_1  ( .A(\u_div/PartRem[13][1] ), .B(
        \u_div/SumTmp[12][1] ), .S0(n59), .Y(\u_div/PartRem[12][2] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_13_1  ( .A(\u_div/PartRem[14][1] ), .B(
        \u_div/SumTmp[13][1] ), .S0(n58), .Y(\u_div/PartRem[13][2] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_14_1  ( .A(\u_div/PartRem[15][1] ), .B(
        \u_div/SumTmp[14][1] ), .S0(n57), .Y(\u_div/PartRem[14][2] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_15_1  ( .A(\u_div/PartRem[16][1] ), .B(
        \u_div/SumTmp[15][1] ), .S0(n56), .Y(\u_div/PartRem[15][2] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_16_1  ( .A(\u_div/PartRem[17][1] ), .B(
        \u_div/SumTmp[16][1] ), .S0(n55), .Y(\u_div/PartRem[16][2] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_1_0  ( .A(\u_div/CryTmp[1][1] ), .B(n34), 
        .S0(n70), .Y(\u_div/PartRem[1][1] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_2_0  ( .A(\u_div/CryTmp[2][1] ), .B(n33), 
        .S0(n69), .Y(\u_div/PartRem[2][1] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_3_0  ( .A(\u_div/CryTmp[3][1] ), .B(n32), 
        .S0(n68), .Y(\u_div/PartRem[3][1] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_4_0  ( .A(\u_div/CryTmp[4][1] ), .B(n31), 
        .S0(n67), .Y(\u_div/PartRem[4][1] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_5_0  ( .A(\u_div/CryTmp[5][1] ), .B(n30), 
        .S0(n66), .Y(\u_div/PartRem[5][1] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_6_0  ( .A(\u_div/CryTmp[6][1] ), .B(n29), 
        .S0(n65), .Y(\u_div/PartRem[6][1] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_7_0  ( .A(\u_div/CryTmp[7][1] ), .B(n28), 
        .S0(n64), .Y(\u_div/PartRem[7][1] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_8_0  ( .A(\u_div/CryTmp[8][1] ), .B(n27), 
        .S0(n63), .Y(\u_div/PartRem[8][1] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_9_0  ( .A(\u_div/CryTmp[9][1] ), .B(n26), 
        .S0(n62), .Y(\u_div/PartRem[9][1] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_10_0  ( .A(\u_div/CryTmp[10][1] ), .B(n25), 
        .S0(n61), .Y(\u_div/PartRem[10][1] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_11_0  ( .A(\u_div/CryTmp[11][1] ), .B(n24), 
        .S0(n60), .Y(\u_div/PartRem[11][1] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_12_0  ( .A(\u_div/CryTmp[12][1] ), .B(n23), 
        .S0(n59), .Y(\u_div/PartRem[12][1] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_13_0  ( .A(\u_div/CryTmp[13][1] ), .B(n22), 
        .S0(n58), .Y(\u_div/PartRem[13][1] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_14_0  ( .A(\u_div/CryTmp[14][1] ), .B(n21), 
        .S0(n57), .Y(\u_div/PartRem[14][1] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_15_0  ( .A(\u_div/CryTmp[15][1] ), .B(n20), 
        .S0(n56), .Y(\u_div/PartRem[15][1] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_16_0  ( .A(\u_div/CryTmp[16][1] ), .B(n19), 
        .S0(n55), .Y(\u_div/PartRem[16][1] ) );
  MX2X1 \u_div/u_mx_PartRem_0_17_1  ( .A(\u_div/CryTmp[18][1] ), .B(
        \u_div/SumTmp[17][1] ), .S0(n54), .Y(\u_div/PartRem[17][2] ) );
  MX2X1 \u_div/u_mx_PartRem_0_17_0  ( .A(\u_div/CryTmp[17][1] ), .B(n18), .S0(
        n54), .Y(\u_div/PartRem[17][1] ) );
  OAI2BB1X1 U1 ( .A0N(\u_div/PartRem[16][2] ), .A1N(n51), .B0(n1), .Y(n56) );
  MXI2X1 U2 ( .A(\u_div/PartRem[17][2] ), .B(\u_div/SumTmp[16][2] ), .S0(n55), 
        .Y(n1) );
  OAI2BB1X1 U3 ( .A0N(\u_div/PartRem[15][2] ), .A1N(n50), .B0(n2), .Y(n57) );
  MXI2X1 U4 ( .A(\u_div/PartRem[16][2] ), .B(\u_div/SumTmp[15][2] ), .S0(n56), 
        .Y(n2) );
  OAI2BB1X1 U5 ( .A0N(\u_div/PartRem[14][2] ), .A1N(n49), .B0(n3), .Y(n58) );
  MXI2X1 U6 ( .A(\u_div/PartRem[15][2] ), .B(\u_div/SumTmp[14][2] ), .S0(n57), 
        .Y(n3) );
  OAI2BB1X1 U7 ( .A0N(\u_div/PartRem[13][2] ), .A1N(n48), .B0(n4), .Y(n59) );
  MXI2X1 U8 ( .A(\u_div/PartRem[14][2] ), .B(\u_div/SumTmp[13][2] ), .S0(n58), 
        .Y(n4) );
  OAI2BB1X1 U9 ( .A0N(\u_div/PartRem[12][2] ), .A1N(n47), .B0(n5), .Y(n60) );
  MXI2X1 U10 ( .A(\u_div/PartRem[13][2] ), .B(\u_div/SumTmp[12][2] ), .S0(n59), 
        .Y(n5) );
  OAI2BB1X1 U11 ( .A0N(\u_div/PartRem[11][2] ), .A1N(n46), .B0(n6), .Y(n61) );
  MXI2X1 U12 ( .A(\u_div/PartRem[12][2] ), .B(\u_div/SumTmp[11][2] ), .S0(n60), 
        .Y(n6) );
  OAI2BB1X1 U13 ( .A0N(\u_div/PartRem[10][2] ), .A1N(n45), .B0(n7), .Y(n62) );
  MXI2X1 U14 ( .A(\u_div/PartRem[11][2] ), .B(\u_div/SumTmp[10][2] ), .S0(n61), 
        .Y(n7) );
  OAI2BB1X1 U15 ( .A0N(\u_div/PartRem[9][2] ), .A1N(n44), .B0(n8), .Y(n63) );
  MXI2X1 U16 ( .A(\u_div/PartRem[10][2] ), .B(\u_div/SumTmp[9][2] ), .S0(n62), 
        .Y(n8) );
  OAI2BB1X1 U17 ( .A0N(\u_div/PartRem[8][2] ), .A1N(n43), .B0(n9), .Y(n64) );
  MXI2X1 U18 ( .A(\u_div/PartRem[9][2] ), .B(\u_div/SumTmp[8][2] ), .S0(n63), 
        .Y(n9) );
  OAI2BB1X1 U19 ( .A0N(\u_div/PartRem[7][2] ), .A1N(n42), .B0(n10), .Y(n65) );
  MXI2X1 U20 ( .A(\u_div/PartRem[8][2] ), .B(\u_div/SumTmp[7][2] ), .S0(n64), 
        .Y(n10) );
  OAI2BB1X1 U21 ( .A0N(\u_div/PartRem[6][2] ), .A1N(n41), .B0(n11), .Y(n66) );
  MXI2X1 U22 ( .A(\u_div/PartRem[7][2] ), .B(\u_div/SumTmp[6][2] ), .S0(n65), 
        .Y(n11) );
  OAI2BB1X1 U23 ( .A0N(\u_div/PartRem[5][2] ), .A1N(n40), .B0(n12), .Y(n67) );
  MXI2X1 U24 ( .A(\u_div/PartRem[6][2] ), .B(\u_div/SumTmp[5][2] ), .S0(n66), 
        .Y(n12) );
  OAI2BB1X1 U25 ( .A0N(\u_div/PartRem[4][2] ), .A1N(n39), .B0(n13), .Y(n68) );
  MXI2X1 U26 ( .A(\u_div/PartRem[5][2] ), .B(\u_div/SumTmp[4][2] ), .S0(n67), 
        .Y(n13) );
  OAI2BB1X1 U27 ( .A0N(\u_div/PartRem[3][2] ), .A1N(n38), .B0(n14), .Y(n69) );
  MXI2X1 U28 ( .A(\u_div/PartRem[4][2] ), .B(\u_div/SumTmp[3][2] ), .S0(n68), 
        .Y(n14) );
  OAI2BB1X1 U29 ( .A0N(\u_div/PartRem[2][2] ), .A1N(n37), .B0(n15), .Y(n70) );
  MXI2X1 U30 ( .A(\u_div/PartRem[3][2] ), .B(\u_div/SumTmp[2][2] ), .S0(n69), 
        .Y(n15) );
  OAI2BB1X1 U31 ( .A0N(\u_div/PartRem[17][2] ), .A1N(n52), .B0(n16), .Y(n55)
         );
  MXI2X1 U32 ( .A(a[19]), .B(\u_div/SumTmp[17][2] ), .S0(n54), .Y(n16) );
  OAI2BB1X1 U33 ( .A0N(\u_div/PartRem[1][2] ), .A1N(n36), .B0(n17), .Y(n71) );
  MXI2X1 U34 ( .A(\u_div/PartRem[2][2] ), .B(\u_div/SumTmp[1][2] ), .S0(n70), 
        .Y(n17) );
  CLKINVX1 U35 ( .A(\u_div/CryTmp[17][1] ), .Y(n18) );
  CLKINVX1 U36 ( .A(\u_div/CryTmp[16][1] ), .Y(n19) );
  CLKINVX1 U37 ( .A(\u_div/CryTmp[15][1] ), .Y(n20) );
  CLKINVX1 U38 ( .A(\u_div/CryTmp[14][1] ), .Y(n21) );
  CLKINVX1 U39 ( .A(\u_div/CryTmp[13][1] ), .Y(n22) );
  CLKINVX1 U40 ( .A(\u_div/CryTmp[12][1] ), .Y(n23) );
  CLKINVX1 U41 ( .A(\u_div/CryTmp[11][1] ), .Y(n24) );
  CLKINVX1 U42 ( .A(\u_div/CryTmp[10][1] ), .Y(n25) );
  CLKINVX1 U43 ( .A(\u_div/CryTmp[9][1] ), .Y(n26) );
  CLKINVX1 U44 ( .A(\u_div/CryTmp[8][1] ), .Y(n27) );
  CLKINVX1 U45 ( .A(\u_div/CryTmp[7][1] ), .Y(n28) );
  CLKINVX1 U46 ( .A(\u_div/CryTmp[6][1] ), .Y(n29) );
  CLKINVX1 U47 ( .A(\u_div/CryTmp[5][1] ), .Y(n30) );
  CLKINVX1 U48 ( .A(\u_div/CryTmp[4][1] ), .Y(n31) );
  CLKINVX1 U49 ( .A(\u_div/CryTmp[3][1] ), .Y(n32) );
  CLKINVX1 U50 ( .A(\u_div/CryTmp[2][1] ), .Y(n33) );
  CLKINVX1 U51 ( .A(\u_div/CryTmp[1][1] ), .Y(n34) );
  CLKINVX1 U52 ( .A(\u_div/CryTmp[0][1] ), .Y(n35) );
  OR2X1 U53 ( .A(\u_div/CryTmp[0][1] ), .B(\u_div/PartRem[1][1] ), .Y(n36) );
  XNOR2X1 U54 ( .A(\u_div/PartRem[1][1] ), .B(\u_div/CryTmp[0][1] ), .Y(
        \u_div/SumTmp[0][1] ) );
  XOR2X1 U55 ( .A(\u_div/PartRem[1][2] ), .B(n36), .Y(\u_div/SumTmp[0][2] ) );
  OR2X1 U56 ( .A(\u_div/CryTmp[1][1] ), .B(\u_div/PartRem[2][1] ), .Y(n37) );
  XNOR2X1 U57 ( .A(\u_div/PartRem[2][1] ), .B(\u_div/CryTmp[1][1] ), .Y(
        \u_div/SumTmp[1][1] ) );
  XOR2X1 U58 ( .A(\u_div/PartRem[2][2] ), .B(n37), .Y(\u_div/SumTmp[1][2] ) );
  OR2X1 U59 ( .A(\u_div/CryTmp[2][1] ), .B(\u_div/PartRem[3][1] ), .Y(n38) );
  XNOR2X1 U60 ( .A(\u_div/PartRem[3][1] ), .B(\u_div/CryTmp[2][1] ), .Y(
        \u_div/SumTmp[2][1] ) );
  XOR2X1 U61 ( .A(\u_div/PartRem[3][2] ), .B(n38), .Y(\u_div/SumTmp[2][2] ) );
  OR2X1 U62 ( .A(\u_div/CryTmp[3][1] ), .B(\u_div/PartRem[4][1] ), .Y(n39) );
  XNOR2X1 U63 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/CryTmp[3][1] ), .Y(
        \u_div/SumTmp[3][1] ) );
  XOR2X1 U64 ( .A(\u_div/PartRem[4][2] ), .B(n39), .Y(\u_div/SumTmp[3][2] ) );
  OR2X1 U65 ( .A(\u_div/CryTmp[4][1] ), .B(\u_div/PartRem[5][1] ), .Y(n40) );
  XNOR2X1 U66 ( .A(\u_div/PartRem[5][1] ), .B(\u_div/CryTmp[4][1] ), .Y(
        \u_div/SumTmp[4][1] ) );
  XOR2X1 U67 ( .A(\u_div/PartRem[5][2] ), .B(n40), .Y(\u_div/SumTmp[4][2] ) );
  OR2X1 U68 ( .A(\u_div/CryTmp[5][1] ), .B(\u_div/PartRem[6][1] ), .Y(n41) );
  XNOR2X1 U69 ( .A(\u_div/PartRem[6][1] ), .B(\u_div/CryTmp[5][1] ), .Y(
        \u_div/SumTmp[5][1] ) );
  XOR2X1 U70 ( .A(\u_div/PartRem[6][2] ), .B(n41), .Y(\u_div/SumTmp[5][2] ) );
  OR2X1 U71 ( .A(\u_div/CryTmp[6][1] ), .B(\u_div/PartRem[7][1] ), .Y(n42) );
  XNOR2X1 U72 ( .A(\u_div/PartRem[7][1] ), .B(\u_div/CryTmp[6][1] ), .Y(
        \u_div/SumTmp[6][1] ) );
  XOR2X1 U73 ( .A(\u_div/PartRem[7][2] ), .B(n42), .Y(\u_div/SumTmp[6][2] ) );
  OR2X1 U74 ( .A(\u_div/CryTmp[7][1] ), .B(\u_div/PartRem[8][1] ), .Y(n43) );
  XNOR2X1 U75 ( .A(\u_div/PartRem[8][1] ), .B(\u_div/CryTmp[7][1] ), .Y(
        \u_div/SumTmp[7][1] ) );
  XOR2X1 U76 ( .A(\u_div/PartRem[8][2] ), .B(n43), .Y(\u_div/SumTmp[7][2] ) );
  OR2X1 U77 ( .A(\u_div/CryTmp[8][1] ), .B(\u_div/PartRem[9][1] ), .Y(n44) );
  XNOR2X1 U78 ( .A(\u_div/PartRem[9][1] ), .B(\u_div/CryTmp[8][1] ), .Y(
        \u_div/SumTmp[8][1] ) );
  XOR2X1 U79 ( .A(\u_div/PartRem[9][2] ), .B(n44), .Y(\u_div/SumTmp[8][2] ) );
  OR2X1 U80 ( .A(\u_div/CryTmp[9][1] ), .B(\u_div/PartRem[10][1] ), .Y(n45) );
  XNOR2X1 U81 ( .A(\u_div/PartRem[10][1] ), .B(\u_div/CryTmp[9][1] ), .Y(
        \u_div/SumTmp[9][1] ) );
  XOR2X1 U82 ( .A(\u_div/PartRem[10][2] ), .B(n45), .Y(\u_div/SumTmp[9][2] )
         );
  OR2X1 U83 ( .A(\u_div/CryTmp[10][1] ), .B(\u_div/PartRem[11][1] ), .Y(n46)
         );
  XNOR2X1 U84 ( .A(\u_div/PartRem[11][1] ), .B(\u_div/CryTmp[10][1] ), .Y(
        \u_div/SumTmp[10][1] ) );
  XOR2X1 U85 ( .A(\u_div/PartRem[11][2] ), .B(n46), .Y(\u_div/SumTmp[10][2] )
         );
  OR2X1 U86 ( .A(\u_div/CryTmp[11][1] ), .B(\u_div/PartRem[12][1] ), .Y(n47)
         );
  XNOR2X1 U87 ( .A(\u_div/PartRem[12][1] ), .B(\u_div/CryTmp[11][1] ), .Y(
        \u_div/SumTmp[11][1] ) );
  XOR2X1 U88 ( .A(\u_div/PartRem[12][2] ), .B(n47), .Y(\u_div/SumTmp[11][2] )
         );
  OR2X1 U89 ( .A(\u_div/CryTmp[12][1] ), .B(\u_div/PartRem[13][1] ), .Y(n48)
         );
  XNOR2X1 U90 ( .A(\u_div/PartRem[13][1] ), .B(\u_div/CryTmp[12][1] ), .Y(
        \u_div/SumTmp[12][1] ) );
  XOR2X1 U91 ( .A(\u_div/PartRem[13][2] ), .B(n48), .Y(\u_div/SumTmp[12][2] )
         );
  OR2X1 U92 ( .A(\u_div/CryTmp[13][1] ), .B(\u_div/PartRem[14][1] ), .Y(n49)
         );
  XNOR2X1 U93 ( .A(\u_div/PartRem[14][1] ), .B(\u_div/CryTmp[13][1] ), .Y(
        \u_div/SumTmp[13][1] ) );
  XOR2X1 U94 ( .A(\u_div/PartRem[14][2] ), .B(n49), .Y(\u_div/SumTmp[13][2] )
         );
  OR2X1 U95 ( .A(\u_div/CryTmp[14][1] ), .B(\u_div/PartRem[15][1] ), .Y(n50)
         );
  XNOR2X1 U96 ( .A(\u_div/PartRem[15][1] ), .B(\u_div/CryTmp[14][1] ), .Y(
        \u_div/SumTmp[14][1] ) );
  XOR2X1 U97 ( .A(\u_div/PartRem[15][2] ), .B(n50), .Y(\u_div/SumTmp[14][2] )
         );
  OR2X1 U98 ( .A(\u_div/CryTmp[15][1] ), .B(\u_div/PartRem[16][1] ), .Y(n51)
         );
  XNOR2X1 U99 ( .A(\u_div/PartRem[16][1] ), .B(\u_div/CryTmp[15][1] ), .Y(
        \u_div/SumTmp[15][1] ) );
  XOR2X1 U100 ( .A(\u_div/PartRem[16][2] ), .B(n51), .Y(\u_div/SumTmp[15][2] )
         );
  OR2X1 U101 ( .A(\u_div/CryTmp[16][1] ), .B(\u_div/PartRem[17][1] ), .Y(n52)
         );
  XNOR2X1 U102 ( .A(\u_div/PartRem[17][1] ), .B(\u_div/CryTmp[16][1] ), .Y(
        \u_div/SumTmp[16][1] ) );
  XOR2X1 U103 ( .A(\u_div/PartRem[17][2] ), .B(n52), .Y(\u_div/SumTmp[16][2] )
         );
  NOR2X1 U104 ( .A(\u_div/CryTmp[17][1] ), .B(\u_div/CryTmp[18][1] ), .Y(n53)
         );
  NOR2BX1 U105 ( .AN(a[19]), .B(n53), .Y(n54) );
  XNOR2X1 U106 ( .A(\u_div/CryTmp[18][1] ), .B(\u_div/CryTmp[17][1] ), .Y(
        \u_div/SumTmp[17][1] ) );
  XNOR2X1 U107 ( .A(a[19]), .B(n53), .Y(\u_div/SumTmp[17][2] ) );
endmodule


module CONT ( clk, reset, im_a, curr_time, fb_addr, photo_num, curr_photo_addr, 
        curr_photo_size, en_si, en_init_time, en_fb_addr, en_photo_num, 
        en_curr_photo_addr, en_curr_photo_size, en_so, init_time_mux_sel, 
        sftr_n, so_mux_sel, im_wen_n_BAR );
  output [19:0] im_a;
  input [23:0] curr_time;
  input [19:0] fb_addr;
  input [1:0] photo_num;
  input [19:0] curr_photo_addr;
  input [1:0] curr_photo_size;
  output [1:0] sftr_n;
  output [1:0] so_mux_sel;
  input clk, reset;
  output en_si, en_init_time, en_fb_addr, en_photo_num, en_curr_photo_addr,
         en_curr_photo_size, en_so, init_time_mux_sel, im_wen_n_BAR;
  wire   n406, n407, n408, n409, n410, n411, n412, n413, n414, n415, n416,
         n417, n418, n419, n420, n421, n422, n423, n424, n425, N41, N42, N43,
         N44, N45, N46, N47, N48, N49, N50, N51, N52, N53, N54, N55, N56, N57,
         N58, N59, N60, N78, N79, N80, N81, N82, N83, N84, N85, N86, N87, N88,
         N89, N90, N91, N92, N93, N94, N95, N96, N97, N120, N121, N122, N123,
         N124, N125, N126, N127, N128, N129, N130, N131, N132, N133, N134,
         N135, N136, N137, N138, N139, N222, N223, N224, N225, N226, N227,
         N228, N229, N230, N231, N232, N233, N234, N235, N236, N237, N238,
         N239, N240, N0, N1, N2, N265, N266, N267, N268, N269, N270, N271,
         N272, N273, N274, N275, N276, N277, N278, N279, N280, N281, N282,
         N283, N284, N285, N286, N287, N288, N289, N290, N291, N292, N293,
         N294, N295, N296, N297, N298, N299, N300, N301, N302, N303, N304,
         N326, N327, N328, N329, N330, N331, N332, N333, N334, N335, N336,
         N337, N338, N339, N340, N341, N342, N343, N344, N352, N353, N354,
         N355, N356, N357, N358, N359, N360, N361, N362, N363, N364, N365,
         N366, N367, N368, N369, N370, N371, N372, N6, N7, N8, next_en_si,
         _0_net_, N435, N457, N477, n45, n46, n54, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n91,
         \add_196/carry[3] , \sub_102/carry[19] , \sub_102/carry[18] ,
         \sub_102/carry[17] , \sub_102/carry[16] , \sub_102/carry[15] ,
         \sub_102/carry[14] , \sub_102/carry[13] , \sub_102/carry[12] ,
         \sub_102/carry[11] , \sub_102/carry[10] , \sub_102/carry[9] ,
         \sub_102/carry[8] , \sub_102/carry[7] , \sub_102/carry[6] ,
         \sub_102/carry[5] , \sub_102/carry[4] , n1, n2, n6, n8, n9, n11, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n41, n42,
         n43, n44, n47, n48, n49, n50, n52, n53, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n90, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n103, n105, n107, n109,
         n111, n113, n115, n117, n119, n121, n125, n129, n130, n131, n132,
         n134, n135, n136, n137, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246,
         n247, n248, n249, n250, n251, n252, n253, n254, n255, n256, n257,
         n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290,
         n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, n301,
         n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, n312,
         n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323,
         n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334,
         n335, n336, n337, n338, n339, n340, n341, n342, n343, n344, n345,
         n346, n347, n348, n349, n350, n351, n352, n353, n354, n355, n356,
         n357, n358, n359, n360, n361, n362, n363, n364, n365, n366, n367,
         n368, n369, n370, n371, n372, n373, n374, n375, n376, n377, n378,
         n379, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389,
         n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, n400,
         n401, n402, n403, n404, n405;
  wire   [19:0] global_cntr;
  wire   [19:0] work_cntr;
  wire   [19:0] next_glb_cntr;
  wire   [1:0] state;
  wire   [19:0] write_cntr;
  wire   [19:0] read_cntr;
  wire   [19:0] write_addr;
  wire   [1:0] curr_photo;
  wire   [19:0] next_read_cntr;
  wire   [19:0] next_write_cntr;
  wire   [19:0] read_addr;
  wire   [19:0] next_write_addr;
  wire   [1:0] next_photo;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2;
  assign en_init_time = N435;
  assign en_curr_photo_addr = N457;
  assign en_curr_photo_size = N477;

  p_dff_WORD20_NSEL5_0 write_addr_reg ( .clk(clk), .reset(reset), .en(_0_net_), 
        .sel({1'b1, 1'b1, 1'b1, 1'b1, 1'b1}), .d(next_write_addr), .q(
        write_addr) );
  p_dff_WORD20_NSEL5_4 read_cntr_reg ( .clk(clk), .reset(reset), .en(n170), 
        .sel({1'b1, 1'b1, 1'b1, 1'b1, 1'b1}), .d(next_read_cntr), .q(read_cntr) );
  p_dff_WORD20_NSEL5_3 write_cntr_reg ( .clk(clk), .reset(reset), .en(n38), 
        .sel({1'b1, 1'b1, 1'b1, 1'b1, 1'b1}), .d(next_write_cntr), .q(
        write_cntr) );
  CONT_DW01_add_1 add_192 ( .A({write_addr[19:1], n8}), .B(fb_addr), .CI(1'b0), 
        .SUM({N304, N303, N302, N301, N300, N299, N298, N297, N296, N295, N294, 
        N293, N292, N291, N290, N289, N288, N287, N286, N285}) );
  CONT_DW01_add_2 add_190 ( .A(read_addr), .B(curr_photo_addr), .CI(1'b0), 
        .SUM({N284, N283, N282, N281, N280, N279, N278, N277, N276, N275, N274, 
        N273, N272, N271, N270, N269, N268, N267, N266, N265}) );
  CONT_DW01_inc_0 add_179 ( .A({write_addr[19:1], n8}), .SUM({N240, N239, N238, 
        N237, N236, N235, N234, N233, N232, N231, N230, N229, N228, N227, N226, 
        N225, N224, N223, N222, SYNOPSYS_UNCONNECTED__0}) );
  CONT_DW01_inc_1 add_147 ( .A({1'b0, read_cntr[19:1], n132}), .SUM({
        SYNOPSYS_UNCONNECTED__1, N139, N138, N137, N136, N135, N134, N133, 
        N132, N131, N130, N129, N128, N127, N126, N125, N124, N123, N122, N121, 
        N120}) );
  CONT_DW01_inc_2 add_144 ( .A({1'b0, write_cntr}), .SUM({
        SYNOPSYS_UNCONNECTED__2, N97, N96, N95, N94, N93, N92, N91, N90, N89, 
        N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78}) );
  CONT_DW_div_uns_0 r369 ( .a({N372, N371, N370, N369, N368, N367, N366, N365, 
        N364, N363, N362, N361, N360, N359, N358, N357, N356, N355, N354, N353, 
        N352}), .b({1'b1, 1'b0, 1'b1}), .remainder({N8, N7, N6}) );
  CONT_DW01_inc_3 r368 ( .A({1'b0, work_cntr[19:18], n164, n161, n143, 
        work_cntr[14:2], n100, work_cntr[0]}), .SUM({N372, N371, N370, N369, 
        N368, N367, N366, N365, N364, N363, N362, N361, N360, N359, N358, N357, 
        N356, N355, N354, N353, N352}) );
  CONT_DW01_inc_4 add_103 ( .A({global_cntr[19:18], n169, n147, n136, n168, 
        n145, n131, n144, n134, n167, n130, n129, n135, n166, n146, n165, n41, 
        n13, n97}), .SUM({N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, 
        N50, N49, N48, N47, N46, N45, N44, N43, N42, N41}) );
  CONT_DW_div_uns_1 r363 ( .a({work_cntr[19:18], n163, n160, n142, n159, n158, 
        n157, n156, n140, n154, n153, n162, n141, n155, n139, n152, n125, n9, 
        n98}), .b({1'b1, 1'b0, 1'b1}), .remainder({N2, N1, N0}) );
  DFFRX1 \curr_photo_reg[1]  ( .D(next_photo[1]), .CK(clk), .RN(n244), .Q(
        curr_photo[1]), .QN(n45) );
  ADDFXL \add_196/U1_2  ( .A(n41), .B(curr_photo[1]), .CI(n6), .CO(
        \add_196/carry[3] ), .S(N327) );
  DFFRX1 \state_reg[0]  ( .D(n387), .CK(clk), .RN(n53), .Q(state[0]), .QN(n361) );
  DFFSX1 en_si_reg ( .D(next_en_si), .CK(clk), .SN(n55), .Q(en_si) );
  DFFRX1 \global_cntr_reg[3]  ( .D(n402), .CK(clk), .RN(n244), .Q(n165), .QN(
        n88) );
  DFFRX1 \global_cntr_reg[4]  ( .D(n401), .CK(clk), .RN(n240), .Q(n146), .QN(
        n87) );
  DFFRX1 \global_cntr_reg[5]  ( .D(next_glb_cntr[5]), .CK(clk), .RN(n240), .Q(
        n166), .QN(n86) );
  DFFRX1 \global_cntr_reg[6]  ( .D(next_glb_cntr[6]), .CK(clk), .RN(n240), .Q(
        n135), .QN(n85) );
  DFFRX1 \global_cntr_reg[7]  ( .D(n400), .CK(clk), .RN(n240), .Q(n129), .QN(
        n84) );
  DFFRX1 \global_cntr_reg[8]  ( .D(n399), .CK(clk), .RN(n241), .Q(n130), .QN(
        n83) );
  DFFRX1 \global_cntr_reg[9]  ( .D(n398), .CK(clk), .RN(n241), .Q(n167), .QN(
        n82) );
  DFFRX1 \global_cntr_reg[10]  ( .D(n397), .CK(clk), .RN(n241), .Q(n134), .QN(
        n81) );
  DFFRX1 \global_cntr_reg[11]  ( .D(n396), .CK(clk), .RN(n241), .Q(n144), .QN(
        n80) );
  DFFRX1 \global_cntr_reg[12]  ( .D(n395), .CK(clk), .RN(n242), .Q(n131), .QN(
        n79) );
  DFFRX1 \global_cntr_reg[13]  ( .D(n394), .CK(clk), .RN(n242), .Q(n145), .QN(
        n78) );
  DFFRX1 \global_cntr_reg[14]  ( .D(next_glb_cntr[14]), .CK(clk), .RN(n242), 
        .Q(n168), .QN(n77) );
  DFFRX1 \global_cntr_reg[15]  ( .D(next_glb_cntr[15]), .CK(clk), .RN(n242), 
        .Q(n136), .QN(n76) );
  DFFRX1 \global_cntr_reg[16]  ( .D(n393), .CK(clk), .RN(n243), .Q(n147), .QN(
        n75) );
  DFFRX1 \global_cntr_reg[17]  ( .D(n392), .CK(clk), .RN(n243), .Q(n169), .QN(
        n74) );
  DFFRX1 \global_cntr_reg[18]  ( .D(n391), .CK(clk), .RN(n243), .Q(
        global_cntr[18]), .QN(n73) );
  DFFRX1 \global_cntr_reg[19]  ( .D(n390), .CK(clk), .RN(n243), .Q(
        global_cntr[19]), .QN(n54) );
  DFFRX1 \state_reg[1]  ( .D(n389), .CK(clk), .RN(n244), .Q(state[1]), .QN(
        n175) );
  DFFRX1 \curr_photo_reg[0]  ( .D(next_photo[0]), .CK(clk), .RN(n244), .Q(
        curr_photo[0]), .QN(n46) );
  DFFRX1 \global_cntr_reg[2]  ( .D(n403), .CK(clk), .RN(n55), .Q(
        global_cntr[2]), .QN(n89) );
  DFFRX1 \global_cntr_reg[0]  ( .D(n388), .CK(clk), .RN(n53), .Q(work_cntr[0]), 
        .QN(n91) );
  DFFRX1 \global_cntr_reg[1]  ( .D(n404), .CK(clk), .RN(n53), .Q(n1), .QN(
        work_cntr[1]) );
  NAND2BX1 U3 ( .AN(n148), .B(read_cntr[0]), .Y(n203) );
  CLKINVX1 U4 ( .A(n99), .Y(n100) );
  OAI21X2 U5 ( .A0(n288), .A1(n289), .B0(n389), .Y(n2) );
  CLKINVX1 U6 ( .A(n52), .Y(n55) );
  CLKINVX1 U7 ( .A(global_cntr[2]), .Y(n11) );
  CLKBUFX3 U8 ( .A(n313), .Y(n207) );
  NAND2BX1 U9 ( .AN(n148), .B(read_cntr[0]), .Y(n245) );
  CLKINVX1 U10 ( .A(n30), .Y(n31) );
  CLKINVX1 U11 ( .A(n245), .Y(n30) );
  CLKBUFX3 U12 ( .A(n247), .Y(n201) );
  AND2X2 U13 ( .A(n99), .B(curr_photo[0]), .Y(n6) );
  NAND2X1 U17 ( .A(n175), .B(n361), .Y(init_time_mux_sel) );
  CLKBUFX3 U18 ( .A(n310), .Y(n206) );
  CLKINVX1 U19 ( .A(reset), .Y(n405) );
  BUFX2 U20 ( .A(write_addr[0]), .Y(n8) );
  INVX1 U22 ( .A(n13), .Y(n9) );
  CLKINVX1 U24 ( .A(n100), .Y(n13) );
  INVXL U25 ( .A(n97), .Y(n14) );
  INVXL U26 ( .A(n74), .Y(n15) );
  INVXL U27 ( .A(n75), .Y(n16) );
  INVXL U28 ( .A(n76), .Y(n17) );
  INVXL U29 ( .A(n77), .Y(n18) );
  INVXL U30 ( .A(n78), .Y(n19) );
  INVXL U31 ( .A(n79), .Y(n20) );
  INVXL U32 ( .A(n80), .Y(n21) );
  INVXL U33 ( .A(n81), .Y(n22) );
  INVXL U34 ( .A(n82), .Y(n23) );
  INVXL U35 ( .A(n83), .Y(n24) );
  INVXL U36 ( .A(n84), .Y(n25) );
  INVXL U37 ( .A(n85), .Y(n26) );
  INVXL U38 ( .A(n86), .Y(n27) );
  INVXL U39 ( .A(n87), .Y(n28) );
  INVXL U40 ( .A(n88), .Y(n29) );
  INVXL U41 ( .A(n30), .Y(n32) );
  INVXL U42 ( .A(n94), .Y(n33) );
  CLKINVX1 U43 ( .A(n33), .Y(n34) );
  INVXL U44 ( .A(n72), .Y(n35) );
  INVXL U45 ( .A(n35), .Y(n36) );
  INVXL U46 ( .A(n35), .Y(n37) );
  AND2X2 U47 ( .A(n93), .B(n288), .Y(n38) );
  INVXL U48 ( .A(n354), .Y(n39) );
  CLKINVX1 U49 ( .A(n354), .Y(en_so) );
  CLKINVX1 U50 ( .A(n11), .Y(n41) );
  CLKINVX1 U51 ( .A(n62), .Y(n42) );
  CLKINVX1 U52 ( .A(n42), .Y(n43) );
  CLKINVX1 U53 ( .A(n63), .Y(n44) );
  CLKINVX1 U54 ( .A(n63), .Y(n47) );
  CLKINVX1 U55 ( .A(n66), .Y(n48) );
  CLKINVX1 U56 ( .A(n92), .Y(n94) );
  CLKINVX1 U57 ( .A(n30), .Y(n49) );
  NAND2BX1 U58 ( .AN(n150), .B(n132), .Y(n202) );
  INVX1 U59 ( .A(n92), .Y(n50) );
  INVXL U60 ( .A(n405), .Y(n52) );
  INVX1 U61 ( .A(n52), .Y(n53) );
  INVXL U62 ( .A(n174), .Y(n56) );
  CLKINVX1 U63 ( .A(n174), .Y(n57) );
  CLKINVX1 U64 ( .A(n314), .Y(n58) );
  CLKINVX1 U65 ( .A(n58), .Y(n59) );
  CLKINVX1 U66 ( .A(n58), .Y(n60) );
  INVX1 U67 ( .A(n58), .Y(n61) );
  INVX1 U68 ( .A(n58), .Y(n62) );
  CLKINVX1 U69 ( .A(n206), .Y(n63) );
  INVX1 U70 ( .A(n63), .Y(n64) );
  INVX1 U71 ( .A(n63), .Y(n65) );
  CLKINVX1 U72 ( .A(n201), .Y(n66) );
  CLKINVX1 U73 ( .A(n66), .Y(n67) );
  CLKINVX1 U74 ( .A(n66), .Y(n68) );
  CLKINVX1 U75 ( .A(n66), .Y(n69) );
  CLKINVX1 U76 ( .A(n172), .Y(n70) );
  INVX1 U77 ( .A(n172), .Y(n71) );
  INVX1 U78 ( .A(n172), .Y(n72) );
  INVX1 U79 ( .A(n172), .Y(n90) );
  CLKINVX1 U80 ( .A(n207), .Y(n92) );
  INVXL U81 ( .A(n92), .Y(n93) );
  CLKINVX1 U82 ( .A(n92), .Y(n95) );
  NOR4X2 U83 ( .A(write_cntr[16]), .B(write_cntr[17]), .C(write_cntr[18]), .D(
        write_cntr[19]), .Y(n288) );
  INVXL U84 ( .A(work_cntr[0]), .Y(n96) );
  INVX1 U85 ( .A(n96), .Y(n97) );
  INVX1 U86 ( .A(n96), .Y(n98) );
  CLKINVX1 U87 ( .A(work_cntr[1]), .Y(n99) );
  INVX1 U88 ( .A(n423), .Y(n101) );
  INVX16 U89 ( .A(n101), .Y(im_a[2]) );
  OAI211XL U90 ( .A0(n89), .A1(n206), .B0(n327), .C0(n328), .Y(n423) );
  CLKINVX1 U91 ( .A(n406), .Y(n103) );
  INVX16 U92 ( .A(n103), .Y(im_a[19]) );
  CLKINVX1 U93 ( .A(n407), .Y(n105) );
  INVX16 U94 ( .A(n105), .Y(im_a[18]) );
  CLKINVX1 U95 ( .A(n408), .Y(n107) );
  INVX16 U96 ( .A(n107), .Y(im_a[17]) );
  CLKINVX1 U97 ( .A(n409), .Y(n109) );
  INVX16 U98 ( .A(n109), .Y(im_a[16]) );
  CLKINVX1 U99 ( .A(n410), .Y(n111) );
  INVX16 U100 ( .A(n111), .Y(im_a[15]) );
  CLKINVX1 U101 ( .A(n411), .Y(n113) );
  INVX16 U102 ( .A(n113), .Y(im_a[14]) );
  CLKINVX1 U103 ( .A(n412), .Y(n115) );
  INVX16 U104 ( .A(n115), .Y(im_a[13]) );
  CLKINVX1 U105 ( .A(n413), .Y(n117) );
  INVX16 U106 ( .A(n117), .Y(im_a[12]) );
  CLKINVX1 U107 ( .A(n414), .Y(n119) );
  INVX16 U108 ( .A(n119), .Y(im_a[11]) );
  CLKINVX1 U109 ( .A(n415), .Y(n121) );
  INVX16 U110 ( .A(n121), .Y(im_a[10]) );
  BUFX16 U111 ( .A(n416), .Y(im_a[9]) );
  BUFX16 U112 ( .A(n417), .Y(im_a[8]) );
  CLKBUFX3 U113 ( .A(work_cntr[2]), .Y(n125) );
  XOR2X1 U114 ( .A(global_cntr[2]), .B(n1), .Y(work_cntr[2]) );
  BUFX16 U115 ( .A(n418), .Y(im_a[7]) );
  BUFX16 U116 ( .A(n419), .Y(im_a[6]) );
  NAND2BX1 U117 ( .AN(n57), .B(n200), .Y(n204) );
  NOR3X2 U118 ( .A(n356), .B(n100), .C(n89), .Y(N477) );
  BUFX16 U119 ( .A(n420), .Y(im_a[5]) );
  NAND2BX1 U120 ( .AN(n57), .B(n199), .Y(n286) );
  CLKBUFX3 U121 ( .A(read_cntr[0]), .Y(n132) );
  NOR3X2 U122 ( .A(n291), .B(n389), .C(n298), .Y(n295) );
  NOR4X2 U123 ( .A(n89), .B(init_time_mux_sel), .C(n356), .D(n13), .Y(
        en_photo_num) );
  BUFX16 U124 ( .A(n421), .Y(im_a[4]) );
  NAND2BX1 U125 ( .AN(n57), .B(n200), .Y(n137) );
  CLKINVX1 U126 ( .A(n290), .Y(n389) );
  AOI211X4 U127 ( .A0(n298), .A1(n355), .B0(n359), .C0(n39), .Y(n290) );
  NOR4X2 U128 ( .A(init_time_mux_sel), .B(n357), .C(n358), .D(n41), .Y(
        en_fb_addr) );
  BUFX16 U129 ( .A(n422), .Y(im_a[3]) );
  CLKBUFX3 U130 ( .A(work_cntr[4]), .Y(n139) );
  XNOR2X1 U131 ( .A(n28), .B(\sub_102/carry[4] ), .Y(work_cntr[4]) );
  CLKBUFX3 U132 ( .A(work_cntr[10]), .Y(n140) );
  XNOR2X1 U133 ( .A(n22), .B(\sub_102/carry[10] ), .Y(work_cntr[10]) );
  CLKBUFX3 U134 ( .A(work_cntr[6]), .Y(n141) );
  XNOR2X1 U135 ( .A(n26), .B(\sub_102/carry[6] ), .Y(work_cntr[6]) );
  XOR2X1 U136 ( .A(n17), .B(\sub_102/carry[15] ), .Y(work_cntr[15]) );
  CLKINVX1 U137 ( .A(work_cntr[15]), .Y(n142) );
  CLKINVX1 U138 ( .A(work_cntr[15]), .Y(n143) );
  CLKBUFX3 U139 ( .A(n205), .Y(n148) );
  CLKBUFX3 U140 ( .A(n205), .Y(n149) );
  CLKBUFX3 U141 ( .A(n205), .Y(n150) );
  NAND2BX1 U142 ( .AN(n56), .B(n208), .Y(n205) );
  NOR3X2 U143 ( .A(n41), .B(work_cntr[1]), .C(n356), .Y(N435) );
  MXI2X2 U144 ( .A(n360), .B(n298), .S0(n39), .Y(n387) );
  BUFX16 U145 ( .A(n425), .Y(im_a[0]) );
  CLKBUFX3 U146 ( .A(work_cntr[3]), .Y(n152) );
  XNOR2X1 U147 ( .A(n29), .B(n173), .Y(work_cntr[3]) );
  CLKBUFX3 U148 ( .A(work_cntr[8]), .Y(n153) );
  XNOR2X1 U149 ( .A(n24), .B(\sub_102/carry[8] ), .Y(work_cntr[8]) );
  CLKBUFX3 U150 ( .A(work_cntr[9]), .Y(n154) );
  XNOR2X1 U151 ( .A(n23), .B(\sub_102/carry[9] ), .Y(work_cntr[9]) );
  CLKBUFX3 U152 ( .A(work_cntr[5]), .Y(n155) );
  XNOR2X1 U153 ( .A(n27), .B(\sub_102/carry[5] ), .Y(work_cntr[5]) );
  CLKBUFX3 U154 ( .A(work_cntr[11]), .Y(n156) );
  XNOR2X1 U155 ( .A(n21), .B(\sub_102/carry[11] ), .Y(work_cntr[11]) );
  CLKBUFX3 U156 ( .A(work_cntr[12]), .Y(n157) );
  XNOR2X1 U157 ( .A(n20), .B(\sub_102/carry[12] ), .Y(work_cntr[12]) );
  CLKBUFX3 U158 ( .A(work_cntr[13]), .Y(n158) );
  XNOR2X1 U159 ( .A(n19), .B(\sub_102/carry[13] ), .Y(work_cntr[13]) );
  CLKBUFX3 U160 ( .A(work_cntr[14]), .Y(n159) );
  XNOR2X1 U161 ( .A(n18), .B(\sub_102/carry[14] ), .Y(work_cntr[14]) );
  XOR2X1 U162 ( .A(n16), .B(\sub_102/carry[16] ), .Y(work_cntr[16]) );
  CLKINVX1 U163 ( .A(work_cntr[16]), .Y(n160) );
  CLKINVX1 U164 ( .A(work_cntr[16]), .Y(n161) );
  CLKBUFX3 U165 ( .A(work_cntr[7]), .Y(n162) );
  XNOR2X1 U166 ( .A(n25), .B(\sub_102/carry[7] ), .Y(work_cntr[7]) );
  XOR2X1 U167 ( .A(n15), .B(\sub_102/carry[17] ), .Y(work_cntr[17]) );
  CLKINVX1 U168 ( .A(work_cntr[17]), .Y(n163) );
  CLKINVX1 U169 ( .A(work_cntr[17]), .Y(n164) );
  NOR4X2 U170 ( .A(n91), .B(n11), .C(n358), .D(n13), .Y(N457) );
  OAI21X1 U171 ( .A0(n296), .A1(n297), .B0(n295), .Y(n294) );
  CLKBUFX3 U172 ( .A(next_en_si), .Y(n170) );
  OAI31X1 U173 ( .A0(n205), .A1(N8), .A2(n299), .B0(n300), .Y(next_en_si) );
  BUFX16 U174 ( .A(n424), .Y(im_a[1]) );
  INVX1 U175 ( .A(n387), .Y(n291) );
  OAI211XL U176 ( .A0(n303), .A1(n387), .B0(n304), .C0(n305), .Y(n302) );
  AND2X2 U177 ( .A(n93), .B(n288), .Y(im_wen_n_BAR) );
  OR2XL U178 ( .A(n294), .B(n46), .Y(n293) );
  MXI2XL U179 ( .A(n295), .B(n294), .S0(n46), .Y(next_photo[0]) );
  AND4X1 U180 ( .A(n376), .B(n377), .C(n378), .D(n379), .Y(n172) );
  CLKBUFX3 U181 ( .A(n2), .Y(n209) );
  CLKBUFX3 U182 ( .A(n219), .Y(n210) );
  CLKBUFX3 U183 ( .A(n217), .Y(n215) );
  CLKBUFX3 U184 ( .A(n220), .Y(n216) );
  CLKBUFX3 U185 ( .A(n219), .Y(n211) );
  CLKBUFX3 U186 ( .A(n218), .Y(n214) );
  CLKBUFX3 U187 ( .A(n218), .Y(n213) );
  CLKBUFX3 U188 ( .A(n2), .Y(n212) );
  CLKBUFX3 U189 ( .A(n230), .Y(n224) );
  CLKBUFX3 U190 ( .A(n230), .Y(n225) );
  CLKBUFX3 U191 ( .A(n231), .Y(n221) );
  CLKBUFX3 U192 ( .A(n231), .Y(n222) );
  CLKBUFX3 U193 ( .A(n231), .Y(n223) );
  CLKBUFX3 U194 ( .A(n232), .Y(n228) );
  CLKBUFX3 U195 ( .A(n232), .Y(n229) );
  CLKBUFX3 U196 ( .A(n230), .Y(n226) );
  CLKBUFX3 U197 ( .A(n232), .Y(n227) );
  CLKBUFX3 U198 ( .A(n200), .Y(n193) );
  CLKBUFX3 U199 ( .A(n199), .Y(n195) );
  CLKBUFX3 U200 ( .A(n198), .Y(n196) );
  CLKBUFX3 U201 ( .A(n200), .Y(n194) );
  CLKBUFX3 U202 ( .A(n208), .Y(n198) );
  CLKBUFX3 U203 ( .A(n231), .Y(n230) );
  CLKBUFX3 U204 ( .A(n219), .Y(n218) );
  CLKBUFX3 U205 ( .A(n220), .Y(n217) );
  CLKBUFX3 U206 ( .A(n208), .Y(n200) );
  CLKBUFX3 U207 ( .A(n208), .Y(n199) );
  CLKBUFX3 U208 ( .A(n405), .Y(n244) );
  CLKBUFX3 U209 ( .A(n405), .Y(n243) );
  CLKBUFX3 U210 ( .A(n405), .Y(n242) );
  CLKBUFX3 U211 ( .A(n55), .Y(n241) );
  CLKBUFX3 U212 ( .A(n55), .Y(n240) );
  CLKBUFX3 U213 ( .A(n198), .Y(n197) );
  CLKBUFX3 U214 ( .A(n285), .Y(n208) );
  NOR2XL U215 ( .A(n387), .B(n290), .Y(n285) );
  CLKBUFX3 U216 ( .A(n238), .Y(n237) );
  CLKBUFX3 U217 ( .A(n239), .Y(n234) );
  CLKBUFX3 U218 ( .A(n233), .Y(n231) );
  CLKBUFX3 U219 ( .A(n2), .Y(n219) );
  CLKBUFX3 U220 ( .A(n233), .Y(n232) );
  CLKBUFX3 U221 ( .A(n2), .Y(n220) );
  CLKBUFX3 U222 ( .A(n239), .Y(n235) );
  CLKBUFX3 U223 ( .A(n239), .Y(n236) );
  AOI2BB1X1 U224 ( .A0N(n353), .A1N(N2), .B0(n354), .Y(n313) );
  NOR3X1 U225 ( .A(n353), .B(N2), .C(n354), .Y(n314) );
  CLKBUFX3 U226 ( .A(n306), .Y(n239) );
  CLKBUFX3 U227 ( .A(n306), .Y(n238) );
  NOR2BX1 U228 ( .AN(init_time_mux_sel), .B(n355), .Y(n310) );
  CLKBUFX3 U229 ( .A(n287), .Y(n233) );
  XOR2X1 U230 ( .A(n99), .B(curr_photo[0]), .Y(N326) );
  XOR2X1 U231 ( .A(n165), .B(\add_196/carry[3] ), .Y(N328) );
  XOR2X1 U232 ( .A(n146), .B(n176), .Y(N329) );
  XOR2X1 U233 ( .A(n166), .B(n182), .Y(N330) );
  XOR2X1 U234 ( .A(n135), .B(n183), .Y(N331) );
  XOR2X1 U235 ( .A(n129), .B(n177), .Y(N332) );
  XOR2X1 U236 ( .A(n130), .B(n184), .Y(N333) );
  XOR2X1 U237 ( .A(n167), .B(n185), .Y(N334) );
  XOR2X1 U238 ( .A(n134), .B(n178), .Y(N335) );
  XOR2X1 U239 ( .A(n144), .B(n186), .Y(N336) );
  XOR2X1 U240 ( .A(n131), .B(n187), .Y(N337) );
  XOR2X1 U241 ( .A(n145), .B(n179), .Y(N338) );
  XOR2X1 U242 ( .A(n168), .B(n188), .Y(N339) );
  XOR2X1 U243 ( .A(n136), .B(n189), .Y(N340) );
  XOR2X1 U244 ( .A(n147), .B(n180), .Y(N341) );
  XOR2X1 U245 ( .A(n169), .B(n190), .Y(N342) );
  XOR2X1 U246 ( .A(global_cntr[18]), .B(n181), .Y(N343) );
  XNOR2X2 U247 ( .A(global_cntr[18]), .B(\sub_102/carry[18] ), .Y(
        work_cntr[18]) );
  XNOR2X2 U248 ( .A(global_cntr[19]), .B(\sub_102/carry[19] ), .Y(
        work_cntr[19]) );
  NAND2X1 U249 ( .A(n73), .B(n191), .Y(\sub_102/carry[19] ) );
  CLKINVX1 U250 ( .A(\sub_102/carry[18] ), .Y(n191) );
  OR2X1 U251 ( .A(n29), .B(n173), .Y(\sub_102/carry[4] ) );
  OR2X1 U252 ( .A(n28), .B(\sub_102/carry[4] ), .Y(\sub_102/carry[5] ) );
  OR2X1 U253 ( .A(n27), .B(\sub_102/carry[5] ), .Y(\sub_102/carry[6] ) );
  OR2X1 U254 ( .A(n26), .B(\sub_102/carry[6] ), .Y(\sub_102/carry[7] ) );
  OR2X1 U255 ( .A(n25), .B(\sub_102/carry[7] ), .Y(\sub_102/carry[8] ) );
  OR2X1 U256 ( .A(n24), .B(\sub_102/carry[8] ), .Y(\sub_102/carry[9] ) );
  OR2X1 U257 ( .A(n23), .B(\sub_102/carry[9] ), .Y(\sub_102/carry[10] ) );
  OR2X1 U258 ( .A(n22), .B(\sub_102/carry[10] ), .Y(\sub_102/carry[11] ) );
  OR2X1 U259 ( .A(n21), .B(\sub_102/carry[11] ), .Y(\sub_102/carry[12] ) );
  OR2X1 U260 ( .A(n20), .B(\sub_102/carry[12] ), .Y(\sub_102/carry[13] ) );
  OR2X1 U261 ( .A(n19), .B(\sub_102/carry[13] ), .Y(\sub_102/carry[14] ) );
  OR2X1 U262 ( .A(n18), .B(\sub_102/carry[14] ), .Y(\sub_102/carry[15] ) );
  OR2X1 U263 ( .A(n17), .B(\sub_102/carry[15] ), .Y(\sub_102/carry[16] ) );
  OR2X1 U264 ( .A(n16), .B(\sub_102/carry[16] ), .Y(\sub_102/carry[17] ) );
  OR2X1 U265 ( .A(n15), .B(\sub_102/carry[17] ), .Y(\sub_102/carry[18] ) );
  AND2X2 U266 ( .A(n1), .B(global_cntr[2]), .Y(n173) );
  OAI2BB1X1 U267 ( .A0N(n198), .A1N(read_cntr[0]), .B0(en_so), .Y(n247) );
  NAND2BX1 U268 ( .AN(n361), .B(n175), .Y(n174) );
  CLKINVX1 U269 ( .A(n174), .Y(n306) );
  XOR2X1 U270 ( .A(n54), .B(n192), .Y(N344) );
  NAND2X1 U271 ( .A(global_cntr[18]), .B(n181), .Y(n192) );
  AND2X2 U272 ( .A(n165), .B(\add_196/carry[3] ), .Y(n176) );
  AND2X2 U273 ( .A(n135), .B(n183), .Y(n177) );
  AND2X2 U274 ( .A(n167), .B(n185), .Y(n178) );
  AND2X2 U275 ( .A(n131), .B(n187), .Y(n179) );
  AND2X2 U276 ( .A(n136), .B(n189), .Y(n180) );
  AND2X2 U277 ( .A(n169), .B(n190), .Y(n181) );
  AND2X2 U278 ( .A(n146), .B(n176), .Y(n182) );
  AND2X2 U279 ( .A(n166), .B(n182), .Y(n183) );
  AND2X2 U280 ( .A(n129), .B(n177), .Y(n184) );
  AND2X2 U281 ( .A(n130), .B(n184), .Y(n185) );
  AND2X2 U282 ( .A(n134), .B(n178), .Y(n186) );
  AND2X2 U283 ( .A(n144), .B(n186), .Y(n187) );
  AND2X2 U284 ( .A(n145), .B(n179), .Y(n188) );
  AND2X2 U285 ( .A(n168), .B(n188), .Y(n189) );
  AND2X2 U286 ( .A(n147), .B(n180), .Y(n190) );
  OAI22XL U287 ( .A0(n202), .A1(n246), .B0(n68), .B1(n248), .Y(read_addr[9])
         );
  OAI22XL U288 ( .A0(n49), .A1(n249), .B0(n247), .B1(n250), .Y(read_addr[8])
         );
  OAI22XL U289 ( .A0(n31), .A1(n251), .B0(n68), .B1(n252), .Y(read_addr[7]) );
  OAI22XL U290 ( .A0(n203), .A1(n253), .B0(n67), .B1(n254), .Y(read_addr[6])
         );
  OAI22XL U291 ( .A0(n49), .A1(n255), .B0(n48), .B1(n256), .Y(read_addr[5]) );
  OAI22XL U292 ( .A0(n202), .A1(n257), .B0(n48), .B1(n258), .Y(read_addr[4])
         );
  OAI22XL U293 ( .A0(n32), .A1(n259), .B0(n69), .B1(n260), .Y(read_addr[3]) );
  OAI22XL U294 ( .A0(n49), .A1(n261), .B0(n201), .B1(n262), .Y(read_addr[2])
         );
  OAI22XL U295 ( .A0(n203), .A1(n263), .B0(n69), .B1(n264), .Y(read_addr[1])
         );
  OAI22XL U296 ( .A0(n202), .A1(n265), .B0(n67), .B1(n266), .Y(read_addr[19])
         );
  OAI22XL U297 ( .A0(n31), .A1(n267), .B0(n68), .B1(n268), .Y(read_addr[18])
         );
  OAI22XL U298 ( .A0(n31), .A1(n269), .B0(n48), .B1(n270), .Y(read_addr[17])
         );
  OAI22XL U299 ( .A0(n203), .A1(n271), .B0(n201), .B1(n272), .Y(read_addr[16])
         );
  OAI22XL U300 ( .A0(n245), .A1(n273), .B0(n67), .B1(n274), .Y(read_addr[15])
         );
  OAI22XL U301 ( .A0(n202), .A1(n275), .B0(n247), .B1(n276), .Y(read_addr[14])
         );
  OAI22XL U302 ( .A0(n32), .A1(n277), .B0(n68), .B1(n278), .Y(read_addr[13])
         );
  OAI22XL U303 ( .A0(n245), .A1(n279), .B0(n201), .B1(n280), .Y(read_addr[12])
         );
  OAI22XL U304 ( .A0(n245), .A1(n281), .B0(n48), .B1(n282), .Y(read_addr[11])
         );
  OAI22XL U305 ( .A0(n203), .A1(n283), .B0(n67), .B1(n284), .Y(read_addr[10])
         );
  MXI2X1 U306 ( .A(n49), .B(n69), .S0(n8), .Y(read_addr[0]) );
  AO22X1 U307 ( .A0(write_cntr[9]), .A1(n214), .B0(N87), .B1(n229), .Y(
        next_write_cntr[9]) );
  AO22X1 U308 ( .A0(write_cntr[8]), .A1(n210), .B0(N86), .B1(n229), .Y(
        next_write_cntr[8]) );
  AO22X1 U309 ( .A0(write_cntr[7]), .A1(n212), .B0(N85), .B1(n229), .Y(
        next_write_cntr[7]) );
  AO22X1 U310 ( .A0(write_cntr[6]), .A1(n211), .B0(N84), .B1(n229), .Y(
        next_write_cntr[6]) );
  AO22X1 U311 ( .A0(write_cntr[5]), .A1(n210), .B0(N83), .B1(n228), .Y(
        next_write_cntr[5]) );
  AO22X1 U312 ( .A0(write_cntr[4]), .A1(n210), .B0(N82), .B1(n228), .Y(
        next_write_cntr[4]) );
  AO22X1 U313 ( .A0(write_cntr[3]), .A1(n212), .B0(N81), .B1(n228), .Y(
        next_write_cntr[3]) );
  AO22X1 U314 ( .A0(write_cntr[2]), .A1(n211), .B0(N80), .B1(n228), .Y(
        next_write_cntr[2]) );
  AO22X1 U315 ( .A0(write_cntr[1]), .A1(n211), .B0(N79), .B1(n233), .Y(
        next_write_cntr[1]) );
  AO22X1 U316 ( .A0(n209), .A1(write_cntr[19]), .B0(N97), .B1(n233), .Y(
        next_write_cntr[19]) );
  AO22X1 U317 ( .A0(n209), .A1(write_cntr[18]), .B0(N96), .B1(n232), .Y(
        next_write_cntr[18]) );
  AO22X1 U318 ( .A0(n210), .A1(write_cntr[17]), .B0(N95), .B1(n230), .Y(
        next_write_cntr[17]) );
  AO22X1 U319 ( .A0(n209), .A1(write_cntr[16]), .B0(N94), .B1(n227), .Y(
        next_write_cntr[16]) );
  AO22X1 U320 ( .A0(write_cntr[15]), .A1(n212), .B0(N93), .B1(n227), .Y(
        next_write_cntr[15]) );
  AO22X1 U321 ( .A0(write_cntr[14]), .A1(n212), .B0(N92), .B1(n227), .Y(
        next_write_cntr[14]) );
  AO22X1 U322 ( .A0(write_cntr[13]), .A1(n213), .B0(N91), .B1(n227), .Y(
        next_write_cntr[13]) );
  AO22X1 U323 ( .A0(write_cntr[12]), .A1(n213), .B0(N90), .B1(n226), .Y(
        next_write_cntr[12]) );
  AO22X1 U324 ( .A0(write_cntr[11]), .A1(n213), .B0(N89), .B1(n226), .Y(
        next_write_cntr[11]) );
  AO22X1 U325 ( .A0(write_cntr[10]), .A1(n213), .B0(N88), .B1(n226), .Y(
        next_write_cntr[10]) );
  AO22X1 U326 ( .A0(write_cntr[0]), .A1(n214), .B0(N78), .B1(n226), .Y(
        next_write_cntr[0]) );
  OAI22XL U327 ( .A0(n193), .A1(n248), .B0(n149), .B1(n246), .Y(
        next_write_addr[9]) );
  CLKINVX1 U328 ( .A(N230), .Y(n246) );
  CLKINVX1 U329 ( .A(write_addr[9]), .Y(n248) );
  OAI22XL U330 ( .A0(n196), .A1(n250), .B0(n148), .B1(n249), .Y(
        next_write_addr[8]) );
  CLKINVX1 U331 ( .A(N229), .Y(n249) );
  CLKINVX1 U332 ( .A(write_addr[8]), .Y(n250) );
  OAI22XL U333 ( .A0(n196), .A1(n252), .B0(n286), .B1(n251), .Y(
        next_write_addr[7]) );
  CLKINVX1 U334 ( .A(N228), .Y(n251) );
  CLKINVX1 U335 ( .A(write_addr[7]), .Y(n252) );
  OAI22XL U336 ( .A0(n196), .A1(n254), .B0(n149), .B1(n253), .Y(
        next_write_addr[6]) );
  CLKINVX1 U337 ( .A(N227), .Y(n253) );
  CLKINVX1 U338 ( .A(write_addr[6]), .Y(n254) );
  OAI22XL U339 ( .A0(n196), .A1(n256), .B0(n137), .B1(n255), .Y(
        next_write_addr[5]) );
  CLKINVX1 U340 ( .A(N226), .Y(n255) );
  CLKINVX1 U341 ( .A(write_addr[5]), .Y(n256) );
  OAI22XL U342 ( .A0(n195), .A1(n258), .B0(n204), .B1(n257), .Y(
        next_write_addr[4]) );
  CLKINVX1 U343 ( .A(N225), .Y(n257) );
  CLKINVX1 U344 ( .A(write_addr[4]), .Y(n258) );
  OAI22XL U345 ( .A0(n195), .A1(n260), .B0(n150), .B1(n259), .Y(
        next_write_addr[3]) );
  CLKINVX1 U346 ( .A(N224), .Y(n259) );
  CLKINVX1 U347 ( .A(write_addr[3]), .Y(n260) );
  OAI22XL U348 ( .A0(n195), .A1(n262), .B0(n286), .B1(n261), .Y(
        next_write_addr[2]) );
  CLKINVX1 U349 ( .A(N223), .Y(n261) );
  CLKINVX1 U350 ( .A(write_addr[2]), .Y(n262) );
  OAI22XL U351 ( .A0(n195), .A1(n264), .B0(n137), .B1(n263), .Y(
        next_write_addr[1]) );
  CLKINVX1 U352 ( .A(N222), .Y(n263) );
  CLKINVX1 U353 ( .A(write_addr[1]), .Y(n264) );
  OAI22XL U354 ( .A0(n199), .A1(n266), .B0(n150), .B1(n265), .Y(
        next_write_addr[19]) );
  CLKINVX1 U355 ( .A(N240), .Y(n265) );
  CLKINVX1 U356 ( .A(write_addr[19]), .Y(n266) );
  OAI22XL U357 ( .A0(n197), .A1(n268), .B0(n137), .B1(n267), .Y(
        next_write_addr[18]) );
  CLKINVX1 U358 ( .A(N239), .Y(n267) );
  CLKINVX1 U359 ( .A(write_addr[18]), .Y(n268) );
  OAI22XL U360 ( .A0(n197), .A1(n270), .B0(n204), .B1(n269), .Y(
        next_write_addr[17]) );
  CLKINVX1 U361 ( .A(N238), .Y(n269) );
  CLKINVX1 U362 ( .A(write_addr[17]), .Y(n270) );
  OAI22XL U363 ( .A0(n194), .A1(n272), .B0(n149), .B1(n271), .Y(
        next_write_addr[16]) );
  CLKINVX1 U364 ( .A(N237), .Y(n271) );
  CLKINVX1 U365 ( .A(write_addr[16]), .Y(n272) );
  OAI22XL U366 ( .A0(n194), .A1(n274), .B0(n204), .B1(n273), .Y(
        next_write_addr[15]) );
  CLKINVX1 U367 ( .A(N236), .Y(n273) );
  CLKINVX1 U368 ( .A(write_addr[15]), .Y(n274) );
  OAI22XL U369 ( .A0(n199), .A1(n276), .B0(n286), .B1(n275), .Y(
        next_write_addr[14]) );
  CLKINVX1 U370 ( .A(N235), .Y(n275) );
  CLKINVX1 U371 ( .A(write_addr[14]), .Y(n276) );
  OAI22XL U372 ( .A0(n194), .A1(n278), .B0(n150), .B1(n277), .Y(
        next_write_addr[13]) );
  CLKINVX1 U373 ( .A(N234), .Y(n277) );
  CLKINVX1 U374 ( .A(write_addr[13]), .Y(n278) );
  OAI22XL U375 ( .A0(n194), .A1(n280), .B0(n137), .B1(n279), .Y(
        next_write_addr[12]) );
  CLKINVX1 U376 ( .A(N233), .Y(n279) );
  CLKINVX1 U377 ( .A(write_addr[12]), .Y(n280) );
  OAI22XL U378 ( .A0(n193), .A1(n282), .B0(n286), .B1(n281), .Y(
        next_write_addr[11]) );
  CLKINVX1 U379 ( .A(N232), .Y(n281) );
  CLKINVX1 U380 ( .A(write_addr[11]), .Y(n282) );
  OAI22XL U381 ( .A0(n193), .A1(n284), .B0(n149), .B1(n283), .Y(
        next_write_addr[10]) );
  CLKINVX1 U382 ( .A(N231), .Y(n283) );
  CLKINVX1 U383 ( .A(write_addr[10]), .Y(n284) );
  MXI2X1 U384 ( .A(n204), .B(n193), .S0(write_addr[0]), .Y(next_write_addr[0])
         );
  AO22X1 U385 ( .A0(read_cntr[9]), .A1(n214), .B0(N129), .B1(n225), .Y(
        next_read_cntr[9]) );
  AO22X1 U386 ( .A0(read_cntr[8]), .A1(n214), .B0(N128), .B1(n225), .Y(
        next_read_cntr[8]) );
  AO22X1 U387 ( .A0(read_cntr[7]), .A1(n215), .B0(N127), .B1(n225), .Y(
        next_read_cntr[7]) );
  AO22X1 U388 ( .A0(read_cntr[6]), .A1(n215), .B0(N126), .B1(n225), .Y(
        next_read_cntr[6]) );
  AO22X1 U389 ( .A0(read_cntr[5]), .A1(n215), .B0(N125), .B1(n224), .Y(
        next_read_cntr[5]) );
  AO22X1 U390 ( .A0(read_cntr[4]), .A1(n215), .B0(N124), .B1(n224), .Y(
        next_read_cntr[4]) );
  AO22X1 U391 ( .A0(read_cntr[3]), .A1(n218), .B0(N123), .B1(n224), .Y(
        next_read_cntr[3]) );
  AO22X1 U392 ( .A0(read_cntr[2]), .A1(n217), .B0(N122), .B1(n224), .Y(
        next_read_cntr[2]) );
  AO22X1 U393 ( .A0(read_cntr[1]), .A1(n220), .B0(N121), .B1(n223), .Y(
        next_read_cntr[1]) );
  AO22X1 U394 ( .A0(read_cntr[19]), .A1(n217), .B0(N139), .B1(n223), .Y(
        next_read_cntr[19]) );
  AO22X1 U395 ( .A0(read_cntr[18]), .A1(n220), .B0(N138), .B1(n223), .Y(
        next_read_cntr[18]) );
  AO22X1 U396 ( .A0(read_cntr[17]), .A1(n219), .B0(N137), .B1(n223), .Y(
        next_read_cntr[17]) );
  AO22X1 U397 ( .A0(read_cntr[16]), .A1(n217), .B0(N136), .B1(n222), .Y(
        next_read_cntr[16]) );
  AO22X1 U398 ( .A0(read_cntr[15]), .A1(n218), .B0(N135), .B1(n222), .Y(
        next_read_cntr[15]) );
  AO22X1 U399 ( .A0(read_cntr[14]), .A1(n216), .B0(N134), .B1(n222), .Y(
        next_read_cntr[14]) );
  AO22X1 U400 ( .A0(read_cntr[13]), .A1(n216), .B0(N133), .B1(n222), .Y(
        next_read_cntr[13]) );
  AO22X1 U401 ( .A0(read_cntr[12]), .A1(n216), .B0(N132), .B1(n221), .Y(
        next_read_cntr[12]) );
  AO22X1 U402 ( .A0(read_cntr[11]), .A1(n216), .B0(N131), .B1(n221), .Y(
        next_read_cntr[11]) );
  AO22X1 U403 ( .A0(read_cntr[10]), .A1(n211), .B0(N130), .B1(n221), .Y(
        next_read_cntr[10]) );
  AO22X1 U404 ( .A0(n209), .A1(n132), .B0(N120), .B1(n221), .Y(
        next_read_cntr[0]) );
  NOR3BXL U405 ( .AN(n288), .B(n289), .C(n290), .Y(n287) );
  XNOR2X1 U406 ( .A(n291), .B(state[0]), .Y(n289) );
  MXI2X1 U407 ( .A(n292), .B(n293), .S0(n45), .Y(next_photo[1]) );
  OA21XL U408 ( .A0(n294), .A1(curr_photo[0]), .B0(n295), .Y(n292) );
  XOR2X1 U409 ( .A(curr_photo[0]), .B(photo_num[0]), .Y(n297) );
  XNOR2X1 U410 ( .A(n45), .B(photo_num[1]), .Y(n296) );
  MXI2X1 U411 ( .A(n301), .B(n302), .S0(n290), .Y(n300) );
  NOR2X1 U412 ( .A(n303), .B(n291), .Y(n301) );
  CLKINVX1 U413 ( .A(n298), .Y(n303) );
  XNOR2X1 U414 ( .A(N7), .B(N6), .Y(n299) );
  CLKINVX1 U415 ( .A(n307), .Y(n395) );
  CLKINVX1 U416 ( .A(n308), .Y(n396) );
  CLKINVX1 U417 ( .A(n309), .Y(n404) );
  OAI211X1 U418 ( .A0(n82), .A1(n310), .B0(n311), .C0(n312), .Y(n416) );
  AOI22X1 U419 ( .A0(N294), .A1(n207), .B0(N334), .B1(n234), .Y(n312) );
  NAND2X1 U420 ( .A(N274), .B(n60), .Y(n311) );
  OAI211X1 U421 ( .A0(n83), .A1(n65), .B0(n315), .C0(n316), .Y(n417) );
  AOI22X1 U422 ( .A0(N293), .A1(n95), .B0(N333), .B1(n234), .Y(n316) );
  NAND2X1 U423 ( .A(N273), .B(n60), .Y(n315) );
  OAI211X1 U424 ( .A0(n84), .A1(n47), .B0(n317), .C0(n318), .Y(n418) );
  AOI22X1 U425 ( .A0(N292), .A1(n94), .B0(N332), .B1(n234), .Y(n318) );
  NAND2X1 U426 ( .A(N272), .B(n43), .Y(n317) );
  OAI211X1 U427 ( .A0(n85), .A1(n206), .B0(n319), .C0(n320), .Y(n419) );
  AOI22X1 U428 ( .A0(N291), .A1(n34), .B0(N331), .B1(n235), .Y(n320) );
  NAND2X1 U429 ( .A(N271), .B(n59), .Y(n319) );
  OAI211X1 U430 ( .A0(n86), .A1(n310), .B0(n321), .C0(n322), .Y(n420) );
  AOI22X1 U431 ( .A0(N290), .A1(n207), .B0(N330), .B1(n235), .Y(n322) );
  NAND2X1 U432 ( .A(N270), .B(n59), .Y(n321) );
  OAI211X1 U433 ( .A0(n87), .A1(n47), .B0(n323), .C0(n324), .Y(n421) );
  AOI22X1 U434 ( .A0(N289), .A1(n94), .B0(N329), .B1(n236), .Y(n324) );
  NAND2X1 U435 ( .A(N269), .B(n43), .Y(n323) );
  OAI211X1 U436 ( .A0(n88), .A1(n64), .B0(n325), .C0(n326), .Y(n422) );
  AOI22X1 U437 ( .A0(N288), .A1(n34), .B0(N328), .B1(n235), .Y(n326) );
  NAND2X1 U438 ( .A(N268), .B(n61), .Y(n325) );
  AOI22X1 U439 ( .A0(N287), .A1(n313), .B0(N327), .B1(n235), .Y(n328) );
  NAND2X1 U440 ( .A(N267), .B(n60), .Y(n327) );
  OAI211X1 U441 ( .A0(work_cntr[1]), .A1(n47), .B0(n329), .C0(n330), .Y(n424)
         );
  AOI22X1 U442 ( .A0(N286), .A1(n34), .B0(N326), .B1(n236), .Y(n330) );
  NAND2X1 U443 ( .A(N266), .B(n43), .Y(n329) );
  OAI211X1 U444 ( .A0(n54), .A1(n65), .B0(n331), .C0(n332), .Y(n406) );
  AOI22X1 U445 ( .A0(N304), .A1(n50), .B0(N344), .B1(n236), .Y(n332) );
  NAND2X1 U446 ( .A(N284), .B(n62), .Y(n331) );
  OAI211X1 U447 ( .A0(n73), .A1(n64), .B0(n333), .C0(n334), .Y(n407) );
  AOI22X1 U448 ( .A0(N303), .A1(n95), .B0(N343), .B1(n236), .Y(n334) );
  NAND2X1 U449 ( .A(N283), .B(n61), .Y(n333) );
  OAI211X1 U450 ( .A0(n74), .A1(n206), .B0(n335), .C0(n336), .Y(n408) );
  AOI22X1 U451 ( .A0(N302), .A1(n94), .B0(N342), .B1(n238), .Y(n336) );
  NAND2X1 U452 ( .A(N282), .B(n59), .Y(n335) );
  OAI211X1 U453 ( .A0(n75), .A1(n44), .B0(n337), .C0(n338), .Y(n409) );
  AOI22X1 U454 ( .A0(N301), .A1(n50), .B0(N341), .B1(n238), .Y(n338) );
  NAND2X1 U455 ( .A(N281), .B(n61), .Y(n337) );
  OAI211X1 U456 ( .A0(n76), .A1(n64), .B0(n339), .C0(n340), .Y(n410) );
  AOI22X1 U457 ( .A0(N300), .A1(n207), .B0(N340), .B1(n237), .Y(n340) );
  NAND2X1 U458 ( .A(N280), .B(n59), .Y(n339) );
  OAI211X1 U459 ( .A0(n77), .A1(n44), .B0(n341), .C0(n342), .Y(n411) );
  AOI22X1 U460 ( .A0(N299), .A1(n95), .B0(N339), .B1(n239), .Y(n342) );
  NAND2X1 U461 ( .A(N279), .B(n62), .Y(n341) );
  OAI211X1 U462 ( .A0(n78), .A1(n44), .B0(n343), .C0(n344), .Y(n412) );
  AOI22X1 U463 ( .A0(N298), .A1(n50), .B0(N338), .B1(n237), .Y(n344) );
  NAND2X1 U464 ( .A(N278), .B(n314), .Y(n343) );
  OAI211X1 U465 ( .A0(n79), .A1(n65), .B0(n345), .C0(n346), .Y(n413) );
  AOI22X1 U466 ( .A0(N297), .A1(n95), .B0(N337), .B1(n306), .Y(n346) );
  NAND2X1 U467 ( .A(N277), .B(n61), .Y(n345) );
  OAI211X1 U468 ( .A0(n80), .A1(n64), .B0(n347), .C0(n348), .Y(n414) );
  AOI22X1 U469 ( .A0(N296), .A1(n313), .B0(N336), .B1(n238), .Y(n348) );
  NAND2X1 U470 ( .A(N276), .B(n60), .Y(n347) );
  OAI211X1 U471 ( .A0(n81), .A1(n44), .B0(n349), .C0(n350), .Y(n415) );
  AOI22X1 U472 ( .A0(N295), .A1(n50), .B0(N335), .B1(n57), .Y(n350) );
  NAND2X1 U473 ( .A(N275), .B(n43), .Y(n349) );
  OAI211X1 U474 ( .A0(n91), .A1(n47), .B0(n351), .C0(n352), .Y(n425) );
  AOI22X1 U475 ( .A0(N285), .A1(n34), .B0(n97), .B1(n306), .Y(n352) );
  NAND2X1 U476 ( .A(N265), .B(n62), .Y(n351) );
  OR2X1 U477 ( .A(n91), .B(work_cntr[1]), .Y(n357) );
  AO21X1 U478 ( .A0(n56), .A1(n197), .B0(im_wen_n_BAR), .Y(_0_net_) );
  AND2X1 U479 ( .A(N1), .B(N0), .Y(n353) );
  NAND2X1 U480 ( .A(state[1]), .B(n361), .Y(n354) );
  NAND4X1 U481 ( .A(n305), .B(n304), .C(n309), .D(n362), .Y(n298) );
  AND4X1 U482 ( .A(n363), .B(n364), .C(n365), .D(n366), .Y(n305) );
  NOR4X1 U483 ( .A(n390), .B(n400), .C(n398), .D(n399), .Y(n366) );
  NOR3X1 U484 ( .A(n403), .B(next_glb_cntr[6]), .C(next_glb_cntr[5]), .Y(n365)
         );
  AOI2BB1X1 U485 ( .A0N(n359), .A1N(n367), .B0(n355), .Y(n360) );
  NOR2BX1 U486 ( .AN(state[1]), .B(n361), .Y(n355) );
  AOI211X1 U487 ( .A0(n403), .A1(n388), .B0(n234), .C0(n368), .Y(n367) );
  CLKINVX1 U488 ( .A(n362), .Y(n388) );
  NAND2X1 U489 ( .A(N41), .B(n70), .Y(n362) );
  CLKINVX1 U490 ( .A(n369), .Y(n403) );
  AND2X1 U491 ( .A(n56), .B(n368), .Y(n359) );
  NAND4X1 U492 ( .A(n370), .B(n371), .C(n372), .D(n373), .Y(n368) );
  NOR3X1 U493 ( .A(n401), .B(next_glb_cntr[6]), .C(next_glb_cntr[5]), .Y(n373)
         );
  AND2X1 U494 ( .A(N46), .B(n36), .Y(next_glb_cntr[5]) );
  AND2X1 U495 ( .A(N47), .B(n90), .Y(next_glb_cntr[6]) );
  CLKINVX1 U496 ( .A(n364), .Y(n401) );
  NAND2X1 U497 ( .A(N45), .B(n71), .Y(n364) );
  NOR2X1 U498 ( .A(n402), .B(n390), .Y(n372) );
  AND2X1 U499 ( .A(N60), .B(n71), .Y(n390) );
  CLKINVX1 U500 ( .A(n363), .Y(n402) );
  NAND2X1 U501 ( .A(N44), .B(n37), .Y(n363) );
  NOR3X1 U502 ( .A(n399), .B(n400), .C(n398), .Y(n371) );
  AND2X1 U503 ( .A(N50), .B(n70), .Y(n398) );
  AND2X1 U504 ( .A(N48), .B(n90), .Y(n400) );
  AND2X1 U505 ( .A(N49), .B(n90), .Y(n399) );
  OA21XL U506 ( .A0(n369), .A1(n309), .B0(n304), .Y(n370) );
  AND4X1 U507 ( .A(n308), .B(n307), .C(n374), .D(n375), .Y(n304) );
  NOR4X1 U508 ( .A(n397), .B(n392), .C(n393), .D(n391), .Y(n375) );
  AND2X1 U509 ( .A(N59), .B(n72), .Y(n391) );
  AND2X1 U510 ( .A(N57), .B(n72), .Y(n393) );
  AND2X1 U511 ( .A(N58), .B(n70), .Y(n392) );
  AND2X1 U512 ( .A(N51), .B(n90), .Y(n397) );
  NOR3X1 U513 ( .A(n394), .B(next_glb_cntr[15]), .C(next_glb_cntr[14]), .Y(
        n374) );
  AND2X1 U514 ( .A(N55), .B(n72), .Y(next_glb_cntr[14]) );
  AND2X1 U515 ( .A(N56), .B(n71), .Y(next_glb_cntr[15]) );
  AND2X1 U516 ( .A(N54), .B(n36), .Y(n394) );
  NAND2X1 U517 ( .A(N53), .B(n70), .Y(n307) );
  NAND2X1 U518 ( .A(N52), .B(n37), .Y(n308) );
  NAND2X1 U519 ( .A(N42), .B(n36), .Y(n309) );
  NAND2X1 U520 ( .A(N43), .B(n71), .Y(n369) );
  NOR4X1 U521 ( .A(n14), .B(n100), .C(n11), .D(n88), .Y(n379) );
  NOR3X1 U522 ( .A(n82), .B(n87), .C(n86), .Y(n378) );
  NOR3X1 U523 ( .A(n74), .B(n77), .C(n75), .Y(n377) );
  NOR3X1 U524 ( .A(n380), .B(n73), .C(n54), .Y(n376) );
  NAND2BX1 U525 ( .AN(n358), .B(n14), .Y(n356) );
  NAND4BX1 U526 ( .AN(n381), .B(n382), .C(n383), .D(n384), .Y(n358) );
  AND2X1 U527 ( .A(n74), .B(n75), .Y(n384) );
  AND3X1 U528 ( .A(n86), .B(n77), .C(n82), .Y(n383) );
  AND2X1 U529 ( .A(n87), .B(n88), .Y(n382) );
  NAND3BX1 U530 ( .AN(n380), .B(n73), .C(n54), .Y(n381) );
  NAND2X1 U531 ( .A(n385), .B(n386), .Y(n380) );
  AND4X1 U532 ( .A(n76), .B(n78), .C(n79), .D(n80), .Y(n386) );
  AND4X1 U533 ( .A(n81), .B(n83), .C(n84), .D(n85), .Y(n385) );
endmodule


module p_dff_WORD24_NSEL5_0 ( clk, reset, en, sel, d, q );
  input [4:0] sel;
  input [23:0] d;
  output [23:0] q;
  input clk, reset, en;
  wire   n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n3, n4, n5, n6, n7,
         n8, n9, n10, n18, n19, n20, n21, n22, n23, n25, n26, n27, n28, n29,
         n30, n31, n32, n36, n39, n40, n42, n43, n44, n48, n49, n51, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109;

  DFFRX1 \q_reg[16]  ( .D(n68), .CK(clk), .RN(n31), .Q(q[16]) );
  DFFRX1 \q_reg[17]  ( .D(n69), .CK(clk), .RN(n31), .Q(n36), .QN(n5) );
  DFFRX1 \q_reg[2]  ( .D(n54), .CK(clk), .RN(n29), .Q(n49), .QN(n7) );
  DFFRX1 \q_reg[1]  ( .D(n53), .CK(clk), .RN(n32), .Q(q[1]) );
  DFFRX1 \q_reg[4]  ( .D(n56), .CK(clk), .RN(n32), .Q(q[4]) );
  DFFRX1 \q_reg[18]  ( .D(n70), .CK(clk), .RN(n30), .Q(n44), .QN(n4) );
  DFFRX1 \q_reg[3]  ( .D(n55), .CK(clk), .RN(n18), .Q(q[3]) );
  DFFRX1 \q_reg[19]  ( .D(n71), .CK(clk), .RN(n27), .Q(n40), .QN(n3) );
  DFFRX1 \q_reg[8]  ( .D(n60), .CK(clk), .RN(n30), .Q(n48), .QN(n8) );
  DFFRX1 \q_reg[10]  ( .D(n62), .CK(clk), .RN(n31), .Q(n39), .QN(n6) );
  DFFRX1 \q_reg[9]  ( .D(n61), .CK(clk), .RN(n27), .Q(q[9]) );
  DFFRX1 \q_reg[6]  ( .D(n58), .CK(clk), .RN(n29), .Q(n43), .QN(n9) );
  DFFRX1 \q_reg[7]  ( .D(n59), .CK(clk), .RN(n109), .Q(q[7]) );
  DFFRX1 \q_reg[20]  ( .D(n72), .CK(clk), .RN(n32), .Q(q[20]) );
  DFFRX1 \q_reg[21]  ( .D(n73), .CK(clk), .RN(n29), .Q(q[21]) );
  DFFRX1 \q_reg[22]  ( .D(n74), .CK(clk), .RN(n27), .Q(q[22]) );
  DFFRX1 \q_reg[23]  ( .D(n75), .CK(clk), .RN(n109), .Q(q[23]) );
  DFFRX1 \q_reg[5]  ( .D(n57), .CK(clk), .RN(n31), .Q(q[5]) );
  DFFRX1 \q_reg[13]  ( .D(n65), .CK(clk), .RN(n109), .Q(q[13]) );
  DFFRX1 \q_reg[0]  ( .D(n52), .CK(clk), .RN(n27), .Q(n42), .QN(n23) );
  DFFRX1 \q_reg[11]  ( .D(n63), .CK(clk), .RN(n32), .Q(q[11]) );
  DFFRX1 \q_reg[12]  ( .D(n64), .CK(clk), .RN(n29), .Q(q[12]) );
  DFFRX1 \q_reg[14]  ( .D(n66), .CK(clk), .RN(n30), .Q(q[14]) );
  DFFRX1 \q_reg[15]  ( .D(n67), .CK(clk), .RN(n30), .Q(q[15]) );
  CLKINVX1 U3 ( .A(reset), .Y(n18) );
  NOR2X1 U4 ( .A(sel[1]), .B(sel[2]), .Y(n10) );
  CLKINVX1 U5 ( .A(reset), .Y(n109) );
  INVX1 U6 ( .A(n9), .Y(q[6]) );
  INVX1 U7 ( .A(n6), .Y(q[10]) );
  INVX1 U8 ( .A(n8), .Y(q[8]) );
  INVX1 U9 ( .A(n3), .Y(q[19]) );
  INVX1 U10 ( .A(n4), .Y(q[18]) );
  INVX1 U11 ( .A(n7), .Y(q[2]) );
  INVX1 U12 ( .A(n5), .Y(q[17]) );
  CLKINVX1 U13 ( .A(n18), .Y(n19) );
  INVXL U14 ( .A(en), .Y(n20) );
  INVXL U15 ( .A(n99), .Y(n21) );
  INVXL U16 ( .A(n99), .Y(n22) );
  CLKINVX1 U17 ( .A(n23), .Y(q[0]) );
  INVXL U18 ( .A(n10), .Y(n25) );
  INVXL U19 ( .A(n10), .Y(n26) );
  CLKINVX1 U20 ( .A(n19), .Y(n27) );
  INVXL U21 ( .A(n18), .Y(n28) );
  CLKINVX1 U22 ( .A(n28), .Y(n29) );
  CLKINVX1 U23 ( .A(n28), .Y(n30) );
  CLKINVX1 U24 ( .A(n19), .Y(n31) );
  CLKINVX1 U25 ( .A(n19), .Y(n32) );
  MX2XL U26 ( .A(d[14]), .B(q[14]), .S0(n87), .Y(n66) );
  MX2XL U27 ( .A(d[22]), .B(q[22]), .S0(n77), .Y(n74) );
  AOI2BB1XL U28 ( .A0N(n90), .A1N(sel[1]), .B0(n91), .Y(n89) );
  NOR2XL U29 ( .A(n101), .B(n102), .Y(n100) );
  NOR2XL U30 ( .A(n86), .B(n87), .Y(n85) );
  NOR2XL U31 ( .A(n76), .B(n77), .Y(n51) );
  MX2XL U32 ( .A(q[20]), .B(d[20]), .S0(n78), .Y(n72) );
  MX2XL U33 ( .A(n48), .B(d[8]), .S0(n92), .Y(n60) );
  MX2XL U34 ( .A(d[6]), .B(n43), .S0(n102), .Y(n58) );
  AOI2BB1XL U35 ( .A0N(n26), .A1N(n105), .B0(n20), .Y(n108) );
  CLKMX2X2 U36 ( .A(q[23]), .B(d[23]), .S0(n51), .Y(n75) );
  OAI21XL U37 ( .A0(sel[3]), .A1(sel[1]), .B0(n78), .Y(n77) );
  CLKMX2X2 U38 ( .A(q[21]), .B(d[21]), .S0(n79), .Y(n73) );
  OA21XL U39 ( .A0(sel[1]), .A1(n80), .B0(n78), .Y(n79) );
  OA21XL U40 ( .A0(sel[3]), .A1(sel[2]), .B0(n81), .Y(n78) );
  CLKMX2X2 U41 ( .A(n40), .B(d[19]), .S0(n82), .Y(n71) );
  OA21XL U42 ( .A0(sel[2]), .A1(n80), .B0(n83), .Y(n82) );
  CLKMX2X2 U43 ( .A(n44), .B(d[18]), .S0(n83), .Y(n70) );
  OA21XL U44 ( .A0(sel[3]), .A1(n26), .B0(n81), .Y(n83) );
  CLKMX2X2 U45 ( .A(n36), .B(d[17]), .S0(n84), .Y(n69) );
  OA21XL U46 ( .A0(n25), .A1(n80), .B0(n81), .Y(n84) );
  CLKINVX1 U47 ( .A(n76), .Y(n80) );
  NOR2X1 U48 ( .A(sel[0]), .B(sel[3]), .Y(n76) );
  CLKMX2X2 U49 ( .A(q[16]), .B(d[16]), .S0(n81), .Y(n68) );
  AND2X1 U50 ( .A(sel[4]), .B(en), .Y(n81) );
  CLKMX2X2 U51 ( .A(q[15]), .B(d[15]), .S0(n85), .Y(n67) );
  OAI21XL U52 ( .A0(sel[4]), .A1(sel[1]), .B0(n88), .Y(n87) );
  CLKMX2X2 U53 ( .A(q[13]), .B(d[13]), .S0(n89), .Y(n65) );
  CLKMX2X2 U54 ( .A(q[12]), .B(d[12]), .S0(n88), .Y(n64) );
  CLKINVX1 U55 ( .A(n91), .Y(n88) );
  OAI21XL U56 ( .A0(sel[4]), .A1(sel[2]), .B0(n92), .Y(n91) );
  CLKMX2X2 U57 ( .A(q[11]), .B(d[11]), .S0(n93), .Y(n63) );
  AOI21X1 U58 ( .A0(n94), .A1(n95), .B0(n96), .Y(n93) );
  NAND3X1 U59 ( .A(sel[1]), .B(sel[0]), .C(sel[3]), .Y(n95) );
  OAI21XL U60 ( .A0(sel[4]), .A1(sel[2]), .B0(n22), .Y(n94) );
  CLKMX2X2 U61 ( .A(n39), .B(d[10]), .S0(n97), .Y(n62) );
  OA21XL U62 ( .A0(sel[4]), .A1(n25), .B0(n92), .Y(n97) );
  CLKMX2X2 U63 ( .A(q[9]), .B(d[9]), .S0(n98), .Y(n61) );
  OA21XL U64 ( .A0(n26), .A1(n90), .B0(n92), .Y(n98) );
  CLKINVX1 U65 ( .A(n86), .Y(n90) );
  NOR2X1 U66 ( .A(sel[0]), .B(sel[4]), .Y(n86) );
  NOR2X1 U67 ( .A(n20), .B(n99), .Y(n92) );
  CLKMX2X2 U68 ( .A(q[7]), .B(d[7]), .S0(n100), .Y(n59) );
  OAI21XL U69 ( .A0(sel[1]), .A1(n21), .B0(n103), .Y(n102) );
  CLKMX2X2 U70 ( .A(q[5]), .B(d[5]), .S0(n104), .Y(n57) );
  OA21XL U71 ( .A0(sel[1]), .A1(n105), .B0(n103), .Y(n104) );
  CLKMX2X2 U72 ( .A(q[4]), .B(d[4]), .S0(n103), .Y(n56) );
  AOI2BB1X1 U73 ( .A0N(sel[2]), .A1N(n22), .B0(n96), .Y(n103) );
  CLKMX2X2 U74 ( .A(q[3]), .B(d[3]), .S0(n106), .Y(n55) );
  OA21XL U75 ( .A0(sel[2]), .A1(n105), .B0(n107), .Y(n106) );
  CLKMX2X2 U76 ( .A(n49), .B(d[2]), .S0(n107), .Y(n54) );
  AOI2BB1X1 U77 ( .A0N(n25), .A1N(n22), .B0(n96), .Y(n107) );
  CLKMX2X2 U78 ( .A(q[1]), .B(d[1]), .S0(n108), .Y(n53) );
  CLKINVX1 U79 ( .A(en), .Y(n96) );
  CLKINVX1 U80 ( .A(n101), .Y(n105) );
  NOR2X1 U81 ( .A(n21), .B(sel[0]), .Y(n101) );
  NOR2X1 U82 ( .A(sel[3]), .B(sel[4]), .Y(n99) );
  CLKMX2X2 U83 ( .A(n42), .B(d[0]), .S0(en), .Y(n52) );
endmodule


module p_dff_WORD30_NSEL5 ( clk, reset, en, sel, d, q );
  input [4:0] sel;
  input [29:0] d;
  output [29:0] q;
  input clk, reset, en;
  wire   n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n61, n62, n63, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138;

  DFFRXL \q_reg[29]  ( .D(n93), .CK(clk), .RN(n94), .Q(q[29]) );
  DFFRXL \q_reg[28]  ( .D(n92), .CK(clk), .RN(n36), .Q(q[28]) );
  DFFRXL \q_reg[19]  ( .D(n83), .CK(clk), .RN(n62), .Q(q[19]) );
  DFFRXL \q_reg[9]  ( .D(n73), .CK(clk), .RN(n33), .Q(q[9]) );
  DFFRXL \q_reg[8]  ( .D(n72), .CK(clk), .RN(n36), .Q(q[8]) );
  DFFRXL \q_reg[18]  ( .D(n82), .CK(clk), .RN(n62), .Q(q[18]) );
  DFFRX1 \q_reg[15]  ( .D(n79), .CK(clk), .RN(n61), .QN(n4) );
  DFFRX1 \q_reg[27]  ( .D(n91), .CK(clk), .RN(n63), .QN(n3) );
  DFFRX1 \q_reg[13]  ( .D(n77), .CK(clk), .RN(n32), .QN(n14) );
  DFFRX1 \q_reg[12]  ( .D(n76), .CK(clk), .RN(n33), .QN(n7) );
  DFFRX1 \q_reg[23]  ( .D(n87), .CK(clk), .RN(n94), .QN(n6) );
  DFFRX1 \q_reg[24]  ( .D(n88), .CK(clk), .RN(n63), .QN(n9) );
  DFFRX1 \q_reg[26]  ( .D(n90), .CK(clk), .RN(n36), .QN(n10) );
  DFFRX1 \q_reg[7]  ( .D(n71), .CK(clk), .RN(n33), .QN(n5) );
  DFFRX1 \q_reg[25]  ( .D(n89), .CK(clk), .RN(n36), .QN(n16) );
  DFFRX1 \q_reg[21]  ( .D(n85), .CK(clk), .RN(n61), .QN(n15) );
  DFFRX1 \q_reg[10]  ( .D(n74), .CK(clk), .RN(n35), .QN(n13) );
  DFFRX1 \q_reg[5]  ( .D(n69), .CK(clk), .RN(n94), .QN(n12) );
  DFFRX1 \q_reg[3]  ( .D(n67), .CK(clk), .RN(n63), .QN(n11) );
  DFFRX1 \q_reg[20]  ( .D(n84), .CK(clk), .RN(n35), .QN(n8) );
  DFFRX1 \q_reg[16]  ( .D(n80), .CK(clk), .RN(n32), .QN(n2) );
  DFFRX1 \q_reg[4]  ( .D(n68), .CK(clk), .RN(n32), .QN(n21) );
  DFFRX1 \q_reg[17]  ( .D(n81), .CK(clk), .RN(n35), .QN(n1) );
  DFFRX1 \q_reg[2]  ( .D(n66), .CK(clk), .RN(n62), .QN(n20) );
  DFFRX1 \q_reg[1]  ( .D(n65), .CK(clk), .RN(n94), .QN(n18) );
  DFFRX1 \q_reg[11]  ( .D(n75), .CK(clk), .RN(n35), .QN(n17) );
  DFFRX1 \q_reg[0]  ( .D(n64), .CK(clk), .RN(n61), .QN(n19) );
  DFFRX1 \q_reg[14]  ( .D(n78), .CK(clk), .RN(n61), .QN(n22) );
  DFFRX1 \q_reg[22]  ( .D(n86), .CK(clk), .RN(n33), .QN(n24) );
  DFFRX1 \q_reg[6]  ( .D(n70), .CK(clk), .RN(n63), .QN(n23) );
  CLKINVX1 U3 ( .A(n30), .Y(n63) );
  CLKINVX1 U4 ( .A(n34), .Y(n61) );
  CLKINVX1 U5 ( .A(n34), .Y(n36) );
  CLKINVX1 U6 ( .A(reset), .Y(n94) );
  CLKINVX1 U7 ( .A(n29), .Y(n30) );
  CLKINVX1 U8 ( .A(n32), .Y(n34) );
  CLKINVX1 U9 ( .A(n101), .Y(n31) );
  INVXL U10 ( .A(n126), .Y(n25) );
  INVXL U11 ( .A(n25), .Y(n26) );
  INVXL U12 ( .A(n129), .Y(n27) );
  INVXL U13 ( .A(n129), .Y(n28) );
  INVXL U14 ( .A(reset), .Y(n29) );
  CLKINVX1 U15 ( .A(n30), .Y(n32) );
  CLKINVX1 U16 ( .A(n30), .Y(n33) );
  CLKINVX1 U17 ( .A(n30), .Y(n62) );
  INVX1 U18 ( .A(n34), .Y(n35) );
  INVX16 U19 ( .A(n23), .Y(q[6]) );
  INVX16 U20 ( .A(n24), .Y(q[22]) );
  INVX16 U21 ( .A(n22), .Y(q[14]) );
  INVX16 U22 ( .A(n19), .Y(q[0]) );
  INVX16 U23 ( .A(n17), .Y(q[11]) );
  INVX16 U24 ( .A(n18), .Y(q[1]) );
  INVX16 U25 ( .A(n20), .Y(q[2]) );
  INVX16 U26 ( .A(n1), .Y(q[17]) );
  INVX16 U27 ( .A(n21), .Y(q[4]) );
  INVX16 U28 ( .A(n2), .Y(q[16]) );
  INVX16 U29 ( .A(n8), .Y(q[20]) );
  INVX16 U30 ( .A(n11), .Y(q[3]) );
  INVX16 U31 ( .A(n12), .Y(q[5]) );
  INVX16 U32 ( .A(n13), .Y(q[10]) );
  INVX16 U33 ( .A(n15), .Y(q[21]) );
  INVX16 U34 ( .A(n16), .Y(q[25]) );
  INVX16 U35 ( .A(n5), .Y(q[7]) );
  INVX16 U36 ( .A(n10), .Y(q[26]) );
  INVX16 U37 ( .A(n9), .Y(q[24]) );
  INVX16 U38 ( .A(n6), .Y(q[23]) );
  INVX16 U39 ( .A(n7), .Y(q[12]) );
  INVX16 U40 ( .A(n14), .Y(q[13]) );
  INVX16 U41 ( .A(n3), .Y(q[27]) );
  INVX16 U42 ( .A(n4), .Y(q[15]) );
  MX2XL U43 ( .A(q[27]), .B(d[27]), .S0(n98), .Y(n91) );
  MX2XL U44 ( .A(d[14]), .B(q[14]), .S0(n117), .Y(n78) );
  MX2XL U45 ( .A(q[15]), .B(d[15]), .S0(n115), .Y(n79) );
  NOR2XL U46 ( .A(n116), .B(n117), .Y(n115) );
  MX2XL U47 ( .A(d[6]), .B(q[6]), .S0(n132), .Y(n70) );
  MX2XL U48 ( .A(d[22]), .B(q[22]), .S0(n107), .Y(n86) );
  MX2XL U49 ( .A(q[7]), .B(d[7]), .S0(n130), .Y(n71) );
  NOR2XL U50 ( .A(n131), .B(n132), .Y(n130) );
  MX2XL U51 ( .A(q[23]), .B(d[23]), .S0(n105), .Y(n87) );
  NOR2XL U52 ( .A(n106), .B(n107), .Y(n105) );
  MX2XL U53 ( .A(q[12]), .B(d[12]), .S0(n118), .Y(n76) );
  MX2XL U54 ( .A(q[20]), .B(d[20]), .S0(n108), .Y(n84) );
  MX2XL U55 ( .A(q[24]), .B(d[24]), .S0(n97), .Y(n88) );
  MX2XL U56 ( .A(q[26]), .B(d[26]), .S0(n99), .Y(n90) );
  MX2XL U57 ( .A(q[3]), .B(d[3]), .S0(n136), .Y(n67) );
  MX2XL U58 ( .A(q[5]), .B(d[5]), .S0(n134), .Y(n69) );
  MX2XL U59 ( .A(q[10]), .B(d[10]), .S0(n127), .Y(n74) );
  MX2XL U60 ( .A(q[13]), .B(d[13]), .S0(n119), .Y(n77) );
  AOI2BB1XL U61 ( .A0N(n120), .A1N(sel[1]), .B0(n121), .Y(n119) );
  MX2XL U62 ( .A(q[21]), .B(d[21]), .S0(n109), .Y(n85) );
  MX2XL U63 ( .A(q[25]), .B(d[25]), .S0(n102), .Y(n89) );
  MX2XL U64 ( .A(q[11]), .B(d[11]), .S0(n123), .Y(n75) );
  MX2XL U65 ( .A(q[1]), .B(d[1]), .S0(n138), .Y(n65) );
  MX2XL U66 ( .A(q[17]), .B(d[17]), .S0(n114), .Y(n81) );
  MX2XL U67 ( .A(q[0]), .B(d[0]), .S0(en), .Y(n64) );
  MX2XL U68 ( .A(q[2]), .B(d[2]), .S0(n137), .Y(n66) );
  MX2XL U69 ( .A(q[4]), .B(d[4]), .S0(n133), .Y(n68) );
  MX2XL U70 ( .A(q[16]), .B(d[16]), .S0(n104), .Y(n80) );
  MX2XL U71 ( .A(q[8]), .B(d[8]), .S0(n122), .Y(n72) );
  CLKMX2X2 U72 ( .A(q[29]), .B(d[29]), .S0(n95), .Y(n93) );
  OA21XL U73 ( .A0(sel[1]), .A1(sel[0]), .B0(n96), .Y(n95) );
  CLKMX2X2 U74 ( .A(q[28]), .B(d[28]), .S0(n96), .Y(n92) );
  AND2X1 U75 ( .A(sel[2]), .B(n97), .Y(n96) );
  OA21XL U76 ( .A0(sel[2]), .A1(sel[0]), .B0(n99), .Y(n98) );
  NOR2X1 U77 ( .A(n100), .B(n101), .Y(n99) );
  AOI2BB1X1 U78 ( .A0N(sel[0]), .A1N(n31), .B0(n100), .Y(n102) );
  CLKINVX1 U79 ( .A(n100), .Y(n97) );
  NAND2X1 U80 ( .A(sel[3]), .B(n104), .Y(n100) );
  OAI21XL U81 ( .A0(sel[3]), .A1(sel[1]), .B0(n108), .Y(n107) );
  OA21XL U82 ( .A0(sel[1]), .A1(n110), .B0(n108), .Y(n109) );
  AOI2BB1X1 U83 ( .A0N(sel[3]), .A1N(sel[2]), .B0(n111), .Y(n108) );
  CLKMX2X2 U84 ( .A(q[19]), .B(d[19]), .S0(n112), .Y(n83) );
  OA21XL U85 ( .A0(sel[2]), .A1(n110), .B0(n113), .Y(n112) );
  CLKMX2X2 U86 ( .A(q[18]), .B(d[18]), .S0(n113), .Y(n82) );
  AOI2BB1X1 U87 ( .A0N(sel[3]), .A1N(n31), .B0(n111), .Y(n113) );
  AOI2BB1X1 U88 ( .A0N(n110), .A1N(n31), .B0(n111), .Y(n114) );
  CLKINVX1 U89 ( .A(n106), .Y(n110) );
  NOR2X1 U90 ( .A(sel[0]), .B(sel[3]), .Y(n106) );
  CLKINVX1 U91 ( .A(n111), .Y(n104) );
  NAND2X1 U92 ( .A(sel[4]), .B(en), .Y(n111) );
  OAI21XL U93 ( .A0(sel[4]), .A1(sel[1]), .B0(n118), .Y(n117) );
  CLKINVX1 U94 ( .A(n121), .Y(n118) );
  OAI21XL U95 ( .A0(sel[4]), .A1(sel[2]), .B0(n122), .Y(n121) );
  AOI21X1 U96 ( .A0(n124), .A1(n125), .B0(n126), .Y(n123) );
  NAND3X1 U97 ( .A(sel[0]), .B(sel[3]), .C(sel[1]), .Y(n125) );
  OAI21XL U98 ( .A0(sel[4]), .A1(sel[2]), .B0(n28), .Y(n124) );
  OA21XL U99 ( .A0(sel[4]), .A1(n31), .B0(n122), .Y(n127) );
  CLKMX2X2 U100 ( .A(q[9]), .B(d[9]), .S0(n128), .Y(n73) );
  OA21XL U101 ( .A0(n103), .A1(n120), .B0(n122), .Y(n128) );
  CLKINVX1 U102 ( .A(n116), .Y(n120) );
  NOR2X1 U103 ( .A(sel[0]), .B(sel[4]), .Y(n116) );
  NOR2X1 U104 ( .A(n126), .B(n129), .Y(n122) );
  OAI21XL U105 ( .A0(sel[1]), .A1(n27), .B0(n133), .Y(n132) );
  OA21XL U106 ( .A0(sel[1]), .A1(n135), .B0(n133), .Y(n134) );
  AOI2BB1X1 U107 ( .A0N(sel[2]), .A1N(n28), .B0(n26), .Y(n133) );
  OA21XL U108 ( .A0(sel[2]), .A1(n135), .B0(n137), .Y(n136) );
  AOI2BB1X1 U109 ( .A0N(n103), .A1N(n28), .B0(n126), .Y(n137) );
  AOI2BB1X1 U110 ( .A0N(n103), .A1N(n135), .B0(n26), .Y(n138) );
  CLKINVX1 U111 ( .A(en), .Y(n126) );
  CLKINVX1 U112 ( .A(n131), .Y(n135) );
  NOR2X1 U113 ( .A(n27), .B(sel[0]), .Y(n131) );
  NOR2X1 U114 ( .A(sel[3]), .B(sel[4]), .Y(n129) );
  CLKINVX1 U115 ( .A(n101), .Y(n103) );
  NOR2X1 U116 ( .A(sel[1]), .B(sel[2]), .Y(n101) );
endmodule


module p_dff_WORD24_NSEL5_1 ( clk, reset, en, sel, d, q );
  input [4:0] sel;
  input [23:0] d;
  output [23:0] q;
  input clk, reset, en;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95;

  DFFRXL \q_reg[1]  ( .D(n94), .CK(clk), .RN(n11), .Q(q[1]) );
  DFFRXL \q_reg[8]  ( .D(n87), .CK(clk), .RN(n10), .Q(q[8]) );
  DFFRXL \q_reg[2]  ( .D(n93), .CK(clk), .RN(n12), .Q(q[2]) );
  DFFRXL \q_reg[4]  ( .D(n91), .CK(clk), .RN(n12), .Q(q[4]) );
  DFFRXL \q_reg[3]  ( .D(n92), .CK(clk), .RN(n10), .Q(q[3]) );
  DFFRXL \q_reg[9]  ( .D(n86), .CK(clk), .RN(n14), .Q(q[9]) );
  DFFRXL \q_reg[10]  ( .D(n85), .CK(clk), .RN(n13), .Q(q[10]) );
  DFFRXL \q_reg[5]  ( .D(n90), .CK(clk), .RN(n10), .Q(q[5]) );
  DFFRXL \q_reg[6]  ( .D(n89), .CK(clk), .RN(n13), .Q(q[6]) );
  DFFRXL \q_reg[11]  ( .D(n84), .CK(clk), .RN(n49), .Q(q[11]) );
  DFFRXL \q_reg[12]  ( .D(n83), .CK(clk), .RN(n9), .Q(q[12]) );
  DFFRXL \q_reg[7]  ( .D(n88), .CK(clk), .RN(n49), .Q(q[7]) );
  DFFRXL \q_reg[13]  ( .D(n82), .CK(clk), .RN(n14), .Q(q[13]) );
  DFFRXL \q_reg[14]  ( .D(n81), .CK(clk), .RN(n9), .Q(q[14]) );
  DFFRXL \q_reg[15]  ( .D(n80), .CK(clk), .RN(n11), .Q(q[15]) );
  DFFRXL \q_reg[16]  ( .D(n79), .CK(clk), .RN(n13), .Q(q[16]) );
  DFFRXL \q_reg[17]  ( .D(n78), .CK(clk), .RN(n9), .Q(q[17]) );
  DFFRXL \q_reg[18]  ( .D(n77), .CK(clk), .RN(n12), .Q(q[18]) );
  DFFRXL \q_reg[19]  ( .D(n76), .CK(clk), .RN(n14), .Q(q[19]) );
  DFFRXL \q_reg[20]  ( .D(n75), .CK(clk), .RN(n13), .Q(q[20]) );
  DFFRXL \q_reg[21]  ( .D(n74), .CK(clk), .RN(n49), .Q(q[21]) );
  DFFRXL \q_reg[22]  ( .D(n51), .CK(clk), .RN(n11), .Q(q[22]) );
  DFFRXL \q_reg[23]  ( .D(n50), .CK(clk), .RN(n12), .Q(q[23]) );
  DFFRX1 \q_reg[0]  ( .D(n95), .CK(clk), .RN(n14), .Q(q[0]) );
  OA21XL U3 ( .A0(sel[4]), .A1(n7), .B0(n32), .Y(n37) );
  CLKINVX1 U4 ( .A(n49), .Y(n2) );
  CLKINVX1 U5 ( .A(n11), .Y(n8) );
  NOR2X1 U6 ( .A(sel[1]), .B(sel[2]), .Y(n1) );
  INVXL U7 ( .A(en), .Y(n3) );
  INVXL U8 ( .A(n39), .Y(n4) );
  INVXL U9 ( .A(n39), .Y(n5) );
  INVXL U10 ( .A(n1), .Y(n6) );
  INVXL U11 ( .A(n1), .Y(n7) );
  CLKINVX1 U12 ( .A(n8), .Y(n9) );
  CLKINVX1 U13 ( .A(n8), .Y(n10) );
  CLKINVX1 U14 ( .A(n2), .Y(n11) );
  CLKINVX1 U15 ( .A(n2), .Y(n12) );
  CLKINVX1 U16 ( .A(n8), .Y(n13) );
  CLKINVX1 U17 ( .A(n2), .Y(n14) );
  CLKINVX1 U18 ( .A(en), .Y(n36) );
  OAI21X1 U19 ( .A0(sel[4]), .A1(sel[2]), .B0(n32), .Y(n31) );
  NOR2X2 U20 ( .A(n3), .B(n39), .Y(n32) );
  OAI21X1 U21 ( .A0(sel[3]), .A1(sel[1]), .B0(n18), .Y(n17) );
  OA21X2 U22 ( .A0(sel[3]), .A1(sel[2]), .B0(n21), .Y(n18) );
  INVXL U23 ( .A(n31), .Y(n28) );
  NOR2XL U24 ( .A(n41), .B(n42), .Y(n40) );
  CLKINVX1 U25 ( .A(reset), .Y(n49) );
  CLKMX2X2 U26 ( .A(q[23]), .B(d[23]), .S0(n15), .Y(n50) );
  NOR2X1 U27 ( .A(n16), .B(n17), .Y(n15) );
  CLKMX2X2 U28 ( .A(d[22]), .B(q[22]), .S0(n17), .Y(n51) );
  CLKMX2X2 U29 ( .A(q[21]), .B(d[21]), .S0(n19), .Y(n74) );
  OA21XL U30 ( .A0(sel[1]), .A1(n20), .B0(n18), .Y(n19) );
  CLKMX2X2 U31 ( .A(q[20]), .B(d[20]), .S0(n18), .Y(n75) );
  CLKMX2X2 U32 ( .A(q[19]), .B(d[19]), .S0(n22), .Y(n76) );
  OA21XL U33 ( .A0(sel[2]), .A1(n20), .B0(n23), .Y(n22) );
  CLKMX2X2 U34 ( .A(q[18]), .B(d[18]), .S0(n23), .Y(n77) );
  OA21XL U35 ( .A0(sel[3]), .A1(n6), .B0(n21), .Y(n23) );
  CLKMX2X2 U36 ( .A(q[17]), .B(d[17]), .S0(n24), .Y(n78) );
  OA21XL U37 ( .A0(n7), .A1(n20), .B0(n21), .Y(n24) );
  CLKINVX1 U38 ( .A(n16), .Y(n20) );
  NOR2X1 U39 ( .A(sel[0]), .B(sel[3]), .Y(n16) );
  CLKMX2X2 U40 ( .A(q[16]), .B(d[16]), .S0(n21), .Y(n79) );
  AND2X1 U41 ( .A(sel[4]), .B(en), .Y(n21) );
  CLKMX2X2 U42 ( .A(q[15]), .B(d[15]), .S0(n25), .Y(n80) );
  NOR2X1 U43 ( .A(n26), .B(n27), .Y(n25) );
  CLKMX2X2 U44 ( .A(d[14]), .B(q[14]), .S0(n27), .Y(n81) );
  OAI21XL U45 ( .A0(sel[4]), .A1(sel[1]), .B0(n28), .Y(n27) );
  CLKMX2X2 U46 ( .A(q[13]), .B(d[13]), .S0(n29), .Y(n82) );
  AOI2BB1X1 U47 ( .A0N(n30), .A1N(sel[1]), .B0(n31), .Y(n29) );
  CLKMX2X2 U48 ( .A(q[12]), .B(d[12]), .S0(n28), .Y(n83) );
  CLKMX2X2 U49 ( .A(q[11]), .B(d[11]), .S0(n33), .Y(n84) );
  AOI21X1 U50 ( .A0(n34), .A1(n35), .B0(n36), .Y(n33) );
  NAND3X1 U51 ( .A(sel[1]), .B(sel[0]), .C(sel[3]), .Y(n35) );
  OAI21XL U52 ( .A0(sel[4]), .A1(sel[2]), .B0(n5), .Y(n34) );
  CLKMX2X2 U53 ( .A(q[10]), .B(d[10]), .S0(n37), .Y(n85) );
  CLKMX2X2 U54 ( .A(q[9]), .B(d[9]), .S0(n38), .Y(n86) );
  OA21XL U55 ( .A0(n6), .A1(n30), .B0(n32), .Y(n38) );
  CLKINVX1 U56 ( .A(n26), .Y(n30) );
  NOR2X1 U57 ( .A(sel[0]), .B(sel[4]), .Y(n26) );
  CLKMX2X2 U58 ( .A(q[8]), .B(d[8]), .S0(n32), .Y(n87) );
  CLKMX2X2 U59 ( .A(q[7]), .B(d[7]), .S0(n40), .Y(n88) );
  CLKMX2X2 U60 ( .A(d[6]), .B(q[6]), .S0(n42), .Y(n89) );
  OAI21XL U61 ( .A0(sel[1]), .A1(n4), .B0(n43), .Y(n42) );
  CLKMX2X2 U62 ( .A(q[5]), .B(d[5]), .S0(n44), .Y(n90) );
  OA21XL U63 ( .A0(sel[1]), .A1(n45), .B0(n43), .Y(n44) );
  CLKMX2X2 U64 ( .A(q[4]), .B(d[4]), .S0(n43), .Y(n91) );
  AOI2BB1X1 U65 ( .A0N(sel[2]), .A1N(n5), .B0(n3), .Y(n43) );
  CLKMX2X2 U66 ( .A(q[3]), .B(d[3]), .S0(n46), .Y(n92) );
  OA21XL U67 ( .A0(sel[2]), .A1(n45), .B0(n47), .Y(n46) );
  CLKMX2X2 U68 ( .A(q[2]), .B(d[2]), .S0(n47), .Y(n93) );
  AOI2BB1X1 U69 ( .A0N(n7), .A1N(n5), .B0(n36), .Y(n47) );
  CLKMX2X2 U70 ( .A(q[1]), .B(d[1]), .S0(n48), .Y(n94) );
  AOI2BB1X1 U71 ( .A0N(n6), .A1N(n45), .B0(n36), .Y(n48) );
  CLKINVX1 U72 ( .A(n41), .Y(n45) );
  NOR2X1 U73 ( .A(n4), .B(sel[0]), .Y(n41) );
  NOR2X1 U74 ( .A(sel[3]), .B(sel[4]), .Y(n39) );
  CLKMX2X2 U75 ( .A(q[0]), .B(d[0]), .S0(en), .Y(n95) );
endmodule


module p_dff_WORD20_NSEL5_2 ( clk, reset, en, sel, d, q );
  input [4:0] sel;
  input [19:0] d;
  output [19:0] q;
  input clk, reset, en;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77;

  DFFRX1 \q_reg[1]  ( .D(n76), .CK(clk), .RN(n9), .Q(q[1]) );
  DFFRX1 \q_reg[4]  ( .D(n73), .CK(clk), .RN(n12), .Q(q[4]) );
  DFFRX1 \q_reg[2]  ( .D(n75), .CK(clk), .RN(n10), .Q(q[2]) );
  DFFRX1 \q_reg[5]  ( .D(n72), .CK(clk), .RN(n8), .Q(q[5]) );
  DFFRX1 \q_reg[11]  ( .D(n66), .CK(clk), .RN(n12), .Q(q[11]) );
  DFFRX1 \q_reg[6]  ( .D(n71), .CK(clk), .RN(n11), .Q(q[6]) );
  DFFRX1 \q_reg[3]  ( .D(n74), .CK(clk), .RN(n11), .Q(q[3]) );
  DFFRX1 \q_reg[7]  ( .D(n70), .CK(clk), .RN(n2), .Q(q[7]) );
  DFFRX1 \q_reg[16]  ( .D(n61), .CK(clk), .RN(n8), .Q(q[16]) );
  DFFRX1 \q_reg[17]  ( .D(n43), .CK(clk), .RN(n10), .Q(q[17]) );
  DFFRX1 \q_reg[8]  ( .D(n69), .CK(clk), .RN(n12), .Q(q[8]) );
  DFFRX1 \q_reg[10]  ( .D(n67), .CK(clk), .RN(n9), .Q(q[10]) );
  DFFRX1 \q_reg[9]  ( .D(n68), .CK(clk), .RN(n10), .Q(q[9]) );
  DFFRX1 \q_reg[18]  ( .D(n42), .CK(clk), .RN(n2), .Q(q[18]) );
  DFFRX1 \q_reg[12]  ( .D(n65), .CK(clk), .RN(n8), .Q(q[12]) );
  DFFRX1 \q_reg[19]  ( .D(n41), .CK(clk), .RN(n10), .Q(q[19]) );
  DFFRX1 \q_reg[13]  ( .D(n64), .CK(clk), .RN(n9), .Q(q[13]) );
  DFFRX1 \q_reg[14]  ( .D(n63), .CK(clk), .RN(n11), .Q(q[14]) );
  DFFRX1 \q_reg[15]  ( .D(n62), .CK(clk), .RN(n11), .Q(q[15]) );
  DFFRX1 \q_reg[0]  ( .D(n77), .CK(clk), .RN(n9), .Q(q[0]) );
  NOR2X1 U3 ( .A(sel[1]), .B(sel[2]), .Y(n1) );
  INVXL U4 ( .A(reset), .Y(n2) );
  INVXL U5 ( .A(n31), .Y(n3) );
  INVXL U6 ( .A(n31), .Y(n4) );
  INVXL U7 ( .A(n1), .Y(n5) );
  INVXL U8 ( .A(n1), .Y(n6) );
  MX2XL U9 ( .A(d[0]), .B(q[0]), .S0(n17), .Y(n77) );
  INVX1 U10 ( .A(n12), .Y(n7) );
  CLKINVX1 U11 ( .A(n7), .Y(n8) );
  CLKINVX1 U12 ( .A(n7), .Y(n9) );
  CLKINVX1 U13 ( .A(n7), .Y(n10) );
  CLKINVX1 U14 ( .A(n7), .Y(n11) );
  OA21X2 U15 ( .A0(sel[2]), .A1(n4), .B0(en), .Y(n35) );
  CLKINVX1 U16 ( .A(reset), .Y(n12) );
  INVX1 U17 ( .A(en), .Y(n17) );
  INVXL U18 ( .A(n24), .Y(n21) );
  MX2XL U19 ( .A(d[14]), .B(q[14]), .S0(n20), .Y(n63) );
  MX2XL U20 ( .A(d[12]), .B(q[12]), .S0(n24), .Y(n65) );
  MX2XL U21 ( .A(q[4]), .B(d[4]), .S0(n35), .Y(n73) );
  MX2XL U22 ( .A(q[8]), .B(d[8]), .S0(n25), .Y(n69) );
  MX2XL U23 ( .A(d[6]), .B(q[6]), .S0(n34), .Y(n71) );
  CLKMX2X2 U24 ( .A(d[19]), .B(q[19]), .S0(n13), .Y(n41) );
  OAI31XL U25 ( .A0(sel[2]), .A1(sel[3]), .A2(sel[0]), .B0(n14), .Y(n13) );
  CLKMX2X2 U26 ( .A(q[18]), .B(d[18]), .S0(n14), .Y(n42) );
  OA21XL U27 ( .A0(sel[3]), .A1(n6), .B0(n15), .Y(n14) );
  CLKMX2X2 U28 ( .A(d[17]), .B(q[17]), .S0(n16), .Y(n43) );
  OAI31XL U29 ( .A0(sel[0]), .A1(sel[3]), .A2(n5), .B0(n15), .Y(n16) );
  CLKMX2X2 U30 ( .A(q[16]), .B(d[16]), .S0(n15), .Y(n61) );
  NOR2BX1 U31 ( .AN(sel[4]), .B(n17), .Y(n15) );
  CLKMX2X2 U32 ( .A(q[15]), .B(d[15]), .S0(n18), .Y(n62) );
  NOR2X1 U33 ( .A(n19), .B(n20), .Y(n18) );
  OAI21XL U34 ( .A0(sel[4]), .A1(sel[1]), .B0(n21), .Y(n20) );
  CLKMX2X2 U35 ( .A(q[13]), .B(d[13]), .S0(n22), .Y(n64) );
  OA21XL U36 ( .A0(n23), .A1(sel[1]), .B0(n21), .Y(n22) );
  OAI21XL U37 ( .A0(sel[4]), .A1(sel[2]), .B0(n25), .Y(n24) );
  CLKMX2X2 U38 ( .A(q[11]), .B(d[11]), .S0(n26), .Y(n66) );
  AOI21X1 U39 ( .A0(n27), .A1(n28), .B0(n17), .Y(n26) );
  NAND3X1 U40 ( .A(sel[1]), .B(sel[0]), .C(sel[3]), .Y(n28) );
  OAI21XL U41 ( .A0(sel[4]), .A1(sel[2]), .B0(n4), .Y(n27) );
  CLKMX2X2 U42 ( .A(q[10]), .B(d[10]), .S0(n29), .Y(n67) );
  OA21XL U43 ( .A0(sel[4]), .A1(n5), .B0(n25), .Y(n29) );
  CLKMX2X2 U44 ( .A(q[9]), .B(d[9]), .S0(n30), .Y(n68) );
  OA21XL U45 ( .A0(n6), .A1(n23), .B0(n25), .Y(n30) );
  CLKINVX1 U46 ( .A(n19), .Y(n23) );
  NOR2X1 U47 ( .A(sel[0]), .B(sel[4]), .Y(n19) );
  NOR2X1 U48 ( .A(n17), .B(n31), .Y(n25) );
  CLKMX2X2 U49 ( .A(q[7]), .B(d[7]), .S0(n32), .Y(n70) );
  NOR2X1 U50 ( .A(n33), .B(n34), .Y(n32) );
  OAI21XL U51 ( .A0(sel[1]), .A1(n3), .B0(n35), .Y(n34) );
  CLKMX2X2 U52 ( .A(q[5]), .B(d[5]), .S0(n36), .Y(n72) );
  OA21XL U53 ( .A0(sel[1]), .A1(n37), .B0(n35), .Y(n36) );
  CLKMX2X2 U54 ( .A(q[3]), .B(d[3]), .S0(n38), .Y(n74) );
  OA21XL U55 ( .A0(sel[2]), .A1(n37), .B0(n39), .Y(n38) );
  CLKMX2X2 U56 ( .A(q[2]), .B(d[2]), .S0(n39), .Y(n75) );
  OA21XL U57 ( .A0(n5), .A1(n3), .B0(en), .Y(n39) );
  CLKMX2X2 U58 ( .A(q[1]), .B(d[1]), .S0(n40), .Y(n76) );
  OA21XL U59 ( .A0(n6), .A1(n37), .B0(en), .Y(n40) );
  CLKINVX1 U60 ( .A(n33), .Y(n37) );
  NOR2X1 U61 ( .A(n3), .B(sel[0]), .Y(n33) );
  NOR2X1 U62 ( .A(sel[3]), .B(sel[4]), .Y(n31) );
endmodule


module p_dff_WORD2_NSEL5_0 ( clk, reset, en, sel, d, q );
  input [4:0] sel;
  input [1:0] d;
  output [1:0] q;
  input clk, reset, en;
  wire   n5, n6, n7, n8, n1, n2, n3;

  DFFRX1 \q_reg[0]  ( .D(n7), .CK(clk), .RN(n3), .Q(q[0]), .QN(n1) );
  DFFRX1 \q_reg[1]  ( .D(n8), .CK(clk), .RN(n3), .Q(q[1]) );
  AO22X1 U2 ( .A0(d[1]), .A1(n2), .B0(q[1]), .B1(n5), .Y(n8) );
  CLKINVX1 U3 ( .A(n5), .Y(n2) );
  OAI31X1 U4 ( .A0(n6), .A1(sel[1]), .A2(sel[0]), .B0(en), .Y(n5) );
  OAI2BB2XL U5 ( .B0(n1), .B1(en), .A0N(d[0]), .A1N(en), .Y(n7) );
  CLKINVX1 U6 ( .A(reset), .Y(n3) );
  OR3X2 U7 ( .A(sel[4]), .B(sel[3]), .C(sel[2]), .Y(n6) );
endmodule


module p_dff_WORD20_NSEL5_1 ( clk, reset, en, sel, d, q );
  input [4:0] sel;
  input [19:0] d;
  output [19:0] q;
  input clk, reset, en;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79;

  DFFRX1 \q_reg[4]  ( .D(n75), .CK(clk), .RN(n3), .Q(q[4]) );
  DFFRX1 \q_reg[2]  ( .D(n77), .CK(clk), .RN(n10), .Q(q[2]) );
  DFFRX1 \q_reg[6]  ( .D(n73), .CK(clk), .RN(n11), .Q(q[6]) );
  DFFRX1 \q_reg[16]  ( .D(n63), .CK(clk), .RN(n3), .Q(q[16]) );
  DFFRX1 \q_reg[8]  ( .D(n71), .CK(clk), .RN(n9), .Q(q[8]) );
  DFFRX1 \q_reg[18]  ( .D(n43), .CK(clk), .RN(n11), .Q(q[18]) );
  DFFRX1 \q_reg[12]  ( .D(n67), .CK(clk), .RN(n10), .Q(q[12]) );
  DFFRX1 \q_reg[19]  ( .D(n42), .CK(clk), .RN(n12), .Q(q[19]) );
  DFFRX1 \q_reg[14]  ( .D(n65), .CK(clk), .RN(n12), .Q(q[14]) );
  DFFRXL \q_reg[1]  ( .D(n78), .CK(clk), .RN(n10), .Q(q[1]) );
  DFFRXL \q_reg[5]  ( .D(n74), .CK(clk), .RN(n13), .Q(q[5]) );
  DFFRXL \q_reg[11]  ( .D(n68), .CK(clk), .RN(n9), .Q(q[11]) );
  DFFRXL \q_reg[3]  ( .D(n76), .CK(clk), .RN(n11), .Q(q[3]) );
  DFFRXL \q_reg[7]  ( .D(n72), .CK(clk), .RN(n13), .Q(q[7]) );
  DFFRXL \q_reg[17]  ( .D(n62), .CK(clk), .RN(n11), .Q(q[17]) );
  DFFRXL \q_reg[10]  ( .D(n69), .CK(clk), .RN(n12), .Q(q[10]) );
  DFFRXL \q_reg[9]  ( .D(n70), .CK(clk), .RN(n13), .Q(q[9]) );
  DFFRXL \q_reg[13]  ( .D(n66), .CK(clk), .RN(n12), .Q(q[13]) );
  DFFRXL \q_reg[15]  ( .D(n64), .CK(clk), .RN(n10), .Q(q[15]) );
  DFFRX1 \q_reg[0]  ( .D(n79), .CK(clk), .RN(n9), .Q(q[0]) );
  NOR2X1 U3 ( .A(sel[1]), .B(sel[2]), .Y(n1) );
  INVXL U4 ( .A(n9), .Y(n2) );
  INVXL U5 ( .A(n2), .Y(n3) );
  INVXL U6 ( .A(n32), .Y(n4) );
  INVXL U7 ( .A(n32), .Y(n5) );
  INVXL U8 ( .A(n1), .Y(n6) );
  INVXL U9 ( .A(n1), .Y(n7) );
  MX2XL U10 ( .A(d[0]), .B(q[0]), .S0(n18), .Y(n79) );
  INVX1 U11 ( .A(n13), .Y(n8) );
  CLKINVX1 U12 ( .A(n8), .Y(n9) );
  CLKINVX1 U13 ( .A(n8), .Y(n10) );
  CLKINVX1 U14 ( .A(n8), .Y(n11) );
  CLKINVX1 U15 ( .A(n8), .Y(n12) );
  CLKINVX1 U16 ( .A(reset), .Y(n13) );
  OA21X2 U17 ( .A0(sel[2]), .A1(n5), .B0(en), .Y(n36) );
  INVX1 U18 ( .A(en), .Y(n18) );
  INVXL U19 ( .A(n25), .Y(n22) );
  MX2XL U20 ( .A(d[14]), .B(q[14]), .S0(n21), .Y(n65) );
  MX2XL U21 ( .A(d[12]), .B(q[12]), .S0(n25), .Y(n67) );
  MX2XL U22 ( .A(q[4]), .B(d[4]), .S0(n36), .Y(n75) );
  MX2XL U23 ( .A(q[8]), .B(d[8]), .S0(n26), .Y(n71) );
  MX2XL U24 ( .A(d[6]), .B(q[6]), .S0(n35), .Y(n73) );
  CLKMX2X2 U25 ( .A(d[19]), .B(q[19]), .S0(n14), .Y(n42) );
  OAI31XL U26 ( .A0(sel[2]), .A1(sel[3]), .A2(sel[0]), .B0(n15), .Y(n14) );
  CLKMX2X2 U27 ( .A(q[18]), .B(d[18]), .S0(n15), .Y(n43) );
  OA21XL U28 ( .A0(sel[3]), .A1(n7), .B0(n16), .Y(n15) );
  CLKMX2X2 U29 ( .A(d[17]), .B(q[17]), .S0(n17), .Y(n62) );
  OAI31XL U30 ( .A0(sel[0]), .A1(sel[3]), .A2(n6), .B0(n16), .Y(n17) );
  CLKMX2X2 U31 ( .A(q[16]), .B(d[16]), .S0(n16), .Y(n63) );
  NOR2BX1 U32 ( .AN(sel[4]), .B(n18), .Y(n16) );
  CLKMX2X2 U33 ( .A(q[15]), .B(d[15]), .S0(n19), .Y(n64) );
  NOR2X1 U34 ( .A(n20), .B(n21), .Y(n19) );
  OAI21XL U35 ( .A0(sel[4]), .A1(sel[1]), .B0(n22), .Y(n21) );
  CLKMX2X2 U36 ( .A(q[13]), .B(d[13]), .S0(n23), .Y(n66) );
  OA21XL U37 ( .A0(n24), .A1(sel[1]), .B0(n22), .Y(n23) );
  OAI21XL U38 ( .A0(sel[4]), .A1(sel[2]), .B0(n26), .Y(n25) );
  CLKMX2X2 U39 ( .A(q[11]), .B(d[11]), .S0(n27), .Y(n68) );
  AOI21X1 U40 ( .A0(n28), .A1(n29), .B0(n18), .Y(n27) );
  NAND3X1 U41 ( .A(sel[1]), .B(sel[0]), .C(sel[3]), .Y(n29) );
  OAI21XL U42 ( .A0(sel[4]), .A1(sel[2]), .B0(n5), .Y(n28) );
  CLKMX2X2 U43 ( .A(q[10]), .B(d[10]), .S0(n30), .Y(n69) );
  OA21XL U44 ( .A0(sel[4]), .A1(n6), .B0(n26), .Y(n30) );
  CLKMX2X2 U45 ( .A(q[9]), .B(d[9]), .S0(n31), .Y(n70) );
  OA21XL U46 ( .A0(n7), .A1(n24), .B0(n26), .Y(n31) );
  CLKINVX1 U47 ( .A(n20), .Y(n24) );
  NOR2X1 U48 ( .A(sel[0]), .B(sel[4]), .Y(n20) );
  NOR2X1 U49 ( .A(n18), .B(n32), .Y(n26) );
  CLKMX2X2 U50 ( .A(q[7]), .B(d[7]), .S0(n33), .Y(n72) );
  NOR2X1 U51 ( .A(n34), .B(n35), .Y(n33) );
  OAI21XL U52 ( .A0(sel[1]), .A1(n4), .B0(n36), .Y(n35) );
  CLKMX2X2 U53 ( .A(q[5]), .B(d[5]), .S0(n37), .Y(n74) );
  OA21XL U54 ( .A0(sel[1]), .A1(n38), .B0(n36), .Y(n37) );
  CLKMX2X2 U55 ( .A(q[3]), .B(d[3]), .S0(n39), .Y(n76) );
  OA21XL U56 ( .A0(sel[2]), .A1(n38), .B0(n40), .Y(n39) );
  CLKMX2X2 U57 ( .A(q[2]), .B(d[2]), .S0(n40), .Y(n77) );
  OA21XL U58 ( .A0(n6), .A1(n4), .B0(en), .Y(n40) );
  CLKMX2X2 U59 ( .A(q[1]), .B(d[1]), .S0(n41), .Y(n78) );
  OA21XL U60 ( .A0(n7), .A1(n38), .B0(en), .Y(n41) );
  CLKINVX1 U61 ( .A(n34), .Y(n38) );
  NOR2X1 U62 ( .A(n4), .B(sel[0]), .Y(n34) );
  NOR2X1 U63 ( .A(sel[3]), .B(sel[4]), .Y(n32) );
endmodule


module p_dff_WORD2_NSEL5_1 ( clk, reset, en, sel, d, q );
  input [4:0] sel;
  input [1:0] d;
  output [1:0] q;
  input clk, reset, en;
  wire   n1, n2, n3, n4, n8, n9, n10;

  DFFRXL \q_reg[0]  ( .D(n8), .CK(clk), .RN(n3), .Q(q[0]) );
  DFFRXL \q_reg[1]  ( .D(n4), .CK(clk), .RN(n3), .Q(q[1]) );
  AO22X1 U2 ( .A0(d[0]), .A1(en), .B0(q[0]), .B1(n2), .Y(n8) );
  INVXL U3 ( .A(en), .Y(n2) );
  AO22X1 U4 ( .A0(d[1]), .A1(n1), .B0(q[1]), .B1(n10), .Y(n4) );
  CLKINVX1 U5 ( .A(n10), .Y(n1) );
  OAI31X1 U6 ( .A0(n9), .A1(sel[1]), .A2(sel[0]), .B0(en), .Y(n10) );
  CLKINVX1 U7 ( .A(reset), .Y(n3) );
  OR3X2 U8 ( .A(sel[4]), .B(sel[3]), .C(sel[2]), .Y(n9) );
endmodule


module DP_DW01_inc_0 ( A, SUM );
  input [24:0] A;
  output [24:0] SUM;

  wire   [24:2] carry;

  ADDHXL U1_1_22 ( .A(A[22]), .B(carry[22]), .CO(carry[23]), .S(SUM[22]) );
  ADDHXL U1_1_14 ( .A(A[14]), .B(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_21 ( .A(A[21]), .B(carry[21]), .CO(carry[22]), .S(SUM[21]) );
  ADDHXL U1_1_15 ( .A(A[15]), .B(carry[15]), .CO(carry[16]), .S(SUM[15]) );
  ADDHXL U1_1_13 ( .A(A[13]), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  ADDHXL U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_20 ( .A(A[20]), .B(carry[20]), .CO(carry[21]), .S(SUM[20]) );
  ADDHXL U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ADDHXL U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_19 ( .A(A[19]), .B(carry[19]), .CO(carry[20]), .S(SUM[19]) );
  ADDHXL U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_18 ( .A(A[18]), .B(carry[18]), .CO(carry[19]), .S(SUM[18]) );
  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_17 ( .A(A[17]), .B(carry[17]), .CO(carry[18]), .S(SUM[17]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_16 ( .A(A[16]), .B(carry[16]), .CO(carry[17]), .S(SUM[16]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  XOR2X1 U1_1_23 ( .A(A[23]), .B(carry[23]), .Y(SUM[23]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module DP ( clk, reset, im_q, im_d, en_si, en_init_time, en_fb_addr, 
        en_photo_num, en_curr_photo_addr, en_curr_photo_size, en_so, 
        init_time_mux_sel, sftr_n, so_mux_sel, curr_time, fb_addr, photo_num, 
        curr_photo_addr, curr_photo_size );
  input [23:0] im_q;
  output [29:0] im_d;
  input [1:0] sftr_n;
  input [1:0] so_mux_sel;
  output [23:0] curr_time;
  output [19:0] fb_addr;
  output [1:0] photo_num;
  output [19:0] curr_photo_addr;
  output [1:0] curr_photo_size;
  input clk, reset, en_si, en_init_time, en_fb_addr, en_photo_num,
         en_curr_photo_addr, en_curr_photo_size, en_so, init_time_mux_sel;
  wire   n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, N11, N12, N13, N14,
         N15, N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28,
         N29, N30, N31, N32, N33, N34, \photo_num_w[1] ,
         \curr_photo_size_sel[0] , n49, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59;
  wire   [23:0] init_time_mux;
  wire   [23:0] si_w;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6;

  p_dff_WORD24_NSEL5_0 si_reg ( .clk(clk), .reset(n12), .en(en_si), .sel({1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1}), .d(im_q), .q(si_w) );
  p_dff_WORD30_NSEL5 so_reg ( .clk(clk), .reset(n13), .en(en_so), .sel({1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1}), .d({1'b0, 1'b0, si_w[23:17], n3, 1'b0, 1'b0, 
        n2, n1, n10, n9, n8, si_w[10], n18, si_w[8], 1'b0, 1'b0, n16, si_w[6], 
        n7, n6, n4, si_w[2:0]}), .q({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, im_d[27:20], SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, im_d[17:10], SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, im_d[7:0]}) );
  p_dff_WORD24_NSEL5_1 init_time_reg ( .clk(clk), .reset(n13), .en(
        en_init_time), .sel({1'b1, 1'b1, 1'b1, 1'b1, 1'b1}), .d(init_time_mux), 
        .q({n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, 
        n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84}) );
  p_dff_WORD20_NSEL5_2 fb_addr_reg ( .clk(clk), .reset(reset), .en(en_fb_addr), 
        .sel({1'b1, 1'b1, 1'b1, 1'b1, 1'b1}), .d({si_w[19:17], n3, si_w[15], 
        n1, n11, n9, n8, si_w[10], n18, si_w[8], n16, si_w[6], n7, n6, n5, 
        si_w[2], n17, si_w[0]}), .q(fb_addr) );
  p_dff_WORD2_NSEL5_0 photo_num_reg ( .clk(clk), .reset(n13), .en(en_photo_num), .sel({1'b1, 1'b1, 1'b1, 1'b1, 1'b1}), .d({\photo_num_w[1] , n59}), .q(
        photo_num) );
  p_dff_WORD20_NSEL5_1 curr_photo_addr_reg ( .clk(clk), .reset(n12), .en(
        en_curr_photo_addr), .sel({1'b1, 1'b1, 1'b1, 1'b1, 1'b1}), .d({
        si_w[19:16], n2, n1, n11, si_w[12:10], n18, si_w[8], n16, si_w[6:4], 
        n5, si_w[2], n17, si_w[0]}), .q(curr_photo_addr) );
  p_dff_WORD2_NSEL5_1 curr_photo_size_reg ( .clk(clk), .reset(n12), .en(
        en_curr_photo_size), .sel({1'b1, 1'b1, 1'b1, 1'b1, 1'b1}), .d({n49, 
        \curr_photo_size_sel[0] }) );
  DP_DW01_inc_0 add_91 ( .A({1'b0, n61, n62, n63, n64, n65, n66, n67, n68, n69, 
        n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, 
        n84}), .SUM({SYNOPSYS_UNCONNECTED__6, N34, N33, N32, N31, N30, N29, 
        N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, 
        N14, N13, N12, N11}) );
  BUFX2 U3 ( .A(si_w[14]), .Y(n1) );
  BUFX2 U4 ( .A(si_w[15]), .Y(n2) );
  BUFX2 U5 ( .A(si_w[16]), .Y(n3) );
  BUFX2 U6 ( .A(si_w[3]), .Y(n4) );
  BUFX2 U7 ( .A(si_w[3]), .Y(n5) );
  BUFX2 U8 ( .A(si_w[4]), .Y(n6) );
  BUFX2 U9 ( .A(si_w[5]), .Y(n7) );
  BUFX2 U11 ( .A(si_w[11]), .Y(n8) );
  BUFX2 U12 ( .A(si_w[12]), .Y(n9) );
  BUFX2 U13 ( .A(si_w[13]), .Y(n10) );
  BUFX2 U14 ( .A(si_w[13]), .Y(n11) );
  BUFX2 U15 ( .A(reset), .Y(n12) );
  BUFX2 U16 ( .A(reset), .Y(n13) );
  INVXL U17 ( .A(n59), .Y(n14) );
  INVXL U18 ( .A(n14), .Y(n15) );
  NOR4X1 U19 ( .A(n113), .B(n8), .C(n10), .D(n9), .Y(n108) );
  NOR4X1 U20 ( .A(n107), .B(n8), .C(n11), .D(n9), .Y(n102) );
  NOR4XL U21 ( .A(n110), .B(n4), .C(n7), .D(n6), .Y(n109) );
  NOR4XL U22 ( .A(n106), .B(n5), .C(n7), .D(n6), .Y(n105) );
  CLKBUFX2 U23 ( .A(si_w[7]), .Y(n16) );
  CLKBUFX3 U24 ( .A(si_w[1]), .Y(n17) );
  CLKBUFX2 U25 ( .A(si_w[9]), .Y(n18) );
  NOR4X1 U26 ( .A(n111), .B(n17), .C(si_w[21]), .D(si_w[20]), .Y(n104) );
  NOR4X1 U27 ( .A(n112), .B(si_w[14]), .C(n3), .D(n2), .Y(n103) );
  CLKBUFX3 U28 ( .A(n32), .Y(n19) );
  CLKBUFX3 U29 ( .A(n33), .Y(n23) );
  CLKBUFX3 U30 ( .A(n32), .Y(n22) );
  CLKBUFX3 U31 ( .A(n32), .Y(n21) );
  CLKBUFX3 U32 ( .A(n32), .Y(n20) );
  CLKBUFX3 U33 ( .A(init_time_mux_sel), .Y(n28) );
  CLKBUFX3 U34 ( .A(n30), .Y(n26) );
  CLKBUFX3 U35 ( .A(n30), .Y(n27) );
  CLKBUFX3 U36 ( .A(n31), .Y(n24) );
  CLKBUFX3 U37 ( .A(n31), .Y(n25) );
  CLKBUFX3 U38 ( .A(n31), .Y(n29) );
  CLKBUFX3 U39 ( .A(n33), .Y(n30) );
  CLKBUFX3 U40 ( .A(n33), .Y(n31) );
  CLKBUFX3 U41 ( .A(init_time_mux_sel), .Y(n33) );
  CLKBUFX3 U42 ( .A(init_time_mux_sel), .Y(n32) );
  OAI2BB2XL U43 ( .B0(n23), .B1(n43), .A0N(N25), .A1N(n26), .Y(
        init_time_mux[14]) );
  CLKINVX1 U44 ( .A(n1), .Y(n43) );
  OAI2BB2XL U45 ( .B0(init_time_mux_sel), .B1(n42), .A0N(N26), .A1N(n27), .Y(
        init_time_mux[15]) );
  CLKINVX1 U46 ( .A(n2), .Y(n42) );
  OAI2BB2XL U47 ( .B0(n19), .B1(n54), .A0N(N16), .A1N(n27), .Y(
        init_time_mux[5]) );
  CLKINVX1 U48 ( .A(si_w[5]), .Y(n54) );
  OAI2BB2XL U49 ( .B0(n19), .B1(n51), .A0N(N19), .A1N(n29), .Y(
        init_time_mux[8]) );
  OAI2BB2XL U50 ( .B0(n21), .B1(n35), .A0N(N33), .A1N(n25), .Y(
        init_time_mux[22]) );
  OAI2BB2XL U51 ( .B0(n19), .B1(n53), .A0N(N17), .A1N(n28), .Y(
        init_time_mux[6]) );
  OAI2BB2XL U52 ( .B0(n21), .B1(n50), .A0N(n29), .A1N(N20), .Y(
        init_time_mux[9]) );
  OAI2BB2XL U53 ( .B0(n23), .B1(n47), .A0N(N21), .A1N(n29), .Y(
        init_time_mux[10]) );
  OAI2BB2XL U54 ( .B0(n21), .B1(n36), .A0N(N32), .A1N(n25), .Y(
        init_time_mux[21]) );
  CLKINVX1 U55 ( .A(si_w[21]), .Y(n36) );
  OAI2BB2XL U56 ( .B0(n22), .B1(n38), .A0N(N30), .A1N(n24), .Y(
        init_time_mux[19]) );
  OAI2BB2XL U57 ( .B0(n20), .B1(n56), .A0N(N14), .A1N(n26), .Y(
        init_time_mux[3]) );
  CLKINVX1 U58 ( .A(n5), .Y(n56) );
  OAI2BB2XL U59 ( .B0(n20), .B1(n34), .A0N(N34), .A1N(n25), .Y(
        init_time_mux[23]) );
  OAI2BB2XL U60 ( .B0(n30), .B1(n44), .A0N(N24), .A1N(n26), .Y(
        init_time_mux[13]) );
  CLKINVX1 U61 ( .A(n11), .Y(n44) );
  OAI2BB2XL U62 ( .B0(n19), .B1(n52), .A0N(N18), .A1N(n28), .Y(
        init_time_mux[7]) );
  OAI2BB2XL U63 ( .B0(n30), .B1(n45), .A0N(N23), .A1N(n28), .Y(
        init_time_mux[12]) );
  CLKINVX1 U64 ( .A(si_w[12]), .Y(n45) );
  OAI2BB2XL U65 ( .B0(n23), .B1(n46), .A0N(N22), .A1N(n28), .Y(
        init_time_mux[11]) );
  CLKINVX1 U66 ( .A(si_w[11]), .Y(n46) );
  OAI2BB2XL U67 ( .B0(n22), .B1(n58), .A0N(N12), .A1N(n24), .Y(
        init_time_mux[1]) );
  CLKINVX1 U68 ( .A(n17), .Y(n58) );
  OAI2BB2XL U69 ( .B0(n21), .B1(n37), .A0N(N31), .A1N(n25), .Y(
        init_time_mux[20]) );
  CLKINVX1 U70 ( .A(si_w[20]), .Y(n37) );
  OAI2BB2XL U71 ( .B0(n20), .B1(n55), .A0N(N15), .A1N(n27), .Y(
        init_time_mux[4]) );
  CLKINVX1 U72 ( .A(si_w[4]), .Y(n55) );
  OAI2BB2XL U73 ( .B0(n22), .B1(n39), .A0N(N29), .A1N(n24), .Y(
        init_time_mux[18]) );
  OAI2BB2XL U74 ( .B0(n31), .B1(n41), .A0N(N27), .A1N(n27), .Y(
        init_time_mux[16]) );
  CLKINVX1 U75 ( .A(n3), .Y(n41) );
  OAI2BB2XL U76 ( .B0(n20), .B1(n57), .A0N(N13), .A1N(n26), .Y(
        init_time_mux[2]) );
  OAI2BB2XL U77 ( .B0(n22), .B1(n40), .A0N(N28), .A1N(n24), .Y(
        init_time_mux[17]) );
  OAI2BB2XL U78 ( .B0(n23), .B1(n59), .A0N(N11), .A1N(n29), .Y(
        init_time_mux[0]) );
  NAND2X1 U79 ( .A(n100), .B(n101), .Y(\curr_photo_size_sel[0] ) );
  NAND4X1 U80 ( .A(n102), .B(n103), .C(n104), .D(n105), .Y(n101) );
  CLKINVX1 U81 ( .A(n100), .Y(n49) );
  NAND3X1 U82 ( .A(n34), .B(n57), .C(n35), .Y(n111) );
  NAND3X1 U83 ( .A(n39), .B(n38), .C(n40), .Y(n112) );
  NAND3X1 U84 ( .A(n51), .B(n50), .C(n53), .Y(n106) );
  NAND3X1 U85 ( .A(n15), .B(n47), .C(n16), .Y(n107) );
  NAND4X1 U86 ( .A(n108), .B(n103), .C(n104), .D(n109), .Y(n100) );
  NAND3X1 U87 ( .A(n52), .B(n51), .C(n53), .Y(n110) );
  CLKINVX1 U88 ( .A(si_w[0]), .Y(n59) );
  CLKINVX1 U89 ( .A(si_w[6]), .Y(n53) );
  CLKINVX1 U90 ( .A(si_w[10]), .Y(n47) );
  CLKINVX1 U91 ( .A(si_w[8]), .Y(n51) );
  CLKINVX1 U92 ( .A(si_w[9]), .Y(n50) );
  CLKINVX1 U93 ( .A(si_w[7]), .Y(n52) );
  CLKINVX1 U94 ( .A(si_w[17]), .Y(n40) );
  CLKINVX1 U95 ( .A(si_w[19]), .Y(n38) );
  CLKINVX1 U96 ( .A(si_w[2]), .Y(n57) );
  CLKINVX1 U97 ( .A(si_w[18]), .Y(n39) );
  NAND3X1 U98 ( .A(n15), .B(n47), .C(n18), .Y(n113) );
  CLKINVX1 U99 ( .A(si_w[22]), .Y(n35) );
  CLKINVX1 U100 ( .A(si_w[23]), .Y(n34) );
  XOR2X1 U101 ( .A(n59), .B(si_w[1]), .Y(\photo_num_w[1] ) );
endmodule


module DPA ( clk, reset, IM_A, IM_Q, IM_D, IM_WEN, CR_A, CR_Q );
  output [19:0] IM_A;
  input [23:0] IM_Q;
  output [23:0] IM_D;
  output [8:0] CR_A;
  input [12:0] CR_Q;
  input clk, reset;
  output IM_WEN;
  wire   n33, en_si, en_init_time, en_fb_addr, en_photo_num,
         en_curr_photo_addr, en_curr_photo_size, en_so, init_time_mux_sel, n1,
         n2, n3, n4;
  wire   [19:0] fb_addr;
  wire   [1:0] photo_num;
  wire   [19:0] curr_photo_addr;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5;

  CONT ctrl_logic ( .clk(clk), .reset(n2), .im_a(IM_A), .curr_time({1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .fb_addr(fb_addr), .photo_num(photo_num), .curr_photo_addr(
        curr_photo_addr), .curr_photo_size({1'b0, 1'b0}), .en_si(en_si), 
        .en_init_time(en_init_time), .en_fb_addr(en_fb_addr), .en_photo_num(
        en_photo_num), .en_curr_photo_addr(en_curr_photo_addr), 
        .en_curr_photo_size(en_curr_photo_size), .en_so(en_so), 
        .init_time_mux_sel(init_time_mux_sel), .im_wen_n_BAR(n33) );
  DP data_path ( .clk(clk), .reset(n3), .im_q(IM_Q), .im_d({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, IM_D[23:16], 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, IM_D[15:8], 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, IM_D[7:0]}), .en_si(
        en_si), .en_init_time(en_init_time), .en_fb_addr(en_fb_addr), 
        .en_photo_num(en_photo_num), .en_curr_photo_addr(en_curr_photo_addr), 
        .en_curr_photo_size(en_curr_photo_size), .en_so(en_so), 
        .init_time_mux_sel(n4), .sftr_n({1'b0, 1'b0}), .so_mux_sel({1'b0, 1'b0}), .fb_addr(fb_addr), .photo_num(photo_num), .curr_photo_addr(curr_photo_addr)
         );
  CLKINVX1 U1 ( .A(n1), .Y(n3) );
  INVXL U2 ( .A(reset), .Y(n1) );
  INVX1 U3 ( .A(n1), .Y(n2) );
  INVX16 U4 ( .A(n33), .Y(IM_WEN) );
  CLKBUFX3 U5 ( .A(init_time_mux_sel), .Y(n4) );
endmodule

