module write_ptr_block(
    input wire          w_en,
    input wire          w_clk,
    input wire [3:0]    g_rptr_sync,
    input wire          wrst_n,

    output reg [3:0]    g_wptr,
    output reg [3:0]    b_wptr,
    output reg          full
);


wire [3:0] g_wptr_next;
wire [3:0] b_wptr_next;

wire  full_next;



// Calculating next write pointer value (both binary and grey)
assign b_wptr_next = b_wptr + (w_en & ~full);               
assign g_wptr_next = (b_wptr_next>>1)^(b_wptr_next);


// Assigning the write pointer values to binary and grey pointers respectively
always@(posedge w_clk or negedge wrst_n) begin
    if(~wrst_n) begin
        g_wptr <= 0;
        b_wptr <= 0;
    end
    else begin
        g_wptr <= g_wptr_next;
        b_wptr <= b_wptr_next;
    end
end


// Determining if full condition is true or false using grey coded value
assign full_next = (~g_rptr_sync[3:2] == g_wptr_next[3:2]) && (g_rptr_sync[1:0] == g_wptr_next);        

// Assigning full condition value as true or false
always@(posedge w_clk or negedge wrst_n) begin
    if(~wrst_n)
        full <= 0;
    else full <= full_next;
end
endmodule