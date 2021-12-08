module ALUControlTB();
    reg [2:0] ALUOp;
    reg [5:0] Func;

    wire [3:0] ALU_Ctrl;

    ALU_Control first(ALU_Ctrl,ALUOp,Func);  

    initial begin
        Func =  6'b000000; ALUOp = 000;  //AND
        #10
        Func =  6'b000000; ALUOp = 001; //OR
        #10
        Func =  6'b000000; ALUOp= 010 ;//NOR
        #10
        Func =  6'b100100; ALUOp= 010;//ADD //////////
        #10
        Func =  6'b100101; ALUOp = 010;//SUB
        #10
        Func =  6'b100111; ALUOp = 010;//SLT
        #10
        Func =  6'b100000; ALUOp = 100;//ADDI
        #10
        Func =  6'b100010; ALUOp = 010;//DIV
        #10
        Func =  6'b101010; ALUOp= 010;//MULT
        #10
        Func =  6'b011010; ALUOp = 101;//LW
        #10
        Func =  6'b011000; ALUOp = 000;//SW
        #10
        Func =  6'b010000; ALUOp = 010;//MFHI
        #10
        Func =  6'b010010; ALUOp = 010;//MFLO ///////////
     
    end
    initial begin

    
    $monitor("Func= %6b, ALUOp=%3b, ALU_Ctrl=%4b", Func,ALUOp,ALU_Ctrl);
    end
    
endmodule