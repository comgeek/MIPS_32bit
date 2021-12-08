module mips_32(CLOCK_50)
    input CLOCK_50;



    // Fetch

    wire [5:0] op_code;
    wire [4:0] rs;
    wire [4:0] rt;
    wire [4:0] rd;
    wire [15:0] imm; 
    wire [5:0] funct;
    
    wire [31:0] instruction;
    wire [31:0] pc;
    wire [31:0] pc_old;
    wire [31:0] S;
    wire Cout;

    initial  pc = 0;
     PC programcounter(CLOCK_50, pc_old, pc);
     RCA32 pcAdd(pc,4,0,S,Cout);
     instruction_memory mem(instruction, pc, CLOCK_50);

     split_instruction_fields split(op_code, rs, rt, rd, funct, imm, address, instruction);


    // Decode

    wire reg_dst,jump,beq,mem_read,mem_to_reg,mem_write,alu_src,reg_write;
    wire [2:0] alu_op;


    contol_unit contl (op_code,reg_dst,jump,beq,mem_read,mem_to_reg,alu_op,mem_write,alu_src, reg_write);    
    mux5x2 writeregmux (writeRegmuxed, rt, rd, reg_dst);
    sign_extend extendo(extended, imm);
    



    // Execute