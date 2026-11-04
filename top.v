module top(
    input [15:0] sw,
    input btnC,
    output [15:0] led
);

    // Part 1: single bit D-Latch
    D_Latch part1(
        .D(sw[0]),
        .E(btnC),
        .Q(led[0]),
        .NotQ(led[1])
    );

    // Part 2: four byte memory system
    memory_system part2(
        .data(sw[15:8]),
        .addr(sw[7:6]),
        .store(btnC),
        .memory(led[15:8])
    );

    // Unused LEDs
    assign led[7:2] = 6'b0;

endmodule
