`define CLK @(posedge clk)

module synchronizer_tb();
  reg 	clk; 
  reg 	rst_n;
  reg 	[31:0]in;
  wire 	[31:0]out;
  
  //Instantiating synchronizer
  synchronizer s1(clk,rst_n,in,out);
  
  // Clk generation
  initial begin
    clk = 1'b0;
    repeat(20) 
      #5 clk = ~clk;
  end
  
  // Stimulus
  initial begin
    // Reset generation
    rst_n = 1'b0;
    repeat(2) `CLK;
    rst_n = 1'b1;
    repeat(2) `CLK;
    
    // Data Input
    #2;
    in = 32'd15;
    repeat(2) `CLK;
    #2;
    in = 32'd22;
    repeat(4) `CLK;
    $finish();    
  end
  
  // VCD Dump
  initial begin
    $dumpfile("synchronizer.vcd");
    $dumpvars(2,synchronizer_tb);
  end
        
endmodule