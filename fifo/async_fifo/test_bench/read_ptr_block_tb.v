`define CLK @(posedge r_clk)

module read_ptr_block_tb();
    reg          r_en;
    reg          r_clk;
    reg [3:0]    g_wptr_sync;
    reg          rrst_n;

    wire [3:0]    g_rptr;
    wire [3:0]    b_rptr;
    wire          empty;


    // Instantiating write pointer block
    read_ptr_block r1(r_en,r_clk,g_wptr_sync,rrst_n,g_rptr,b_rptr,empty);


    // Generating clock
    initial begin
        r_clk = 1'b0;
        repeat(40)
        #5 r_clk = ~r_clk;
        $finish();
    end

    // Stimulus
    initial begin
        r_en = 1'b0;
        g_wptr_sync = 4'd0;
        rrst_n = 1'b0;
        repeat(1) `CLK;
        g_wptr_sync = 4'd5;
        repeat (1) `CLK;
        rrst_n = 1'b1;
        repeat(1) `CLK;
        r_en = 1'b1;
        repeat(4) `CLK;
        $finish();
    end 

    // VCD Dump
    initial begin
        $dumpfile("read_ptr_block.vcd");
        $dumpvars(2,read_ptr_block_tb);
    end


endmodule