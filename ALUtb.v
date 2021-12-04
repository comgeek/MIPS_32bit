`define DELAY 20
module ALUtb();
reg [31:0] a,b;
reg [2:0] ALUControl;

wire [31:0] result,n;
wire zero;

alu hatb (result,zero,n,a,b,ALUControl);

initial begin
a = 32'b00000000000000000000000000001011; b = 32'b00000000000000000000000000000110; ALUControl = 3'b000;   
#`DELAY;
a = 32'b00000000000000000000000000001011; b = 32'b00000000000000000000000000000110; ALUControl = 3'b001; 
#`DELAY;
a = 32'b00000000000000000000000000001000; b = 32'b00000000000000000000000000000110; ALUControl = 3'b010;
#`DELAY;
a = 32'b00000000000000000000000000001011; b = 32'b00000000000000000000000000000110; ALUControl = 3'b110;
#`DELAY;
a = 32'b00000000000000000000000000001011; b = 32'b00000000000000000000000000000110; ALUControl = 3'b111;
end
 
 
 
endmodule