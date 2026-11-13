module Ripple(
input Clk, Rst,
output RB0, RB1, RB2
);

Tff TFF0(
.T(1'b1),
.Clk(Clk),
.Q(RB0),
.Rst(Rst)
);

Tff TFF1(
.T(1'b1),
.Clk(~RB0),
.Q(RB1),
.Rst(Rst)
);

Tff TFF2(
.T(1'b1),
.Clk(~RB1),
.Q(RB2),
.Rst(Rst)
);
endmodule