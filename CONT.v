// +FHDR--------------------------------------------------------------------------------------------
// Copyright (c) 2015 Xxx.
// -------------------------------------------------------------------------------------------------
// Filename      : CONT.v
// Author        : r04099
// Created On    : 2015-11-06 04:43
// Last Modified : 2015-11-07 12:27
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
`include "p_dff.v"

module CONT(clk, reset, im_a, im_wen_n, 
              curr_time, fb_addr, photo_num, curr_photo_addr, curr_photo_size, 
              en_si, en_init_time, en_fb_addr, en_photo_num, en_curr_photo_addr, 
              en_curr_photo_size, en_so, 
              init_time_mux_sel, sftr_n, so_mux_sel); 

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
output reg                              en_so; 

output                                  en_init_time; 
output                                  en_fb_addr; 
output                                  en_photo_num; 
output                                  en_curr_photo_addr; 
output                                  en_curr_photo_size; 

//output reg                            en_shift; 

output                                  init_time_mux_sel; 
output          [1:0]                   sftr_n; 
output          [1:0]                   so_mux_sel;  
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
wire    [19:0]                          next_glb_cntr; 
wire    [19:0]                          work_cntr; // cntr for not during setup 

reg     [19:0]                          read_cntr; 
reg     [19:0]                          next_read_cntr; 
reg     [19:0]                          write_cntr; 
reg     [19:0]                          next_write_cntr; 

reg     [19:0]                          read_addr; 
wire    [19:0]                          write_addr; 
reg     [19:0]                          next_write_addr; 

reg     [1:0]                           curr_photo; 
reg     [1:0]                           next_photo; 

assign work_cntr       = global_cntr - 20'd5; 
assign next_glb_cntr = (global_cntr!=20'd99_9999)?global_cntr+1'd1:20'd0; 

assign en_init_time  = (global_cntr==20'd1); 
assign en_fb_addr    = (state==SETUP&&global_cntr==20'd2); 
assign en_photo_num  = (prev_state==SETUP&&global_cntr==20'd3); 
assign en_curr_photo_addr = (global_cntr==20'd4); 
assign en_curr_photo_size = (global_cntr==20'd5); 

assign init_time_mux_sel = (state!=SETUP); 
assign sftr_n            = 2'd0; //TODO:scale-support 
assign so_mux_sel        = 2'd0; //TODO:time-lab->scale-support 

reg     [9:0]                           row;
always@* begin 
    // next-state logic 
    if (state==PHOTO_SI) 
        next_state = (next_glb_cntr!=20'd0)?PHOTO_SI:TIME_SI; 
    else if (state==TIME_SI) 
        next_state = (next_glb_cntr!=20'd0)?TIME_SI:PHOTO_SET; 
    else if (state==PHOTO_SET) 
        next_state = (next_glb_cntr>=20'd5)?PHOTO_SI:PHOTO_SET;
    else // state==SETUP
        next_state = (next_glb_cntr>=20'd3)?PHOTO_SET:SETUP;
    // ---------------------------------------------------------------------------------------------

    // row logic
    if (curr_photo_size==2'b01) // 128*128 size 
        row = 10'd128; 
    else if (curr_photo_size==2'b11) //512*512 size 
        row = 10'd512; 
    else 
        row = 10'd256; 
    // ---------------------------------------------------------------------------------------------
        
    // next rw-counter logic
    if (next_state==PHOTO_SI || next_state==TIME_SI) begin 
        if (state!=next_state) begin //counter init 
            next_read_cntr  = 20'd0; 
            next_write_cntr = 20'd0; 
        end else begin 
            if (im_wen_n==1'b1) begin 
                //TODO:scale-support  
                next_read_cntr =(write_cntr>=20'd65536)?read_cntr:read_cntr+1;
                next_write_cntr=write_cntr; 
            end else begin 
                //TODO:scale-support 
                next_read_cntr =read_cntr; 
                next_write_cntr=(write_cntr>=20'd65536)?write_cntr:write_cntr+1;
            end 
        end 
    end else begin 
        next_read_cntr  = read_cntr; 
        next_write_cntr = write_cntr; 
    end 

    // ---------------------------------------------------------------------------------------------

    // read-address logic
    if (state==PHOTO_SI) begin 
        //TODO:scale-support 
            read_addr=(read_cntr%2==1'b0)?write_addr:next_write_addr; 

            //case (read_cntr%4) 
            //0:  read_addr = 
            //1:  read_addr = 
            //2:  read_addr = 
            //default: begin //3
            //    read_addr = 
            //    end 
            //endcase 
    end else // state==SETUP||state==PHOTO_SET||state==TIME_SI
        read_addr = 20'd0; 
    // ---------------------------------------------------------------------------------------------

    // write-address logic
    if (next_state==PHOTO_SI) begin 
        if (state==PHOTO_SET) // write_addr init 
            next_write_addr = 20'd0; 
        else begin 
            //TODO:time-lab->scale-support  
                next_write_addr = write_addr+1; 
        end 
    //end else if (next_state==TIME_SI) begin //TODO:time-lab
    end else // next_state==SETUP||next_state==PHOTO_SET
        next_write_addr = write_addr; 
    // ---------------------------------------------------------------------------------------------

    // im-address logic
    if (state==PHOTO_SI || state==TIME_SI)  
        im_a = (im_wen_n==1'b1)?read_addr+curr_photo_addr:write_addr+fb_addr; 
    else if (state==PHOTO_SI)
        im_a = global_cntr+2*curr_photo; 
    else // state==SETUP 
        im_a = global_cntr; 
    // ---------------------------------------------------------------------------------------------

    // im-write-enable logic
    if (next_state==PHOTO_SI) begin 
        //TODO:scale-support
            im_wen_n=(work_cntr%4<2||write_cntr>=20'd65536)?1'b1:1'b0;
    //end else if (next_state==TIME_SI) begin //TODO:time-lab
    end else // next_state==SETUP&&next_state==PHOTO_SET 
        im_wen_n   = 1'b1; 

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
    if (state==PHOTO_SI) begin 
        //TODO:scale-support
            en_so  = 1'b1; //TODO:power-save 
    //end else if (state==TIME_SI) begin //TODO:time-lab
    end else // state==SETUP || PHOTO_SET
        en_so      = 1'b0; 
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

        read_cntr                    <= 20'd0; 
        write_cntr                   <= 20'd0; 

        curr_photo                   <= 2'd0; 
    end else begin 
        state                        <= next_state; 
        prev_state                   <= state; 

        global_cntr                  <= next_glb_cntr; 

        read_cntr                    <= next_read_cntr; 
        write_cntr                   <= next_write_cntr; 

        curr_photo                   <= next_photo; 
    end 
end 

p_dff #(.WORD(20), .NSEL(5))
      write_addr_reg(.clk(clk), 
         .reset(reset), 
         .en(im_wen_n==1'b0||(next_state==PHOTO_SI&&state==PHOTO_SET)), 
         .sel(5'd31), 
         .d(next_write_addr),
         .q(write_addr)); 

endmodule // CONT
