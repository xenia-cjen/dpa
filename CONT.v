// +FHDR--------------------------------------------------------------------------------------------
// Copyright (c) 2015 Xxx.
// -------------------------------------------------------------------------------------------------
// Filename      : CONT.v
// Author        : r04099
// Created On    : 2015-11-06 04:43
// Last Modified : 2015-02-19 06:11
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

module CONT(clk, reset, im_a, im_wen_n, cr_a, 
              curr_time, fb_addr, photo_num, curr_photo_addr, curr_photo_size, 
              en_si, en_init_time, en_fb_addr, en_photo_num, en_curr_photo_addr, 
              en_curr_photo_size, en_so, 
              si_sel, init_time_mux_sel, sftr_n, so_mux_sel, expand_sel); 

input                                   clk;
input                                   reset;

output reg      [19:0]                  im_a;
output reg                              im_wen_n; 
output reg      [8:0]                   cr_a; 


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

output                                  si_sel; 
output                                  init_time_mux_sel; 
output          [1:0]                   sftr_n; 
output reg      [1:0]                   so_mux_sel;  
output reg      [3:0]                   expand_sel; 
// -------------------------------------------------------------------------------------------------

// -------------------------------------------------------------------------------------------------
// state register & enum 
// -------------------------------------------------------------------------------------------------

reg     [2:0]                           state; 
reg     [2:0]                           next_state; 

localparam      SETUP                 = 3'b000; 
localparam      PHOTO_SET             = 3'b001; 
localparam      PHOTO_SI              = 3'b010; 
localparam      TIME_SI               = 3'b011; 
localparam      NEXT_PHOTO_SI         = 3'b100; 
localparam      NEXT_TIME_SI          = 3'b101; 

localparam      CR_OFFSET             = 20'he898; 

localparam      MAX_CR_WRITE_CNTR     = 20'd2496;
// -------------------------------------------------------------------------------------------------

// -------------------------------------------------------------------------------------------------
// next-state logic 
// -------------------------------------------------------------------------------------------------

reg     [19:0]                          global_cntr; 
wire    [19:0]                          next_glb_cntr; 
reg     [19:0]                          work_cntr; // cntr within state 
wire    [19:0]                          next_work_cntr; 

reg                                     next_en_si;

wire    [19:0]                          read_cntr; 
reg     [19:0]                          next_read_cntr; 
wire    [19:0]                          write_cntr; 
reg     [19:0]                          next_write_cntr; 
reg     [19:0]                          max_write_cntr;

reg     [19:0]                          read_addr; 
wire    [19:0]                          write_addr; 
reg     [19:0]                          next_write_addr; 
wire    [19:0]                          next_write_addr_w; 

wire    [8:0]                           cr_read_cntr; 
reg     [8:0]                           next_cr_read_cntr; 

wire    [8:0]                           cr_x; 
wire    [8:0]                           cr_y;           

wire    [8:0]                           next_cr_x; 
wire    [8:0]                           next_cr_y;           

wire    [3:0]                           h_1; // digit in 10 place of HOUR
wire    [3:0]                           h_0; // digit in  1 place of HOUR
wire    [3:0]                           m_1; // digit in 10 place of MINUTE
wire    [3:0]                           m_0; // digit in  1 place of MINUTE
wire    [3:0]                           s_1; // digit in 10 place of SECOND
wire    [3:0]                           s_0; // digit in  1 place of SECOND

reg     [1:0]                           curr_photo; 
reg     [1:0]                           next_photo; 

assign next_work_cntr= (next_state==state)?work_cntr+1:20'd0; 
assign next_glb_cntr = (global_cntr!=20'd99_9999)?global_cntr+1'd1:20'd0; 

assign en_init_time  = (global_cntr==20'd2); 
assign en_fb_addr    = (state==SETUP&&global_cntr==20'd3); 
assign en_photo_num  = (state==SETUP&&global_cntr==20'd4); 
assign en_curr_photo_addr = (global_cntr==20'd5); 
assign en_curr_photo_size = (global_cntr==20'd6); 

assign si_sel            = ((state==TIME_SI)||(state==NEXT_TIME_SI)); 
assign init_time_mux_sel = (state!=SETUP); 
assign sftr_n            = 2'd2; //TODO:scale-support 

assign next_write_addr_w = write_addr+20'd2; 

assign cr_x              = write_cntr/20'd312; 
assign cr_y              = (write_cntr/20'd13)%24; 

assign next_cr_x         = next_write_cntr/20'd312; 
assign next_cr_y         = (next_write_cntr/20'd13)%24; 

assign h_1               = curr_time[23:16]/24'd10; 
assign h_0               = curr_time[23:16]%10; 
assign m_1               = curr_time[15:8]/24'd10; 
assign m_0               = curr_time[15:8]%10; 
assign s_1               = curr_time[7:0]/24'd10; 
assign s_0               = curr_time[7:0]%10; 

always@* begin 
    // upper-bound of write counter 
    if (curr_photo_size==2'b01) // 128*128-size 
        max_write_cntr = 20'd31520; //XXX
    else 
        max_write_cntr = 20'd31520; 
    // ---------------------------------------------------------------------------------------------
        
    // next-state logic 
    if (state==PHOTO_SI) 
        next_state = (write_cntr<max_write_cntr)?PHOTO_SI:TIME_SI; 
    else if (state==TIME_SI)  
        next_state = (next_glb_cntr<20'd20_0000)?TIME_SI:NEXT_PHOTO_SI; 
    else if (state==NEXT_PHOTO_SI) 
        next_state = (next_glb_cntr!=20'd0)?NEXT_PHOTO_SI:NEXT_TIME_SI; 
    else if (state==NEXT_TIME_SI) 
        next_state = (next_glb_cntr!=20'd0)?NEXT_TIME_SI:PHOTO_SET; 
    else if (state==PHOTO_SET) 
        next_state = (next_glb_cntr>=20'd7)?PHOTO_SI:PHOTO_SET;
    else // state==SETUP
        next_state = (next_glb_cntr>=20'd5)?PHOTO_SET:SETUP;
    // ---------------------------------------------------------------------------------------------

    // next rw-counter logic
    if (next_state!=state) begin //counter init 
        next_read_cntr  = 20'd0; 
        next_write_cntr = 20'd0; 
        next_cr_read_cntr = 20'd0; 
    end else if (next_state==PHOTO_SI || next_state==NEXT_PHOTO_SI) begin 
        //TODO:scale-support 
            next_read_cntr =(write_cntr<max_write_cntr)?read_cntr+1:read_cntr;
        //TODO:scale-support  
            next_write_cntr=(write_cntr<max_write_cntr)?write_cntr+1:write_cntr;
            next_cr_read_cntr = cr_read_cntr;  
    end else if (next_state==TIME_SI || next_state==NEXT_TIME_SI) begin 
        next_read_cntr =read_cntr;
        next_write_cntr=(write_cntr<MAX_CR_WRITE_CNTR)?write_cntr+1:write_cntr;
        next_cr_read_cntr =(write_cntr<MAX_CR_WRITE_CNTR)?cr_read_cntr+1:cr_read_cntr;
    end else begin 
        next_read_cntr  = read_cntr; 
        next_write_cntr = write_cntr; 
        next_cr_read_cntr = cr_read_cntr;  
    end 
    // ---------------------------------------------------------------------------------------------

    // read-address logic
    if (state==PHOTO_SI || state==NEXT_PHOTO_SI) begin 
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

    // cr-read-address logic
    if (state==TIME_SI || state==NEXT_TIME_SI) begin 
        case (cr_x) 
        0:  cr_a = h_1*9'd24+cr_read_cntr%24; 
        1:  cr_a = h_0*9'd24+cr_read_cntr%24; 
        3:  cr_a = m_1*9'd24+cr_read_cntr%24; 
        4:  cr_a = m_0*9'd24+cr_read_cntr%24; 
        6:  cr_a = s_1*9'd24+cr_read_cntr%24; 
        7:  cr_a = s_0*9'd24+cr_read_cntr%24; 
        default: begin 
            cr_a = 9'd240+cr_read_cntr%24; 
        end 
        endcase 
    end else // state==SETUP||state==PHOTO_SET||state==TIME_SI
        cr_a = 9'd0; 
    // ---------------------------------------------------------------------------------------------

    // write-address logic
    if (next_state!=state)
        next_write_addr = (next_state!=PHOTO_SI)?20'd0:20'd1; 
    else if (next_state==PHOTO_SI||next_state==NEXT_PHOTO_SI) begin 
        if(next_write_addr_w[19:8]>=12'd232&&next_write_addr_w[7:0]>=8'd152) begin  
            if ((next_write_addr_w[19:8]+12'd1)%2==0) begin 
                if (next_state==PHOTO_SI)
                    next_write_addr={next_write_addr_w[19:8]+12'd1, {7{1'b0}}, 1'b1}; 
                else 
                    next_write_addr={next_write_addr_w[19:8]+12'd1, {7{1'b0}}, 1'b0}; 
            end else begin 
                if (next_state==PHOTO_SI)
                    next_write_addr={next_write_addr_w[19:8]+12'd1, {7{1'b0}}, 1'b0}; 
                else 
                    next_write_addr={next_write_addr_w[19:8]+12'd1, {7{1'b0}}, 1'b1}; 
            end 
        end else begin  
            if (next_write_addr_w[19:8]>write_addr[19:8]) begin //next-line logic 
                if (next_write_addr_w[19:8]%2==0) begin 
                    if (next_state==PHOTO_SI)
                        next_write_addr={next_write_addr_w[19:8], {7{1'b0}}, 1'b1}; 
                    else 
                        next_write_addr={next_write_addr_w[19:8], {7{1'b0}}, 1'b0}; 
               end else begin 
                    if (next_state==PHOTO_SI)
                        next_write_addr={next_write_addr_w[19:8], {7{1'b0}}, 1'b0}; 
                    else 
                        next_write_addr={next_write_addr_w[19:8], {7{1'b0}}, 1'b1}; 
               end 
            end else 
                next_write_addr=next_write_addr_w; 
        end 
    end else if (next_state==TIME_SI || next_state==NEXT_TIME_SI) begin 
        next_write_addr=next_cr_y*20'd256+next_cr_x*20'd13+next_write_cntr%13; 
    end else // next_state==SETUP||next_state==PHOTO_SET
        next_write_addr = write_addr; 
    // ---------------------------------------------------------------------------------------------

    // im-address logic
    if (state==PHOTO_SI || state==NEXT_PHOTO_SI) begin  
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
    end else if (state==TIME_SI||state==NEXT_TIME_SI) begin 
        im_a = write_addr+fb_addr+CR_OFFSET; 
    end else if (state==PHOTO_SET)
        im_a = global_cntr+2*curr_photo; 
    else // state==SETUP 
        im_a = global_cntr; 
    // ---------------------------------------------------------------------------------------------

    // im-write-enable logic
    if (state==PHOTO_SI || state==NEXT_PHOTO_SI) begin 
        //TODO:scale-support
        if (curr_photo_size==2'b11) begin // 512*512-size
            if (work_cntr>20'd6) begin 
                if ((work_cntr-20'd7)%6<5) 
                    im_wen_n = 1'b1; 
                else 
                    im_wen_n = (write_cntr>=max_write_cntr); 
            end else begin 
                if (work_cntr<20'd6) 
                    im_wen_n = 1'b1; 
                else 
                    im_wen_n = (write_cntr>=max_write_cntr); 
            end 
        end else begin // normal-size
            if (work_cntr%5<3) 
                im_wen_n = 1'b1; 
            else
                im_wen_n = (write_cntr>=max_write_cntr); 
        end 
    end else if (state==TIME_SI||state==NEXT_TIME_SI) begin 
        if (work_cntr>20'd15) begin 
            if ((work_cntr-20'd16)%14>0) 
                im_wen_n = (write_cntr>=MAX_CR_WRITE_CNTR); 
            else 
                im_wen_n = 1'b1; 
        end else begin 
            if (work_cntr>20'd2) 
                im_wen_n = (write_cntr>=MAX_CR_WRITE_CNTR); 
            else 
                im_wen_n = 1'b1; 
        end 
    end else // state==SETUP&&state==PHOTO_SET 
        im_wen_n   = 1'b1; 

    // ---------------------------------------------------------------------------------------------

    // next serial-in register enable 
    if (next_state==PHOTO_SI || next_state==NEXT_PHOTO_SI) begin 
        //TODO:scale-support
        //TODO:may change to next_work_cntr
        if (next_state==state) begin 
            if (curr_photo_size==2'b11) begin // 512*512-size
                if (work_cntr>20'd5)  
                    next_en_si  = (((work_cntr-20'd6)%6<5)&&((work_cntr-20'd6)%6>0)); 
                else 
                    next_en_si  = (work_cntr<20'd5); 
            end else // normal-size
                next_en_si  = (((work_cntr+1)%5<3)&&((work_cntr+1)%5>0)); 
        end else 
            next_en_si  = 1'b0; 
    end else if (state==TIME_SI||state==NEXT_TIME_SI) begin 
        if (next_work_cntr>20'd16) begin 
            next_en_si = ((next_work_cntr-20'd17)%14==12);  
        end else begin 
            next_en_si = ((next_work_cntr==20'd1)||(next_work_cntr==20'd15));  
        end 
    end else if (next_state==PHOTO_SET) 
        next_en_si      = (next_glb_cntr>=4);
    else // state==SETUP
        next_en_si      = (next_glb_cntr>=1); 
    // ---------------------------------------------------------------------------------------------

    // serial-out mux. selector 
    if (state==PHOTO_SI || state==NEXT_PHOTO_SI) begin 
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
    end else if (state==TIME_SI || state==NEXT_TIME_SI) begin
        so_mux_sel = 2'b10; //EXPAND
    end else 
        so_mux_sel = 2'b00; 
    // ---------------------------------------------------------------------------------------------

    // expanding selector 
    if (state==TIME_SI || state==NEXT_TIME_SI) begin
        if (work_cntr>20'd15) begin 
            expand_sel = ((work_cntr-20'd16)%14); 
        end else begin 
            if (work_cntr>20'd1&&work_cntr<20'd15) 
                expand_sel = work_cntr - 20'd1; 
            else 
                expand_sel = 4'd0; 
        end 
    end else 
        expand_sel = 4'd0; 
    
    // ---------------------------------------------------------------------------------------------

    // serial-out register enable 
    if (state==PHOTO_SI || state==NEXT_PHOTO_SI) begin 
        en_so      = 1'b1;
    end else if (state==TIME_SI || state==NEXT_TIME_SI) begin 
        en_so      = 1'b1;
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
        work_cntr                    <= 20'd0; 
        en_si                        <= 1'b1; 
        curr_photo                   <= 2'd0; 
    end else begin 
        state                        <= next_state; 
        global_cntr                  <= next_glb_cntr; 
        work_cntr                    <= next_work_cntr; 
        en_si                        <= next_en_si; 
        curr_photo                   <= next_photo; 
    end 
end 

p_dff #(.WORD(20), .NSEL(5))
    write_addr_reg(.clk(clk), 
         .reset(reset), 
         .en(im_wen_n==1'b0 || 
            (next_state!=state)), 
         .sel(5'd31), 
         .d(next_write_addr),
         .q(write_addr)); 

p_dff #(.WORD(20), .NSEL(5))
    read_cntr_reg(.clk(clk), 
         .reset(reset), 
         .en(next_en_si==1'b1 ||
            (next_state!=state)), 
         .sel(5'd31), 
         .d(next_read_cntr),
         .q(read_cntr)); 

p_dff #(.WORD(9), .NSEL(4))
    cr_read_cntr_reg(.clk(clk), 
         .reset(reset), 
         .en(next_en_si==1'b1 ||
            (next_state!=state)), 
         .sel(4'd15), 
         .d(next_cr_read_cntr),
         .q(cr_read_cntr)); 

p_dff #(.WORD(20), .NSEL(5))
    write_cntr_reg(.clk(clk), 
         .reset(reset), 
         .en(im_wen_n==1'b0 ||
            (next_state!=state)), 
         .sel(5'd31), 
         .d(next_write_cntr),
         .q(write_cntr)); 
endmodule // CONT
