module memory_system(
    input [7:0] data,
    input store,
    input [1:0] addr,
    output reg [7:0] memory
);

    // Demultiplexed store and data lines, one set per byte
    reg [3:0] in_store;
    reg [7:0] in_data0, in_data1, in_data2, in_data3;
    wire [7:0] in_memory0, in_memory1, in_memory2, in_memory3;

    byte_memory mem0(.data(in_data0), .store(in_store[0]), .memory(in_memory0));
    byte_memory mem1(.data(in_data1), .store(in_store[1]), .memory(in_memory1));
    byte_memory mem2(.data(in_data2), .store(in_store[2]), .memory(in_memory2));
    byte_memory mem3(.data(in_data3), .store(in_store[3]), .memory(in_memory3));

    // Demultiplexers: data -> selected byte, store -> selected byte
    always @(*) begin
        case (addr)
            2'b00: begin in_store <= {3'b0, store};       {in_data3, in_data2, in_data1, in_data0} <= {24'b0, data};          end
            2'b01: begin in_store <= {2'b0, store, 1'b0}; {in_data3, in_data2, in_data1, in_data0} <= {16'b0, data, 8'b0};    end
            2'b10: begin in_store <= {1'b0, store, 2'b0}; {in_data3, in_data2, in_data1, in_data0} <= {8'b0, data, 16'b0};    end
            2'b11: begin in_store <= {store, 3'b0};       {in_data3, in_data2, in_data1, in_data0} <= {data, 24'b0};          end
        endcase
    end

    // Multiplexer: selected byte -> memory output
    always @(*) begin
        case (addr)
            2'b00: memory <= in_memory0;
            2'b01: memory <= in_memory1;
            2'b10: memory <= in_memory2;
            2'b11: memory <= in_memory3;
        endcase
    end

endmodule
