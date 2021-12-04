
`include "RPAS32.v"
module subtTestbench();	// No need for Ports
  reg[31:0]  a, b;	// variables
  wire[31:0] diff;	// wires
  wire V,C;	// wires


  initial begin 
      #20 a = 1; b = 2;
      #20 a = 5; b = 7; 
      #20 a = 20; b = 20; 
      #20 a = 4; b = 1; 
      #20 a = 54; b = 10; 
      #20 a = 70; b = 2; 
      #20 a = 20; b = 20; 
      #5 $finish;
  end

  RPAS32 BIG(diff,C,V,a,b);
endmodule
      