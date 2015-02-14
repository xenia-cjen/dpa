// +FHDR--------------------------------------------------------------------------------------------
// Copyright (c) 2015 Xxx.
// -------------------------------------------------------------------------------------------------
// Filename      : CONT.v
// Author        : r04099
// Created On    : 2015-11-06 04:43
// Last Modified : 2015-02-14 16:53
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
              en_curr_photo_size, en_so, 
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
reg     [19:0]                          next_read_addr; 
reg     [19:0]                          write_addr; 
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
assign sftr_n            = 2'd0; //TODO
assign so_mux_sel        = 2'd0; //TODO

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

    // next rw-counter logic
    if (next_state==PHOTO_SI || next_state==TIME_SI) begin 
        if (state!=next_state) begin //counter init 
            next_read_cntr  = 20'd0; 
            next_write_cntr = 20'd0; 
        end else begin 
            if (im_wen_n) begin 
                next_read_cntr  = read_cntr + 1; 
                next_write_cntr = write_cntr; 
            end else begin 
                next_read_cntr  = read_cntr; 
                next_write_cntr = write_cntr + 1; 
            end 
        end 
    end else begin 
        next_read_cntr  = read_cntr; 
        next_write_cntr = write_cntr; 
    end 

    // ---------------------------------------------------------------------------------------------

    // row logic
    if (curr_photo_size==2'b01) // 128*128 size 
        row = 10'd128; 
    else if (curr_photo_size==2'b11) //512*512 size 
        row = 10'd512; 
    else 
        row = 10'd256; 
    // ---------------------------------------------------------------------------------------------
        
    // read-address logic
    if (next_state==PHOTO_SI) begin 
        if (state==PHOTO_SET) // read_addr init 
            next_read_addr = curr_photo_addr; 
        else begin 
            case (read_cntr%4) 
            0: next_read_addr = read_addr + 1; 
            1: next_read_addr = read_addr + row; 
            2: next_read_addr = read_addr - 1; 
            default: begin //3
                next_read_addr = read_addr + 2;
                end 
            endcase 
        end 
    end else if (next_state==TIME_SI) begin 
        //TODO
    end else // next_state==SETUP||next_state==PHOTO_SET
        next_read_addr = read_addr; 
    // ---------------------------------------------------------------------------------------------

    // write-address logic
    if (next_state==PHOTO_SI) begin 
        if (state==PHOTO_SET) // write_addr init 
            next_write_addr = fb_addr; 
        else begin 
            //TODO
            case (write_cntr%4) 
            0: next_write_addr = write_addr + 1; 
            1: next_write_addr = write_addr + row; 
            2: next_write_addr = write_addr - 1; 
            default: begin //3
                next_write_addr = write_addr + 2; 
                end 
            endcase 
        end 
    end else if (next_state==TIME_SI) begin 
        //TODO
    end else // next_state==SETUP||next_state==PHOTO_SET
        next_write_addr = write_addr; 
    // ---------------------------------------------------------------------------------------------

    // im-address logic
    if (state==PHOTO_SI || state==TIME_SI)  
        im_a = (im_wen_n)?read_addr:write_addr; //TODO: verif.  
    else if (state==PHOTO_SI)
        im_a = global_cntr+2*curr_photo; 
    else // state==SETUP 
        im_a = global_cntr; 
    // ---------------------------------------------------------------------------------------------

    // im-write-enable logic
    if (next_state==PHOTO_SI) begin 
        //TODO
    end else if (next_state==TIME_SI) begin 
        //TODO
    end else // next_state==SETUP&&next_state==PHOTO_SET 
        im_wen_n = 1'b1; 

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
    if (state==PHOTO_SI || state==TIME_SI) begin 
        //TODO
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

        read_addr                    <= 20'd0; 
        write_addr                   <= 20'd0; 

        curr_photo                   <= 2'd0; 
    end else begin 
        state                        <= next_state; 
        prev_state                   <= state; 

        global_cntr                  <= next_glb_cntr; 

        read_cntr                    <= next_read_cntr; 
        write_cntr                   <= next_write_cntr; 

        read_addr                    <= next_read_addr; 
        write_addr                   <= next_write_addr; 

        curr_photo                   <= next_photo; 
    end 
end 

endmodule // CONT
