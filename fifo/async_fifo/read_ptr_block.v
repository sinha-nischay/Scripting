module read_ptr_block(
    input wire          r_en,
    input wire          r_clk,
    input wire [3:0]    g_wptr_sync,
    input wire          rrst_n,

    output reg [3:0]    g_rptr,
    output reg [3:0]    b_rptr,
    output reg          empty
);


wire [3:0] g_rptr_next;
wire [3:0] b_rptr_next;

wire  empty_next;



// Calculating next read pointer value (both binary and grey)
assign b_rptr_next = b_rptr + (r_en & ~empty);              
assign g_rptr_next = (b_rptr_next>>1)^(b_rptr_next);


// Assigning the read pointer values to binary and grey pointers respectively
always@(posedge r_clk or negedge rrst_n) begin
    if(~rrst_n) begin
        g_rptr <= 0;
        b_rptr <= 0;
    end
    else begin
        g_rptr <= g_rptr_next;
        b_rptr <= b_rptr_next;
    end
end


// Determining if empty condition is true or false using grey coded value
assign empty_next = (g_wptr_sync == g_rptr_next);        

// Assigning empty condition value as true or false
always@(posedge r_clk or negedge rrst_n) begin
    if(~rrst_n)
        empty <= 1;
    else empty <= empty_next;
end
endmodule