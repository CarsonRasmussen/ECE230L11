module top(
    input btnC,
    input btnU,
    output [6:0] led
);

    modulo_divider part1(
        .Clock(btnC),
        .Reset(btnU),
        .State(led[5:3]),
        .Out(led[6])
    );
    
    ripple_counter part2(
        .Clock(btnC),
        .Reset(btnU),
        .Stage(led[2:0])
    );

    
endmodule