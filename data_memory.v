module data_memory (read_data, address, write_data, mem_write, mem_read, clk);
    input [31:0] address, write_data;
    input mem_write, mem_read, clk;
    output reg [31:0] read_data;

    reg [31:0] memory [255:0];

    
    always @(negedge clk) begin
        if(mem_write) begin
            memory[address[7:0]] <= write_data;
        end
    end
	 
	 always @(negedge clk) begin
		if(mem_read) begin
			read_data <= memory[address[7:0]];
		end
	 end
			
endmodule