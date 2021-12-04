
`include "RCA32.v"
module AdderTestbench();	// No need for Ports
  reg[31:0]  a, b;	// variables
  reg cin;
  wire[31:0] sum;	// wires
  
  wire = cout;


  initial begin 
      #20 a = 1; b = 2; cin = 1;
      #20 a = 5; b = 7; 
      #20 a = 20; b = 20; 
      #20 a = 4; b = 1; 
      #20 a = 54; b = 10; 
      #20 a = 70; b = 2; 
      #20 a = 20; b = 20; 
      #5 $finish;
  end

  RCA32 BIG(a,b,cin,sum,cout);
endmodule
      