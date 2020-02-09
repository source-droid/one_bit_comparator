

module one_bit_comparator(A, B, greater, less, equal);

input A,B;
output  greater, less, equal;

not not1(A_invert, A);
and and1(less, A_invert, B);

not not2(B_bar, B);
and and2(AB_bar, A_invert, B_bar);
and and3(AB, A, B);
or or1(equal, AB_bar, AB);

and and4(greater, A, B_bar);



endmodule