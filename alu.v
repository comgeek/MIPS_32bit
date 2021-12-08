module alu(result,zero,a,b,ALUControl);
    output reg [31:0] result; //negative
    output zero;
    input [31:0] a,b;
    input [3:0] ALUControl;
    
    //RCA32 adder(A,B,Cin,S,Cout);

    assign zero = 1'b0;
    always@(*)begin
        case(ALUControl)

            4'd0: result = a + b; // SW
           // 4'd1: result = sum; //BEQ
            4'd2: result = a & b; //AND
            4'd3: result = a | b;// OR
            4'd4: result = ~(a | b); //NOR
            4'd5: result = a + b;// ADD
            4'd6: result = a - b; // SUB
            4'd7:
            begin
               if(a < b) 
               begin 
                   result = 1;
               end
               else begin
                   result = 0;
               end
            end // SLT
            4'd8: result = a/b; // DIV
            4'd9: result = a*b; // MULT
//            4'd10: result = ; // MFHI
 //           4'd11: result = ; // MFLO
            4'd12: result = a+b; // ADD imeediate
            4'd13: // LW
                result = a + b;
            
            default: result = 32'hZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ;

        endcase
        end

endmodule