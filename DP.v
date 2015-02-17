// +FHDR--------------------------------------------------------------------------------------------
// Copyright (c) 2015 Xxx.
// -------------------------------------------------------------------------------------------------
// Filename      : DP.v
// Author        : r04099
// Created On    : 2015-11-06 22:58
// Last Modified : 2015-02-17 22:04
// -------------------------------------------------------------------------------------------------
// Svn Info:
//   $Revision::                                                                                $:
//   $Author::                                                                                  $:
//   $Date::                                                                                    $:
//   $HeadURL::                                                                                 $:
// -------------------------------------------------------------------------------------------------
// Description: data-path for DPA device
//
//
// -FHDR--------------------------------------------------------------------------------------------
`include "p_dff.v"

module DP(clk, reset, im_q, cr_q, im_d, 
            en_si, en_init_time, en_fb_addr, en_photo_num, en_curr_photo_addr, 
            en_curr_photo_size, en_so, 
            si_sel, init_time_mux_sel, sftr_n, so_mux_sel, expand_sel, 
            curr_time, fb_addr, photo_num, curr_photo_addr, curr_photo_size);

input                                   clk;
input                                   reset;

input           [23:0]                  im_q; 
input           [12:0]                  cr_q; 
output          [29:0]                  im_d; 

// -------------------------------------------------------------------------------------------------
// input control signal from contorl logic 
// -------------------------------------------------------------------------------------------------

input en_si, en_init_time, en_fb_addr, en_photo_num, en_curr_photo_addr, 
        en_curr_photo_size, en_so;  

input si_sel; 
input init_time_mux_sel; 

input             [1:0]                   sftr_n; 
input             [1:0]                   so_mux_sel; 
input             [3:0]                   expand_sel;

//TODO: would later enable for power saving  
//input           [4:0]                   sel_si;  
//input           [4:0]                   sel_so;  
// -------------------------------------------------------------------------------------------------

// -------------------------------------------------------------------------------------------------
// output control signal to contorl logic 
// -------------------------------------------------------------------------------------------------

output          [23:0]                  curr_time; 
output          [19:0]                  fb_addr; 
output          [1:0]                   photo_num; 
output          [19:0]                  curr_photo_addr; 
output          [1:0]                   curr_photo_size; 
// -------------------------------------------------------------------------------------------------

// -------------------------------------------------------------------------------------------------
// data-path 
// -------------------------------------------------------------------------------------------------
localparam                              BYPASS = 2'b00; 
localparam                              ADD    = 2'b01; 
localparam                              SHIFT  = 2'b11; 
localparam                              EXPAND = 2'b10;  

localparam                              NORMAL = 2'b00; // 256*256 size 
localparam                              SMALL  = 2'b01; // 128*128 size 
localparam                              LARGE  = 2'b11; // 512*512 size 

wire            [4:0]                   sel_all = 5'b11111;  

wire            [23:0]                  si_mux; 
wire            [23:0]                  si_w; 
wire            [23:0]                  init_time_mux; 

wire            [1:0]                   photo_num_w; 

wire            [9:0]                   addr_b; 
wire            [9:0]                   addr_g; 
wire            [9:0]                   addr_r; 

wire            [9:0]                   sftr_b; //TODO: might reduced to 8-bit
wire            [9:0]                   sftr_g; 
wire            [9:0]                   sftr_r; 

wire            [23:0]                  expand; 

reg             [29:0]                  so_mux; 
reg             [1:0]                   curr_photo_size_sel; 

assign si_mux           = (si_sel==1'b0)?im_q:cr_q;

assign init_time_mux    = (init_time_mux_sel==1'b1)?curr_time+1:si_w;

assign photo_num_w      = si_w-1; 

assign addr_b           = si_w[7:0]+im_d[9:0]; 
assign addr_g           = si_w[15:8]+im_d[19:10]; 
assign addr_r           = si_w[23:16]+im_d[29:20]; 

assign sftr_b           = addr_b >> sftr_n; 
assign sftr_g           = addr_g >> sftr_n; 
assign sftr_r           = addr_r >> sftr_n; 

assign expand           = (expand_sel!=4'd13)?{24{si_w[4'd12-expand_sel]}}:24'd0; 
//assign expand         = {24{si_w[4'd11-expand_sel]}}; 

always@* begin 
    // so_mux logic 
    case (so_mux_sel) 
    ADD:   so_mux={addr_r, addr_g, addr_b}; 
    SHIFT: so_mux={sftr_r, sftr_g, sftr_b};  
    EXPAND: begin 
        so_mux[9:0]={2'b00, expand[7:0]};  
        so_mux[19:10]={2'b00, expand[15:8]};  
        so_mux[29:20]={2'b00, expand[23:16]};  
    end 
    default: begin //BYPASS, EXPAND
        so_mux[9:0]={2'b00, si_w[7:0]};  
        so_mux[19:10]={2'b00, si_w[15:8]};  
        so_mux[29:20]={2'b00, si_w[23:16]};  
    end 
    endcase 
    // ---------------------------------------------------------------------------------------------
    
    // curr_photo_size_sel logic 
    if (si_w==24'd128) 
        curr_photo_size_sel = SMALL; 
    else if (si_w==24'd512) 
        curr_photo_size_sel = LARGE; 
    else 
        curr_photo_size_sel = NORMAL; 
    // ---------------------------------------------------------------------------------------------
end 

p_dff #(.WORD(24), .NSEL(5))
      si_reg(.clk(clk), 
         .reset(reset), 
         .en(en_si), 
         .sel(sel_all), //TODO
         .d(si_mux),
         .q(si_w)); 

p_dff #(.WORD(30), .NSEL(5))
      so_reg(.clk(clk), 
         .reset(reset), 
         .en(en_so), 
         .sel(sel_all), 
         .d(so_mux),
         .q(im_d)); 

p_dff #(.WORD(24), .NSEL(5))
      init_time_reg(.clk(clk), 
         .reset(reset), 
         .en(en_init_time), 
         .sel(sel_all), 
         .d(init_time_mux),
         .q(curr_time)); 

p_dff #(.WORD(20), .NSEL(5))
      fb_addr_reg(.clk(clk), 
         .reset(reset), 
         .en(en_fb_addr), 
         .sel(sel_all), 
         .d(si_w[19:0]),
         .q(fb_addr)); 

p_dff #(.WORD(2), .NSEL(5))
      photo_num_reg(.clk(clk), 
         .reset(reset), 
         .en(en_photo_num), 
         .sel(sel_all), 
         .d(photo_num_w),
         .q(photo_num)); 

p_dff #(.WORD(20), .NSEL(5))
      curr_photo_addr_reg(.clk(clk), 
         .reset(reset), 
         .en(en_curr_photo_addr), 
         .sel(sel_all), 
         .d(si_w[19:0]),
         .q(curr_photo_addr)); 

p_dff #(.WORD(2), .NSEL(5))
      curr_photo_size_reg(.clk(clk), 
         .reset(reset), 
         .en(en_curr_photo_size), 
         .sel(sel_all), 
         .d(curr_photo_size_sel),
         .q(curr_photo_size)); 
// -------------------------------------------------------------------------------------------------

endmodule

