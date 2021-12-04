module control_unit (opcode, alusrc, aluop, regwrite2, regwrite1, regdst, branch, bnesig, memwrite, memtoreg, memread, jsig, jalsig, nsig, luisig);
    input [5:0] opcode;
    output [1:0] alusrc, aluop;
    output regwrite2, regwrite1;
    output regdst, branch, bnesig;
    output memwrite, memtoreg, memread;
    output jsig, jalsig, nsig, luisig;

    wire lui_op, r_op, jal_op, j_op, lw_op, sw_op, bne_op, beq_op, ori_op;

    equal_6 is_lui(lui_op, opcode, 6'b001111);
    equal_6 is_r(r_op, opcode, 6'b000000);
    equal_6 is_jal(jal_op, opcode, 6'b000011);
    equal_6 is_j(j_op, opcode, 6'b000010);
    equal_6 is_lw(lw_op, opcode, 6'b100011);
    equal_6 is_sw(sw_op, opcode, 6'b101011);
    equal_6 is_bne(bne_op, opcode, 6'b000101);
    equal_6 is_beq(beq_op, opcode, 6'b000100);
    equal_6 is_ori(ori_op, opcode, 6'b001101);

    and luisig_comb(luisig, lui_op, lui_op);
    and nsig_comb(nsig, r_op, r_op);
    and jalsig_comb(jalsig, jal_op, jal_op);
    and jsig_comb(jsig, j_op, j_op);
    and memread_comb(memread, lw_op, lw_op);
    and memtoreg_comb(memtoreg, lw_op, lw_op);
    and memwrite_comb(memwrite, sw_op, sw_op);
    and bnesig_comb(bnesig, bne_op, bne_op);
    and branchsig_comb(branch, beq_op, beq_op);
    and regdst_comb(regdst, r_op, r_op);
    or regwrite1_comb(regwrite1, lw_op, jal_op, r_op, ori_op, lui_op);
    and regwrite2_comb(regwrite2, r_op, r_op);
    or aluop1_comb(aluop[1], r_op, ori_op);
    or aluop0_comb(aluop[0], beq_op, bne_op, ori_op);
    and alusrc1_comb(alusrc[1], ori_op, ori_op);
    or alusrc0_comb(alusrc[0], lw_op, sw_op);
endmodule

module equal_6 (result, a, b);
    input [5:0] a, b;
    output result;

    wire [5:0] r;

    xnor_6x2 xnor_result(r, a, b);

    and(result, r[0], r[1], r[2], r[3], r[4], r[5]);
endmodule

module xnor_6x2 (result, a, b);
    input [5:0] a, b;
    output [5:0] result;
    
    xnor m0(result[0], a[0], b[0]);
    xnor m1(result[1], a[1], b[1]);
    xnor m2(result[2], a[2], b[2]);
    xnor m3(result[3], a[3], b[3]);
    xnor m4(result[4], a[4], b[4]);
    xnor m5(result[5], a[5], b[5]);
endmodule