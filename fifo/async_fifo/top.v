`include "synchronizer.v"
`include "read_ptr_block.v"
`include "write_ptr_block.v"
`include "fifo.v"

module asyn_fifo_top(
    input           w_clk,
    input           w_en,
    input [15:0]    D_in,

    input           r_clk,
    input           r_en,

    input           wrst_n,
    input           rrst_n,
    
    output [15:0]   D_out,
    output          full,
    output          empty
);


reg [3:0] b_wptr, b_rptr;
reg [3:0] g_wptr_sync, g_rptr_sync;
reg [3:0] g_wptr, g_rptr;

// Synchronizing write pointer in the read clock domain
synchronizer read_synchronizer(r_clk,rrst_n,g_wptr,g_wptr_sync);
// Synchronizing read pointer in the write clock domain
synchronizer write_synchronizer(w_clk,wrst_n,g_rptr,g_rptr_sync);

// Instantiating Write pointer generater block
read_ptr_block r1(r_en,r_clk,g_wptr_sync,rrst_n,g_rptr,b_rptr,empty);

// Instantiating Read pointer generater block
write_ptr_block w1(w_en,w_clk,g_rptr_sync,wrst_n,g_wptr,b_wptr,full);

// Instatiating FIFO
fifo F1(D_in,w_clk,w_en,b_wptr,full,r_clk,r_en,b_rptr,empty,D_out);

endmodule