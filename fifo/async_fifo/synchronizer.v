module synchronizer
  		(
  		input wire			clk, 
        input wire			rst_n,
        input wire [3:0]	in,
        output reg [3:0]	out
       );
  
  reg [3:0] q1;
  
  always@(posedge clk or negedge rst_n)
    begin
      if(~rst_n) begin
      	q1 <= 0;
        out <= 0;
      end
      else begin
        q1 <= in;
        out <= q1;
      end
    end
    
endmodule