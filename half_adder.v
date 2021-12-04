module half_adder(DinA,DinB,DoutSum,DoutCarry);

    input DinA,DinB;
    output DoutSum,DoutCarry;

    and  (DoutCarry,DinA,DinB); //AND operation
    xor  (DoutSum,DinA,DinB); //XOR operation

endmodule

