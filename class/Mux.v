module Mux(
input [3:0]CEO, YOU, FRED, JILL,
input Enable,
input [1:0]Sel,

output [3:0]Y


);



assign Y = Enable ? ((Sel == 2'b00) ? CEO : (Sel == 2'b01) ? YOU : (Sel == 2'b10) ? FRED : (Sel == 2'b11) ? JILL : 1'b0) : 1'b0;



endmodule