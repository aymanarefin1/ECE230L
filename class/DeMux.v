module DeMux(
    input [3:0] In,
    input [1:0] Sel,
    input Enable,
    output [3:0] Lib, Fire, School, Rib

);

assign Lib[3:0] = (Sel == 2'b00 & Enable == 1'b1 ? In : 1'b0);
assign Fire[3:0] = (Sel == 2'b01 & Enable == 1'b1 ? In : 1'b0);
assign School[3:0] = (Sel == 2'b10 & Enable == 1'b1 ? In : 1'b0);
assign Rib[3:0] = (Sel == 2'b11 & Enable == 1'b1 ? In : 1'b0);

endmodule