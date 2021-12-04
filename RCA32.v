
module RCA32(A,B,Cin,S,Cout);
    output [31:0] S;
    input [31:0] A,B;
	input Cin;
    wire [30:0] C;
	output Cout;

    full_adder FA0(A[0],B[0],Cin,S[0],C[0]);
    full_adder FA1(A[1],B[1],C[0],S[1],C[1]);
    full_adder FA2(A[2],B[2],C[1],S[2],C[2]);
    full_adder FA3(A[3],B[3],C[2],S[3],C[3]);
    full_adder FA4(A[4],B[4],C[3],S[4],C[4]);
    full_adder FA5(A[5],B[5],C[4],S[5],C[5]);
    full_adder FA6(A[6],B[6],C[5],S[6],C[6]);
    full_adder FA7(A[7],B[7],C[6],S[7],C[7]);
    full_adder FA8(A[8],B[8],C[7],S[8],C[8]);
    full_adder FA9(A[9],B[9],C[8],S[9],C[9]);
    full_adder FA10(A[10],B[10],C[9],S[10],C[10]);
    full_adder FA11(A[11],B[11],C[10],S[11],C[11]);
    full_adder FA12(A[12],B[12],C[11],S[12],C[12]);
    full_adder FA13(A[13],B[13],C[12],S[13],C[13]);
    full_adder FA14(A[14],B[14],C[13],S[14],C[14]);
    full_adder FA15(A[15],B[15],C[14],S[15],C[15]);
    full_adder FA16(A[16],B[16],C[15],S[16],C[16]);
    full_adder FA17(A[17],B[17],C[16],S[17],C[17]);
    full_adder FA18(A[18],B[18],C[17],S[18],C[18]);
    full_adder FA19(A[19],B[19],C[18],S[19],C[19]);
    full_adder FA20(A[20],B[20],C[19],S[20],C[20]);
    full_adder FA21(A[21],B[21],C[20],S[21],C[21]);
    full_adder FA22(A[22],B[22],C[21],S[22],C[22]);
    full_adder FA23(A[23],B[23],C[22],S[23],C[23]);
    full_adder FA24(A[24],B[24],C[23],S[24],C[24]);
    full_adder FA25(A[25],B[25],C[24],S[25],C[25]);
    full_adder FA26(A[26],B[26],C[25],S[26],C[26]);
    full_adder FA27(A[27],B[27],C[26],S[27],C[27]);
    full_adder FA28(A[28],B[28],C[27],S[28],C[28]);
    full_adder FA29(A[29],B[29],C[28],S[29],C[29]);
    full_adder FA30(A[30],B[30],C[29],S[30],C[30]);
    full_adder FA31(A[31],B[31],C[30],S[31],Cout);

	endmodule
	