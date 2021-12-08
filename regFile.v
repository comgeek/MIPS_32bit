module regFile(readreg1,readreg2,regwrite,writereg,writedata,readdata1,readdata2,clk)
   input clk,regwrite;
   input  [4:0] readreg1,readreg2,writereg;
   input [31:0] writedata;

    output reg [31:0] readdata1,readdata2;

    always@(posedge clk)
    begin

    end

    
    

