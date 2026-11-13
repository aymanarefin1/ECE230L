module top(
input btnU, btnC,
output [6:0]led
);

Ripple RC(
.Clk(btnC),
.Rst(btnU),
.RB0(led[0]),
.RB1(led[1]),
.RB2(led[2])
);

Modulo_Counter MC(
.CLK(btnC),
.RST(btnU),
.MC0(led[3]),
.MC1(led[4]),
.MC2(led[5]),
.MCout(led[6])
);
endmodule