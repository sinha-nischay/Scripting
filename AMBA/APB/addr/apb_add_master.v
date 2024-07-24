module apb_add_master(
    input wire          pclk,
    input wire          preset_n,

    input wire [1:0]    add_i,       // 2'b00 - No Operation, 2'b01 - Read, 2'b11 - Write

    input wire [31:0]   prdata,
    input wire          pready,

    output wire         psel,
    output wire         penable,
    output wire [31:0]  paddr,
    output wire         pwrite,
    output wire [31:0]  pwdata

);

    localparam st_idle = 2'b00;
    localparam st_setup = 2'b01;
    localparam st_access = 2'b11;

    reg [1:0] present_state;
    reg [1:0] next_state;

    wire p_setup;
    wire p_access;

  	reg next_pwrite;
    reg pwrite_q;

  	reg [31:0] rdata_q;
  	reg [31:0] next_rdata;




    // Next state Assignment
  	always@(posedge pclk or negedge preset_n) begin
        if (~preset_n)
            present_state <= st_idle;
        else
            present_state <= next_state;
    end


    // Next state Calculation
  always@(*) begin
        next_pwrite = pwrite_q;                           // holds pwrite constant when we are in setup or access phase. Else it will become 'XX' in setup & access phase
        next_rdata = rdata_q;                             // Keeps the read data constant, so even if there is change of data in given address, the data read is constant
        case(present_state)
        st_idle:    if(add_i[0]) begin
                        next_state <= st_setup;
                        next_pwrite <= add_i[1];           // When add_i comes when we are in idle state. We capture if the command is read or write        
                    end
        st_setup:   next_state <= st_access;
        st_access:  if(pready) begin
                        next_state <= st_idle;
                        if (~pwrite_q)
                            next_rdata <= prdata;
                    end
                    else
                        next_state <= st_access;
        default:    next_state <= st_idle;
        endcase
    end

        // Note we are using blocking statements above!!



    // Output Assignment


    assign p_setup = (present_state == st_setup);
    assign p_access = (present_state == st_access);

    assign psel = p_setup | p_access;
    assign penable = p_access;

    assign paddr = {32{(p_setup | p_access)}} & 32'hA000;

    // APB PWrite value assignment
    always @(posedge pclk or negedge preset_n) begin
        if(~preset_n)
            pwrite_q <= 1'b0;
        else
            pwrite_q <= next_pwrite;                        // Floping the pwrite value captured in idle phase to assign the value to pwrite_q in setup phase.
    end

    assign pwrite = pwrite_q;                              // As pwrite_q value is assigned in setup phase, pwrite value is also assigned in the setup phase.



    // APB Pwdata assignment
    // Adder - Read data from slave at the paddr address when read command comes,
    // increment the value by 1 and then write the value back at the same address.
    always @(posedge pclk or negedge preset_n) begin
        if (~preset_n)
            rdata_q <= 32'h0;
        else
            rdata_q <= next_rdata; 
    end

    assign pwdata = {32{p_access}} & (rdata_q + 32'h1);


endmodule
