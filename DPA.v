module DPA (clk,reset,IM_A, IM_Q,IM_D,IM_WEN,CR_A,CR_Q);
input clk;
input reset;
input   [23:0]  IM_Q;

input   [12:0]  CR_Q;

output          IM_WEN;
output  [19:0]  IM_A;
output  [23:0]  IM_D;

output  [8:0]   CR_A;

endmodule // PDA
