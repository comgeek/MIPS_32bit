module RPAS32(S,Cr,V,A,B); output [31:0] S;
	 input [31:0] A,B;
	 
    output Cr,V;

    wire [31:0] y,C;

    xor(y[0],B[0],1'b1);
    xor(y[1],B[1],1'b1);
    xor(y[2],B[2],1'b1);
    xor(y[3],B[3],1'b1);
    xor(y[4],B[4],1'b1);
    xor(y[5],B[5],1'b1);
    xor(y[6],B[6],1'b1);
    xor(y[7],B[7],1'b1);
    xor(y[8],B[8],1'b1);
    xor(y[9],B[9],1'b1);
    xor(y[10],B[10],1'b1);
    xor(y[11],B[11],1'b1);
    xor(y[12],B[12],1'b1);
    xor(y[13],B[13],1'b1);
    xor(y[14],B[14],1'b1);
    xor(y[15],B[15],1'b1);
    xor(y[16],B[16],1'b1);
    xor(y[17],B[17],1'b1);
    xor(y[18],B[18],1'b1);
    xor(y[19],B[19],1'b1);
    xor(y[20],B[20],1'b1);
    xor(y[21],B[21],1'b1);
    xor(y[22],B[22],1'b1);
    xor(y[23],B[23],1'b1);
    xor(y[24],B[24],1'b1);
    xor(y[25],B[25],1'b1);
    xor(y[26],B[26],1'b1);
    xor(y[27],B[27],1'b1);
    xor(y[28],B[28],1'b1);
    xor(y[29],B[29],1'b1);
    xor(y[30],B[30],1'b1);
    xor(y[31],B[31],1'b1);

    xor(Cr,C[31],1); // Carry = C3 for addition , Carry = not(C3) for subtraction
    xor(V,C[31],C[30]); // If the two most significant carry output bits differ, then we have an overflow

    full_adder FA0(S[0],C[0],A[0],y[0],1'b1);
    full_adder FA1(S[1],C[1],A[1],y[1],C[0]);
    full_adder FA2(S[2],C[2],A[2],y[2],C[1]);
    full_adder FA3(S[3],C[3],A[3],y[3],C[2]);
    full_adder FA4(S[4],C[4],A[4],y[4],C[3]);
    full_adder FA5(S[5],C[5],A[5],y[5],C[4]);
    full_adder FA6(S[6],C[6],A[6],y[6],C[5]);
    full_adder FA7(S[7],C[7],A[7],y[7],C[6]);
    full_adder FA8(S[8],C[8],A[8],y[8],C[7]);
    full_adder FA9(S[9],C[9],A[9],y[9],C[8]);
    full_adder FA10(S[10],C[10],A[10],y[10],C[9]);
    full_adder FA11(S[11],C[11],A[11],y[11],C[10]);
    full_adder FA12(S[12],C[12],A[12],y[12],C[11]);
    full_adder FA13(S[13],C[13],A[13],y[13],C[12]);
    full_adder FA14(S[14],C[14],A[14],y[14],C[13]);
    full_adder FA15(S[15],C[15],A[15],y[15],C[14]);
    full_adder FA16(S[16],C[16],A[16],y[16],C[15]);
    full_adder FA17(S[17],C[17],A[17],y[17],C[16]);
    full_adder FA18(S[18],C[18],A[18],y[18],C[17]);
    full_adder FA19(S[19],C[19],A[19],y[19],C[18]);
    full_adder FA20(S[20],C[20],A[20],y[20],C[19]);
    full_adder FA21(S[21],C[21],A[21],y[21],C[20]);
    full_adder FA22(S[22],C[22],A[22],y[22],C[21]);
    full_adder FA23(S[23],C[23],A[23],y[23],C[22]);
    full_adder FA24(S[24],C[24],A[24],y[24],C[23]);
    full_adder FA25(S[25],C[25],A[25],y[25],C[24]);
    full_adder FA26(S[26],C[26],A[26],y[26],C[25]);
    full_adder FA27(S[27],C[27],A[27],y[27],C[26]);
    full_adder FA28(S[28],C[28],A[28],y[28],C[27]);
    full_adder FA29(S[29],C[29],A[29],y[29],C[28]);
    full_adder FA30(S[30],C[30],A[30],y[30],C[29]);
    full_adder FA31(S[31],C[31],A[31],y[31],C[30]);
 endmodule
