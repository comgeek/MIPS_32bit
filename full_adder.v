module full_adder (a,b,Cin,Sum,Cout);
    output Sum,Cout;
    input a,b,Cin;

    wire w1,w2,w3;

    half_adder ha1(
        .DinA(a), // a
        .DinB(b), // b
        .DoutSum(w1), //first sum
        .DoutCarry(w2) // first carry 
    );
    half_adder ha2(
        .DinA(w1), // input carry
        .DinB(Cin), // first sum
        .DoutSum(Sum), // final sum
        .DoutCarry(w3) // second carry
    );
        or  (Cout,w2,w3);

endmodule



