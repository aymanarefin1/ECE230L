module Dff(
input D, Clk, Rst,
output reg Q,
output notQ

);
initial begin
Q <= 0;
end

always @(posedge Clk or posedge Rst) begin
	if (Rst)
		Q <= 0;
	else 	Q <= D;
end
assign notQ = ~Q;
endmodule