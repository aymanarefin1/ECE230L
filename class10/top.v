module top(
input [3:0]sw, 
input btnC,
output [5:0]led

);

Dff D(

.D(sw[0]),
.Q(led[0]),
.notQ(led[1]),
.Clk(btnC)

);

JKff JK(

.J(sw[1]),
.K(sw[2]),
.Clk(btnC),
.Q(led[2]),
.notQ(led[3])

);

Tff T(
.T(sw[3]),
.Clk(btnC),
.Q(led[4]),
.notQ(led[5])
);
endmodule