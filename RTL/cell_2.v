//////////////////////////DR SERAG //////////////////
////////////////Outhers:Isalm_Akram_Osama///////////

module cell_2  (
input wire x,y,c_in,p_in,
output p_out,c_out 
);

wire sig_1;

nand_gate u0 (
.a(x),
.b(y),
.c(sig_1)
);

full_adder u1 (
.a(sig_1),
.b(c_in),
.c_in(p_in),
.sum(p_out),
.carry(c_out)
);

endmodule
