`include "CONT.v"

module DPA (clk,reset,IM_A, IM_Q,IM_D,IM_WEN,CR_A,CR_Q);
input clk;
input reset;
input   [23:0]  IM_Q;

input   [12:0]  CR_Q;

output          IM_WEN;
output  [19:0]  IM_A;
output  [23:0]  IM_D;

output  [8:0]   CR_A;

// -------------------------------------------------------------------------------------------------
// signal between control logic & data-path 
// -------------------------------------------------------------------------------------------------

wire            [23:0]                  curr_time; 
wire            [19:0]                  fb_addr; 
wire            [1:0]                   photo_num;  

wire            [19:0]                  curr_photo_addr; 
wire            [1:0]                   curr_photo_size; 

wire                                    en_si; 
wire                                    en_so; 

wire                                    en_init_time; 
wire                                    en_fb_addr; 
wire                                    en_photo_num; 
wire                                    en_curr_photo_addr; 
wire                                    en_curr_photo_size; 


wire                                    init_time_mux_sel; 
wire            [1:0]                   sftr_n; 
wire            [1:0]                   so_mux_sel;  
wire            [3:0]                   expand_sel;

wire            [29:0]                  im_d_w; 

assign          IM_D = {im_d_w[27:20], im_d_w[17:10], im_d_w[7:0]}; 
// -------------------------------------------------------------------------------------------------

CONT ctrl_logic(clk, reset, IM_A, IM_WEN, CR_A, 
              curr_time, fb_addr, photo_num, curr_photo_addr, curr_photo_size, 
              en_si, en_init_time, en_fb_addr, en_photo_num, en_curr_photo_addr, 
              en_curr_photo_size, en_so, 
              si_sel, init_time_mux_sel, sftr_n, so_mux_sel, expand_sel); 

DP data_path(clk, reset, IM_Q, CR_Q, im_d_w, 
            en_si, en_init_time, en_fb_addr, en_photo_num, en_curr_photo_addr, 
            en_curr_photo_size, en_so, 
            si_sel, init_time_mux_sel, sftr_n, so_mux_sel, expand_sel, 
            curr_time, fb_addr, photo_num, curr_photo_addr, curr_photo_size);
endmodule // PDA
