module top(
input [15:0]sw,
input btnL, btnU, btnD, btnR, btnC,
output [15:0]led
);

wire [3:0]Person;
Mux(
.Sel({btnU, btnL}),
.Enable(btnC),
.CEO(sw[3:0]),
.YOU(sw[7:4]),
.FRED(sw[11:8]),
.JILL(sw[15:12]),
.Y(Person)
);


DeMux (
.Sel({btnR, btnD}),
.Enable(btnC),
.In(Person),
.Lib(led[3:0]),
.Fire(led[7:4]),
.School(led[11:8]),
.Rib(led[15:12])

);
endmodule