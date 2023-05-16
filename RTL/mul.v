//////////////////////////DR SERAG //////////////////
////////////////Outhers:Isalm_Akram_Osama///////////

module mul  (
input wire[6:0] a, // 7 bits input1
input wire[4:0] b,// 5 bit input2
output wire [11:0] p // 12 bit output_of_multiplier
);



////p0////

//wire co_00;
cell_1 u0 (
.x(a[0]),
.y(b[0]),
.c_in(1'b0),
.p_in(1'b0),
.p_out(p[0]),
.c_out(co_00)
);

////p1////
//wire co_10,po_10;

cell_1 u1 (
.x(a[1]),
.y(b[0]),
.c_in(1'b0),
.p_in(1'b0),
.p_out(po_10),
.c_out(co_10)
);

//wire co_01;
cell_1 u2 (
.x(a[0]),
.y(b[1]),
.c_in(co_00),
.p_in(po_10),
.p_out(p[1]),
.c_out(co_01)
);

////p2////
//wire po_20,co_20;
cell_1 u3 (
.x(a[2]),
.y(b[0]),
.c_in(1'b0),
.p_in(1'b0),
.p_out(po_20),
.c_out(co_20)
);

//wire po_11;
cell_1 u4 (
.x(a[1]),
.y(b[1]),
.c_in(co_10),
.p_in(po_20),
.p_out(po_11),
.c_out(co_11)
);

//wire co_02;
cell_1 u5 (
.x(a[0]),
.y(b[2]),
.c_in(co_01),
.p_in(po_11),
.p_out(p[2]),
.c_out(co_02)
);

////p3/////////////////////////////////////////////////////////////////

//wire po_30,co_30;
cell_1 u6 (
.x(a[3]),
.y(b[0]),
.c_in(1'b0),
.p_in(1'b0),
.p_out(po_30),
.c_out(co_30)
);

//wire po_21,co_21;
cell_1 u7 (
.x(a[2]),
.y(b[1]),
.c_in(co_20),
.p_in(po_30),
.p_out(po_21),
.c_out(co_21)
);
//wire po_12,co_12;
cell_1 u8 (
.x(a[1]),
.y(b[2]),
.c_in(co_11),
.p_in(po_21),
.p_out(po_12),
.c_out(co_12)
);

//wire po_03,co_03;
cell_1 u9 (
.x(a[0]),
.y(b[3]),
.c_in(co_02),
.p_in(po_12),
.p_out(p[3]),
.c_out(co_03)
);
////p4//////////////////////////////////
//wire po_30,co_30;

cell_1 u10 (
.x(a[4]),
.y(b[0]),
.c_in(1'b0),
.p_in(1'b0),
.p_out(po_40),
.c_out(co_40)
);

//wire po_21,co_21;
cell_1 u11 (
.x(a[3]),
.y(b[1]),
.c_in(co_30),
.p_in(po_40),
.p_out(po_31),
.c_out(co_31)
);
//wire po_12,co_12;
cell_1 u12 (
.x(a[2]),
.y(b[2]),
.c_in(co_21),
.p_in(po_31),
.p_out(po_22),
.c_out(co_22)
);

//wire po_03,co_03;
cell_1 u13 (
.x(a[1]),
.y(b[3]),
.c_in(co_12),
.p_in(po_22),
.p_out(po_13),
.c_out(co_13)
);

//wire po_03,co_03;
cell_2 u14 (
.x(a[0]),
.y(b[4]),
.c_in(co_03),
.p_in(po_13),
.p_out(po_04),
.c_out(co_04)
);

full_adder u60 (
.a(1'b0),
.b(1'b1),
.c_in(po_04),
.sum(p[4]),
.carry(cf_0)
);
/*
cell_1 u15 (
.x(a[6]),
.y(b[4]),
.c_in(co_03),
.p_in(po_13),
.p_out(po_04),
.c_out(co_04)
);
*/
////p5//////////////////////////////////////
//wire po_30,co_30;

cell_1 u16 (
.x(a[5]),
.y(b[0]),
.c_in(1'b0),
.p_in(1'b0),
.p_out(po_50),
.c_out(co_50)
);

//wire po_21,co_21;
cell_1 u17 (
.x(a[4]),
.y(b[1]),
.c_in(co_40),
.p_in(po_50),
.p_out(po_41),
.c_out(co_41)
);
//wire po_12,co_12;
cell_1 u18 (
.x(a[3]),
.y(b[2]),
.c_in(co_31),
.p_in(po_41),
.p_out(po_32),
.c_out(co_32)
);

//wire po_03,co_03;
cell_1 u19 (
.x(a[2]),
.y(b[3]),
.c_in(co_22),
.p_in(po_32),
.p_out(po_23),
.c_out(co_23)
);

//wire po_03,co_03;
cell_2 u20 (
.x(a[1]),
.y(b[4]),
.c_in(co_13),
.p_in(po_23),
.p_out(po_14),
.c_out(co_14)
);
full_adder u50 (
.a(cf_0),
.b(po_14),
.c_in(co_04),
.sum(p[5]),
.carry(cf_1)
);

////p6//////////////////////////////////
//wire po_30,co_30;

cell_2 u22 (
.x(a[6]),
.y(b[0]),
.c_in(1'b0),
.p_in(1'b1),
.p_out(po_60),
.c_out(co_60)
);
cell_1 u23 (
.x(a[5]),
.y(b[1]),
.c_in(co_50),
.p_in(po_60),
.p_out(po_51),
.c_out(co_51)
);
//wire po_21,co_21;
cell_1 u24 (
.x(a[4]),
.y(b[2]),
.c_in(co_41),
.p_in(po_51),
.p_out(po_42),
.c_out(co_42)
);
//wire po_12,co_12;
cell_1 u25 (
.x(a[3]),
.y(b[3]),
.c_in(co_32),
.p_in(po_42),
.p_out(po_33),
.c_out(co_33)
);

//wire po_03,co_03;
cell_2 u26 (
.x(a[2]),
.y(b[4]),
.c_in(co_23),
.p_in(po_33),
.p_out(po_24),
.c_out(co_24)
);
full_adder u51 (
.a(cf_1),
.b(po_24),
.c_in(co_14),
.sum(p[6]),
.carry(cf_2)
);

////p7//////////////////////////////////
cell_2 u27 (
.x(a[6]),
.y(b[1]),
.c_in(co_60),
.p_in(1'b0),
.p_out(po_61),
.c_out(co_61)
);
cell_1 u28 (
.x(a[5]),
.y(b[2]),
.c_in(co_51),
.p_in(po_61),
.p_out(po_52),
.c_out(co_52)
);
//wire po_21,co_21;
cell_1 u29 (
.x(a[4]),
.y(b[3]),
.c_in(co_42),
.p_in(po_52),
.p_out(po_43),
.c_out(co_43)
);
//wire po_12,co_12;
cell_2 u30 (
.x(a[3]),
.y(b[4]),
.c_in(co_33),
.p_in(po_43),
.p_out(po_34),
.c_out(co_34)
);

full_adder u52 (
.a(po_34),
.b(co_24),
.c_in(cf_2),
.sum(p[7]),
.carry(cf_3)
);

////p8/////////////////////////////////
cell_2 u31 (
.x(a[6]),
.y(b[2]),
.c_in(co_61),
.p_in(1'b0),
.p_out(po_62),
.c_out(co_62)
);
cell_1 u32 (
.x(a[5]),
.y(b[3]),
.c_in(co_52),
.p_in(po_62),
.p_out(po_53),
.c_out(co_53)
);
//wire po_21,co_21;
cell_2 u33 (
.x(a[4]),
.y(b[4]),
.c_in(co_43),
.p_in(po_53),
.p_out(po_44),
.c_out(co_44)
);
//wire po_12,co_12;
full_adder u53 (
.a(po_44),
.b(co_34),
.c_in(cf_3),
.sum(p[8]),
.carry(cf_4)
);



////p9/////////////////////////////////
cell_2 u34 (
.x(a[6]),
.y(b[3]),
.c_in(co_62),
.p_in(1'b0),
.p_out(po_63),
.c_out(co_63)
);
//wire po_21,co_21;
cell_2 u35 (
.x(a[5]),
.y(b[4]),
.c_in(co_53),
.p_in(po_63),
.p_out(po_54),
.c_out(co_54)
);
full_adder u54 (
.a(po_54),
.b(co_44),
.c_in(cf_4),
.sum(p[9]),
.carry(cf_5)
);
////p10////
cell_1 u36 (
.x(a[6]),
.y(b[4]),
.c_in(co_63),
.p_in(1'b0),
.p_out(po_64),
.c_out(co_64)
);
full_adder u55 (
.a(po_64),
.b(co_54),
.c_in(cf_5),
.sum(p[10]),
.carry(cf_6)
);
////p11////
full_adder u56 (
.a(1'b1),
.b(co_64),
.c_in(cf_6),
.sum(p[11]),
.carry(cf_7)
);
endmodule
