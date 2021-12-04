module alu(result,zero,n,a,b,ALUControl);
    output [31:0] result,n; //negative
    output zero;
    input [31:0] a,b;
    input [2:0] ALUControl;

    wire [31:0] c;
    wire greater, equal, lesser;

    
    alu1bit alu0 (result[0] ,c[0], a[0], b[0],ALUControl[2],ALUControl);
    alu1bit alu1 (result[1] ,c[1], a[1], b[1], c[0], ALUControl);
    alu1bit alu2 (result[2] ,c[2], a[2], b[2], c[1], ALUControl);
    alu1bit alu3 (result[3] ,c[3], a[3], b[3], c[2], ALUControl);
    alu1bit alu4 (result[4] ,c[4], a[4], b[4], c[3], ALUControl);
    alu1bit alu5 (result[5] ,c[5], a[5], b[5], c[4], ALUControl);
    alu1bit alu6 (result[6] ,c[6], a[6], b[6], c[5], ALUControl);
    alu1bit alu7 (result[7] ,c[7], a[7], b[7], c[6], ALUControl);
    alu1bit alu8 (result[8] ,c[8], a[8], b[8], c[7], ALUControl);
    alu1bit alu9 (result[9] ,c[9], a[9], b[9], c[8], ALUControl);
    alu1bit alu10(result[10],c[10],a[10],b[10],c[9], ALUControl);
    alu1bit alu11(result[11],c[11],a[11],b[11],c[10],ALUControl);
    alu1bit alu12(result[12],c[12],a[12],b[12],c[11],ALUControl);
    alu1bit alu13(result[13],c[13],a[13],b[13],c[12],ALUControl);
    alu1bit alu14(result[14],c[14],a[14],b[14],c[13],ALUControl);
    alu1bit alu15(result[15],c[15],a[15],b[15],c[14],ALUControl);
    alu1bit alu16(result[16],c[16],a[16],b[16],c[15],ALUControl);
    alu1bit alu17(result[17],c[17],a[17],b[17],c[16],ALUControl);
    alu1bit alu18(result[18],c[18],a[18],b[18],c[17],ALUControl);
    alu1bit alu19(result[19],c[19],a[19],b[19],c[18],ALUControl);
    alu1bit alu20(result[20],c[20],a[20],b[20],c[19],ALUControl);
    alu1bit alu21(result[21],c[21],a[21],b[21],c[20],ALUControl);
    alu1bit alu22(result[22],c[22],a[22],b[22],c[21],ALUControl);
    alu1bit alu23(result[23],c[23],a[23],b[23],c[22],ALUControl);
    alu1bit alu24(result[24],c[24],a[24],b[24],c[23],ALUControl);
    alu1bit alu25(result[25],c[25],a[25],b[25],c[24],ALUControl);
    alu1bit alu26(result[26],c[26],a[26],b[26],c[25],ALUControl);
    alu1bit alu27(result[27],c[27],a[27],b[26],c[26],ALUControl);
    alu1bit alu28(result[28],c[28],a[28],b[28],c[27],ALUControl);
    alu1bit alu29(result[29],c[29],a[29],b[29],c[28],ALUControl);
    alu1bit alu30(result[30],c[30],a[30],b[30],c[29],ALUControl);
    alu1bit alu31(result[31],c[31],a[31],b[31],c[30],ALUControl);

   compare_to_zero_32 ncheck(greater, equal, lesser, result);
    or n0_check(n[0], greater, equal);
    or n1_check(n[1], greater, lesser);
    and ns2(n[2], 1'b0, 1'b0);
    and ns3(n[3], 1'b0, 1'b0);
    and ns4(n[4], 1'b0, 1'b0);
    and ns5(n[5], 1'b0, 1'b0);
    and ns6(n[6], 1'b0, 1'b0);
    and ns7(n[7], 1'b0, 1'b0);
    and ns8(n[8], 1'b0, 1'b0);
    and ns9(n[9], 1'b0, 1'b0);
    and ns10(n[10], 1'b0, 1'b0);
    and ns11(n[11], 1'b0, 1'b0);
    and ns12(n[12], 1'b0, 1'b0);
    and ns13(n[13], 1'b0, 1'b0);
    and ns14(n[14], 1'b0, 1'b0);
    and ns15(n[15], 1'b0, 1'b0);
    and ns16(n[16], 1'b0, 1'b0);
    and ns17(n[17], 1'b0, 1'b0);
    and ns18(n[18], 1'b0, 1'b0);
    and ns19(n[19], 1'b0, 1'b0);
    and ns20(n[20], 1'b0, 1'b0);
    and ns21(n[21], 1'b0, 1'b0);
    and ns22(n[22], 1'b0, 1'b0);
    and ns23(n[23], 1'b0, 1'b0);
    and ns24(n[24], 1'b0, 1'b0);
    and ns25(n[25], 1'b0, 1'b0);
    and ns26(n[26], 1'b0, 1'b0);
    and ns27(n[27], 1'b0, 1'b0);
    and ns28(n[28], 1'b0, 1'b0);
    and ns29(n[29], 1'b0, 1'b0);
    and ns30(n[30], 1'b0, 1'b0);
    and ns31(n[31], 1'b0, 1'b0);

    equal_32 mzero(zero, result, 32'b00000000000000000000000000000000);
endmodule