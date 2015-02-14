module DPA (clk,reset,IM_A, IM_Q,IM_D,IM_WEN,CR_A,CR_Q);
input clk;
input reset;
input   [23:0]  IM_Q;

input   [12:0]  CR_Q;

output          IM_WEN;
output  [19:0]  IM_A;
output  [23:0]  IM_D;

output  [8:0]   CR_A;

// control logic register 
reg     [19:0]  global_cnt; 
reg     [19:0]  next_glb_cnt; 

reg     [1:0]   curr_photo; 
reg     [1:0]   next_photo; 

reg     [1:0]   state; 
reg     [1:0]   next_state; 

localparam      SETUP       = 2'b00; 
localparam      PHOTO_SET   = 2'b01; 
localparam      PHOTO_SI    = 2'b10; 
localparam      TIME_SI     = 2'b11; 

reg     [4:0]   sel_reg_si; 
reg     [4:0]   sel_reg_scale; 
reg     [4:0]   sel_reg_so;  

reg     [4:0]   next_sel; 

wire    [2:0]   photo_num; 

always@* begin 
    //next-global-counter logic 
    next_glb_cnt = (global_cnt!=20'd99_9999)?global_cnt+1:20'd0;

    //next-photo logic 
    if(state==TIME_SI) 
        next_photo = (next_glb_cnt!=20'd0)?curr_photo:curr_photo+1; 
    else
        next_photo = curr_photo;  
    
    //next-state logic 
    if(state==PHOTO_SI) 
        next_state = (next_glb_cnt!=20'd0)?PHOTO_SI:TIME_SI; 
    else if (state==TIME_SI) 
        next_state = (next_glb_cnt!=20'd0)?TIME_SI:PHOTO_SET; 
    else if (state==SETUP) 
        next_state = (global_cnt>=20'd3)?PHOTO_SET:SETUP;
    else //state==PHOTO_SET
        next_state = (global_cnt>=20'd5)?PHOTO_SI:PHOTO_SET;
end //always 

always@(posedge clk or posedge reset) begin 
    if(reset==1'b1) begin 
        global_cnt       <= 20'd0; 

        curr_photo       <= 2'd0; 

        sel_reg_si       <= 5'd24; 
        sel_reg_scale    <= 5'd0; 
        sel_reg_so       <= 5'd0; 

        state            <= SETUP; 
    end else begin 
        global_cnt       <= next_glb_cnt; 

        curr_photo       <= (next_photo<photo_num)?next_photo:2'd0; 

        sel_reg_si       <= next_sel; 
        sel_reg_scale    <= sel_reg_si; 
        sel_reg_so       <= sel_reg_scale; 

        state            <= next_state; 
    end 
end 

// data-path logic 

//   si register 
wire    [23:0]  si_dist;  
pdff #(.WORD(24)) si_reg (.clk(clk), .reset(reset), .en(1'b1), 
                            .sel(sel_reg_si), .d(si_dist), .q(IM_Q)); 
//   init-time register 
wire            init_time_en = (global_cnt==20'd1)&&(state==SETUP); 
wire            init_time; 
pdff #(.WORD(24)) init_time_reg (.clk(clk), .reset(reset), .en(init_time_en), 
                                   .sel(sel_reg_scale), .d(init_time), .q(si_dist)); 
//   fb_addr register
wire            fb_addr_en = (global_cnt==20'd2)&&(state==SETUP); 
wire    [20:0]  fb_addr; 
pdff #(.WORD(20)) fb_addr_reg (.clk(clk), .reset(reset), .en(fb_addr_en), 
                                   .sel(sel_reg_scale), .d(fb_addr), .q(si_dist)); 
//   photo_number register
wire            photo_num_en = (global_cnt==20'd3)&&(state==SETUP); 
pdff #(.WORD(3)) photo_num_reg (.clk(clk), .reset(reset), .en(photo_num_en), 
                                  .sel(sel_reg_scale), .d(photo_num), .q(si_dist)); 

wire            curr_addr_en = (global_cnt==20'd4)&&(state==PHOTO_SET); 
wire    [20:0]  curr_addr; 
pdff #(.WORD(20)) curr_addr_reg (.clk(clk), .reset(reset), .en(curr_addr_en), 
                                   .sel(sel_reg_scale), .d(curr_addr), .q(si_dist)); 

wire            curr_size_en = (global_cnt==20'd5)&&(state==PHOTO_SET); 
wire    [1:0]   curr_size; 
wire    [1:0]   size_mux; 

localparam  NORMAL  = 2'd0; 
localparam  SMALL   = 2'd1; 
localparam  LARGE   = 2'd2; 

assign size_mux = (si_dist[8]==1'b1)?NORMAL:((si_dist[7]==1'b1)?SMALL:LARGE);
pdff #(.WORD(3)) curr_size_reg (.clk(clk), .reset(reset), .en(curr_size_en), 
                                  .sel(sel_reg_scale), .d(curr_size), .q(size_mux)); 
endmodule // PDA

module pdff (clk, reset, en, sel, d, q); 
input clk, reset, en; 

parameter WORD = 24; 
parameter NSEL = 5; 

input   [NSEL-1:0] sel; 
input   [WORD-1:0] q; 

output  [WORD-1:0] d;  

wire [WORD-1:0] select; 

genvar i; 
generate for (i=0; i<WORD; i=i+1) begin 
    assign select[i] = (en==1'b1)?((sel<i)?1'b0:1'b1):1'b0;
end 
endgenerate

generate for (i=0; i<WORD; i=i+1) begin 
    sdff #(.WORD(1)) sdff1 (.clk(clk), .reset(reset), .si(q[i]), 
                              .se(select[i]), .d(d[i]), q(d[i])); 
end 
endgenerate

endmodule // pdff

module sdff (clk, reset, si, se, d, q); 
input clk, reset, se; 

parameter WORD = 1; 

input [WORD-1:0] si; 
input [WORD-1:0] q; 

output reg [WORD-1:0]   d; 

wire [WORD-1:0] mux; 

assign mux = (se)?si:q;

always @(posedge clk or posedge reset) begin 
    if(reset==1'b1) 
        d <= {WORD{1'b0}}; 
    else 
        d <= mux; 
end
endmodule //sdff
