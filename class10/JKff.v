module JKff(
input J, K, Clk,
output Q,
output notQ

);

Dff D_FF(

.D((J & notQ) | (Q & ~J)),
.Clk(Clk),
.Q(Q),
.notQ(notQ)
);

endmodule
