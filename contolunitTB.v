module contolunitTB();
    reg [5:0] op_code;
    wire [2:0] alu_op;
    wire reg_dst,jump,beq,mem_read,mem_to_reg,mem_write,alu_src, reg_write;
    
    contol_unit first (op_code,reg_dst,jump,beq,mem_read,mem_to_reg,alu_op,mem_write,alu_src, reg_write);    

    initial begin
        op_code =  6'b000000; //AND
        #10
        op_code =  6'b010000; //OR
        #10
        op_code =  6'b100101; //NOR
        #10
        op_code =  6'b100111; //ADD
        #10
        op_code =  6'b100000; //SUB
        #10
        op_code =  6'b100010; //SLT
        #10
        op_code =  6'b001000; //ADDI
        #10
        op_code =  6'b101010; //DIV
        #10
        op_code =  6'b011010; //MULT
        #10
        op_code =  6'b100011; //LW
        #10
        op_code =  6'b100011; //SW
        #10
        op_code =  6'b011000; //MFHI
        #10
        op_code =  6'b010000; //MFLO
        #10
        op_code =  6'b000100; //BEQ
        #10
        op_code =  6'b000010; //J
    end
    initial begin

    
    $monitor("op_code= %6b, reg_dst=%1b, jump=%1b, beq=%1b, mem_read=%1b, mem_to_reg=%1b, mem_write=%1b, alu_src=%1b, reg_write=%1b, alu_op = %3b", op_code,reg_dst,jump,beq,mem_read,mem_to_reg ,mem_write,alu_src,reg_write,alu_op);
    end
    
endmodule