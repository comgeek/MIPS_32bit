module contol_unit(op_code,reg_dst,jump,beq,mem_read,mem_to_reg,alu_op,mem_write,alu_src, reg_write);    
    input [5:0] op_code;
    output reg[2:0] alu_op;
    output reg reg_dst,jump,beq,mem_read,mem_to_reg ,mem_write,alu_src,reg_write;

always@(*) begin
    case(op_code)

        6'b000000 :  // R - Type 
            begin 
                reg_dst = 1'b1;    
                jump = 1'b0;       
                beq  = 1'b0;       
                mem_read = 1'b0;   
                mem_to_reg = 1'b0; 
                mem_write = 1'b0;  
                alu_src  = 1'b0;    
                reg_write= 1'b1;   
                alu_op = 3'b010;
            end
        6'b000010:  // Jump
            begin 
                reg_dst = 1'bx;
                jump = 1'b1; 
                beq  = 1'b0; 
                mem_read = 1'b0;
                mem_to_reg = 1'bx;
                mem_write = 1'b0;
                alu_src  = 1'bx;
                reg_write= 1'b0;
                alu_op = 3'bxxx;
            end
        6'b101011:  // SW
            begin 
                reg_dst = 1'bx; 
                jump = 1'b0; 
                beq  = 1'b0;
                mem_read = 1'b0;
                mem_to_reg = 1'bx;
                mem_write = 1'b1;
                alu_src  = 1'b1;
                reg_write= 1'b0;
                alu_op = 3'b000;
            end
        6'b000100:  //BEQ
            begin 
                reg_dst = 1'bx; 
                jump = 1'b0; 
                beq  = 1'b1;
                mem_read = 1'b0;
                mem_to_reg = 1'bx;
                mem_write = 1'b0;
                alu_src  = 1'b0;
                reg_write= 1'b0;
                alu_op = 3'b001;
            end
        6'b001000:  // ADDI
            begin 
                reg_dst = 1'b0;
                jump = 1'b0;
                beq  = 1'b0; 
                mem_read = 1'b0; 
                mem_to_reg = 1'b0;
                mem_write = 1'b0;
                alu_src  = 1'b1;
                reg_write= 1'b1;
                alu_op = 3'b100; // immediate
            end
        6'b100011:// LW
            begin 
                reg_dst = 1'b0;
                jump = 1'b0; 
                beq  = 1'b0;
                mem_read = 1'b1;
                mem_to_reg = 1'b1;
                mem_write = 1'b0;
                alu_src  = 1'b1; 
                reg_write= 1'b1;
                alu_op = 3'b101;
            end
        default:
            begin
                reg_dst = 1'bZ;
                jump = 1'bZ; 
                beq  = 1'bZ;
                mem_read = 1'bZ;
                mem_to_reg = 1'bZ;
                mem_write = 1'bZ;
                alu_src  = 1'bZ; 
                reg_write= 1'bZ;
                alu_op = 3'bZZ;
            end
     endcase

 end

endmodule