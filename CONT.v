// +FHDR--------------------------------------------------------------------------------------------
// Copyright (c) 2015 Xxx.
// -------------------------------------------------------------------------------------------------
// Filename      : CONT.v
// Author        : r04099
// Created On    : 2015-11-06 04:43
// Last Modified : 2015-11-07 00:55
// -------------------------------------------------------------------------------------------------
// Svn Info:
//   $Revision::                                                                                $:
//   $Author::                                                                                  $:
//   $Date::                                                                                    $:
//   $HeadURL::                                                                                 $:
// -------------------------------------------------------------------------------------------------
// Description: control logic for DPA device 
//
//
// -FHDR--------------------------------------------------------------------------------------------

module CONT(clk, reset, im_a, im_wen_n, 
              curr_time, fb_addr, photo_num, curr_photo_addr, curr_photo_size, 
              en_si, en_init_time, en_fb_addr, en_photo_num, en_curr_photo_addr, 
              en_curr_photo_size, en_so
              init_time_mux_sel, sftr_n, so_mux_sel); //TODO

input                                   clk;
input                                   reset;

output reg      [19:0]                  im_a;
output reg                              im_wen_n; 


// -------------------------------------------------------------------------------------------------
// input control signal from data-path 
// -------------------------------------------------------------------------------------------------

input           [23:0]                  curr_time; 
input           [19:0]                  fb_addr; 
input           [1:0]                   photo_num;  

input           [19:0]                  curr_photo_addr; 
input           [1:0]                   curr_photo_size; 
// -------------------------------------------------------------------------------------------------

// -------------------------------------------------------------------------------------------------
// control output signal to data-path 
// -------------------------------------------------------------------------------------------------


output reg                              en_si; 
output                                  en_so; 

output                                  en_init_time; 
output                                  en_fb_addr; 
output                                  en_photo_num; 
output                                  en_curr_photo_addr; 
output                                  en_curr_photo_size; 

//output reg                            en_shift; 

output                                  init_time_mux_sel; 
// -------------------------------------------------------------------------------------------------

// -------------------------------------------------------------------------------------------------
// state register & enum 
// -------------------------------------------------------------------------------------------------

reg     [1:0]                           state; 
reg     [1:0]                           next_state; 
reg     [1:0]                           prev_state; 

localparam      SETUP                 = 2'b00; 
localparam      PHOTO_SET             = 2'b01; 
localparam      PHOTO_SI              = 2'b10; 
localparam      TIME_SI               = 2'b11; 
// -------------------------------------------------------------------------------------------------

// -------------------------------------------------------------------------------------------------
// next-state logic 
// -------------------------------------------------------------------------------------------------

reg     [19:0]                          global_cntr; 
wire    [19:0]                          si_cntr; 
wire    [19:0]                          next_glb_cntr; 

reg                                     next_im_wen_n;  

reg     [1:0]                           curr_photo; 
reg     [1:0]                           next_photo; 

assign si_cntr       = global_cntr - 20'd6; 
assign next_glb_cntr = (global_cntr!=20'd99_9999)?global_cntr+1'd1:20'd0; 

assign en_so         = !next_im_wen_n; //XXX

assign en_init_time  = (global_cntr==20'd1); 
assign en_fb_addr    = (state==SETUP&&global_cntr==20'd2); 
assign en_photo_num  = (prev_state==SETUP&&global_cntr==20'd3); 
assign en_curr_photo_addr = (global_cntr==20'd4); 
assign en_curr_photo_size = (global_cntr==20'd5); 

assign init_time_mux_sel = (state!=SETUP); 

always@* begin 
    // next-state logic 
    if (state==PHOTO_SI) 
        next_state = (next_glb_cntr!=20'd0)?PHOTO_SI:TIME_SI; 
    else if (state==TIME_SI) 
        next_state = (next_glb_cntr!=20'd0)?TIME_SI:PHOTO_SET; 
    else if (state==PHOTO_SET) 
        next_state = (next_glb_cntr>=20'd6)?PHOTO_SI:PHOTO_SET;
    else // state==SETUP
        next_state = (next_glb_cntr>=20'd3)?PHOTO_SET:SETUP;
    // ---------------------------------------------------------------------------------------------

    // im-address logic
    if (state==PHOTO_SI) begin 
        //TODO
    end else if (state==TIME_SI) begin 
        //TODO
    end else if (state==PHOTO_SET) 
        im_a       = (next_state!=PHOTO_SI)?global_cntr+2*curr_photo:curr_photo_addr; 
    else // state==SETUP
        im_a       = global_cntr; 
    // ---------------------------------------------------------------------------------------------

    // next-im-write-enable logic
    if (next_state==PHOTO_SI) begin 
        //TODO
    end else if (next_state==TIME_SI) begin 
        //TODO
    end else // next_state==SETUP&&next_state==PHOTO_SET 
        next_im_wen_n = 1'b1; 

    // ---------------------------------------------------------------------------------------------

    // serial-in register enable 
    if (state==PHOTO_SI || state==TIME_SI) 
        en_si      = im_wen_n; 
    else if (state==PHOTO_SET) 
        en_si      = (global_cntr>=3);
    else // state==SETUP
        en_si      = 1'b1; 
    // ---------------------------------------------------------------------------------------------

    // serial-out register enable 
    // if (state==PHOTO_SI || state==TIME_SI) begin 
    //     en_so      = !next_im_wen_n; 
    // end 
    // else // state==SETUP || PHOTO_SET
    //     en_so      = 1'b0; 
    // ---------------------------------------------------------------------------------------------
    
    // next-photo logic
    if (next_state!=PHOTO_SET||next_glb_cntr!=20'd0)
        next_photo = curr_photo_addr; 
    else  
        next_photo = (curr_photo!=photo_num)?curr_photo+1:2'd0; 
    // ---------------------------------------------------------------------------------------------

end 
// -------------------------------------------------------------------------------------------------

always@(posedge clk or posedge reset) begin 
    if (reset==1'b1) begin 
        state                        <= SETUP; 
        prev_state                   <= SETUP; 

        global_cntr                  <= 20'd0; 

        im_wen_n                     <= 1'b1; 

        curr_photo                   <= 2'd0; 
    end else begin 
        state                        <= next_state; 
        prev_state                   <= state; 

        global_cntr                  <= next_glb_cntr; 

        im_wen_n                     <= next_im_wen_n; 

        curr_photo                   <= next_photo; 
    end 
end 

endmodule // CONT
