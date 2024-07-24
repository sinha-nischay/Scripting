module fifo(

    input [15:0]    D_in,
    input           w_clk,
    input           w_en,
    input [3:0]     b_wptr,

    input           full,

    input           r_clk,
    input           r_en,
    input [3:0]     b_rptr,

    input           empty,

    output [15:0]   D_out

);


reg [15:0] fifo [7:0];
reg [15:0] D_out_reg;

always@(posedge w_clk) begin
    if (w_en & ~full)
        fifo[b_wptr[2:0]] <= D_in;
end

always@(posedge r_clk) begin
  if (r_en & ~empty)
    D_out_reg <= fifo[b_rptr[2:0]];
end

assign D_out = D_out_reg;

endmodule