`define w_clk @(posedge w_clk);
`define r_clk @(posedge r_clk);

module fifo_tb();

    reg [15:0]    D_in;
    reg           w_clk;
    reg           w_en;
    reg [3:0]     b_wptr;

    reg           full;

    reg           r_clk;
    reg           r_en;
    reg [3:0]     b_rptr;

    reg           empty;

    wire [15:0]   D_out;


    // Instantiation of fifo module
    fifo F1(D_in,w_clk,w_en,b_wptr,full,r_clk,r_en,b_rptr,empty,D_out);

    // Write Clock generation
    initial begin
        w_clk = 0;
        repeat(40)
        #5 w_clk = ~w_clk;
        $finish();
    end

    // Read Clock Generation
    initial begin
        r_clk = 0;
        repeat(40)
        #10 r_clk = ~r_clk;
    end

    // Stimulus for write
    initial begin
        D_in = 0;
        w_en = 0;
        b_wptr = 0;
        full = 0;
        r_en = 0;
        empty = 1;
        b_rptr = 0;
        // Writing into fifo
      	repeat(2) `w_clk;
      	
      	w_en = 1'b1;
      	`w_clk;
      	D_in = 16'd5;
      	b_wptr = b_wptr+1;
        repeat(2) `w_clk;
      	D_in = 16'd6; 
      	b_wptr = b_wptr+1;
      	repeat(2) `w_clk;
      	D_in = 16'd7; 
      	b_wptr = b_wptr+1;
      	repeat(2) `w_clk;
      	D_in = 16'd8; 
      	b_wptr = b_wptr+1;
      	repeat(2) `w_clk;
        w_en = 0;
      	// Extra D_in which won't be written
      	D_in = 16'd9; 
      	repeat(2) `w_clk;
      	D_in = 16'd10; 
      	repeat(2) `w_clk;
      	D_in = 16'd11; 
      	`w_clk;
        repeat(2) `w_clk;      
    end
  
  	// Stimulus for read
  	initial begin
      	`r_clk;
      	empty = 0;
      	r_en = 1;
      	repeat(5) begin
        `r_clk;
        b_rptr = b_rptr+1;
        end
      
      	repeat(2) `r_clk;
      	r_en = 0;
      	repeat(2) `r_clk;
      	empty = 1;
      	repeat(2) `r_clk;
    end

    // VCD Dump
    initial begin
        $dumpfile("fifo.vcd");
        $dumpvars(2,fifo_tb);
    end

endmodule