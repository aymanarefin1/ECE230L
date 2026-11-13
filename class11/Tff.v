module Tff(
input T, Clk, Rst,
output Q, notQ
);

JKff JK_ff(

.J(T),
.K(T),
.Clk(Clk),
.Q(Q),
.notQ(notQ),
.Rst(Rst)
);
endmodule
