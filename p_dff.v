// +FHDR--------------------------------------------------------------------------------------------
// Copyright (c) 2015 Xxx.
// -------------------------------------------------------------------------------------------------
// Filename      : p_dff.v
// Author        : r04099
// Created On    : 2015-11-06 04:00
// Last Modified : 2015-02-14 23:43
// -------------------------------------------------------------------------------------------------
// Svn Info:
//   $Revision::                                                                                $:
//   $Author::                                                                                  $:
//   $Date::                                                                                    $:
//   $HeadURL::                                                                                 $:
// -------------------------------------------------------------------------------------------------
// Description: power flip-flop for power saveing. 
//
//
// -FHDR--------------------------------------------------------------------------------------------

module p_dff(clk, reset, en, sel, d, q);
parameter   WORD = 24; 
parameter   NSEL = 5; 

input                                   clk;
input                                   reset;
input                                   en;

input       [NSEL-1:0]                  sel; 
input       [WORD-1:0]                  d; 

output reg  [WORD-1:0]                  q; 

wire        [WORD-1:0]                  mux; 

genvar i; 
generate for (i=0; i<WORD; i=i+1) begin 
    assign mux[i] = (en==1'b0)?q[i]:((sel<i)?q[i]:d[i]); 
end 
endgenerate

always@(posedge clk or posedge reset) begin 
    if (reset==1'b1) 
        q <= {WORD{1'b0}}; 
    else 
        q <=  mux; 
end 

endmodule // p_dff
