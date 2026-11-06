module Tff(
input T, Clk,
output Q, notQ
);

JKff JK_ff(

.J(T),
.K(T),
.Clk(Clk),
.Q(Q),
.notQ(notQ)
);
endmodule
