//////////////////////////DR SERAG //////////////////
////////////////Outhers:Isalm_Akram_Osama///////////

module half_adder  (
input wire a,b,
output sum,carry 
);

assign sum=a^b;
assign carry=(a&b);
 
endmodule