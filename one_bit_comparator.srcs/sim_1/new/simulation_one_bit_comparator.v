
module simualtion_Comparator();


reg A, B;
wire greater, less, equal;

initial 
begin
 
 #00 A = 0; B = 0;
 #10 A = 0; B = 1;
 #10 A = 1; B = 0;
 #10 A = 1; B = 1;
 #10 $stop;
  
end

one_bit_comparator comp(A, B, greater, less, equal);


endmodule