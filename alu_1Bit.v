module alu1bit(result,carryout,a,b,carryin,ALUControl);
    output result,carryout;
    input a,b,carryin;
    input [2:0] ALUControl;

    wire [8:0] n;

    xor(n[0],b,ALUControl[2]);
    or(n[1],a,n[0]);
    and(n[2],a,n[0]);
    not(n[8],n[2]); // not n[2]
    and(n[3],n[1],n[8]);
    and(n[4],n[3],carryin);
    or(carryout,n[4],n[2]);
    not(n[7],n[4]); // not n[4]
    or(n[5],carryin,n[3]);
    and(n[6],n[7],n[5]);

    mux4 mux_result(result, n[2],n[1],n[6],n[3],ALUControl[1:0]);

endmodule
