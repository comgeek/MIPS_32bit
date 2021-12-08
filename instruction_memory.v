module instruction_memory (instruction, read_address, clk);
    input [31:0] read_address; //PC
    input clk;
    output reg [31:0] instruction;
    wire [31:0] ins_mem[0:255];

     //What is currently set to be done
    initial begin
        ins_mem[0]  = 32'h0000_0000;
        ins_mem[1]  = 32'h0000_0000;
        ins_mem[2]  = 32'h0000_0000;
        ins_mem[3]  = 32'h0000_0000;
        ins_mem[4]  = 32'h0000_0000;
        ins_mem[5]  = 32'h0000_0000;
        ins_mem[6]  = 32'h0000_0000;
        ins_mem[7]  = 32'h0000_0000;
        ins_mem[8]  = 32'h0000_0000;
        ins_mem[9]  = 32'h0000_0000;
        ins_mem[10] = 32'h0000_0000;
        ins_mem[11] = 32'h0000_0000;
        ins_mem[12] = 32'h0000_0000;
        ins_mem[13] = 32'h0000_0000;
        ins_mem[14] = 32'h0000_0000;
        ins_mem[15] = 32'h0000_0000; 
        ins_mem[16] = 32'h0000_0000;
        ins_mem[17] = 32'h0000_0000;
        ins_mem[18] = 32'h0000_0000;
        ins_mem[19] = 32'h0000_0000;
        ins_mem[20] = 32'h0000_0000;
        ins_mem[21] = 32'h0000_0000;
        ins_mem[22] = 32'h0000_0000;
        ins_mem[23] = 32'h0000_0000;
        ins_mem[24] = 32'h0000_0000;
        ins_mem[25] = 32'h0000_0000;
        ins_mem[26] = 32'h0000_0000;
        ins_mem[27] = 32'h0000_0000;
        ins_mem[28] = 32'h0000_0000;
        ins_mem[29] = 32'h0000_0000;
        ins_mem[30] = 32'h0000_0000;
        ins_mem[31] = 32'h0000_0000;
     end
     
     //Updated PC? Update.
     always @(*) begin
        instruction = ins_mem[read_address];
     end
     
endmodulee