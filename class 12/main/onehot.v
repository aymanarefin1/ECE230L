module onehot(
input W, clk, rst,
output z,
output Acurrent, Bcurrent, Ccurrent, Dcurrent, Ecurrent
);
wire Anext, Bnext, Cnext, Dnext, Enext;


dff Adff(
.Default(1'b1),
.D(Anext),
.clk(clk),
.Q(Acurrent),
.reset(rst)
);

dff Bdff(
.Default(1'b0),
.D(Bnext),
.clk(clk),
.reset(rst),
.Q(Bcurrent)
);

dff Cdff(
.Default(1'b0),
.D(Cnext),
.clk(clk),
.reset(rst),
.Q(Ccurrent)
);

dff Ddff(
.Default(1'b0),
.D(Dnext),
.clk(clk),
.reset(rst),
.Q(Dcurrent)
);

dff Edff(
.Default(1'b0),
.D(Enext),
.clk(clk),
.reset(rst),
.Q(Ecurrent)
);

assign z = Ccurrent | Ecurrent;

assign Anext = ~W;
assign Bnext = W & Acurrent;
assign Cnext = W & Bcurrent;
assign Dnext = W & Ccurrent;
assign Enext = (W & Dcurrent) | (W & Ecurrent);

endmodule