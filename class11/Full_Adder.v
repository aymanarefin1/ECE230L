module Full_Adder(
input A,B,Cin,
output Cout,Sum

);

assign Sum = A ^ B ^ Cin;
assign Cout = (A & B) | A & Cin | B & Cin;

endmodule
