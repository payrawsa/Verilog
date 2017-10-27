module fig42(A,B,C,D,F1,F2);
input A,B,C,D;
output F1, F2;
wire T1,T2,T3,T4,T5;
and g1(T1,B,C);
not g2(T2,A);
nand g3(T3,T2,D);
nand g4(T4, T3,T2);
or g5(T5, T1,T2);
and g6(F1,T4,T5 );
and g7(F2, T3, T5);
endmodule

module test_circuit;
reg[3:0]E;
wire F1, F2;
fig42 f42 (E[3],E[2],E[1],E[0],F1,F2);
initial
begin
E=4'b0000;
repeat (15)
#20 E= E + 1'b1;
end
initial
$monitor ("ABCD= %b F1 = %b F2 = %b", E, F1, F2);
endmodule

