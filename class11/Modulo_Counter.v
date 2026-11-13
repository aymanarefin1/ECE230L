module Modulo_Counter(
input CLK, RST,
output MC0, MC1, MC2, MCout


);

wire Q1,S1,C1,Q2,S2,C2,Q3,S3,C3,Q4, Max_Count;
assign Max_Count = Q1 & ~Q2 & Q3;
Dff DFF1(
.D(S1 & ~ Max_Count),
.Clk(CLK),
.Q(Q1),
.Rst(RST)
);
Full_Adder FA1(
.A(Q1),
.B(1'b0),
.Cin(1'b1),
.Sum(S1),
.Cout(C1)
);

Dff DFF2(
.D(S2 & ~ Max_Count),
.Clk(CLK),
.Q(Q2),
.Rst(RST)
);
Full_Adder FA2(
.A(Q2),
.B(1'b0),
.Cin(C1),
.Sum(S2),
.Cout(C2)
);

Dff DFF3(
.D(S3 & ~ Max_Count),
.Clk(CLK),
.Q(Q3),
.Rst(RST)
);
Full_Adder FA3(
.A(Q3),
.B(1'b0),
.Cin(C2),
.Sum(S3),
.Cout(C3)
);


Dff DFF4(
.D( (Q1 & ~Q2 & Q3) ^ Q4),
.Clk(CLK),
.Rst(RST),
.Q(Q4)
);

assign MC0 = Q1;
assign MC1 = Q2;
assign MC2 = Q3;


assign MCout = Q4;

endmodule
