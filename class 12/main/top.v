module top(
    input sw, // w
    output [9:0] led, // see IO table
    input btnC, // clk
    input btnU // reset
);

onehot OH(
.W(sw),
.clk(btnC),
.rst(btnU),
.z(led[0]),
.Acurrent(led[2]),
.Bcurrent(led[3]),
.Ccurrent(led[4]),
.Dcurrent(led[5]),
.Ecurrent(led[6])
);

binary B(
.w(sw),
.clk(btnC),
.rst(btnU),
.z(led[1]),
.C0(led[7]),
.C1(led[8]),
.C2(led[9])
);

endmodule
