module memory_system(
    input [7:0] data,
    input store,
    input [1:0] addr,
    output reg[7:0] memory
);

genvar i;
reg in_store[3:0]; 
reg [7:0] in_data[3:0];
wire [7:0] in_memory[3:0];
generate 
    for (i = 0 ; i<4; i = i + 1)
    begin 
         byte_memory mem(
         .data(in_data[i]),
         .store(in_store[i]),
         .memory(in_memory[i])
);
    end
endgenerate

always@(*)
begin
memory <= in_memory[addr];
case(addr)
2'b00: begin
    {in_store[3],in_store[2],in_store[1],in_store[0]} <= {1'b0,1'b0,1'b0, store};
    {in_data[3],in_data[2],in_data[1],in_data[0]} <= {8'b0,8'b0,8'b0, data};
end
2'b01: begin
    {in_store[3],in_store[2],in_store[1],in_store[0]} <= {1'b0,1'b0,store,1'b0};
    {in_data[3],in_data[2],in_data[1],in_data[0]} <= {8'b0,8'b0,data,8'b0};
end
2'b10: begin
    {in_store[3],in_store[2],in_store[1],in_store[0]} <= {1'b0,store,1'b0,1'b0};
    {in_data[3],in_data[2],in_data[1],in_data[0]} <= {8'b0,data,8'b0,8'b0};
end
2'b11: begin
    {in_store[3],in_store[2],in_store[1],in_store[0]} <= {store,1'b0,1'b0,1'b0};
    {in_data[3],in_data[2],in_data[1],in_data[0]} <= {data,8'b0,8'b0,8'b0}; 
end
endcase
end
endmodule