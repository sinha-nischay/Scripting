`define WCLK @(posedge w_clk);

module asyn_fifo_top_tb();

    reg           w_clk;
    reg           w_en;
    reg [15:0]    D_in;

    reg           r_clk;
    reg           r_en;

    reg           wrst_n;
    reg           rrst_n;
    
    wire [15:0]   D_out;
    wire          full;
    wire          empty;




// Instantiating Asynchronous FIFO
asyn_fifo_top TOP_MODULE(w_clk,w_en,D_in,r_clk,r_en,wrst_n,rrst_n,D_out,full,empty);

// Write Clock Generation
initial begin
    w_clk = 0;
    repeat(40) 
    #5 w_clk = ~w_clk;
end

// Read Clock Generation
initial begin
    r_clk = 0;
    repeat(40) 
    #10 r_clk = ~r_clk;
end

// Stimulus for write
initial begin
    wrst_n = 0;
    w_en = 0;
    repeat(2) `WCLK;
    w_en = 1;
    D_in = 16'd5;
    `WCLK;
    D_in = 16'd6;
    `WCLK;
    D_in = 16'd7;
    `WCLK;
    D_in = 16'd8;
    `WCLK;
    D_in = 16'd9;
    `WCLK;
    D_in = 16'd10;
    w_en = 0;
    `WCLK;
    D_in = 16'd11;
    `WCLK;
    D_in = 16'd12;
    `WCLK;

    


end

// VCD Dump
initial begin
    $dumpfile("asyn_fifo_top.v");
    $dumpvars(2,asyn_fifo_top_tb);
end

endmodule