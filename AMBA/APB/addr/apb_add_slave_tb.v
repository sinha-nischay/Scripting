`define CLK @(posedge pclk)

module apb_add_slave_tb();
    reg          pclk;
    reg          preset_n;

    reg [1:0]    add_i;       // 2'b00 - No Operation, 2'b01 - Read, 2'b11 - Write

    reg [31:0]   prdata;
    reg          pready;

    wire         psel;
    wire         penable;
    wire [31:0]  paddr;
    wire         pwrite;
    wire [31:0]  pwdata;

    // Instantiating Master
    apb_add_master master(
                pclk,
                preset_n,
                add_i,    
                prdata,
                pready,
                psel,
                penable,
                paddr,
                pwrite,
                pwdata

  );

  	
  
  	// pclk generation
    initial begin
       pclk=1'b0;
      repeat(50)
       #5 pclk=~pclk; 
    end
  
  
  	// Stimulus Generation
  	initial begin
  		// Reset generation
  	  preset_n = 1'b0;
      add_i = 2'b00;
      pready = 1'b0;
      repeat (2) `CLK; 
      preset_n = 1'b1;
      repeat (2) `CLK;

  		// Read Transaction
      add_i = 2'b01;
      `CLK;
      add_i = 2'b00;
      repeat(4) `CLK;

      // Write Transaction
      add_i = 2'b11;
      `CLK;
      add_i = 2'b00;
      repeat (4) `CLK;
      $finish();
    end
  
    

    // APB Slave
  always@(posedge pclk or negedge preset_n)
    begin
      if (~preset_n)
        pready <= 1'b0;
      else 
        if(psel && penable) begin
        	pready <= 1'b1;
        	prdata <= $urandom%32'h7;
      	end
      	else begin
        	pready <= 1'b0;
        	prdata <= $urandom%32'hFF;
      	end
    end

    
  	
  	//VCD Dump
  	initial begin
      $dumpfile("apb_master.vcd");
      $dumpvars(2,apb_add_slave_tb);
    end
endmodule