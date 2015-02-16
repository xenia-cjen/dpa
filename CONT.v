// +FHDR--------------------------------------------------------------------------------------------
// Copyright (c) 2015 Xxx.
// -------------------------------------------------------------------------------------------------
// Filename      : CONT.v
// Author        : r04099
// Created On    : 2015-11-06 04:43
// Last Modified : 2015-02-16 13:23
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
`include "DP.v"

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
output reg      [1:0]                   so_mux_sel;  
// -------------------------------------------------------------------------------------------------

// -------------------------------------------------------------------------------------------------
// state register & enum 
// -------------------------------------------------------------------------------------------------

reg     [1:0]                           state; 
reg     [1:0]                           next_state; 

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

reg                                     next_en_si;

wire    [19:0]                          read_cntr; 
reg     [19:0]                          next_read_cntr; 
wire    [19:0]                          write_cntr; 
reg     [19:0]                          next_write_cntr; 

reg     [19:0]                          read_addr; 
wire    [19:0]                          write_addr; 
reg     [19:0]                          next_write_addr; 

reg     [1:0]                           curr_photo; 
reg     [1:0]                           next_photo; 

assign work_cntr     = global_cntr - 20'd6; 
assign next_glb_cntr = (global_cntr!=20'd99_9999)?global_cntr+1'd1:20'd0; 

assign en_init_time  = (global_cntr==20'd2); 
assign en_fb_addr    = (state==SETUP&&global_cntr==20'd3); 
assign en_photo_num  = (state==SETUP&&global_cntr==20'd4); 
assign en_curr_photo_addr = (global_cntr==20'd5); 
assign en_curr_photo_size = (global_cntr==20'd6); 

assign init_time_mux_sel = (state!=SETUP); 
assign sftr_n            = 2'd2; //TODO:scale-support 

reg     [9:0]                           row;
always@* begin 
    // next-state logic 
    if (state==PHOTO_SI) 
        next_state = (next_glb_cntr!=20'd0)?PHOTO_SI:TIME_SI; 
    else if (state==TIME_SI) 
        next_state = (next_glb_cntr!=20'd0)?TIME_SI:PHOTO_SET; 
    else if (state==PHOTO_SET) 
        next_state = (next_glb_cntr>=20'd6)?PHOTO_SI:PHOTO_SET;
    else // state==SETUP
        next_state = (next_glb_cntr>=20'd5)?PHOTO_SET:SETUP;
    // ---------------------------------------------------------------------------------------------

    // row-logic
    if (curr_photo_size==2'b01) // 128*128-size 
        row = 10'd128; 
    else if (curr_photo_size==2'b11) // 512*512-size 
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
            //TODO:scale-support  
                next_write_cntr=(write_cntr>=20'd65536)?write_cntr:write_cntr+1;

            //TODO:scale-support 
                next_read_cntr =(write_cntr>=20'd65536)?read_cntr:read_cntr+1;
        end 
    end else begin 
        next_read_cntr  = read_cntr; 
        next_write_cntr = write_cntr; 
    end 

    // ---------------------------------------------------------------------------------------------

    // read-address logic
    if (state==PHOTO_SI) begin 
        //TODO:scale-support 
        if (curr_photo_size==2'b11) begin // 512*512-size
            case (read_cntr%4) 
            1:  read_addr={write_addr[19:8], 1'b0, write_addr[7:0], 1'b1}; 
            2:  read_addr={write_addr[19:8], 1'b1, write_addr[7:0], 1'b1}; 
            3:  read_addr={write_addr[19:8], 1'b1, write_addr[7:0], 1'b0}; 
            default: begin  
                if (work_cntr>20'd6) begin 
                    if ((work_cntr-20'd7)%6<3) 
                        read_addr={write_addr[19:8], 1'b0, write_addr[7:0], 1'b0}; 
                    else 
                        read_addr={next_write_addr[19:8], 1'b0, next_write_addr[7:0], 1'b0}; 
                end else begin 
                    if (work_cntr<20'd4) 
                        read_addr={write_addr[19:8], 1'b0, write_addr[7:0], 1'b0}; 
                    else 
                        read_addr={next_write_addr[19:8], 1'b0, next_write_addr[7:0], 1'b0}; 
                end 
            end 
            endcase 
        end else // normal-size    
            read_addr=(read_cntr%2==1'b0)?write_addr:next_write_addr; 
    end else // state==SETUP||state==PHOTO_SET||state==TIME_SI
        read_addr = 20'd0; 
    // ---------------------------------------------------------------------------------------------

    // write-address logic
    if (next_state==PHOTO_SI) begin 
        if (state==PHOTO_SET) // write_addr init 
            next_write_addr = 20'd0; 
        else begin 
            //TODO:time-lab->scale-support  
            //if (curr_photo_size==2'b11) begin // 512*512-size
            //end else 
                next_write_addr=write_addr+1; 
        end 
    //end else if (next_state==TIME_SI) begin //TODO:time-lab
    end else // next_state==SETUP||next_state==PHOTO_SET
        next_write_addr = write_addr; 
    // ---------------------------------------------------------------------------------------------

    // im-address logic
    if (state==PHOTO_SI) begin  
        //TODO:scale-support
        if (curr_photo_size==2'b11) begin // 512*512-size
            if (work_cntr>20'd6) begin 
                if ((work_cntr-20'd7)%6<5) 
                    im_a = read_addr+curr_photo_addr; 
                else 
                    im_a = write_addr+fb_addr; 
            end else begin 
                if (work_cntr<20'd6) 
                    im_a = read_addr+curr_photo_addr; 
                else 
                    im_a = write_addr+fb_addr; 
            end 
        end else begin // normal-size
            if (work_cntr%5<3) 
                im_a = read_addr+curr_photo_addr; 
            else
                im_a = write_addr+fb_addr; 
        end 
    //end else if (state==TIME_SI) begin //TODO:time-lab
    end else if (state==PHOTO_SET)
        im_a = global_cntr+2*curr_photo; 
    else // state==SETUP 
        im_a = global_cntr; 
    // ---------------------------------------------------------------------------------------------

    // im-write-enable logic
    if (state==PHOTO_SI) begin 
        //TODO:scale-support
        if (curr_photo_size==2'b11) begin // 512*512-size
            if (work_cntr>20'd6) begin 
                if ((work_cntr-20'd7)%6<5) 
                    im_wen_n = 1'b1; 
                else 
                    im_wen_n = (write_cntr>=20'd65536); 
            end else begin 
                if (work_cntr<20'd6) 
                    im_wen_n = 1'b1; 
                else 
                    im_wen_n = (write_cntr>=20'd65536); 
            end 
        end else begin // normal-size
            if (work_cntr%5<3) 
                im_wen_n = 1'b1; 
            else
                im_wen_n = (write_cntr>=20'd65536); 
        end 
    //end else if (state==TIME_SI) begin //TODO:time-lab
    end else // state==SETUP&&state==PHOTO_SET 
        im_wen_n   = 1'b1; 

    // ---------------------------------------------------------------------------------------------

    // next serial-in register enable 
    if (next_state==PHOTO_SI) begin 
        //TODO:scale-support
        if (state!=PHOTO_SET) begin 
            if (curr_photo_size==2'b11) begin // 512*512-size
                if (work_cntr>20'd5)  
                    next_en_si  = (((work_cntr-20'd6)%6<5)&&((work_cntr-20'd6)%6>0)); 
                else 
                    next_en_si  = (work_cntr<20'd5); 
            end else // normal-size
                next_en_si  = (((work_cntr+1)%5<3)&&((work_cntr+1)%5>0)); 
        end else 
            next_en_si  = 1'b0; 
    //end else if (state==TIME_SI) begin //TODO:time-lab
    end else if (next_state==PHOTO_SET) 
        next_en_si      = (next_glb_cntr>=4);
    else // state==SETUP
        next_en_si      = (next_glb_cntr>=1); 
    // ---------------------------------------------------------------------------------------------

    // serial-out mux. selector 
    if (state==PHOTO_SI) begin 
        if (curr_photo_size==2'b11) begin // 512*512-size
            if (work_cntr>20'd6) begin 
                if (((work_cntr-20'd7)%6<4)&&((work_cntr-20'd7)%6>1)) 
                    so_mux_sel = 2'b01; // ADD 
                else if ((work_cntr-20'd7)%6==4) 
                    so_mux_sel = 2'b11; // SHIFT
                else 
                    so_mux_sel = 2'b00; // BYPASS
            end else begin 
                if ((work_cntr<20'd5)&&(work_cntr>20'd2)) 
                    so_mux_sel = 2'b01; // ADD 
                else if (work_cntr==20'd5)
                    so_mux_sel = 2'b11; // SHIFT
                else 
                    so_mux_sel = 2'b00; // BYPASS
            end 
        end else // normal-size
            so_mux_sel = 2'b00; // BYPASS
    //end else if (state==TIME_SI) begin //TODO:time-lab
    end else 
        so_mux_sel = 2'b00; 
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
        next_photo = curr_photo; 
    else  
        next_photo = (curr_photo!=photo_num)?curr_photo+1:2'd0; 
    // ---------------------------------------------------------------------------------------------

end 
// -------------------------------------------------------------------------------------------------

always@(posedge clk or posedge reset) begin 
    if (reset==1'b1) begin 
        state                        <= SETUP; 

        global_cntr                  <= 20'd0; 

        en_si                        <= 1'b1; 

        curr_photo                   <= 2'd0; 
    end else begin 
        state                        <= next_state; 

        global_cntr                  <= next_glb_cntr; 

        en_si                        <= next_en_si; 

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

p_dff #(.WORD(20), .NSEL(5))
    read_cntr_reg(.clk(clk), 
         .reset(reset), 
         .en(next_en_si), //XXX
         .sel(5'd31), 
         .d(next_read_cntr),
         .q(read_cntr)); 

p_dff #(.WORD(20), .NSEL(5))
    write_cntr_reg(.clk(clk), 
         .reset(reset), 
         .en(!im_wen_n), //XXX
         .sel(5'd31), 
         .d(next_write_cntr),
         .q(write_cntr)); 
endmodule // CONT
