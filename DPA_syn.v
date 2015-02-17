
module DPA ( clk, reset, IM_A, IM_Q, IM_D, IM_WEN, CR_A, CR_Q );
  output [19:0] IM_A;
  input [23:0] IM_Q;
  output [23:0] IM_D;
  output [8:0] CR_A;
  input [12:0] CR_Q;
  input clk, reset;
  output IM_WEN;
  wire   en_si, en_init_time, en_fb_addr, en_photo_num, en_curr_photo_addr,
         en_curr_photo_size, en_so, si_sel, init_time_mux_sel, n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23;
  wire   [23:0] curr_time;
  wire   [19:0] fb_addr;
  wire   [1:0] photo_num;
  wire   [19:0] curr_photo_addr;
  wire   [1:0] curr_photo_size;
  wire   [1:0] sftr_n;
  wire   [1:0] so_mux_sel;
  wire   [3:0] expand_sel;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5;

  CONT ctrl_logic ( .clk(clk), .reset(n12), .im_a(IM_A), .im_wen_n(IM_WEN), 
        .cr_a(CR_A), .curr_time({n6, n2, n17, curr_time[20], n13, n10, n19, 
        curr_time[16], n7, n1, n16, curr_time[12], n20, n8, n15, curr_time[8], 
        n5, n3, n18, curr_time[4], n14, n9, n11, curr_time[0]}), .fb_addr(
        fb_addr), .photo_num(photo_num), .curr_photo_addr(curr_photo_addr), 
        .curr_photo_size(curr_photo_size), .en_si(en_si), .en_init_time(
        en_init_time), .en_fb_addr(en_fb_addr), .en_photo_num(en_photo_num), 
        .en_curr_photo_addr(en_curr_photo_addr), .en_curr_photo_size(
        en_curr_photo_size), .en_so(en_so), .si_sel(si_sel), 
        .init_time_mux_sel(init_time_mux_sel), .so_mux_sel(so_mux_sel), 
        .expand_sel(expand_sel) );
  DP data_path ( .clk(clk), .reset(n21), .im_q(IM_Q), .cr_q(CR_Q), .im_d({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, IM_D[23:16], 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, IM_D[15:8], 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, IM_D[7:0]}), .en_si(
        en_si), .en_init_time(en_init_time), .en_fb_addr(en_fb_addr), 
        .en_photo_num(en_photo_num), .en_curr_photo_addr(en_curr_photo_addr), 
        .en_curr_photo_size(en_curr_photo_size), .en_so(en_so), .si_sel(n23), 
        .init_time_mux_sel(n22), .sftr_n({1'b1, 1'b0}), .so_mux_sel(so_mux_sel), .expand_sel({expand_sel[3:2], n4, expand_sel[0]}), .curr_time(curr_time), 
        .fb_addr(fb_addr), .photo_num(photo_num), .curr_photo_addr(
        curr_photo_addr), .curr_photo_size(curr_photo_size) );
  CLKBUFX3 U1 ( .A(curr_time[14]), .Y(n1) );
  CLKBUFX3 U2 ( .A(curr_time[22]), .Y(n2) );
  CLKBUFX3 U3 ( .A(curr_time[6]), .Y(n3) );
  CLKBUFX3 U4 ( .A(expand_sel[1]), .Y(n4) );
  CLKBUFX3 U5 ( .A(curr_time[7]), .Y(n5) );
  CLKBUFX3 U6 ( .A(curr_time[23]), .Y(n6) );
  CLKBUFX3 U7 ( .A(curr_time[15]), .Y(n7) );
  CLKBUFX3 U8 ( .A(curr_time[10]), .Y(n8) );
  CLKBUFX3 U9 ( .A(curr_time[2]), .Y(n9) );
  CLKBUFX3 U10 ( .A(curr_time[18]), .Y(n10) );
  CLKBUFX3 U11 ( .A(curr_time[1]), .Y(n11) );
  CLKBUFX3 U12 ( .A(reset), .Y(n12) );
  CLKBUFX3 U13 ( .A(curr_time[19]), .Y(n13) );
  CLKBUFX3 U14 ( .A(curr_time[3]), .Y(n14) );
  CLKBUFX3 U15 ( .A(curr_time[9]), .Y(n15) );
  CLKBUFX3 U16 ( .A(curr_time[13]), .Y(n16) );
  CLKBUFX3 U17 ( .A(curr_time[21]), .Y(n17) );
  CLKBUFX3 U18 ( .A(curr_time[5]), .Y(n18) );
  CLKBUFX3 U19 ( .A(curr_time[17]), .Y(n19) );
  CLKBUFX3 U20 ( .A(curr_time[11]), .Y(n20) );
  CLKBUFX3 U21 ( .A(si_sel), .Y(n23) );
  CLKBUFX3 U22 ( .A(init_time_mux_sel), .Y(n22) );
  CLKBUFX3 U23 ( .A(reset), .Y(n21) );
endmodule

