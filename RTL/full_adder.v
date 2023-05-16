//////////////////////////DR SERAG //////////////////
////////////////Outhers:Isalm_Akram_Osama///////////

module full_adder  (
input wire a,b,c_in,
output sum,carry 
);
wire sig0,sig1,sig2;
half_adder u0 (
.a(a),
.b(b),
.sum(sig0),
.carry(sig1)
);

half_adder u1 (
.a(c_in),
.b(sig0),
.sum(sum),
.carry(sig2)
);
assign carry = sig1 || sig2;
endmodule
