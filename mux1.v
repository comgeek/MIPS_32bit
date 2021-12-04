module module_mux_4X1(i0,i1,i2,i3,s1,s0,q);

input i0,i1,i2,i3,s1,s0;
wire [5:0] w;

output q;

not not1(w[0],s1);
not not2(w[1],s0);

and and1(w[2],i0,w[0],w[1]);
and and2(w[3],i1,w[0],s0);
and and3(w[4],i2,s1,w[1]);
and and4(w[5],i3,s1,s0);

or or1(q,w[2],w[3],w[4],w[5]);


endmodule