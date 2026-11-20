module binary(
input w, clk, rst,
output z,
output C0, C1, C2
);

wire [2:0] Next;

dff zero(
.Default(1'b0),
.D(Next[0]),
.clk(clk),
.Q(C0),
.reset(rst)
);

dff one(
.Default(1'b0),
.D(Next[1]),
.clk(clk),
.Q(C1),
.reset(rst)
);

dff two(
.Default(1'b0),
.D(Next[2]),
.clk(clk),
.Q(C2),
.reset(rst)
);

assign z = ((C1 & ~C0)|C2);
assign Next[0] = w & ~C0 & ~C2;
assign Next[1] = w & (C1 ^ C0);
assign Next[2] = w & (C2 | (C1 & C0));

endmodule