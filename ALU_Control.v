 module ALU_Control(ALU_Ctrl,ALUOp,Func);  
     output reg[3:0] ALU_Ctrl;   
     input [2:0] ALUOp;   
     input [5:0] Func;  

     always @(*)  
        begin
         case (ALUOp)  
            3'b100:    
            ALU_Ctrl = 4'b1100; // add immediate
            3'b101:
            ALU_Ctrl = 4'b1101; // lW
            3'b000:
            
            ALU_Ctrl = 4'b0000; //SW
            3'b001:
            ALU_Ctrl = 4'b0001; //BEQ
            3'b010:
            case(Func)
           
                6'b100100: // AND *
                ALU_Ctrl = 4'b0010;
                6'b100101: // OR *
                ALU_Ctrl = 4'b0011;

                6'b100111: //NOR  *
                ALU_Ctrl = 4'b0100;

                6'b100000: //ADD 
                ALU_Ctrl = 4'b0101;
                6'b100010: //SUB
                ALU_Ctrl = 4'b0110;
                6'b101010: //SLT
                ALU_Ctrl = 4'b0111;

                6'b011010: //DIV ()
                ALU_Ctrl = 4'b1000;
                6'b011000: // MULT ()
                ALU_Ctrl = 4'b1001; 
                6'b010000: //MFHI ()
                ALU_Ctrl = 4'b1010;
                6'b010010: //MFLO ()
                ALU_Ctrl = 4'b1011;
           
            endcase

          default: ALU_Ctrl=4'bXXXX;  
        endcase  
        end
     endmodule  



