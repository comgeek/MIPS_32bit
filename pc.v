module PC(clk, pc_old, pc)
    input clk;
    input [31:0] pc_old;
    output reg [31:0] pc;
    
    initial pc = 0;
    
    always @(posedge clk) begin
        pc <= pc_old;
    end
    
endmodule 