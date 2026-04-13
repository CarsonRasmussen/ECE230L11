module ripple_counter(
    input Clock,
    input Reset,
    output [2:0] Stage
);

wire [2:0] Connect;

    tff inst1(
        .T(1'b1),
        .Clock(Clock),
        .Reset(Reset),
        .Q(Stage[0]),
        .NotQ(Connect[0])
    );
    
     tff inst2(
        .T(1'b1),
        .Clock(Stage[0]),
        .Reset(Reset),
        .Q(Stage[1]),
        .NotQ(Connect[1])
    );
    
     tff inst3(
        .T(1'b1),
        .Clock(Stage[1]),
        .Reset(Reset),
        .Q(Stage[2]),
        .NotQ(Connect[2])
    );
    
endmodule