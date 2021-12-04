module module_mux_4X1(i0,i1,i2,i3,s1,s0,q);

input i0,i1,i2,i3,s1,s0;
wire w1,w2,w3,w4,w5,w6;

output q;

not not1(w1,s1);
not not2(w2,s0);

and and1(w3,i0,w1,w2);
and and2(w4,i1,w1,s0);
and and3(w5,i2,s1,w2);
and and4(w6,i3,s1,s0);

or or1(q,w3,w4,w5,w6);


endmodule