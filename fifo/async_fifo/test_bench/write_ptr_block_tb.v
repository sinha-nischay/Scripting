`define CLK @(posedge w_clk)

module write_ptr_block_tb();
    reg          w_en;
    reg          w_clk;
    reg [3:0]    g_rptr_sync;
    reg          wrst_n;

    wire [3:0]    g_wptr;
    wire [3:0]    b_wptr;
    wire          full;


    // Instantiating write pointer block
    write_ptr_block w1(w_en,w_clk,g_rptr_sync,wrst_n,g_wptr,b_wptr,full);


    // Generating clock
    initial begin
        w_clk = 1'b0;
        repeat(40)
        #5 w_clk = ~w_clk;
        $finish();
    end

    // Stimulus
    initial begin
        w_en = 1'b0;
        g_rptr_sync = 4'd0;
        wrst_n = 1'b0;
        repeat(1) `CLK;
        g_rptr_sync = 4'd1;
        repeat (1) `CLK;
        wrst_n = 1'b1;
        repeat(1) `CLK;
        w_en = 1'b1;
        repeat(4) `CLK;
        $finish();
    end 

    // VCD Dump
    initial begin
        $dumpfile("write_ptr_block.vcd");
        $dumpvars(2,write_ptr_block_tb);
    end


endmodule